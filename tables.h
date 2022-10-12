#ifndef TABLES_H
#define TABLES_H

extern const char *const gfalct[520];
extern unsigned short const size_lct;
extern const char *const gfapft[256];
extern const char *const gfasft_208[256];
extern const char *const gfasft_209[256];
extern const char *const gfasft_210[256];
struct gfaversinfo {
	short len_magic;
	short num_offsets;
};
extern struct gfaversinfo const gfarecl[71];

/*
 * line level commands
 */
#define TOK_CMD_EOF              180
#define TOK_CMD_INLINE          1668


/*
 * tokens in a line
 */
#define TOK_LINE_COMMENT         70
#define TOK_CHAR_CONST          198
#define TOK_CHAR_CONST_PAD      199
#define TOK_DEC_CONST           200
#define TOK_DEC_CONST_PAD       201
#define TOK_HEX_CONST           202
#define TOK_HEX_CONST_PAD       203
#define TOK_OCT_CONST           204
#define TOK_OCT_CONST_PAD       205
#define TOK_BIN_CONST           206
#define TOK_BIN_CONST_PAD       207
#define TOK_SUBFUNC_208         208
#define TOK_SUBFUNC_209         209
#define TOK_SUBFUNC_210         210
#define TOK_OCT_DBL_CONST_PAD   215
#define TOK_OCT_DBL_CONST       216
#define TOK_BIN_DBL_CONST_PAD   217
#define TOK_BIN_DBL_CONST       218
#define TOK_HEX_DBL_CONST_PAD   219
#define TOK_HEX_DBL_CONST       220
#define TOK_DEC_DBL_CONST_PAD   221
#define TOK_DEC_DBL_CONST       223
#define TOK_STRING_CONST        222

#endif
