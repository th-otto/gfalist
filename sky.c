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

#ifndef O_BINARY
#define O_BINARY 0
#endif
#ifndef S_IRGRP
#define S_IRGRP 0
#endif

#include "sky.h"
#include "tables.h"

static int (*gf4tp_output)(const char *format, ...);
static unsigned char *(*gf4tp_resvar)(struct gfainf *gi, unsigned short type, unsigned short var);

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

static uint32_t dgfaieeetolong(const unsigned char *src)
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


unsigned char *gf4tp_tp(unsigned char *dst, FILE *ost, struct gfainf *gi, struct gfalin *gl, unsigned int flags)
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
	int64_t l;
	uint32_t ul;

	/* double conversion buffer */
	unsigned char dcb[8];
	unsigned int i;

	int32_t num;

	unsigned char *linestart = dst;

	union
	{
		uint64_t ull;
		double d;
	} u;

	/* Variablen-Suffix text (VST) */
	/* #,$,%,!,#(,$(,%(,!(,&,|,,,&(,|(,,$ */

	static const unsigned char gfavst[][3] = {
		{ 0x23, 0x00, 0x00 },				/* "#"  */
		{ 0x24, 0x00, 0x00 },				/* "$"  */
		{ 0x25, 0x00, 0x00 },				/* "%"  */
		{ 0x21, 0x00, 0x00 },				/* "!"  */
		{ 0x23, 0x28, 0x00 },				/* "#(" */
		{ 0x24, 0x28, 0x00 },				/* "$(" */
		{ 0x25, 0x28, 0x00 },				/* "%(" */
		{ 0x21, 0x28, 0x00 },				/* "!(" */
		{ 0x26, 0x00, 0x00 },				/* "&"  */
		{ 0x7C, 0x00, 0x00 },				/* "|"  */
		{ 0x00, 0x00, 0x00 },				/* ""   */
		{ 0x00, 0x00, 0x00 },				/* ""   */
		{ 0x26, 0x28, 0x00 },				/* "&(" */
		{ 0x7C, 0x28, 0x00 },				/* "|(" */
		{ 0x00, 0x00, 0x00 },				/* ""   */
		{ 0x24, 0x00, 0x00 }				/* "$"  */
	};
	/* number character text */
	static const unsigned char gfanct[16] = "0123456789ABCDEF";

	assert(sizeof(double) == 8);
	assert(sizeof(uint64_t) == 8);

	pop16b(lcp, src);

#ifdef DEBUG
	gf4tp_output("  pointer= %hu  depth= %hd\n", lcp, gl->depth);
#endif

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
		gl->depth -= (flags & TP_BACKW) != 0;

		if (gl->depth > 0)				/* Required because i is unsigned */
			for (i = 0; i < gl->depth; i++)
				*dst++ = ' ', *dst++ = ' ';

		gl->depth += (flags & TP_BACKW) == 0;
		break;
	case 1796:
		gl->depth -= (flags & TP_BACKW) != 0;

		if (gl->depth > 0)
			for (i = 0; i < gl->depth; i++)
				*dst++ = ' ', *dst++ = ' ';

		gl->depth += (flags & TP_BACKW) == 0 && (flags & TP_BUGEM) == 0;
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
		gl->depth -= (flags & TP_BACKW) == 0;

		if (gl->depth > 0)
			for (i = 0; i < gl->depth; i++)
				*dst++ = ' ', *dst++ = ' ';

		gl->depth += (flags & TP_BACKW) != 0;
		break;
	case 56:
	case 60:
	case 64:
	case 224:
	case 252:
		if (gl->depth > 0)
			for (i = 1; i < gl->depth; i++)
				*dst++ = ' ', *dst++ = ' ';
		break;
	default:
		if (gl->depth > 0)
			for (i = 0; i < gl->depth; i++)
				*dst++ = ' ', *dst++ = ' ';
		break;
	}

	lct = lcp / 4;
	if (lct < 512)
		mrk = (const unsigned char *)gfalct[lct];
	else
		mrk = NULL;
	if (mrk == NULL)
	{
		gf4tp_output("gf4tp_tp() Error at line %u:%lu: %u is an unknown control code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), lcp);
	} else
	{
		while (*mrk != 0x00)
			*dst++ = *mrk++;
	}	

	switch (lcp)
	{									/* TYPE */
	case 456:
	case 460:
	case 464:
	case 468:							/* REM, ', ==>, DATA */
		if (*src != 0x0D)
			*dst++ = ' ';
		/* FALLTROUGH */
	case 1644:
	case 1016:							/* $, . */
		/* (1640(OPTION )) */
		while (*src != 0x0D)
			*dst++ = *src++;
		src++;
		src += (src - gl->line) & 0x01;
		break;
	case 180:							/* End of program */
		return NULL;
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
			*dst++ = ' ';
		break;
	case 124:
	case 128:
	case 132:							/* NEXT x# */
		src += 4;
		pop16b(v, src);
		pushvar(dst, mrk, 0, v, gi, gf4tp_resvar);
		break;
	case 136:
	case 140:
	case 144:							/* NEXT x% */
		src += 4;
		pop16b(v, src);
		pushvar(dst, mrk, 2, v, gi, gf4tp_resvar);
		break;
	case 148:
	case 152:
	case 156:							/* NEXT x& */
		src += 4;
		pop16b(v, src);
		pushvar(dst, mrk, 8, v, gi, gf4tp_resvar);
		break;
	case 160:
	case 164:
	case 168:							/* NEXT x| */
		src += 4;
		pop16b(v, src);
		pushvar(dst, mrk, 9, v, gi, gf4tp_resvar);
		break;
	case 304:
	case 76:
	case 80:
	case 84:
	case 256:							/* x#= / */
		/* FOR x#= / LET x#= */
		pop16b(v, src);
		pushvar(dst, mrk, 0, v, gi, gf4tp_resvar);
		*dst++ = '=';
		break;
	case 308:
	case 260:							/* x$= / LET x$= */
		pop16b(v, src);
		pushvar(dst, mrk, 1, v, gi, gf4tp_resvar);
		*dst++ = '=';
		break;
	case 312:
	case 88:
	case 92:
	case 96:
	case 264:							/* x%= / */
		/* FOR x%= / LET x%= */
		pop16b(v, src);
		pushvar(dst, mrk, 2, v, gi, gf4tp_resvar);
		*dst++ = '=';
		break;
	case 316:
	case 268:							/* x!= / LET x!= */
		pop16b(v, src);
		pushvar(dst, mrk, 3, v, gi, gf4tp_resvar);
		*dst++ = '=';
		break;
	case 320:
	case 100:
	case 104:
	case 108:
	case 272:							/* x&= / */
		/* FOR x&= / LET x&= */
		pop16b(v, src);
		pushvar(dst, mrk, 8, v, gi, gf4tp_resvar);
		*dst++ = '=';
		break;
	case 324:
	case 112:
	case 116:
	case 120:
	case 276:							/* x|= / */
		/* FOR x|= / LET x|= */
		pop16b(v, src);
		pushvar(dst, mrk, 9, v, gi, gf4tp_resvar);
		*dst++ = '=';
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
		pushvar(dst, mrk, 4, v, gi, gf4tp_resvar);
		break;
	case 332:
	case 284:							/* x$()= / LET x$()= */
		pop16b(v, src);
		pushvar(dst, mrk, 5, v, gi, gf4tp_resvar);
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
		pushvar(dst, mrk, 6, v, gi, gf4tp_resvar);
		break;
	case 340:
	case 292:							/* x!()= / LET x!()= */
		pop16b(v, src);
		pushvar(dst, mrk, 7, v, gi, gf4tp_resvar);
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
		pushvar(dst, mrk, 12, v, gi, gf4tp_resvar);
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
		pushvar(dst, mrk, 13, v, gi, gf4tp_resvar);
		break;
	case 24:
	case 216:							/* PROCEDURE / */
		/* > PROCEDURE  */
		pop16b(v, src);
		pushvar(dst, mrk, 11, v, gi, gf4tp_resvar);
		if (*src != 0x46)
			*dst++ = '(';
		break;
	case 240:
	case 244:
	case 248:							/*  / @ / GOSUB */
		pop16b(v, src);
		pushvar(dst, mrk, 11, v, gi, gf4tp_resvar);
		break;
	case 1796:							/* > FUNCTION */
		break;
	case 588:
	case 1212:
	case 1260:							/* PRINT / LPRINT */
		/* CLS */
		if (*src != 0x46)
			*dst++ = ' ';
		break;
	case 640:
	case 672:							/* INC x# / DEC x# */
		pop16b(v, src);
		pushvar(dst, mrk, 0, v, gi, gf4tp_resvar);
		break;
	case 644:
	case 676:							/* INC x% / DEC x% */
		pop16b(v, src);
		pushvar(dst, mrk, 2, v, gi, gf4tp_resvar);
		break;
	case 648:
	case 680:							/* INC x& / DEC x& */
		pop16b(v, src);
		pushvar(dst, mrk, 8, v, gi, gf4tp_resvar);
		break;
	case 652:
	case 684:							/* INC x| / DEC x| */
		pop16b(v, src);
		pushvar(dst, mrk, 9, v, gi, gf4tp_resvar);
		break;
	case 704:
	case 736:
	case 768:
	case 800:							/* ADD x#, / SUB x#, / */
		/* MUL x#, / DIV x#, */
		pop16b(v, src);
		pushvar(dst, mrk, 0, v, gi, gf4tp_resvar);
		*dst++ = ',';
		break;
	case 708:
	case 740:
	case 772:
	case 804:							/* ADD x%, / SUB x%, / */
		/* MUL x%, / DIV x%, */
		pop16b(v, src);
		pushvar(dst, mrk, 2, v, gi, gf4tp_resvar);
		*dst++ = ',';
		break;
	case 712:
	case 744:
	case 776:
	case 808:							/* ADD x&, / SUB x&, / */
		/* MUL x&, / DIV x&, */
		pop16b(v, src);
		pushvar(dst, mrk, 8, v, gi, gf4tp_resvar);
		*dst++ = ',';
		break;
	case 716:
	case 748:
	case 780:
	case 812:							/* ADD x|, / SUB x|, / */
		/* MUL x|, / DIV x|, */
		pop16b(v, src);
		pushvar(dst, mrk, 9, v, gi, gf4tp_resvar);
		*dst++ = ',';
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
		switch (pft = *src++)
		{
		case 70:
			src += (src - gl->line) & 0x01;

			if (src == srcend)
				break;
			if (lcp != 1668)
			{
				for (i = *src++; i > 0; i--)
					*dst++ = ' ';

				*dst++ = '!';

				for (mrk = src; mrk < srcend && *mrk != 0x0D; mrk++)
					;

				if (mrk < srcend)
				{
					while (src < mrk)
						*dst++ = *src++;
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
					/* find out pointer name and save the data into file.... */
					char filename[256];
					unsigned char *p = linestart;
					char *d = filename;

					while (p < dst && *p == ' ')
						p++;
					while (p < dst && *p)
					{
						if (*p == ' ')
							*d++ = '-';
						else if (*p == '%')
							*d++ = '.';
						else if (*p == ',')
							break;
						else if (isprint(*p))
							*d++ = *p;
						else
							*d++ = '_';
						p++;
					}
					*d++ = 'i';
					*d++ = 'n';
					*d++ = 'l';
					*d = 0;
					bsave(filename, src, (size_t) (srcend - src));
					gf4tp_output("Saved INLINE data into file --> %s (%d bytes.)\n", filename, srcend - src);
				} else
				{
					/* Added hex printing of INLINE data / Markus Hoffmann 2013 */
					fprintf(ost, "' ## INLINE:");
					for (mrk = src; mrk < srcend; mrk++)
					{
						if ((mrk - src) % 16 == 0)
						{
							if (flags & TP_CONV)
							{
								putc('\n', ost);
							} else
							{
								putc(0x0d, ost);
								putc(0x0a, ost);
							}
							fprintf(ost, "' $%04lx: ", (long) (mrk - src));
						}
						fprintf(ost, "%02x ", *mrk);
					}
					if (flags & TP_CONV)
					{
						putc('\n', ost);
					} else
					{
						putc(0x0d, ost);
						putc(0x0a, ost);
					}
					fprintf(ost, "' %ld  Bytes.", (long) (mrk - src));
					if (flags & TP_CONV)
					{
						putc('\n', ost);
					} else
					{
						putc(0x0d, ost);
						putc(0x0a, ost);
					}
				}
				src = srcend;
			}
			break;

		case 199:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 198:
			*dst++ = '"';
			for (mrk = src + 4; src < mrk && *src == 0x00; src++)
				;
			while (src < mrk)
				*dst++ = *src++;
			*dst++ = '"';
			break;

		case 201:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 200:
			pop32b(num, src);
			pushsig(dst, num);
			pushnum(dst, num, 10);
			break;

		case 203:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 202:
			*dst++ = '&';
			*dst++ = 'H';
			pop32b(i, src);
			pushnum(dst, i, 16);
			break;

		case 205:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 204:
			*dst++ = '&';
			*dst++ = 'O';
			pop32b(i, src);
			pushnum(dst, i, 8);
			break;

		case 207:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 206:
			*dst++ = '&';
			*dst++ = 'X';
			pop32b(i, src);
			pushnum(dst, i, 2);
			break;

		case 208:
			sft = *src++;
			mrk = (const unsigned char *)gfasft_208[sft];
			if (mrk == NULL)
			{
				gf4tp_output("gf4tp_tp() Error at line %u:%lu: %u/%u is an unknown sft code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft, sft);
			} else
			{
				while (*mrk != 0x00)
					*dst++ = *mrk++;
			}
			break;

		case 209:
			sft = *src++;
			mrk = (const unsigned char *)gfasft_209[sft];
			if (mrk == NULL)
			{
				gf4tp_output("gf4tp_tp() Error at line %u:%lu: %u/%u is an unknown sft code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft, sft);
			} else
			{
				while (*mrk != 0x00)
					*dst++ = *mrk++;
			}
			break;

		case 210:
			sft = *src++;
			mrk = (const unsigned char *)gfasft_210[sft];
			if (mrk == NULL)
			{
				gf4tp_output("gf4tp_tp() Error at line %u:%lu: %u/%u is an unknown sft code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft, sft);
			} else
			{
				while (*mrk != 0x00)
					*dst++ = *mrk++;
			}
			break;

		case 215:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 216:
			/* binary 8byte double -> ASCII Octal */
			*dst++ = '&';
			*dst++ = 'O';
			ul = dgfaieeetolong(src);
			src += 8;
			pushnum(dst, ul, 8);
			break;

		case 217:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 218:
			/* binary 8byte double -> ASCII binary */
			*dst++ = '&';
			*dst++ = 'X';
			ul = dgfaieeetolong(src);
			src += 8;
			pushnum(dst, ul, 2);
			break;

		case 219:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 220:
			/* binary 8byte double -> ASCII hexa */
			*dst++ = '&';
			*dst++ = 'H';
			ul = dgfaieeetolong(src);
			src += 8;
			pushnum(dst, ul, 16);
			break;

		case 221:
			src++; /* skip filler byte at odd address */
			/* FALLTROUGH */
		case 223:						/* 1234567890.1234567890E+1234567890 */
			/* binary 8byte double -> ASCII decimal */
			/* We cannot abuse dst as dcb here via bin = dst because
			 * there might be a constant at the 256 byte line length
			 * limit smaller than eight characters in it's ASCII
			 * representation, causing a buffer overflow.
			 */
			dgfabintoieee(dcb, src);
			/* kill the sign: if negative, will have a UMINUS token before the value */
			dcb[0] &= 0x7f;
			src += 8;
			copy64b(u.ull, dcb);
			l = llrint(u.d);
			if (isfinite(u.d) && l == u.d)
				dst += sprintf((char *) dst, "%lld", (long long)l);
			else
				dst += sprintf((char *) dst, "%.12G", u.d);
			break;

		case 222:						/* " */
			*dst++ = '"';
			for (i = *src++; i > 0; i--)
				if ((*dst++ = *src++) == '"')
					*dst++ = '"';
			*dst++ = '"';
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
			/* varstart=dst; */  /* save marker for variable name for INLINE */
			i = pft - 224;
			v = *src++;
			pushvar(dst, mrk, i, v, gi, gf4tp_resvar);
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
			pushvar(dst, mrk, i, v, gi, gf4tp_resvar);
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
			gf4tp_output("gf4tp_tp() Error at line %u:%lu: %u is an unknown token code to me\n", gl->lineno, (unsigned long)(src - 1 - gl->line), pft);
			break;

		default:
			mrk = (const unsigned char *)gfapft[pft];
			assert(mrk != NULL);
			while (*mrk != 0x00)
				*dst++ = *mrk++;
			break;
		}
	}
	*dst = '\0';
	return dst;
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
		shift32b(cp, src);
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
				case 0x41:
					*dst++ = 0x61;
					src++;
					break;
				case 0x42:
					*dst++ = 0x62;
					src++;
					break;
				case 0x43:
					*dst++ = 0x63;
					src++;
					break;
				case 0x44:
					*dst++ = 0x64;
					src++;
					break;
				case 0x45:
					*dst++ = 0x65;
					src++;
					break;
				case 0x46:
					*dst++ = 0x66;
					src++;
					break;
				case 0x47:
					*dst++ = 0x67;
					src++;
					break;
				case 0x48:
					*dst++ = 0x68;
					src++;
					break;
				case 0x49:
					*dst++ = 0x69;
					src++;
					break;
				case 0x4A:
					*dst++ = 0x6A;
					src++;
					break;
				case 0x4B:
					*dst++ = 0x6B;
					src++;
					break;
				case 0x4C:
					*dst++ = 0x6C;
					src++;
					break;
				case 0x4D:
					*dst++ = 0x6D;
					src++;
					break;
				case 0x4E:
					*dst++ = 0x6E;
					src++;
					break;
				case 0x4F:
					*dst++ = 0x6F;
					src++;
					break;
				case 0x50:
					*dst++ = 0x70;
					src++;
					break;
				case 0x51:
					*dst++ = 0x71;
					src++;
					break;
				case 0x52:
					*dst++ = 0x72;
					src++;
					break;
				case 0x53:
					*dst++ = 0x73;
					src++;
					break;
				case 0x54:
					*dst++ = 0x74;
					src++;
					break;
				case 0x55:
					*dst++ = 0x75;
					src++;
					break;
				case 0x56:
					*dst++ = 0x76;
					src++;
					break;
				case 0x57:
					*dst++ = 0x77;
					src++;
					break;
				case 0x58:
					*dst++ = 0x78;
					src++;
					break;
				case 0x59:
					*dst++ = 0x79;
					src++;
					break;
				case 0x5A:
					*dst++ = 0x7A;
					src++;
					break;
				default:
					*dst++ = *src++;
					break;
				}
			}
			*dst++ = 0x00;

			j--;
		}

		/* Skip fill byte if neccessary (odd position at read end) */
		src = dst += (dst - top) & 0x01;
	}
}
