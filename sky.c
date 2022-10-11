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


static void pushvar(struct gfainf *gi, unsigned int type, unsigned int v)
{
	const unsigned char *mrk = gi->hdr->type & TP_PSAVE ? gf4tp_resvar(gi, type, v) : gi->ident[type][v];

	static const unsigned char gfavst[16][3] = {
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
		"",
		"",
		"&(",
		"|(",
		"",
		"$"
	};

	while (*mrk != '\0')
		gfa_putc(gi, *mrk++);
	mrk = gfavst[type];
	while (*mrk != '\0')
		gfa_putc(gi, *mrk++);
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
	printf("%016lx %04x\n", mant, exp);
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
	unsigned short lct;
	unsigned short pft;
	unsigned short sft;
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

	switch (lcp)
	{
		/* 0+ 4- 8+ 12- 16+ 20- 24+ 28- 32+ 36- 40+ 44- 48+ 52- 56* 60* 
		 * 64* 76..120+ 124..168- 176+ 196+ 200+ 204- 208- 216+ 224* 1796+ 
		 */
	case 0:     /* DO */
	case 8:     /* REPEAT */
	case 16:    /* WHILE */
	case 24:    /* PROCEDURE */
	case 32:    /* IF */
	case 40:    /* FUNCTION */
	case 48:    /* SELECT */
	case 76:    /* FOR */
	case 80:    /* FOR */
	case 84:    /* FOR */
	case 88:    /* FOR */
	case 92:    /* FOR */
	case 96:    /* FOR */
	case 100:   /* FOR */
	case 104:   /* FOR */
	case 108:   /* FOR */
	case 112:   /* FOR */
	case 116:   /* FOR */
	case 120:   /* FOR */
	case 176:   /* SELECT */
	case 196:   /* DO WHILE */
	case 200:   /* DO UNTIL */
	case 216:   /* > PROCEDURE */
	case 1796:  /* > FUNCTION */
		indent(gi, gl->depth);
		gl->depth += 1;
		break;
	case 4:     /* LOOP */
	case 12:    /* UNTIL */
	case 20:    /* WEND */
	case 28:    /* RETURN */
	case 36:    /* ENDIF */
	case 44:    /* ENDFUNC */
	case 52:    /* ENDSELECT */
	case 124:   /* NEXT */
	case 128:   /* NEXT */
	case 132:   /* NEXT */
	case 136:   /* NEXT */
	case 140:   /* NEXT */
	case 144:   /* NEXT */
	case 148:   /* NEXT */
	case 152:   /* NEXT */
	case 156:   /* NEXT */
	case 160:   /* NEXT */
	case 164:   /* NEXT */
	case 168:   /* NEXT */
	case 204:   /* LOOP WHILE */
	case 208:   /* LOOP UNTIL */
		gl->depth -= 1;
		indent(gi, gl->depth);
		break;
	case 56:    /* ELSE */
	case 60:    /* DEFAULT */
	case 64:    /* ELSE IF */
	case 224:   /* CASE */
	case 252:   /* implicit @ */
		indent(gi, gl->depth - 1);
		break;
	default:
		indent(gi, gl->depth);
		break;
	}

	lct = lcp / 4;
	if (lct < 512)
		mrk = (const unsigned char *)gfalct[lct];
	else
		mrk = NULL;
	if (mrk == NULL)
	{
		gf4tp_output("gf4tp_tp() Error at line %lu:%lu: %u is an unknown control code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), lcp);
	} else
	{
		while (*mrk != '\0')
			gfa_putc(gi, *mrk++);
	}	

	inline_filename[0] = '\0';

	switch (lcp)
	{
	case 456:							/* REM */
	case 460:							/* ' */
	case 464:							/* ==> */
	case 468:							/* DATA */
		if (*src != 0x0D)
			putc(' ', gi->ost);
		/* FALLTROUGH */
	case 1644:							/* $ */
	case 1016:							/* . */
		while (*src != 0x0D)
			gfa_putc(gi, *src++);
		src++;
		src += (src - gl->line) & 0x01;
		break;
	case 180:							/* End of program */
		return 0;
	case 192:							/* MONITOR */
	case 236:							/* RESTORE */
	case 420:							/* RESUME */
	case 1020:							/* RANDOMIZE */
	case 1072:							/* CLOSE */
	case 1108:							/* DEFLINE */
	case 1128:							/* DEFMARK */
	case 1136:							/* DEFTEXT */
	case 1140:							/* DEFFILL */
	case 1144:							/* DEFFILL */
	case 1236:							/* QUIT */
	case 1276:							/* DIR */
	case 1300:							/* FILES */
	case 1364:							/* SYSTEM */
	case 1416:							/* SOUND */
	case 1420:							/* WAVE */
	case 1592:							/* DUMP */
		if (*src != TOK_LINE_COMMENT)
			putc(' ', gi->ost);
		break;
	case 124:
	case 128:
	case 132:							/* NEXT x# */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		break;
	case 136:
	case 140:
	case 144:							/* NEXT x% */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		break;
	case 148:
	case 152:
	case 156:							/* NEXT x& */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		break;
	case 160:
	case 164:
	case 168:							/* NEXT x| */
		src += 4;
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		break;
	case 256:							/* LET x#= */
	case 304:							/* x#= */
	case 76:							/* FOR x# */
	case 80:							/* FOR x# */
	case 84:							/* FOR x# */
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		putc('=', gi->ost);
		break;
	case 260:							/* LET x$= */
	case 308:							/* x$= */
		pop16b(v, src);
		pushvar(gi, TYPE_STRING, v);
		putc('=', gi->ost);
		break;
	case 264:							/* LET x%= */
	case 312:							/* x%= */
	case 88:							/* FOR x% */
	case 92:							/* FOR x% */
	case 96:							/* FOR x% */
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		putc('=', gi->ost);
		break;
	case 268:							/* LET x!= */
	case 316:							/* x!= */
		pop16b(v, src);
		pushvar(gi, TYPE_BOOL, v);
		putc('=', gi->ost);
		break;
	case 272:							/* LET x&= */
	case 320:							/* x&= */
	case 100:							/* FOR x& */
	case 104:							/* FOR x& */
	case 108:							/* FOR x& */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		putc('=', gi->ost);
		break;
	case 276:							/* LET x|= */
	case 324:							/* x|= */
	case 112:							/* FOR x| */
	case 116:							/* FOR x| */
	case 120:							/* FOR x| */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		putc('=', gi->ost);
		break;
	case 280:							/* LET x#()= */
	case 328:							/* x#()= */
	case 656:							/* INC x#() */
	case 688:							/* DEC x#() */
	case 720:							/* ADD x#() */
	case 752:							/* SUB x#() */
	case 784:							/* MUL x#() */
	case 816:							/* DIV x#() */
		pop16b(v, src);
		pushvar(gi, TYPE_DOUBLE_ARR, v);
		break;
	case 284:							/* LET x$()= */
	case 332:							/* x$()= */
		pop16b(v, src);
		pushvar(gi, TYPE_STRING_ARR, v);
		break;
	case 288:							/* LET x%()= */
	case 336:							/* x%()= */
	case 660:							/* INC x%() */
	case 692:							/* DEC x%() */
	case 724:							/* ADD x%() */
	case 756:							/* SUB x#() */
	case 788:							/* MUL x%() */
	case 820:							/* DIV x%() */
		pop16b(v, src);
		pushvar(gi, TYPE_INT_ARR, v);
		break;
	case 292:							/* LET x!()= */
	case 340:							/* x!()= */
		pop16b(v, src);
		pushvar(gi, TYPE_BOOL_ARR, v);
		break;
	case 296:							/* LET x&()= */
	case 344:							/* x&()= */
	case 664:							/* INC x&() */
	case 696:							/* DEC x&() */
	case 728:							/* ADD x&() */
	case 760:							/* SUB x&() */
	case 792:							/* MUL x&() */
	case 824:							/* DIV x&() */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD_ARR, v);
		break;
	case 300:							/* LET x|()= */
	case 348:							/* x|()= */
	case 668:							/* INC x|() */
	case 700:							/* DEC x|() */
	case 732:							/* ADD x|() */
	case 764:							/* SUB x|() */
	case 796:							/* MUL x|() */
	case 828:							/* DIV x|() */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE_ARR, v);
		break;
	case 24:							/* PROCEDURE / */
	case 216:							/* > PROCEDURE */
		pop16b(v, src);
		pushvar(gi, TYPE_FUNCTION, v);
		if (src < srcend && *src != TOK_LINE_COMMENT)
			putc('(', gi->ost);
		break;
	case 240: 	     					/* implicit @ */
	case 244:      						/* GOSUB */
	case 248:							/* @ */
		pop16b(v, src);
		pushvar(gi, TYPE_FUNCTION, v);
		break;
	case 1796:							/* > FUNCTION */
		break;
	case 588:							/* PRINT */
	case 1212:							/* LPRINT */
	case 1260:							/* CLS */
		if (src < srcend && *src != TOK_LINE_COMMENT)
			putc(' ', gi->ost);
		break;
	case 640:							/* INC x# */
	case 672:							/* DEC x# */
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		break;
	case 644:							/* INC x% */
	case 676:							/* DEC x% */
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		break;
	case 648:							/* INC x& */
	case 680:							/* DEC x& */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		break;
	case 652:							/* INC x| */
	case 684:							/* DEC x| */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		break;
	case 704:							/* ADD x# */
	case 736:							/* SUB x# */
	case 768:							/* MUL x# */
	case 800:							/* DIV x# */
		pop16b(v, src);
		pushvar(gi, TYPE_FLOAT, v);
		putc(',', gi->ost);
		break;
	case 708:							/* ADD x% */
	case 740:							/* SUB x% */
	case 772:							/* MUL x% */
	case 804:							/* DIV x% */
		pop16b(v, src);
		pushvar(gi, TYPE_INT, v);
		putc(',', gi->ost);
		break;
	case 712:							/* ADD x& */
	case 744:							/* SUB x& */
	case 776:							/* MUL x& */
	case 808:							/* DIV x& */
		pop16b(v, src);
		pushvar(gi, TYPE_WORD, v);
		putc(',', gi->ost);
		break;
	case 716:							/* ADD x| */
	case 748:							/* SUB x| */
	case 780:							/* MUL x| */
	case 812:							/* DIV x| */
		pop16b(v, src);
		pushvar(gi, TYPE_BYTE, v);
		putc(',', gi->ost);
		break;
	case 4:								/* LOOP */
	case 12:							/* UNTIL */
	case 16:							/* WHILE */
	case 20:							/* WEND */
	case 32:							/* IF */
	case 48:							/* SELECT */
	case 56:							/* ELSE */
	case 60:							/* DEFAULT */
	case 64:							/* ELSE IF */
	case 172:							/* EXIT IF */
	case 176:							/* SELECT */
	case 196:							/* DO WHILE */
	case 200:							/* DO UNTIL */
	case 204:							/* LOOP WHILE */
	case 208:							/* LOOP UNTIL */
	case 220:							/* EXIT IF */
	case 224:							/* CASE */
		src += 4;
		break;
	}

	while (src < srcend)
	{
		pft = *src++;
		switch (pft)
		{
		case TOK_LINE_COMMENT:
			src += (src - gl->line) & 0x01;

			if (src == srcend)
				break;
			if (lcp != TOK_CMD_INLINE)
			{
				for (i = *src++; i > 0; i--)
					putc(' ', gi->ost);

				putc('!', gi->ost);

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
			sft = *src++;
			mrk = (const unsigned char *)gfasft_208[sft];
			if (mrk == NULL)
			{
				gf4tp_output("gf4tp_tp() Error at line %lu:%lu: %u/%u is an unknown sft code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft, sft);
			} else
			{
				while (*mrk != '\0')
					gfa_putc(gi, *mrk++);
			}
			break;

		case TOK_SUBFUNC_209:
			sft = *src++;
			mrk = (const unsigned char *)gfasft_209[sft];
			if (mrk == NULL)
			{
				gf4tp_output("gf4tp_tp() Error at line %lu:%lu: %u/%u is an unknown sft code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft, sft);
			} else
			{
				while (*mrk != '\0')
					gfa_putc(gi, *mrk++);
			}
			break;

		case TOK_SUBFUNC_210:
			sft = *src++;
			mrk = (const unsigned char *)gfasft_210[sft];
			if (mrk == NULL)
			{
				gf4tp_output("gf4tp_tp() Error at line %lu:%lu: %u/%u is an unknown sft code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft, sft);
			} else
			{
				while (*mrk != '\0')
					gfa_putc(gi, *mrk++);
			}
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
			if (lcp == TOK_CMD_INLINE)
			{
				char *p;

				/* save variable name for INLINE */
				mrk = gi->hdr->type & TP_PSAVE ? gf4tp_resvar(gi, i, v) : gi->ident[i][v];
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

		case 46:
		case 64:
		case 68:
		case 211:
		case 212:
		case 213:
		case 214:
			gf4tp_output("gf4tp_tp() Error at line %lu:%lu: %u is an unknown token code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft);
			break;

		default:
			mrk = (const unsigned char *)gfapft[pft];
			assert(mrk != NULL);
			while (*mrk != '\0')
				gfa_putc(gi, *mrk++);
			break;
		}
	}
	
	gfa_putnl(gi);

	return 1;
}


void gf4tp_getgi(struct gfainf *gi, unsigned char *src)
{
	/* General info block */

	switch (*src++)
	{
	case 0xFF:
		gi->hdr->type = TP_PSAVE;
		break;
	case 0x00:
	default:
		gi->hdr->type = TP_SAVE;
		break;
	}

	gi->hdr->vers = *src;
}


void gf4tp_getdi(struct gfainf *gi, unsigned char *src)
{
	/* Current and upper pointers */
	uint32_t *cp = gi->hdr->sep;
	uint32_t *up = gi->hdr->sep;

	/* Record lengths (for magic and memory separator field) */

	assert(gi->hdr->vers == 1 || gi->hdr->vers == 2
		   || gi->hdr->vers == 3 || gi->hdr->vers == 4 || gi->hdr->vers == 70);

	memcpy(gi->hdr->mag, src, gfarecl[gi->hdr->vers][0]);
	src += gfarecl[gi->hdr->vers][0];

	up += gfarecl[gi->hdr->vers][1];

	while (cp != up)
	{
		copy32b(*cp, src);
		cp++;
		src += 4;
	}
}


void gf4tp_getii(struct gfainf *gi, unsigned char *src, unsigned char **ptr)
{
	/* Identifier info block */
	unsigned int i;
	unsigned int j;
	unsigned int cnt;
	unsigned char *top;
	unsigned char *dst;

	for (i = 0; i < 16; i++)
	{
		dst = top = src;

		j = gi->hdr->sep[20 + i] - gi->hdr->sep[19 + i];
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
		src = dst += (dst - top) & 0x01;
	}
}
