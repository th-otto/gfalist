#ifndef TABLES_H
#define TABLES_H

#define ARRAY_SIZE(a) (sizeof(a) / sizeof((a)[0]))

#define TARGET_VER36    0
#define TARGET_VER370   370
#define TARGET_VER371   371
#define TARGET_VER372   372
#define TARGET_VER373   373
#define TARGET_VER374   374

#define TARGET_LAST TARGET_VER374

struct name_exception {
	int from_ver;
	int to_ver;
	const char *name;
};

struct nameversion {
	const char *name;
	int min_ver;
	const struct name_exception *exceptions;
};

extern struct nameversion const gfalct[];
extern unsigned int const size_lct;
extern struct nameversion const gfapft[256];
extern struct nameversion const gfasft_208[256];
extern struct nameversion const gfasft_209[256];
extern struct nameversion const gfasft_210[256];
extern struct nameversion const gfasft_211[256];
extern struct nameversion const gfasft_212[256];
extern struct nameversion const gfasft_213[256];
extern struct nameversion const gfasft_214[256];
struct gfaversinfo {
	short len_magic;
	short num_offsets;
};
extern struct gfaversinfo const gfarecl[71];

/*
 * variable types
 */
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
#define TYPE_LABEL         10
#define TYPE_PROCEDURE     11
#define TYPE_WORD_ARR      12
#define TYPE_BYTE_ARR      13
#define TYPE_FUNCTION      14
#define TYPE_FUNCTION_STR  15

#define MAX_TYPES          16


/*
 * line level commands
 */
#define TOK_CMD_DO                   0
#define TOK_CMD_LOOP                 1
#define TOK_CMD_REPEAT               2
#define TOK_CMD_UNTIL                3
#define TOK_CMD_WHILE                4
#define TOK_CMD_WEND                 5
#define TOK_CMD_PROCEDURE            6
#define TOK_CMD_ENDPROC              7
#define TOK_CMD_IF                   8
#define TOK_CMD_ENDIF                9
#define TOK_CMD_FUNCTION            10
#define TOK_CMD_ENDFUNC             11
#define TOK_CMD_SELECT              12
#define TOK_CMD_ENDSELECT           13
#define TOK_CMD_ELSE                14
#define TOK_CMD_DEFAULT             15
#define TOK_CMD_ELSEIF              16
#define TOK_CMD_RETURN              17
#define TOK_CMD_RETURN_STR          18
#define TOK_CMD_FOR_FLOAT           19
#define TOK_CMD_FOR_INT             22
#define TOK_CMD_FOR_WORD            25
#define TOK_CMD_FOR_BYTE            28
#define TOK_CMD_NEXT_FLOAT          31
#define TOK_CMD_NEXT_INT            34
#define TOK_CMD_NEXT_WORD           37
#define TOK_CMD_NEXT_BYTE           40
#define TOK_CMD_EXITIF              43
#define TOK_CMD_SELECT_STR          44
#define TOK_CMD_EOF                 45
#define TOK_CMD_DO_WHILE            49
#define TOK_CMD_DO_UNTIL            50
#define TOK_CMD_LOOP_WHILE          51
#define TOK_CMD_LOOP_UNTIL          52
#define TOK_CMD_FLAPPED_PROCEDURE   54
#define TOK_CMD_EXITIF2             55
#define TOK_CMD_CASE                56
#define TOK_CMD_GOSUB_IMP           60
#define TOK_CMD_GOSUB               61
#define TOK_CMD_GOSUB_EXP           62
#define TOK_CMD_LABEL               63
#define TOK_CMD_LET_FLOAT           64
#define TOK_CMD_ASSIGN_FLOAT        76
#define TOK_CMD_ASSIGN_BYTE_ARR     87
#define TOK_CMD_RESERVE            103
#define TOK_CMD_RESERVE_N          104
#define TOK_CMD_REM                114
#define TOK_CMD_COMMENT            115
#define TOK_CMD_SYNERR             116
#define TOK_CMD_DATA               117
#define TOK_CMD_DEREF              121
#define TOK_CMD_DEREF_STR          122
#define TOK_CMD_END                124
#define TOK_CMD_ON                 126
#define TOK_CMD_ON_ERROR           128
#define TOK_CMD_ON_ERROR_GOSUB     129
#define TOK_CMD_ON_BREAK           130
#define TOK_CMD_ON_BREAK_CONT      131
#define TOK_CMD_ON_BREAK_GOSUB     132
#define TOK_CMD_ON_MENU_GOSUB      133
#define TOK_CMD_ON_MENU_MESSAGE    134
#define TOK_CMD_ON_MENU_KEY        135
#define TOK_CMD_ON_MENU_BUTTON     136
#define TOK_CMD_ON_MENU            137
#define TOK_CMD_ON_MENU_N          138
#define TOK_CMD_PRINT              147
#define TOK_CMD_PRINT_CHANNEL      148
#define TOK_CMD_FORM_INPUT         153
#define TOK_CMD_LINE_INPUT         154
#define TOK_CMD_LINE               155
#define TOK_CMD_INC_FLOAT          160
#define TOK_CMD_ADD_FLOAT          176
#define TOK_CMD_SUB_FLOAT          184
#define TOK_CMD_MUL_FLOAT          192
#define TOK_CMD_DIV_FLOAT          200
#define TOK_CMD_DIV_BYTE_ARR       207
#define TOK_CMD_SEEK               208
#define TOK_CMD_SETCOLOR           211
#define TOK_CMD_SETCOLOR2          212
#define TOK_CMD_VDISYS             214
#define TOK_CMD_VDISYS2            215
#define TOK_CMD_VDISYS3            216
#define TOK_CMD_VDISYS4            217
#define TOK_CMD_GEMSYS             218
#define TOK_CMD_GEMSYS2            219
#define TOK_CMD_ADDRIN             224
#define TOK_CMD_ADDROUT            225
#define TOK_CMD_CONTRL             228
#define TOK_CMD_DOUBLE_REF         237
#define TOK_CMD_ON_MENU_IBOX       238
#define TOK_CMD_ON_MENU_OBOX       239
#define TOK_CMD_DOT                254
#define TOK_CMD_GET                257
#define TOK_CMD_GET2               258
#define TOK_CMD_GET3               259
#define TOK_CMD_PUT                260
#define TOK_CMD_PUT2               261
#define TOK_CMD_PUT3               262
#define TOK_CMD_PUT4               263
#define TOK_CMD_OPEN               265
#define TOK_CMD_OPENW              266
#define TOK_CMD_OPENW2             267
#define TOK_CMD_CLOSE              268
#define TOK_CMD_CLOSEW             269
#define TOK_CMD_CLOSEW2            270
#define TOK_CMD_CLEAR              271
#define TOK_CMD_CLEARW             272
#define TOK_CMD_CLEARW2            273
#define TOK_CMD_DEFMOUSE           279
#define TOK_CMD_DEFMOUSE2          280
#define TOK_CMD_DEFFILL            285
#define TOK_CMD_DEFFILL2           286
#define TOK_CMD_FILES              325
#define TOK_CMD_FILESELECT         329
#define TOK_CMD_DEFINT             381
#define TOK_CMD_DEFFLT             382
#define TOK_CMD_DEFBYT             383
#define TOK_CMD_DEFWRD             384
#define TOK_CMD_DEFBIT             385
#define TOK_CMD_DEFSTR             386
#define TOK_CMD_DOLLAR             411
#define TOK_CMD_INLINE             417
#define TOK_CMD_OUT                420
#define TOK_CMD_MAT_ADD_MAT        424
#define TOK_CMD_MAT_ADD            425
#define TOK_CMD_MAT_SUB_MAT        426
#define TOK_CMD_MAT_SUB            427
#define TOK_CMD_MAT_CPY            428
#define TOK_CMD_MAT_XCPY           429
#define TOK_CMD_MAT_DET            430
#define TOK_CMD_MAT_NEG            431
#define TOK_CMD_MAT_ABS            432
#define TOK_CMD_MAT_NORM           433
#define TOK_CMD_MAT_READ           434
#define TOK_CMD_MAT_PRINT          435
#define TOK_CMD_MAT_TRANS          436
#define TOK_CMD_MAT_CLR            437
#define TOK_CMD_MAT_SET            438
#define TOK_CMD_MAT_ONE            439
#define TOK_CMD_MAT_BASE           440
#define TOK_CMD_MAT_QDET           441
#define TOK_CMD_MAT_INPUT          442
#define TOK_CMD_MAT_RANG           443
#define TOK_CMD_MAT_MUL_MAT        444
#define TOK_CMD_MAT_MUL_MAT2       445
#define TOK_CMD_MAT_MUL_MAT3       446
#define TOK_CMD_MAT_MUL            447
#define TOK_CMD_MAT_INV            448
#define TOK_CMD_FLAPPED_FUNCTION   449
#define TOK_CMD_VPUT               492
#define TOK_CMD_VPUT2              493
#define TOK_CMD_PIXEL24_5          640
#define TOK_CMD_PIXEL24_7          641
#define TOK_CMD_PIXEL32_5          642
#define TOK_CMD_PIXEL32_7          643
#define TOK_CMD_PIXEL16_5          644
#define TOK_CMD_PIXEL16_7          645
#define TOK_CMD_PIXEL15_5          646
#define TOK_CMD_PIXEL15_7          647
#define TOK_CMD_RC_REDRAW          676
#define TOK_CMD_RC_REDRAW2         677

/*
 * tokens in a line (function codes)
 */
#define TOK_AND                      0
#define TOK_OR                       1
#define TOK_XOR                      2
#define TOK_IMP                      3
#define TOK_EQV                      4
#define TOK_SUB                      5
#define TOK_ADD                      6
#define TOK_MUL                      7
#define TOK_DIVIDE                   8
#define TOK_POWER                    9
#define TOK_MOD                     10
#define TOK_DIV                     11
#define TOK_NE                      12
#define TOK_LE                      13
#define TOK_LE2                     14
#define TOK_GE                      15
#define TOK_GE2                     16
#define TOK_LT                      17
#define TOK_GT                      18
#define TOK_EQ                      19
#define TOK_NE_STR                  20
#define TOK_LE_STR                  21
#define TOK_LE2_STR                 22
#define TOK_GE_STR                  23
#define TOK_GE2_STR                 24
#define TOK_LT_STR                  25
#define TOK_GT_STR                  26
#define TOK_EQ_STR                  27
#define TOK_PLUS_STR                28
#define TOK_UPLUS                   29
#define TOK_UMINUS                  30
#define TOK_UNOT                    31
#define TOK_RPAREN                  32
#define TOK_COMMA                   33
#define TOK_SEMI                    34
#define TOK_LPAREN                  35
#define TOK_ERRSTR                  36
#define TOK_INT                     37
#define TOK_TRUNC                   38
#define TOK_FRAC                    39
#define TOK_ABS                     40
#define TOK_SIN                     41
#define TOK_COS                     42
#define TOK_TAN                     43
#define TOK_ATAN                    44
#define TOK_APPROX_EQ               45
#define TOK_RES_46                  46
#define TOK_EXP                     47
#define TOK_LOG                     48
#define TOK_LOG10                   49
#define TOK_VAR                     50
#define TOK_RPAREN2                 51
#define TOK_INPAUX                  52
#define TOK_VAL                     53
#define TOK_INPMID                  54
#define TOK_PRINTNUM                55
#define TOK_TIME                    56
#define TOK_ARRAY_ASS               57
#define TOK_LEFT1                   58
#define TOK_LEFT2                   59
#define TOK_RIGHT1                  60
#define TOK_RIGHT2                  61
#define TOK_MID2                    62
#define TOK_MID3                    63
#define TOK_RES_64                  64
#define TOK_ASIN                    65
#define TOK_CHR                     66
#define TOK_REFEND                  67
#define TOK_RES_68                  68
#define TOK_ASSIGN                  69
#define TOK_LINE_COMMENT            70
#define TOK_TO                      71
#define TOK_STEP                    72
#define TOK_DOWNTO                  73
#define TOK_THEN                    74
#define TOK_GOTO_FUNC               75
#define TOK_GOSUB_FUNC              76
#define TOK_CHANNEL                 77
#define TOK_SQR                     78
#define TOK_PI                      79
#define TOK_LBRACKET                80
#define TOK_RBRACKET                81
#define TOK_ACOS                    82
#define TOK_INKEY                   83
#define TOK_RND1                    84
#define TOK_RND                     85
#define TOK_RANDOM                  86
#define TOK_PRINTSPACE              87
#define TOK_RBRACE                  88
#define TOK_AT                      89
#define TOK_IF                      90
#define TOK_INTDIV                  91
#define TOK_FLOAT_REF               92
#define TOK_DOUBLE_REF              93
#define TOK_INPUT1                  94
#define TOK_INPUT2                  95
#define TOK_INPUT3                  96
#define TOK_CHAR_REF                97
#define TOK_MKI                     98
#define TOK_MKL                     99
#define TOK_MKS                    100
#define TOK_MKF                    101
#define TOK_MKD                    102
#define TOK_DEG                    103
#define TOK_RAD                    104
#define TOK_CVS                    105
#define TOK_CVF                    106
#define TOK_CVD                    107
#define TOK_AS                     108
#define TOK_OFFSET                 109
#define TOK_CFLOAT                 110
#define TOK_TRACE                  111
#define TOK_ROUND1                 112
#define TOK_ROUND2                 113
#define TOK_WITH                   114
#define TOK_BIN1                   115
#define TOK_BIN2                   116
#define TOK_MIN                    117
#define TOK_MIN_STR                118
#define TOK_MAX                    119
#define TOK_MAX_STR                120
#define TOK_SINGLE_REF             121
#define TOK_AT2                    122
#define TOK_SINQ                   123
#define TOK_LABEL                  124
#define TOK_COSQ                   125
#define TOK_DATE                   126
#define TOK_UPPER                  127
#define TOK_SPACE                  128
#define TOK_STRING_CODE            129
#define TOK_STRING                 130
#define TOK_SUCC                   131
#define TOK_DIR                    132
#define TOK_PRED                   133
#define TOK_DRAW                   134
#define TOK_TRIM                   135
#define TOK_CMDLINE                136
#define TOK_CURDIR                 137
#define TOK_LONGARG                138
#define TOK_WORDARG                139
#define TOK_FACT                   140
#define TOK_COMBIN                 141
#define TOK_ENVIRON                142
#define TOK_VARIAT                 143
#define TOK_LTRIM                  144
#define TOK_RTRIM                  145
#define TOK_LCASE                  146
#define TOK_RCASE                  147
#define TOK_LOWER                  148
#define TOK_OB_TEXT                149
#define TOK_ZTRIM                  150
#define TOK_ERROR                  151
#define TOK_STOP                   152
#define TOK_BREAK                  153
#define TOK_CONT                   154
#define TOK_FIX                    155
#define TOK_COMMA2                 156
#define TOK_LPAREN2                157
#define TOK_FNCALL                 158
#define TOK_GOSUB                  159
#define TOK_MIRROR                 160
#define TOK_TAB                    161
#define TOK_SPC                    162
#define TOK_USING                  163
#define TOK_DATE1                  164
#define TOK_TIME1                  165
#define TOK_TIMESTAMP              166
#define TOK_MENU                   167
#define TOK_NEXT                   168
#define TOK_CHAR                   169
#define TOK_KEY                    170
#define TOK_BUTTON                 171
#define TOK_IBOX                   172
#define TOK_OBOX                   173
#define TOK_MESSAGE                174
#define TOK_OFF                    175
#define TOK_KILL                   176
#define TOK_DIGITAL                177
#define TOK_REPLACE                178
#define TOK_CRYPT                  179
#define TOK_XLATE                  180
#define TOK_STRUCTSTR              181
#define TOK_BASE                   182
#define TOK_NULL                   183
#define TOK_CONST_ZERO             184
#define TOK_CONST_ONE              185
#define TOK_CONST_TWO              186
#define TOK_CONST_THREE            187
#define TOK_TRUE                   188
#define TOK_FALSE                  189
#define TOK_STR1                   190
#define TOK_STR2                   191
#define TOK_STR3                   192
#define TOK_HEX1                   193
#define TOK_HEX2                   194
#define TOK_OCT1                   195
#define TOK_OCT2                   196
#define TOK_RES_197                197
#define TOK_CHAR_CONST             198
#define TOK_CHAR_CONST_PAD         199
#define TOK_DEC_CONST              200
#define TOK_DEC_CONST_PAD          201
#define TOK_HEX_CONST              202
#define TOK_HEX_CONST_PAD          203
#define TOK_OCT_CONST              204
#define TOK_OCT_CONST_PAD          205
#define TOK_BIN_CONST              206
#define TOK_BIN_CONST_PAD          207
#define TOK_SUBFUNC_208            208
#define TOK_SUBFUNC_209            209
#define TOK_SUBFUNC_210            210
#define TOK_SUBFUNC_211            211
#define TOK_SUBFUNC_212            212
#define TOK_SUBFUNC_213            213
#define TOK_SUBFUNC_214            214
#define TOK_OCT_DBL_CONST_PAD      215
#define TOK_OCT_DBL_CONST          216
#define TOK_BIN_DBL_CONST_PAD      217
#define TOK_BIN_DBL_CONST          218
#define TOK_HEX_DBL_CONST_PAD      219
#define TOK_HEX_DBL_CONST          220
#define TOK_DEC_DBL_CONST_PAD      221
#define TOK_STRING_CONST           222
#define TOK_DEC_DBL_CONST          223
#define TOK_REF_FLOAT_SHORT        224
#define TOK_REF_STRING_SHORT       225
#define TOK_REF_INT_SHORT          226
#define TOK_REF_BOOL_SHORT         227
#define TOK_REF_FLOAT_ARR_SHORT    228
#define TOK_REF_STRING_ARR_SHORT   229
#define TOK_REF_INT_ARR_SHORT      230
#define TOK_REF_BOOL_ARR_SHORT     231
#define TOK_REF_WORD_SHORT         232
#define TOK_REF_BYTE_SHORT         233
#define TOK_REF_LABEL_SHORT        234
#define TOK_REF_PROCEDURE_SHORT    235
#define TOK_REF_WORD_ARR_SHORT     236
#define TOK_REF_BYTE_ARR_SHORT     237
#define TOK_REF_FUNCTION_SHORT     238
#define TOK_REF_FUNCTION_STR_SHORT 239
#define TOK_REF_FLOAT              240
#define TOK_REF_STRING             241
#define TOK_REF_INT                242
#define TOK_REF_BOOL               243
#define TOK_REF_FLOAT_ARR          244
#define TOK_REF_STRING_ARR         245
#define TOK_REF_INT_ARR            246
#define TOK_REF_BOOL_ARR           247
#define TOK_REF_WORD               248
#define TOK_REF_BYTE               249
#define TOK_REF_LABEL              250
#define TOK_REF_PROCEDURE          251
#define TOK_REF_WORD_ARR           252
#define TOK_REF_BYTE_ARR           253
#define TOK_REF_FUNCTION           254
#define TOK_REF_FUNCTION_STR       255

/*
 * tokens for subfunction 208
 */

/*
 * tokens for subfunction 209
 */

#endif
