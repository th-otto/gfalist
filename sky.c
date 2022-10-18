#include <stdio.h>
#include <ctype.h>
#include <assert.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <math.h>
#include "charset.h"

#ifndef O_BINARY
#define O_BINARY 0
#endif
#ifndef S_IRGRP
#define S_IRGRP 0
#endif

#include "sky.h"
#include "tables.h"

static const unsigned char gfavst[MAX_TYPES][3] = {
	"#",
	"$",
	"%",
	"!",
	"#(",
	"$(",
	"%(",
	"!(",
	"&",
	"|",
	"", /* TYPE_LABEL */
	"", /* TYPE_PROCEDURE */
	"&(",
	"|(",
	"", /* functions returning number, including DEFFN */
	"$" /* functions returning string */
};

static int (*gf4tp_output)(const char *format, ...) __attribute__((format(printf, 1, 2)));
static unsigned char *(*gf4tp_resvar)(struct gfainf *gi, unsigned short type, unsigned short var);


/* GFA-BASIC files come from M68K platform and use 8 bits per byte */

#define M68K_BIT 8

#define pop64b(dst, src) \
	 dst    = *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++

#define copy64b(dst, src) \
	 dst    = (src)[0],  dst <<= M68K_BIT, \
	 dst   |= (src)[1],  dst <<= M68K_BIT, \
	 dst   |= (src)[2],  dst <<= M68K_BIT, \
	 dst   |= (src)[3],  dst <<= M68K_BIT, \
	 dst   |= (src)[4],  dst <<= M68K_BIT, \
	 dst   |= (src)[5],  dst <<= M68K_BIT, \
	 dst   |= (src)[6],  dst <<= M68K_BIT, \
	 dst   |= (src)[7]

/* Pushes big endian 32 bit from unsigned char *src to unsigned int *dst. 
 * Beware the expression *dst++ = *src++ << 24 | *src++ << 16 | ... whose
 * result is undefined in C.  This is avoided here by the usage of the
 * comma operator which introduces a sequence point.
 */

#define pop32b(dst, src) \
	 dst    = *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++

#define copy32b(dst, src) \
	 dst    = (src)[0],  dst <<= M68K_BIT, \
	 dst   |= (src)[1],  dst <<= M68K_BIT, \
	 dst   |= (src)[2],  dst <<= M68K_BIT, \
	 dst   |= (src)[3]

/* Same as above, but only handles 16 bit. */

#define pop16b(dst, src); \
	 dst    = *(src)++,  dst <<= M68K_BIT, \
	 dst   |= *(src)++

#define copy48b(dst, src) \
	 dst    = (src)[0],  dst <<= M68K_BIT, \
	 dst   |= (src)[1],  dst <<= M68K_BIT, \
	 dst   |= (src)[2],  dst <<= M68K_BIT, \
	 dst   |= (src)[3],  dst <<= M68K_BIT, \
	 dst   |= (src)[4],  dst <<= M68K_BIT, \
	 dst   |= (src)[5]


static void gfa_putc(struct gfainf *gi, unsigned char c)
{
	if ((gi->flags & TP_CONV) != 0)
	{
		unsigned short wc = charset_w[c];

		if (wc < 0x80)
		{
			putc(wc, gi->ost);
		} else if (wc < 0x800)
		{
			putc((wc >> 6) | 0xc0, gi->ost);
			putc((wc & 0x3f) | 0x80, gi->ost);
		} else
		{
			putc((wc >> 12) | 0xe0, gi->ost);
			putc(((wc >> 6) & 0x3f) | 0x80, gi->ost);
			putc((wc & 0x3f) | 0x80, gi->ost);
		}
	} else
	{
		putc(c, gi->ost);
	}
}



#define LOWCASE(c) do { if ((c) >= 'A' && (c) <= 'Z') c += 'a' - 'A'; } while (0)
#define UPCASE(c)  do { if ((c) >= 'a' && (c) <= 'z') c -= 'a' - 'A'; } while (0)

static void printname(struct gfainf *gi, const unsigned char *str, int uppercase)
{
	unsigned char c;

	if (gi->flags & TP_DEFLIST_CAPITALS)
	{
		c = *str++;
		if (c != '\0')
		{
			UPCASE(c);
			gfa_putc(gi, c);
			while ((c = *str++) != '\0')
			{
				LOWCASE(c);
				gfa_putc(gi, c);
			}
		}
	} else
	{
		while ((c = *str++) != '\0')
		{
			if (uppercase)
			{
				UPCASE(c);
			} else
			{
				LOWCASE(c);
			}
			gfa_putc(gi, c);
		}
	}
}


static void pushvar(struct gfainf *gi, unsigned int type, unsigned int v)
{
	const unsigned char *mrk = gi->hdr.type & TP_PSAVE ? gf4tp_resvar(gi, type, v) : gi->ident[type][v];

	printname(gi, mrk, FALSE);
	if ((type != TYPE_FLOAT && type != TYPE_FLOAT_ARR) || !(gi->flags & TP_DEFLIST_POSTFIX))
	{
		mrk = gfavst[type];
		while (*mrk != '\0')
			gfa_putc(gi, *mrk++);
	}
}


static void pushnum(struct gfainf *gi, uint32_t num, unsigned int base)
{
	unsigned char tmp[40];
	unsigned char *bin = tmp;

	/* number character text */
	static const unsigned char gfanct[16] = "0123456789ABCDEF";

	do {
		*bin++ = gfanct[num % base];
		num /= base;
	} while (num != 0);
	while (--bin >= tmp)
		putc(*bin, gi->ost);
}


static void io_error(int e, const char *n)
{
	gf4tp_output("IO-ERROR #%d  %s\n", e, n);
}


/* Saves an area in memory starting at adr with length len to a file
   with filename name.  MH 2016, taken from X11-Basic
   RETURNS: 0 on success and -1 on error */

static int bsave(const char *name, const void *adr, size_t len)
{
	int fdis = open(name, O_CREAT | O_BINARY | O_WRONLY | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP);

	if (fdis == -1)
		return -1;
	if (write(fdis, adr, len) == -1)
		io_error(errno, "write");
	return close(fdis);
}

void gf4tp_init(int (*output)(const char *format, ...), unsigned char *(*resvar)(struct gfainf *gi, unsigned short type, unsigned short var))
{
	gf4tp_output = output;
	gf4tp_resvar = resvar;
}


static void gfa_putnl(struct gfainf *gi)
{
	if (gi->flags & TP_CONV)
	{
		putc('\n', gi->ost);
	} else
	{
		putc(0x0d, gi->ost);
		putc(0x0a, gi->ost);
	}
}


static uint32_t dgfafloattolong(const unsigned char *src)
{
	int16_t exp = (src[6] << 8) | src[7];
	uint32_t mant = ((uint32_t)src[0] << 24) | ((uint32_t)src[1] << 16) | ((uint32_t)src[2] << 8) | ((uint32_t)src[3]);

	if (exp & 0x8000)
	{
		exp = -exp;
		exp -= 0x3ff;
		if (exp < 0)
			return 0;
		exp -= 31;
		if (exp >= 0)
		{
			if (exp != 0 || mant != 0x80000000UL)
			{
				/* would cause runtime error 2 in interpreter */
				return 0xffffffffUL;
			}
			return mant;
		}
		exp = -exp;
		mant >>= exp;
		mant = -mant;
	} else
	{
		exp -= 0x3ff;
		if (exp < 0)
			return 0;
		exp -= 31;
		if (exp >= 0)
		{
			/* would cause runtime error 2 in interpreter */
			return 0xffffffffUL;
		}
		exp = -exp;
		mant >>= exp;
	}
	return mant;
}


#define Fmul10(m, e) \
	uint64_t t, r; \
	int carry; \
	 \
	e += 3; \
	t = m; \
	t >>= 1; \
	carry = t & 1; \
	t >>= 1; \
	r = t + m + carry; \
	carry = 0; \
	if (((t & m) & 0x8000000000000000ULL) || ((~r & (t | m)) & 0x8000000000000000ULL)) \
		carry = 1; \
	m = r; \
	if (carry) \
	{ \
		m >>= 1; \
		m |= 0x8000000000000000ULL; \
		e++; \
	}


/*
 * convert 8-byte GFA float to a string
 * C-conversion of Fstr from the library
 */
static void dgfafloattostr(const unsigned char *bytes, char *buf, int decimal_digits)
{
	uint64_t mant;
	int16_t exp;
	int decimal_exp;
	int orig_decimal_exp;
	char *dst;
	const char *src;
	int digits;
	char tmpbuf[40];
	int i;
	
	/*
	 * get mantissa (48 bits)
	 */
	copy48b(mant, bytes);
	/* shift it in place */
	mant <<= 16;
	/* get exp (16 bits, negative if mantissa is negative) */
	copy16b(exp, bytes + 6);

	/* FTstr starts here */
	dst = tmpbuf;
	if (exp < 0)
	{
		exp = -exp;
		*dst++ = '-';
	} else
	{
		*dst++ = ' ';
	}
	decimal_exp = 0;
	if (exp == 0)
	{
		mant = 0;
	} else
	{
		if (exp > 0x1fff)
		{
			if (exp > 0x3ffe)
			{
				exp = 0;
				mant = 0;
				decimal_exp = 0;
				goto domant;
			} else
			{
				exp = 0x1fff;
				mant = ~0ULL;
			}
		} else if (exp >= 0x3ff)
		{
			uint64_t m;
			int16_t e;
			long double ld;
			int lde;
			
			/* Feins(); */
			m = 0x8000000000000000ULL;
			e = 0x3ff;
			do
			{
				Fmul10(m, e);
				decimal_exp++;
			} while (exp >= e);
			
			/* fdiv(m, e): mant,exp = mant,exp / m,e */
			ld = scalbnl((long double)mant, exp - 0x3ff) / scalbnl((long double)m, e - 0x3ff);
			ld = frexpl(ld, &lde);
			exp = lde + 0x3fe;
			mant = (uint64_t)(0x8000000000000000ULL * ld);
			mant <<= 1;
			mant &= 0xFFFFFFFFFFFE0000UL;
		}
		
		do
		{
			Fmul10(mant, exp);
			decimal_exp--;
		} while (exp < 0x3ff);
		
		while (exp != 0x402)
		{
			mant >>= 1;
			exp++;
		}
		mant += 0x10000UL;
		if ((mant & 0xFFFF0000UL) == 0 && mant >= 0x9FFFFFFF00000000ULL)
		{
		overflow:
			mant = 0x1000000000000000ULL;
			decimal_exp++;
		}
	}

domant:
	do
	{
		*dst++ = ((int)(mant >> 60) & 0x0f) + '0';
		mant &= 0x0fffffffffffffffUL;
		/* Fvm10: */
		mant = mant * 10;
	} while ((int)(dst - tmpbuf) < 15);
	*dst++ = 'E';
	orig_decimal_exp = decimal_exp;
	if (decimal_exp < 0)
	{
		decimal_exp = -decimal_exp;
		*dst++ = '-';
	} else
	{
		*dst++ = '+';
	}
	/* GFA itself has a bug with exp >= 1000 and prints ':00' instead */
	if (exp >= 1000)
	{
		*dst++ = (decimal_exp / 1000) + '0';
		decimal_exp %= 1000;
	}
	*dst++ = (decimal_exp / 100) + '0';
	*dst++ = ((decimal_exp / 10) % 10) + '0';
	*dst++ = (decimal_exp % 10) + '0';
	*dst = '\0';

	/* unnamed local function, called by FTstr, starts here */	
	digits = decimal_digits;
	if (digits >= 14)
	{
		if (digits != 14)
			digits = 13;
	}
	if (digits < 14)
	{
		dst = tmpbuf + digits + 1;
		if (*dst >= '5')
		{
			char c;
			
			for (;;)
			{
				c = *--dst + 1;
				if (c > '0')
				{
					if (c <= '9')
						break;
					*dst = '0';
				} else
				{
					decimal_exp = orig_decimal_exp;
					dst = tmpbuf + 1;
					goto overflow;
				}
			}
			*dst = c;
			dst = tmpbuf + digits + 1;
		}
		do
		{
			*dst++ = '0';
		} while (*dst != 'E');
	}

	/* remainder of FTstr starts here */	
	dst = buf;
	src = tmpbuf;
	if (*src++ != ' ')
		*dst++ = src[-1];
	digits = 14;
	for (;;)
	{
		if (src[digits - 1] != '0')
			break;
		if (--digits < 0)
			break;
	}
	if (digits != 0)
	{
		if (orig_decimal_exp <= 13 && orig_decimal_exp >= -5)
		{
			if (orig_decimal_exp < 0)
			{
				*dst++ = '0';
				*dst++ = '.';
				i = -orig_decimal_exp - 2;
				if (i >= 0)
				{
					do
					{
						*dst++ = '0';
					} while (--i >= 0);
				}
			}
			for (;;)
			{
				*dst++ = *src++;
				if (--digits == 0)
				{
					for (;;)
					{
						if (--orig_decimal_exp < 0)
							break;
						*dst++ = '0';
					}
					break;
				}
				if (--orig_decimal_exp == -1)
				{
					*dst++ = '.';
				}
			}
		} else
		{
			char c;
			
			*dst++ = *src++;
			*dst++ = '.';
			*dst++ = *src++;
			digits -= 3;
			if (digits >= 0)
			{
				do
				{
					*dst++ = *src++;
				} while (--digits >= 0);
			}
			src = tmpbuf + 15;
			*dst++ = *src++;
			*dst++ = *src++;
			c = *src++;
			if (c != '0')
				*dst++ = c;
			*dst++ = *src++;
			*dst++ = *src++;
			*dst++ = *src++;
		}
	} else
	{
		*dst++ = '0';
	}
	*dst = '\0';
}


static void indent(struct gfainf *gi, int depth)
{
	int i;

	if (depth > 0)
	{
		for (i = 0; i < depth; i++)
		{
			putc(' ', gi->ost);
			putc(' ', gi->ost);
		}
	}
}


static void subfunc_table(struct gfainf *gi, struct gfalin *gl, unsigned short pft, const unsigned char *src, const char *const *table)
{
	unsigned short sft = *src;
	const unsigned char *mrk = (const unsigned char *)table[sft];
	if (mrk == NULL)
	{
		gf4tp_output("Error at line %lu:%lu: %u/%u is an unknown sft code to me\n", gl->lineno, (unsigned long)(src - gl->line), pft, sft);
	} else
	{
		printname(gi, mrk, TRUE);
	}
}


int gf4tp_tp(struct gfainf *gi, struct gfalin *gl)
{
	/* Current source, marker, top and bottom pointers */
	const unsigned char *src = gl->line;
	const unsigned char *mrk;
	const unsigned char *srcend = gl->line + gl->size;

	/* line command pointer, line command token, primary function token,
	 * secondary function token
	 */
	unsigned short lcp;
	unsigned int lct;
	unsigned short pft;
	unsigned short v;
	uint32_t ul;
	char inline_filename[256];
	char strbuf[80];

	unsigned int i;
	int32_t num;

	/* Variablen-Suffix text (VST) */
	/* #,$,%,!,#(,$(,%(,!(,&,|,,,&(,|(,,$ */

	assert(sizeof(uint64_t) == 8);

	pop16b(lcp, src);
	lct = lcp / 4;

	/* fprintf(stderr, "%lu lcp: %u %u\n", gl->lineno, lcp, lct); */
	/*
	 * handle indentation changes
	 */
	switch (lct)
	{
	case 0:     /* DO */
	case 2:     /* REPEAT */
	case 4:     /* WHILE */
	case 6:     /* PROCEDURE */
	case 8:     /* IF */
	case 10:    /* FUNCTION */
	case 12:    /* SELECT */
	case 19:    /* FOR */
	case 20:    /* FOR */
	case 21:    /* FOR */
	case 22:    /* FOR */
	case 23:    /* FOR */
	case 24:    /* FOR */
	case 25:    /* FOR */
	case 26:    /* FOR */
	case 27:    /* FOR */
	case 28:    /* FOR */
	case 29:    /* FOR */
	case 30:    /* FOR */
	case 44:    /* SELECT */
	case 49:    /* DO WHILE */
	case 50:    /* DO UNTIL */
	case 54:    /* > PROCEDURE */
	case 449:   /* > FUNCTION */
		indent(gi, gl->depth);
		gl->depth += 1;
		break;
	case 1:     /* LOOP */
	case 3:     /* UNTIL */
	case 5:     /* WEND */
	case 7:     /* RETURN */
	case 9:     /* ENDIF */
	case 11:    /* ENDFUNC */
	case 13:    /* ENDSELECT */
	case 31:    /* NEXT */
	case 32:    /* NEXT */
	case 33:    /* NEXT */
	case 34:    /* NEXT */
	case 35:    /* NEXT */
	case 36:    /* NEXT */
	case 37:    /* NEXT */
	case 38:    /* NEXT */
	case 39:    /* NEXT */
	case 40:    /* NEXT */
	case 41:    /* NEXT */
	case 42:    /* NEXT */
	case 51:    /* LOOP WHILE */
	case 52:    /* LOOP UNTIL */
		gl->depth -= 1;
		indent(gi, gl->depth);
		break;
	case 14:    /* ELSE */
	case 15:    /* DEFAULT */
	case 16:    /* ELSE IF */
	case 56:    /* CASE */
	case 63:	/* label: */
		indent(gi, gl->depth - 1);
		break;
	default:
		indent(gi, gl->depth);
		break;
	}

	/*
	 * output statement
	 */
	if (lct < size_lct)
		mrk = (const unsigned char *)gfalct[lct];
	else
		mrk = NULL;
	if (mrk == NULL)
	{
		gf4tp_output("Error at line %lu:%lu: %u is an unknown control code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), lcp);
	} else
	{
		printname(gi, mrk, TRUE);
	}	

	inline_filename[0] = '\0';

	/*
	 * special statement handling
	 */
	switch (lct)
	{
	case 114:							/* REM */
	case 115:							/* ' */
	case 116:							/* ==> */
	case 117:							/* DATA */
		if (src < srcend && *src != 0x0D)
			putc(' ', gi->ost);
		/* FALLTROUGH */
	case 411:							/* $ */
	case 254:							/* . */
		while (src < srcend && *src != 0x0D)
			gfa_putc(gi, *src++);
		src++;
		src += (src - gl->line) & 0x01;
		break;
	case TOK_CMD_EOF:					/* End of program */
		return FALSE;
	case 48:							/* MONITOR */
	case 59:							/* RESTORE */
	case 105:							/* RESUME */
	case 147:							/* PRINT */
	case 255:							/* RANDOMIZE */
	case 268:							/* CLOSE */
	case 277:							/* DEFLINE */
	case 282:							/* DEFMARK */
	case 284:							/* DEFTEXT */
	case 285:							/* DEFFILL */
	case 286:							/* DEFFILL */
	case 303:							/* LPRINT */
	case 309:							/* QUIT */
	case 315:							/* CLS */
	case 319:							/* DIR */
	case 325:							/* FILES */
	case 341:							/* SYSTEM */
	case 354:							/* SOUND */
	case 355:							/* WAVE */
	case 398:							/* DUMP */
		if (src < srcend && *src != TOK_LINE_COMMENT)
			putc(' ', gi->ost);
		break;
	case 31:
	case 32:
	case 33:							/* NEXT x# */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		break;
	case 34:
	case 35:
	case 36:							/* NEXT x% */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		break;
	case 37:
	case 38:
	case 39:							/* NEXT x& */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		break;
	case 40:
	case 41:
	case 42:							/* NEXT x| */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		break;
	case 64:							/* LET x#= */
	case 76:							/* x#= */
	case 19:							/* FOR x# */
	case 20:							/* FOR x# */
	case 21:							/* FOR x# */
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		putc('=', gi->ost);
		break;
	case 65:							/* LET x$= */
	case 77:							/* x$= */
		pop16b(v, src);
		pushvar(gi, TYPE_STRING, v);
		putc('=', gi->ost);
		break;
	case 66:							/* LET x%= */
	case 78:							/* x%= */
	case 22:							/* FOR x% */
	case 23:							/* FOR x% */
	case 24:							/* FOR x% */
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		putc('=', gi->ost);
		break;
	case 67:							/* LET x!= */
	case 79:							/* x!= */
		pop16b(v, src);
		pushvar(gi, TYPE_BOOL, v);
		putc('=', gi->ost);
		break;
	case 68:							/* LET x&= */
	case 80:							/* x&= */
	case 25:							/* FOR x& */
	case 26:							/* FOR x& */
	case 27:							/* FOR x& */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		putc('=', gi->ost);
		break;
	case 69:							/* LET x|= */
	case 81:							/* x|= */
	case 28:							/* FOR x| */
	case 29:							/* FOR x| */
	case 30:							/* FOR x| */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		putc('=', gi->ost);
		break;
	case 70:							/* LET x#()= */
	case 82:							/* x#()= */
	case 164:							/* INC x#() */
	case 172:							/* DEC x#() */
	case 180:							/* ADD x#() */
	case 188:							/* SUB x#() */
	case 196:							/* MUL x#() */
	case 204:							/* DIV x#() */
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT_ARR, v);
		break;
	case 71:							/* LET x$()= */
	case 83:							/* x$()= */
		pop16b(v, src);
		pushvar(gi, TYPE_STRING_ARR, v);
		break;
	case 72:							/* LET x%()= */
	case 84:							/* x%()= */
	case 165:							/* INC x%() */
	case 173:							/* DEC x%() */
	case 181:							/* ADD x%() */
	case 189:							/* SUB x#() */
	case 197:							/* MUL x%() */
	case 205:							/* DIV x%() */
		pop16b(v, src);
		pushvar(gi, TYPE_INT_ARR, v);
		break;
	case 73:							/* LET x!()= */
	case 85:							/* x!()= */
		pop16b(v, src);
		pushvar(gi, TYPE_BOOL_ARR, v);
		break;
	case 74:							/* LET x&()= */
	case 86:							/* x&()= */
	case 166:							/* INC x&() */
	case 174:							/* DEC x&() */
	case 182:							/* ADD x&() */
	case 190:							/* SUB x&() */
	case 198:							/* MUL x&() */
	case 206:							/* DIV x&() */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD_ARR, v);
		break;
	case 75:							/* LET x|()= */
	case 87:							/* x|()= */
	case 167:							/* INC x|() */
	case 175:							/* DEC x|() */
	case 183:							/* ADD x|() */
	case 191:							/* SUB x|() */
	case 199:							/* MUL x|() */
	case 207:							/* DIV x|() */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE_ARR, v);
		break;
	case 6:								/* PROCEDURE / */
	case 54:							/* > PROCEDURE */
		pop16b(v, src);
		pushvar(gi, TYPE_PROCEDURE, v);
		if (src < srcend && *src != TOK_LINE_COMMENT)
			putc('(', gi->ost);
		break;
	case 60: 	     					/* implicit @ */
	case 61:      						/* GOSUB */
	case 62:							/* @ */
		pop16b(v, src);
		pushvar(gi, TYPE_PROCEDURE, v);
		break;
	case 449:							/* > FUNCTION */
		break;
	case 160:							/* INC x# */
	case 168:							/* DEC x# */
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		break;
	case 161:							/* INC x% */
	case 169:							/* DEC x% */
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		break;
	case 162:							/* INC x& */
	case 170:							/* DEC x& */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		break;
	case 163:							/* INC x| */
	case 171:							/* DEC x| */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		break;
	case 176:							/* ADD x# */
	case 184:							/* SUB x# */
	case 192:							/* MUL x# */
	case 200:							/* DIV x# */
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		putc(',', gi->ost);
		break;
	case 177:							/* ADD x% */
	case 185:							/* SUB x% */
	case 193:							/* MUL x% */
	case 201:							/* DIV x% */
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		putc(',', gi->ost);
		break;
	case 178:							/* ADD x& */
	case 186:							/* SUB x& */
	case 194:							/* MUL x& */
	case 202:							/* DIV x& */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		putc(',', gi->ost);
		break;
	case 179:							/* ADD x| */
	case 187:							/* SUB x| */
	case 195:							/* MUL x| */
	case 203:							/* DIV x| */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		putc(',', gi->ost);
		break;
	case 1:								/* LOOP */
	case 3:								/* UNTIL */
	case 4:								/* WHILE */
	case 5:								/* WEND */
	case 8:								/* IF */
	case 12:							/* SELECT */
	case 14:							/* ELSE */
	case 15:							/* DEFAULT */
	case 16:							/* ELSE IF */
	case 43:							/* EXIT IF */
	case 44:							/* SELECT */
	case 49:							/* DO WHILE */
	case 50:							/* DO UNTIL */
	case 51:							/* LOOP WHILE */
	case 52:							/* LOOP UNTIL */
	case 55:							/* EXIT IF */
	case 56:							/* CASE */
		src += 4;
		break;
	}

	/*
	 * process expressions
	 */
	while (src < srcend)
	{
		pft = *src++;
		switch (pft)
		{
		case TOK_LINE_COMMENT:
			src += (src - gl->line) & 0x01;

			if (src == srcend)
				break;
			if (lct != TOK_CMD_INLINE)
			{
				for (i = *src++; i > 0; i--)
					putc(' ', gi->ost);

				if (gi->flags & TP_DEFLIST_C_COMMENTS)
				{
					putc('/', gi->ost);
					putc('*', gi->ost);
				} else if (gi->flags & TP_DEFLIST_CPP_COMMENTS)
				{
					putc('/', gi->ost);
					putc('/', gi->ost);
				} else
				{
					putc('!', gi->ost);
				}

				for (mrk = src; mrk < srcend && *mrk != 0x0D; mrk++)
					;

				if (mrk < srcend)
				{
					while (src < mrk)
						gfa_putc(gi, *src++);
					src++;				/* 0x0D */
					src += (src - gl->line) & 0x01;
				} else
				{
					/* FIXME Is there padding in this case?  Is this case
					 * legal at all?
					 */
					src = mrk;
				}
			} else
			{
				/* treat INLINE data... */
				if (gi->flags & TP_SAVEINLINE)
				{
					if (inline_filename[0] == '\0')
						sprintf(inline_filename, "l%5lu", gl->lineno);
					strcat(inline_filename, ".inl");
					bsave(inline_filename, src, (size_t) (srcend - src));
					gf4tp_output("Saved INLINE data into file --> %s (%ld bytes.)\n", inline_filename, (long)(srcend - src));
					inline_filename[0] = '\0';
				} else
				{
					gfa_putnl(gi);
					/* Added hex printing of INLINE data / Markus Hoffmann 2013 */
					fprintf(gi->ost, "' ## INLINE:");
					for (mrk = src; mrk < srcend; mrk++)
					{
						if ((mrk - src) % 16 == 0)
						{
							gfa_putnl(gi);
							fprintf(gi->ost, "' $%04lx: ", (long) (mrk - src));
						}
						fprintf(gi->ost, "%02x ", *mrk);
					}
					gfa_putnl(gi);
					fprintf(gi->ost, "' %ld  Bytes.", (long) (mrk - src));
					gfa_putnl(gi);
					return 1;
				}
				src = srcend;
			}
			break;

		case TOK_CHAR_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_CHAR_CONST:
			putc('"', gi->ost);
			for (mrk = src + 4; src < mrk && *src == '\0'; src++)
				;
			while (src < mrk)
				gfa_putc(gi, *src++);
			putc('"', gi->ost);
			break;

		case TOK_DEC_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_DEC_CONST:
			pop32b(num, src);
			if (num < 0)
			{
				putc('-', gi->ost);
				num = -num;
			}
			pushnum(gi, num, 10);
			break;

		case TOK_HEX_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_HEX_CONST:
			putc('&', gi->ost);
			putc('H', gi->ost);
			pop32b(num, src);
			pushnum(gi, num, 16);
			break;

		case TOK_OCT_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_OCT_CONST:
			putc('&', gi->ost);
			putc('O', gi->ost);
			pop32b(num, src);
			pushnum(gi, num, 8);
			break;

		case TOK_BIN_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_BIN_CONST:
			putc('&', gi->ost);
			putc('X', gi->ost);
			pop32b(num, src);
			pushnum(gi, num, 2);
			break;

		case TOK_SUBFUNC_208:
			subfunc_table(gi, gl, pft, src, gfasft_208);
			src++;
			break;

		case TOK_SUBFUNC_209:
			subfunc_table(gi, gl, pft, src, gfasft_209);
			src++;
			break;

		case TOK_SUBFUNC_210:
			subfunc_table(gi, gl, pft, src, gfasft_210);
			src++;
			break;

		case TOK_SUBFUNC_211:
			subfunc_table(gi, gl, pft, src, gfasft_211);
			src++;
			break;

		case TOK_OCT_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_OCT_DBL_CONST:
			/* binary 8byte double -> ASCII Octal */
			putc('&', gi->ost);
			putc('O', gi->ost);
			ul = dgfafloattolong(src);
			src += 8;
			pushnum(gi, ul, 8);
			break;

		case TOK_BIN_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_BIN_DBL_CONST:
			/* binary 8byte double -> ASCII binary */
			putc('&', gi->ost);
			putc('X', gi->ost);
			ul = dgfafloattolong(src);
			src += 8;
			pushnum(gi, ul, 2);
			break;

		case TOK_HEX_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_HEX_DBL_CONST:
			/* binary 8byte double -> ASCII hexa */
			putc('&', gi->ost);
			putc('H', gi->ost);
			ul = dgfafloattolong(src);
			src += 8;
			pushnum(gi, ul, 16);
			break;

		case TOK_DEC_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_DEC_DBL_CONST:						/* 1234567890.1234567890E+1234567890 */
			/* binary 8byte double -> ASCII decimal */
			dgfafloattostr(src, strbuf, 13);
			fputs(strbuf, gi->ost);
#if 0
			fprintf(gi->ost, " /* %02x%02x%02x%02x%02x%02x%02x%02x */ ", src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
#endif
			src += 8;
			break;

		case TOK_STRING_CONST:						/* " */
			putc('"', gi->ost);
			for (i = *src++; i > 0; i--)
			{
				if (*src == '"')
					putc('"', gi->ost);
				gfa_putc(gi, *src++);
			}
			putc('"', gi->ost);
			break;

		case 224:
		case 225:
		case 226:
		case 227:
		case 228:
		case 229:
		case 230:
		case 231:
		case 232:
		case 233:
		case 234:
		case 235:
		case 236:
		case 237:
		case 238:
		case 239:
			i = pft - 224;
			v = *src++;
			if (lct == TOK_CMD_INLINE)
			{
				char *p;

				/* save variable name for INLINE */
				mrk = gi->hdr.type & TP_PSAVE ? gf4tp_resvar(gi, i, v) : gi->ident[i][v];
				p = inline_filename;
				while (*mrk != '\0')
					*p++ = *mrk++;
				*p = '\0';
			}
			pushvar(gi, i, v);
			break;

		case 240:
		case 241:
		case 242:
		case 243:
		case 244:
		case 245:
		case 246:
		case 247:
		case 248:
		case 249:
		case 250:
		case 251:
		case 252:
		case 253:
		case 254:
		case 255:
			i = pft - 240;
			pop16b(v, src);
			pushvar(gi, i, v);
			break;

		case 55:                                      /* NUMBER: */
			break;

		case 212: /* currently unused; maybe later assigned to new function tables */
		case 213: /* currently unused; maybe later assigned to new function tables */
		case 214: /* currently unused; maybe later assigned to new function tables */
		case 46: /* unknown */
		case 64: /* unknown */
		case 68: /* unknown */
		case 181: /* unknown */
		case 197: /* unknown */
			gf4tp_output("Error at line %lu:%lu: %u is an unknown token code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft);
			break;

		default:
			mrk = (const unsigned char *)gfapft[pft];
			assert(mrk != NULL);
			printname(gi, mrk, TRUE);
			break;
		}
	}
	
	gfa_putnl(gi);

	return TRUE;
}


void gf4tp_getgi(struct gfainf *gi, unsigned char *src)
{
	/* General info block */

	switch (*src++)
	{
	case 0xFF:
		gi->hdr.type = TP_PSAVE;
		break;
	case 0x00:
	default:
		gi->hdr.type = TP_SAVE;
		break;
	}

	gi->hdr.vers = *src;
}


void gf4tp_getdi(struct gfainf *gi, unsigned char *src)
{
	/* Current and upper pointers */
	uint32_t *cp;
	short i;

	/* Record lengths (for magic and memory separator field) */

	assert(gi->hdr.vers == 1 || gi->hdr.vers == 2
		   || gi->hdr.vers == 3 || gi->hdr.vers == 4 || gi->hdr.vers == 70);

	memcpy(gi->hdr.mag, src, gfarecl[gi->hdr.vers].len_magic);
	src += gfarecl[gi->hdr.vers].len_magic;

	cp = gi->hdr.sep;
	for (i = 0; i < gfarecl[gi->hdr.vers].num_offsets; i++)
	{
		copy32b(*cp, src);
		if (gi->flags & TP_VERB)
			gf4tp_output("  off[%2d] = %8lu (0x%08lx)\n", i, (unsigned long)*cp, (unsigned long)*cp);
		cp++;
		src += 4;
	}
}


void gf4tp_getii(struct gfainf *gi)
{
	/* Identifier info block */
	unsigned int i;
	unsigned int j;
	unsigned int cnt;
	unsigned char *top;
	unsigned char *dst;
	unsigned char *src = gi->pool;
	unsigned char **ptr = gi->fld;
	
	if ((gi->hdr.type & TP_PSAVE) || gi->pool == NULL)
		return;

	for (i = 0; i < MAX_TYPES; i++)
	{
		dst = top = src;

		/*
		 * The actual offsets here are meaningless to us,
		 * they are only used at runtime.
		 * We just need to know the number of variables in this block.
		 */
		j = gi->hdr.sep[OFF_PTR_FIRST + 1 + i] - gi->hdr.sep[OFF_PTR_FIRST + i];
		j /= 4;

		gi->ident[i] = ptr;

		while (j > 0)
		{
			*ptr++ = src;

			/* Convert PASCAL to C string */
			for (cnt = *src++; cnt != 0; cnt--)
			{
				switch (*src)
				{
				case 'A':
				case 'B':
				case 'C':
				case 'D':
				case 'E':
				case 'F':
				case 'G':
				case 'H':
				case 'I':
				case 'J':
				case 'K':
				case 'L':
				case 'M':
				case 'N':
				case 'O':
				case 'P':
				case 'Q':
				case 'R':
				case 'S':
				case 'T':
				case 'U':
				case 'V':
				case 'W':
				case 'X':
				case 'Y':
				case 'Z':
					*dst++ = *src - 'A' + 'a';
					src++;
					break;
				default:
					*dst++ = *src++;
					break;
				}
			}
			*dst++ = '\0';

			j--;
		}

		/* Skip fill byte if neccessary (odd position at read end) */
		src += (src - top) & 0x01;
	}
	if (gi->flags & TP_VARNAMES)
	{
		if (gi->flags & TP_VERB)
			gf4tp_output("\n");
		gf4tp_output("Variables:\n");
		for (i = 0; i < MAX_TYPES; i++)
		{
			cnt = gi->hdr.sep[OFF_PTR_FIRST + 1 + i] - gi->hdr.sep[OFF_PTR_FIRST + i];
			cnt /= 4;
			gf4tp_output("Type %u:\n", i);
			for (j = 0; j < cnt; j++)
			{
				gf4tp_output("  %s%s%s\n",
					gi->ident[i][j],
					gfavst[i],
					i == TYPE_FLOAT_ARR ||
					i == TYPE_STRING_ARR ||
					i == TYPE_INT_ARR ||
					i == TYPE_BOOL_ARR ||
					i == TYPE_WORD_ARR ||
					i == TYPE_BYTE_ARR ? ")" : "");
			}
			if (i != MAX_TYPES - 1)
				gf4tp_output("\n");
		}
	}
}
