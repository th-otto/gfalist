#ifndef SKY_H
#define SKY_H

#include <stdint.h>

#if 'A' != 0x41
#error "need host with ASCII character set"
#endif

#ifndef FALSE
# define FALSE 0
# define TRUE 1
#endif


#define TP_MAGIC1 "GfABASIC"   /* Magic for version 1 and 2 files */
#define TP_MAGIC3 "GFA-BASIC3" /* Magic for version 3 and 4 files */
#define TP_MAGICA "GFA-AMIGAB" /* Magic for Amiga files */
#define TP_MAGIMS "A-BASIC MS-DOS" /* Magic for DOS BASIC files */
#define TP_MAGIW3 "A-BASIC WIN300" /* Magic for WIN BASIC files */

/* gf4tp_tp flags */
#define TP_CONV                    0x01 /* Convert charset */
#define TP_VERB                    0x02 /* Be verbose */
#define TP_SAVEINLINE              0x04 /* Save INLINE data into .inl files */
#define TP_DEFLIST_CAPITALS        0x08 /* Capitalize names (DEFLIST bit 0) */
#define TP_DEFLIST_POSTFIX         0x10 /* suppress postfix for float variables (!DEFLIST bit 1) */
#define TP_DEFLIST_CPP_COMMENTS    0x20 /* comment marker is // (DEFLIST bit 2) */
#define TP_DEFLIST_C_COMMENTS      0x40 /* comment marker is / * (DEFLIST bit 3) */


#define TYPE_FLOAT          0
#define TYPE_STRING         1
#define TYPE_INT            2
#define TYPE_BOOL           3
#define TYPE_FLOAT_ARR      4
#define TYPE_STRING_ARR     5
#define TYPE_INT_ARR        6
#define TYPE_BOOL_ARR       7
#define TYPE_WORD           8
#define TYPE_BYTE           9
#define TYPE_PROCEDURE     11
#define TYPE_WORD_ARR      12
#define TYPE_BYTE_ARR      13
#define TYPE_DEFFN         14


struct gfahdr {
	unsigned char type;                         /* List type/protection */
#define TP_SAVE  0
#define TP_PSAVE 1
	unsigned char vers;                         /* File format version */
	                                            /*  1: Atari, V1.0 */
	                                            /*  2: Atari, V2.0 */
	                                            /*  3: Atari, V3.0 */
	                                            /*     Amiga, V3.5 */
	                                            /*  4: Atari, V3.5 */
	                                            /* 70: MS-DOS */
	                                            /*     Windows */
	unsigned char mag[18];                      /* Magic */
	uint32_t sep[38];                           /* 38 x 32 Bit Memory
	                                             * Separators
	                                             */
};

struct gfainf {
	struct gfahdr *hdr;                         /* Header */
	unsigned char **ident[16];                  /* Identifier list; pointers to variable names per type */
	unsigned char **fld;                        /* Pointer field */
	unsigned char *pool;                        /* Memory pool; holds all variable names */
	const char *filename;
	FILE *ost;
	unsigned int flags;
};

struct gfalin {
	unsigned short size;                        /* Length of the line */
	short depth;                                /* Indent depth */
	unsigned char *line;                        /* Pointer to line buffer */
	unsigned long lineno;
};

int gf4tp_tp(struct gfainf *gi, struct gfalin *gl);
void gf4tp_getgi(struct gfainf *gi, unsigned char *src);
void gf4tp_getdi(struct gfainf *gi, unsigned char *src);
void gf4tp_getii(struct gfainf *gi);
void gf4tp_init(int (*output)(const char *format, ...), unsigned char *(*resvar)(struct gfainf *gi, unsigned short type, unsigned short var));

/* GFA-BASIC files come from M68K platform and use 8 bits per byte */

#define M68K_BIT 8

#define copy16b(dst, src) \
	 dst    = (src)[0],  dst <<= M68K_BIT, \
	 dst   |= (src)[1]

#endif
