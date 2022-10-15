#ifndef TABLES_H
#define TABLES_H

extern const char *const gfalct[];
extern unsigned int const size_lct;
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
#define TOK_CMD_DO                0
#define TOK_CMD_LOOP              1
#define TOK_CMD_REPEAT            2
#define TOK_CMD_UNTIL             3
#define TOK_CMD_WHILE             4
#define TOK_CMD_WEND              5
#define TOK_CMD_PROCEDURE         6
#define TOK_CMD_ENDPROC           7
#define TOK_CMD_IF                8
#define TOK_CMD_ENDIF             9
#define TOK_CMD_FUNCTION         10
#define TOK_CMD_ENDFUNC          11
#define TOK_CMD_SELECT           12
#define TOK_CMD_ENDSELECT        13
#define TOK_CMD_ELSE             14
#define TOK_CMD_DEFAULT          15
#define TOK_CMD_ELSEIF           16
#define TOK_CMD_RETURN           17
#define TOK_CMD_RETURN_STR       18
#define TOK_CMD_FOR_FLOAT        19
#define TOK_CMD_NEXT_FLOAT       31
#define TOK_CMD_EXITIF           43
#define TOK_CMD_SELECT_STR       44
#define TOK_CMD_EOF              45
#define TOK_CMD_DO_WHILE         49
#define TOK_CMD_LOOP_UNTIL       52
#define TOK_CMD_PROCEDURE2       54
#define TOK_CMD_EXITIF2          55
#define TOK_CMD_CASE             56
#define TOK_CMD_CALL_IMP         60
#define TOK_CMD_GOSUB            61
#define TOK_CMD_CALL             62
#define TOK_CMD_LABEL            63
#define TOK_CMD_LET_FLOAT        64
#define TOK_CMD_ASSIGN_FLOAT     76
#define TOK_CMD_ASSIGN_BYTE_ARR  87
#define TOK_CMD_REM             114
#define TOK_CMD_COMMENT         115
#define TOK_CMD_SYNERR          116
#define TOK_CMD_DATA            117
#define TOK_CMD_END             124
#define TOK_CMD_INC_FLOAT       160
#define TOK_CMD_OFF             175
#define TOK_CONST_ZERO          184
#define TOK_CONST_ONE           185
#define TOK_CONST_TWO           186
#define TOK_CONST_THREE         187
#define TOK_CMD_DIV_FLOAT       200
#define TOK_CMD_DIV_BYTE_ARR    207
#define TOK_CMD_ADDROUT         225
#define TOK_CMD_CONTRL          228
#define TOK_CMD_DOUBLE_REF      237
#define TOK_CMD_DOT             254
#define TOK_CMD_FILES           325
#define TOK_CMD_FILESELECT      329
#define TOK_CMD_DEFINT          381
#define TOK_CMD_DEFFLT          382
#define TOK_CMD_DEFBYT          383
#define TOK_CMD_DEFWRD          384
#define TOK_CMD_DEFBIT          385
#define TOK_CMD_DEFSTR          386
#define TOK_CMD_DOLLAR          411
#define TOK_CMD_INLINE          417

/*
 * tokens in a line
 */
#define TOK_LINE_COMMENT         70
#define TOK_FNCALL              158
#define TOK_GOSUB               159
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
#define TOK_SUBFUNC_211         211
#define TOK_SUBFUNC_212         212
#define TOK_SUBFUNC_213         213
#define TOK_SUBFUNC_214         214
#define TOK_OCT_DBL_CONST_PAD   215
#define TOK_OCT_DBL_CONST       216
#define TOK_BIN_DBL_CONST_PAD   217
#define TOK_BIN_DBL_CONST       218
#define TOK_HEX_DBL_CONST_PAD   219
#define TOK_HEX_DBL_CONST       220
#define TOK_DEC_DBL_CONST_PAD   221
#define TOK_STRING_CONST        222
#define TOK_DEC_DBL_CONST       223
#define TOK_REF_FLOAT_SHORT     224
#define TOK_REF_FLOAT           240

#endif
