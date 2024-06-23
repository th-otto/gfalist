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
#define TP_MAGIMS "A-BASIC MS-DOS\032\001\001\001" /* Magic for DOS BASIC files */
#define TP_MAGIW3 "A-BASIC WIN300\032\001\001\001" /* Magic for WIN BASIC files */

/* gf4tp_tp flags */
#define TP_CONV                    0x001 /* Convert charset */
#define TP_VERB                    0x002 /* Be verbose */
#define TP_SAVEINLINE              0x004 /* Save INLINE data into .inl files */
#define TP_DEFLIST_CAPITALS        0x008 /* Capitalize names (DEFLIST bit 0) */
#define TP_DEFLIST_POSTFIX         0x010 /* suppress postfix for float variables (!DEFLIST bit 1) */
#define TP_DEFLIST_CPP_COMMENTS    0x020 /* comment marker is // (DEFLIST bit 2) */
#define TP_DEFLIST_C_COMMENTS      0x040 /* comment marker is / * (DEFLIST bit 3) */
#define TP_VARNAMES                0x080 /* list variables names */
#define TP_NEWLINES                0x100 /* print newlines instead of CR/LF */


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

/* offsets */
#define OFF_TYPE_FLOAT        0
#define OFF_TYPE_STRING       1
#define OFF_TYPE_INT          2
#define OFF_TYPE_BOOL         3
#define OFF_TYPE_FLOAT_ARR    4
#define OFF_TYPE_STRING_ARR   5
#define OFF_TYPE_INT_ARR      6
#define OFF_TYPE_BOOL_ARR     7
#define OFF_TYPE_WORD         8
#define OFF_TYPE_BYTE         9
#define OFF_TYPE_LABEL       10
#define OFF_TYPE_PROCEDURE   11
#define OFF_TYPE_WORD_ARR    12
#define OFF_TYPE_BYTE_ARR    13
#define OFF_TYPE_DEFFN       14
#define OFF_TYPE_FIRST       OFF_TYPE_FLOAT
#define OFF_PROGRAMSTART     16
#define OFF_FIRSTLINE        17
#define OFF_CURSORLINE       18
#define OFF_PTR_FLOAT        19
#define OFF_PTR_STRING       20
#define OFF_PTR_INT          21
#define OFF_PTR_BOOL         22
#define OFF_PTR_FLOAT_ARR    23
#define OFF_PTR_STRING_ARR   24
#define OFF_PTR_INT_ARR      25
#define OFF_PTR_BOOL_ARR     26
#define OFF_PTR_WORD         27
#define OFF_PTR_BYTE         28
#define OFF_PTR_LABEL        29
#define OFF_PTR_PROCEDURE    30
#define OFF_PTR_WORD_ARR     31
#define OFF_PTR_BYTE_ARR     32
#define OFF_PTR_DEFFN        33
#define OFF_PTR_FIRST        OFF_PTR_FLOAT
#define OFF_VARSTART         35
#define OFF_UNK1             36
#define OFF_UNK2             37


struct gfainf {
	struct gfahdr hdr;                          /* Header */
	char **ident[16];                           /* Identifier list; pointers to variable names per type */
	char **fld;                                 /* Pointer field */
	char *pool;                                 /* Memory pool; holds all variable names */
	const char *filename;
	FILE *ost;
	unsigned int flags;
	uint32_t poolsize;
	int gbe_ver;
	int max_used_gbe_ver;
	char inline_filename[256];
};

struct gfalin {
	unsigned short size;                        /* Length of the line */
	short depth;                                /* Indent depth */
	unsigned char *line;                        /* Pointer to line buffer */
	unsigned long lineno;
	int needs_check;
	int has_errors;
};

int gf4tp_tp(struct gfainf *gi, struct gfalin *gl);
void gf4tp_getgi(struct gfainf *gi, unsigned char *src);
void gf4tp_getdi(struct gfainf *gi, unsigned char *src);
void gf4tp_getii(struct gfainf *gi);
void gf4tp_init(int (*output)(const char *format, ...), char *(*resvar)(struct gfainf *gi, unsigned short type, unsigned short var));

/* GFA-BASIC files come from M68K platform and use 8 bits per byte */

#define M68K_BIT 8

#define copy16b(dst, src) \
	 dst    = (src)[0],  dst <<= M68K_BIT, \
	 dst   |= (src)[1]

#endif
