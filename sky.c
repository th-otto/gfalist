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


#define pushvar(mrk, t, v, inf, res) \
	mrk = inf->hdr->type & TP_PSAVE ? res(inf, t, v) : inf->ident[t][v]; \
	while (*mrk != '\0') \
		gfa_putc(ost, *mrk++, flags); \
	mrk = gfavst[t]; \
	while (*mrk != '\0') \
		gfa_putc(ost, *mrk++, flags)

#define pushsign(num) \
	if (num < 0) \
		putc('-', ost), \
		num = -num
	
#define pushnum(num, base) \
	{ \
	unsigned char tmp[40]; \
	unsigned char *bin = tmp; \
	do { \
		*bin++ = gfanct[num % base]; \
		num /= base; \
	} while (num != 0); \
	while (--bin >= tmp) { \
		putc(*bin, ost); \
	} }




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


static void gfa_putc(FILE *ost, unsigned char c, unsigned int flags)
{
	if ((flags & TP_CONV) != 0)
	{
		unsigned short wc = charset_w[c];

		if (wc < 0x80)
		{
			putc(wc, ost);
		} else if (wc < 0x800)
		{
			putc((wc >> 6) | 0xc0, ost);
			putc((wc & 0x3f) | 0x80, ost);
		} else
		{
			putc((wc >> 12) | 0xe0, ost);
			putc(((wc >> 6) & 0x3f) | 0x80, ost);
			putc((wc & 0x3f) | 0x80, ost);
		}
	} else
	{
		putc(c, ost);
	}
}


static void gfa_putnl(FILE *ost, unsigned int flags)
{
	if (flags & TP_CONV)
	{
		putc('\n', ost);
	} else
	{
		putc(0x0d, ost);
		putc(0x0a, ost);
	}
}



/*
 * code generate by compiler, when assigning a double to a 32bit variable
VFFTOI:
[000100a8] 2018                      move.l     (a0)+,d0
[000100aa] 2418                      move.l     (a0)+,d2
FFTOI:
[000100ac] 48c2                      ext.l      d2
[000100ae] 6b16                      bmi.s      $000100C6
[000100b0] 0442 03ff                 subi.w     #$03FF,d2
[000100b4] 6b0c                      bmi.s      $000100C2
[000100b6] 0442 001f                 subi.w     #$001F,d2
[000100ba] 6a2a                      bpl.s      $000100E6
[000100bc] 4442                      neg.w      d2
[000100be] e4a8                      lsr.l      d2,d0
[000100c0] 4e75                      rts
[000100c2] 7000                      moveq.l    #0,d0
[000100c4] 4e75                      rts
[000100c6] 4442                      neg.w      d2
[000100c8] 0442 03ff                 subi.w     #$03FF,d2
[000100cc] 6bf4                      bmi.s      $000100C2
[000100ce] 0442 001f                 subi.w     #$001F,d2
[000100d2] 6a08                      bpl.s      $000100DC
[000100d4] 4442                      neg.w      d2
[000100d6] e4a8                      lsr.l      d2,d0
[000100d8] 4480                      neg.l      d0
[000100da] 4e75                      rts
[000100dc] 6608                      bne.s      $000100E6
[000100de] 0c80 8000 0000            cmpi.l     #$80000000,d0
[000100e4] 67f4                      beq.s      $000100DA
[000100e6] 7002                      moveq.l    #2,d0
[000100e8] 6000 0018                 bra.w      ERROR
*/

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
			/*
			mant = 0xb851eb851eb90000ULL;
			exp = 0x03fb;
			*/
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
		if (mant >= 0x9FFFFFFF00000000ULL)
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


int gf4tp_tp(FILE *ost, struct gfainf *gi, struct gfalin *gl, unsigned int flags)
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
	/* number character text */
	static const unsigned char gfanct[16] = "0123456789ABCDEF";

	assert(sizeof(uint64_t) == 8);

	pop16b(lcp, src);

	switch (lcp)
	{
		/* 0+ 4- 8+ 12- 16+ 20- 24+ 28- 32+ 36- 40+ 44- 48+ 52- 56* 60* 
		 * 64* 76..120+ 124..168- 176+ 196+ 200+ 204- 208- 216+ 224* 1796+ 
		 */
	case 0:
	case 8:
	case 16:
	case 24:
	case 32:
	case 40:
	case 48:
	case 76:
	case 80:
	case 84:
	case 88:
	case 92:
	case 96:
	case 100:
	case 104:
	case 108:
	case 112:
	case 116:
	case 120:
	case 176:
	case 196:
	case 200:
	case 216:
		if (gl->depth > 0)				/* Required because i is unsigned */
			for (i = 0; i < gl->depth; i++)
				putc(' ', ost), putc(' ', ost);
		gl->depth += 1;
		break;
	case 1796: /* "> FUNCTION " */
		if (gl->depth > 0)
			for (i = 0; i < gl->depth; i++)
				putc(' ', ost), putc(' ', ost);
		gl->depth += 1;
		break;
	case 4:
	case 12:
	case 20:
	case 28:
	case 36:
	case 44:
	case 52:
	case 124:
	case 128:
	case 132:
	case 136:
	case 140:
	case 144:
	case 148:
	case 152:
	case 156:
	case 160:
	case 164:
	case 168:
	case 204:
	case 208:
		gl->depth -= 1;
		if (gl->depth > 0)
			for (i = 0; i < gl->depth; i++)
				putc(' ', ost), putc(' ', ost);
		break;
	case 56:
	case 60:
	case 64:
	case 224:
	case 252:
		if (gl->depth > 0)
			for (i = 1; i < gl->depth; i++)
				putc(' ', ost), putc(' ', ost);
		break;
	default:
		if (gl->depth > 0)
			for (i = 0; i < gl->depth; i++)
				putc(' ', ost), putc(' ', ost);
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
			gfa_putc(ost, *mrk++, flags);
	}	

	inline_filename[0] = '\0';

	switch (lcp)
	{									/* TYPE */
	case 456:
	case 460:
	case 464:
	case 468:							/* REM, ', ==>, DATA */
		if (*src != 0x0D)
			putc(' ', ost);
		/* FALLTROUGH */
	case 1644:
	case 1016:							/* $, . */
		/* (1640(OPTION )) */
		while (*src != 0x0D)
			gfa_putc(ost, *src++, flags);
		src++;
		src += (src - gl->line) & 0x01;
		break;
	case 180:							/* End of program */
		return 0;
	case 192:
	case 236:							/* MONITOR, RESTORE, */
	case 420:
	case 1020:							/* RESUME, RANDOMIZE, */
	case 1072:
	case 1108:							/* CLOSE, DEFLINE, */
	case 1128:
	case 1136:							/* DEFMARK, DEFTEXT, */
	case 1140:
	case 1144:							/* DEFFILL, DEFFILL, */
	case 1236:
	case 1276:
	case 1300:							/* QUIT, DIR, FILES, */
	case 1364:
	case 1416:
	case 1420:							/* SYSTEM, SOUND, WAVE, */
	case 1592:							/* DUMP */
		if (*src != 0x46)
			putc(' ', ost);
		break;
	case 124:
	case 128:
	case 132:							/* NEXT x# */
		src += 4;
		pop16b(v, src);
		pushvar(mrk, TYPE_FLOAT, v, gi, gf4tp_resvar);
		break;
	case 136:
	case 140:
	case 144:							/* NEXT x% */
		src += 4;
		pop16b(v, src);
		pushvar(mrk, TYPE_INT, v, gi, gf4tp_resvar);
		break;
	case 148:
	case 152:
	case 156:							/* NEXT x& */
		src += 4;
		pop16b(v, src);
		pushvar(mrk, TYPE_WORD, v, gi, gf4tp_resvar);
		break;
	case 160:
	case 164:
	case 168:							/* NEXT x| */
		src += 4;
		pop16b(v, src);
		pushvar(mrk, TYPE_BYTE, v, gi, gf4tp_resvar);
		break;
	case 304:
	case 76:
	case 80:
	case 84:
	case 256:							/* x#= / */
		/* FOR x#= / LET x#= */
		pop16b(v, src);
		pushvar(mrk, TYPE_FLOAT, v, gi, gf4tp_resvar);
		putc('=', ost);
		break;
	case 308:
	case 260:							/* x$= / LET x$= */
		pop16b(v, src);
		pushvar(mrk, TYPE_STRING, v, gi, gf4tp_resvar);
		putc('=', ost);
		break;
	case 312:
	case 88:
	case 92:
	case 96:
	case 264:							/* x%= / */
		/* FOR x%= / LET x%= */
		pop16b(v, src);
		pushvar(mrk, TYPE_INT, v, gi, gf4tp_resvar);
		putc('=', ost);
		break;
	case 316:
	case 268:							/* x!= / LET x!= */
		pop16b(v, src);
		pushvar(mrk, TYPE_BOOL, v, gi, gf4tp_resvar);
		putc('=', ost);
		break;
	case 320:
	case 100:
	case 104:
	case 108:
	case 272:							/* x&= / */
		/* FOR x&= / LET x&= */
		pop16b(v, src);
		pushvar(mrk, TYPE_WORD, v, gi, gf4tp_resvar);
		putc('=', ost);
		break;
	case 324:
	case 112:
	case 116:
	case 120:
	case 276:							/* x|= / */
		/* FOR x|= / LET x|= */
		pop16b(v, src);
		pushvar(mrk, TYPE_BYTE, v, gi, gf4tp_resvar);
		putc('=', ost);
		break;
	case 328:
	case 280:
	case 656:
	case 688:
	case 720:							/* x#()= / LET x#()= */
	case 752:
	case 784:
	case 816:							/* INC x#() / DEC x#() */
		/* ADD x#() / SUB x#() */
		/* MUL x#() / DIV x#() */
		pop16b(v, src);
		pushvar(mrk, TYPE_DOUBLE_ARR, v, gi, gf4tp_resvar);
		break;
	case 332:
	case 284:							/* x$()= / LET x$()= */
		pop16b(v, src);
		pushvar(mrk, TYPE_STRING_ARR, v, gi, gf4tp_resvar);
		break;
	case 336:
	case 288:
	case 660:
	case 692:
	case 724:							/* x%()= / LET x%()= */
	case 756:
	case 788:
	case 820:							/* INC x%() / DEC x%() */
		/* ADD x%() / SUB x%() */
		/* MUL x%() / DIV x%() */
		pop16b(v, src);
		pushvar(mrk, TYPE_INT_ARR, v, gi, gf4tp_resvar);
		break;
	case 340:
	case 292:							/* x!()= / LET x!()= */
		pop16b(v, src);
		pushvar(mrk, TYPE_BOOL_ARR, v, gi, gf4tp_resvar);
		break;
	case 344:
	case 296:
	case 664:
	case 696:
	case 728:							/* x&()= / LET x&()= */
	case 760:
	case 792:
	case 824:							/* INC x&() / DEC x&() */
		/* ADD x&() / SUB x&() */
		/* MUL x&() / DIV x&() */
		pop16b(v, src);
		pushvar(mrk, TYPE_WORD_ARR, v, gi, gf4tp_resvar);
		break;
	case 348:
	case 300:
	case 668:
	case 700:
	case 732:							/* x|()= / LET x|()= */
	case 764:
	case 796:
	case 828:							/* INC x|() / DEC x|() */
		/* ADD x|() / SUB x|() */
		/* MUL x|() / DIV x|() */
		pop16b(v, src);
		pushvar(mrk, TYPE_BYTE_ARR, v, gi, gf4tp_resvar);
		break;
	case 24:
	case 216:							/* PROCEDURE / */
		/* > PROCEDURE */
		pop16b(v, src);
		pushvar(mrk, TYPE_FUNCTION, v, gi, gf4tp_resvar);
		if (src < srcend && *src != TOK_LINE_COMMENT)
			putc('(', ost);
		break;
	case 240:
	case 244:
	case 248:							/*  / @ / GOSUB */
		pop16b(v, src);
		pushvar(mrk, TYPE_FUNCTION, v, gi, gf4tp_resvar);
		break;
	case 1796:							/* > FUNCTION */
		break;
	case 588:							/* PRINT */
	case 1212:							/* LPRINT */
	case 1260:							/* CLS */
		if (src < srcend && *src != TOK_LINE_COMMENT)
			putc(' ', ost);
		break;
	case 640:
	case 672:							/* INC x# / DEC x# */
		pop16b(v, src);
		pushvar(mrk, TYPE_FLOAT, v, gi, gf4tp_resvar);
		break;
	case 644:
	case 676:							/* INC x% / DEC x% */
		pop16b(v, src);
		pushvar(mrk, TYPE_INT, v, gi, gf4tp_resvar);
		break;
	case 648:
	case 680:							/* INC x& / DEC x& */
		pop16b(v, src);
		pushvar(mrk, TYPE_WORD, v, gi, gf4tp_resvar);
		break;
	case 652:
	case 684:							/* INC x| / DEC x| */
		pop16b(v, src);
		pushvar(mrk, TYPE_BYTE, v, gi, gf4tp_resvar);
		break;
	case 704:
	case 736:
	case 768:
	case 800:							/* ADD x#, / SUB x#, / */
		/* MUL x#, / DIV x#, */
		pop16b(v, src);
		pushvar(mrk, TYPE_FLOAT, v, gi, gf4tp_resvar);
		putc(',', ost);
		break;
	case 708:
	case 740:
	case 772:
	case 804:							/* ADD x%, / SUB x%, / */
		/* MUL x%, / DIV x%, */
		pop16b(v, src);
		pushvar(mrk, TYPE_INT, v, gi, gf4tp_resvar);
		putc(',', ost);
		break;
	case 712:
	case 744:
	case 776:
	case 808:							/* ADD x&, / SUB x&, / */
		/* MUL x&, / DIV x&, */
		pop16b(v, src);
		pushvar(mrk, TYPE_WORD, v, gi, gf4tp_resvar);
		putc(',', ost);
		break;
	case 716:
	case 748:
	case 780:
	case 812:							/* ADD x|, / SUB x|, / */
		/* MUL x|, / DIV x|, */
		pop16b(v, src);
		pushvar(mrk, TYPE_BYTE, v, gi, gf4tp_resvar);
		putc(',', ost);
		break;
	case 4:								/* LOOP (4) / */
	case 12:							/* UNTIL (12) / */
	case 16:							/* WHILE (16) / */
	case 20:							/* WEND (20) / */
	case 32:							/* IF (32) / */
	case 48:							/* SELECT (48) / */
	case 56:							/* ELSE (56) / */
	case 60:							/* DEFAULT (60) / */
	case 64:							/* ELSE IF (64) / */
	case 172:							/* EXIT IF (172) / */
	case 176:							/* SELECT (176) / */
	case 196:							/* DO WHILE (196) / */
	case 200:							/* DO UNTIL (200) / */
	case 204:							/* LOOP WHILE (204) / */
	case 208:							/* LOOP UNTIL (208) / */
	case 220:							/* EXIT IF (220) / */
	case 224:							/* CASE (224) /  */
		src += 4;
		/*
		   ' CASE 76,80,84,88,92,96,100,104,108,112,116,120
		   ' CASE 124,128,132,136,140,144,148,152,156,160,164,168
		   ' CASE 76,88,100,112,124,136,148,160              ! FOR / NEXT
		   CASE 124,128,132,136,140,144,148,152,156,160,164,168 ! NEXT
		   ADD a&,6
		 */
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
					putc(' ', ost);

				putc('!', ost);

				for (mrk = src; mrk < srcend && *mrk != 0x0D; mrk++)
					;

				if (mrk < srcend)
				{
					while (src < mrk)
						gfa_putc(ost, *src++, flags);
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
				if (flags & TP_SAVEINLINE)
				{
					if (inline_filename[0] == '\0')
						sprintf(inline_filename, "l%5lu", gl->lineno);
					strcat(inline_filename, ".inl");
					bsave(inline_filename, src, (size_t) (srcend - src));
					gf4tp_output("Saved INLINE data into file --> %s (%ld bytes.)\n", inline_filename, (long)(srcend - src));
					inline_filename[0] = '\0';
				} else
				{
					gfa_putnl(ost, flags);
					/* Added hex printing of INLINE data / Markus Hoffmann 2013 */
					fprintf(ost, "' ## INLINE:");
					for (mrk = src; mrk < srcend; mrk++)
					{
						if ((mrk - src) % 16 == 0)
						{
							gfa_putnl(ost, flags);
							fprintf(ost, "' $%04lx: ", (long) (mrk - src));
						}
						fprintf(ost, "%02x ", *mrk);
					}
					gfa_putnl(ost, flags);
					fprintf(ost, "' %ld  Bytes.", (long) (mrk - src));
					gfa_putnl(ost, flags);
					return 1;
				}
				src = srcend;
			}
			break;

		case TOK_CHAR_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_CHAR_CONST:
			putc('"', ost);
			for (mrk = src + 4; src < mrk && *src == '\0'; src++)
				;
			while (src < mrk)
				gfa_putc(ost, *src++, flags);
			putc('"', ost);
			break;

		case TOK_DEC_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_DEC_CONST:
			pop32b(num, src);
			pushsign(num);
			pushnum(num, 10);
			break;

		case TOK_HEX_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_HEX_CONST:
			putc('&', ost);
			putc('H', ost);
			pop32b(i, src);
			pushnum(i, 16);
			break;

		case TOK_OCT_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_OCT_CONST:
			putc('&', ost);
			putc('O', ost);
			pop32b(i, src);
			pushnum(i, 8);
			break;

		case TOK_BIN_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_BIN_CONST:
			putc('&', ost);
			putc('X', ost);
			pop32b(i, src);
			pushnum(i, 2);
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
					gfa_putc(ost, *mrk++, flags);
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
					gfa_putc(ost, *mrk++, flags);
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
					gfa_putc(ost, *mrk++, flags);
			}
			break;

		case TOK_OCT_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_OCT_DBL_CONST:
			/* binary 8byte double -> ASCII Octal */
			putc('&', ost);
			putc('O', ost);
			ul = dgfafloattolong(src);
			src += 8;
			pushnum(ul, 8);
			break;

		case TOK_BIN_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_BIN_DBL_CONST:
			/* binary 8byte double -> ASCII binary */
			putc('&', ost);
			putc('X', ost);
			ul = dgfafloattolong(src);
			src += 8;
			pushnum(ul, 2);
			break;

		case TOK_HEX_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_HEX_DBL_CONST:
			/* binary 8byte double -> ASCII hexa */
			putc('&', ost);
			putc('H', ost);
			ul = dgfafloattolong(src);
			src += 8;
			pushnum(ul, 16);
			break;

		case TOK_DEC_DBL_CONST_PAD:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case TOK_DEC_DBL_CONST:						/* 1234567890.1234567890E+1234567890 */
			/* binary 8byte double -> ASCII decimal */
			dgfafloattostr(src, strbuf, 13);
			fputs(strbuf, ost);
#if 0
			fprintf(ost, " /* %02x%02x%02x%02x%02x%02x%02x%02x */ ", src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
			/*
			  90000000 00000402 / c8000000 00000405 -> b851eb85 1eb903fb
			 */
#endif
			src += 8;
			break;

		case TOK_STRING_CONST:						/* " */
			putc('"', ost);
			for (i = *src++; i > 0; i--)
			{
				if (*src == '"')
					putc('"', ost);
				gfa_putc(ost, *src++, flags);
			}
			putc('"', ost);
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
			pushvar(mrk, i, v, gi, gf4tp_resvar);
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
			pushvar(mrk, i, v, gi, gf4tp_resvar);
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
				gfa_putc(ost, *mrk++, flags);
			break;
		}
	}
	
	gfa_putnl(ost, flags);

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
