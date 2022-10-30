/* 372: 50dd4 */
/* 373: 51366 */
FOR_LIB = 0
GBE = 0
GBE_OLDCOMPAT = 0
STRANGE_CHECK = 1


EOL = 13
CR  = 13
NL  = 10

TOK_CMD_DO                 =   0
TOK_CMD_LOOP               =   1
TOK_CMD_REPEAT             =   2
TOK_CMD_UNTIL              =   3
TOK_CMD_WHILE              =   4
TOK_CMD_WEND               =   5
TOK_CMD_PROCEDURE          =   6
TOK_CMD_ENDPROC            =   7
TOK_CMD_IF                 =   8
TOK_CMD_ENDIF              =   9
TOK_CMD_FUNCTION           =  10
TOK_CMD_ENDFUNC            =  11
TOK_CMD_SELECT             =  12
TOK_CMD_ENDSELECT          =  13
TOK_CMD_ELSE               =  14
TOK_CMD_DEFAULT            =  15
TOK_CMD_ELSEIF             =  16
TOK_CMD_RETURN             =  17
TOK_CMD_RETURN_STR         =  18
TOK_CMD_FOR_FLOAT          =  19
TOK_CMD_FOR_INT            =  22
TOK_CMD_FOR_WORD           =  25
TOK_CMD_FOR_BYTE           =  28
TOK_CMD_NEXT_FLOAT         =  31
TOK_CMD_NEXT_INT           =  34
TOK_CMD_NEXT_WORD          =  37
TOK_CMD_NEXT_BYTE          =  40
TOK_CMD_EXITIF             =  43
TOK_CMD_SELECT_STR         =  44
TOK_CMD_EOF                =  45
TOK_CMD_DO_WHILE           =  49
TOK_CMD_DO_UNTIL           =  50
TOK_CMD_LOOP_WHILE         =  51
TOK_CMD_LOOP_UNTIL         =  52
TOK_CMD_FLAPPED_PROCEDURE  =  54
TOK_CMD_EXITIF2            =  55
TOK_CMD_CASE               =  56
TOK_CMD_GOSUB_IMP          =  60
TOK_CMD_GOSUB              =  61
TOK_CMD_GOSUB_EXP          =  62
TOK_CMD_LABEL              =  63
TOK_CMD_LET_FLOAT          =  64
TOK_CMD_ASSIGN_FLOAT       =  76
TOK_CMD_ASSIGN_BYTE_ARR    =  87
TOK_CMD_REM                = 114
TOK_CMD_COMMENT            = 115
TOK_CMD_SYNERR             = 116
TOK_CMD_DATA               = 117
TOK_CMD_DEREF              = 121
TOK_CMD_DEREF_STR          = 122
TOK_CMD_END                = 124
TOK_CMD_PRINT              = 147
TOK_CMD_PRINT_CHANNEL      = 148
TOK_CMD_FORM_INPUT         = 153
TOK_CMD_INC_FLOAT          = 160
TOK_CMD_ADD_FLOAT          = 176
TOK_CMD_SUB_FLOAT          = 184
TOK_CMD_MUL_FLOAT          = 192
TOK_CMD_DIV_FLOAT          = 200
TOK_CMD_DIV_BYTE_ARR       = 207
TOK_CMD_SEEK               = 208
TOK_CMD_ADDRIN             = 224
TOK_CMD_ADDROUT            = 225
TOK_CMD_CONTRL             = 228
TOK_CMD_DOUBLE_REF         = 237
TOK_CMD_DOT                = 254
TOK_CMD_FILES              = 325
TOK_CMD_FILESELECT         = 329
TOK_CMD_DEFINT             = 381
TOK_CMD_DEFFLT             = 382
TOK_CMD_DEFBYT             = 383
TOK_CMD_DEFWRD             = 384
TOK_CMD_DEFBIT             = 385
TOK_CMD_DEFSTR             = 386
TOK_CMD_DOLLAR             = 411
TOK_CMD_INLINE             = 417
TOK_CMD_OUT                = 420
TOK_CMD_FLAPPED_FUNCTION   = 449


TOK_AND                    =   0
TOK_OR                     =   1
TOK_XOR                    =   2
TOK_IMP                    =   3
TOK_EQV                    =   4
TOK_SUB                    =   5
TOK_ADD                    =   6
TOK_MUL                    =   7
TOK_DIVIDE                 =   8
TOK_POWER                  =   9
TOK_MOD                    =  10
TOK_DIV                    =  11
TOK_NE                     =  12
TOK_LE                     =  13
TOK_LE2                    =  14
TOK_GE                     =  15
TOK_GE2                    =  16
TOK_LT                     =  17
TOK_GT                     =  18
TOK_EQ                     =  19
TOK_NE_STR                 =  20
TOK_LE_STR                 =  21
TOK_LE2_STR                =  22
TOK_GE_STR                 =  23
TOK_GE2_STR                =  24
TOK_LT_STR                 =  25
TOK_GT_STR                 =  26
TOK_EQ_STR                 =  27
TOK_PLUS_STR               =  28
TOK_UPLUS                  =  29
TOK_UMINUS                 =  30
TOK_UNOT                   =  31
TOK_RPAREN                 =  32
TOK_COMMA                  =  33
TOK_SEMI                   =  34
TOK_LPAREN                 =  35
TOK_ERRSTR                 =  36
TOK_INT                    =  37
TOK_TRUNC                  =  38
TOK_FRAC                   =  39
TOK_ABS                    =  40
TOK_SIN                    =  41
TOK_COS                    =  42
TOK_TAN                    =  43
TOK_ATAN                   =  44
TOK_APPROX_EQ              =  45
TOK_RES_46                 =  46
TOK_EXP                    =  47
TOK_LOG                    =  48
TOK_LOG10                  =  49
TOK_VAR                    =  50
TOK_RPAREN2                =  51
TOK_INPAUX                 =  52
TOK_VAL                    =  53
TOK_INPMID                 =  54
TOK_PRINTNUM               =  55
TOK_TIME                   =  56
TOK_ARRAY_ASS              =  57
TOK_LEFT1                  =  58
TOK_LEFT2                  =  59
TOK_RIGHT1                 =  60
TOK_RIGHT2                 =  61
TOK_MID2                   =  62
TOK_MID3                   =  63
TOK_RES_64                 =  64
TOK_ASIN                   =  65
TOK_CHR                    =  66
TOK_REFEND                 =  67
TOK_RES_68                 =  68
TOK_ASSIGN                 =  69
TOK_LINE_COMMENT           =  70
TOK_TO                     =  71
TOK_STEP                   =  72
TOK_DOWNTO                 =  73
TOK_THEN                   =  74
TOK_GOTO_FUNC              =  75
TOK_GOSUB_FUNC             =  76
TOK_CHANNEL                =  77
TOK_SQR                    =  78
TOK_PI                     =  79
TOK_LBRACKET               =  80
TOK_RBRACKET               =  81
TOK_ACOS                   =  82
TOK_INKEY                  =  83
TOK_RND1                   =  84
TOK_RND                    =  85
TOK_RANDOM                 =  86
TOK_PRINTSPACE             =  87
TOK_RBRACE                 =  88
TOK_AT                     =  89
TOK_IF                     =  90
TOK_INTDIV                 =  91
TOK_FLOAT_REF              =  92
TOK_DOUBLE_REF             =  93
TOK_INPUT1                 =  94
TOK_INPUT2                 =  95
TOK_INPUT3                 =  96
TOK_CHAR_REF               =  97
TOK_MKI                    =  98
TOK_MKL                    =  99
TOK_MKS                    = 100
TOK_MKF                    = 101
TOK_MKD                    = 102
TOK_DEG                    = 103
TOK_RAD                    = 104
TOK_CVS                    = 105
TOK_CVF                    = 106
TOK_CVD                    = 107
TOK_AS                     = 108
TOK_OFFSET                 = 109
TOK_CFLOAT                 = 110
TOK_TRACE                  = 111
TOK_ROUND1                 = 112
TOK_ROUND2                 = 113
TOK_WITH                   = 114
TOK_BIN1                   = 115
TOK_BIN2                   = 116
TOK_MIN                    = 117
TOK_MIN_STR                = 118
TOK_MAX                    = 119
TOK_MAX_STR                = 120
TOK_SINGLE_REF             = 121
TOK_AT2                    = 122
TOK_SINQ                   = 123
TOK_LABEL                  = 124
TOK_COSQ                   = 125
TOK_DATE                   = 126
TOK_UPPER                  = 127
TOK_SPACE                  = 128
TOK_STRING_CODE            = 129
TOK_STRING                 = 130
TOK_SUCC                   = 131
TOK_DIR                    = 132
TOK_PRED                   = 133
TOK_DRAW                   = 134
TOK_TRIM                   = 135
TOK_CMDLINE                = 136
TOK_CURDIR                 = 137
TOK_LONGARG                = 138
TOK_WORDARG                = 139
TOK_FACT                   = 140
TOK_COMBIN                 = 141
TOK_ENVIRON                = 142
TOK_VARIAT                 = 143
TOK_LTRIM                  = 144
TOK_RTRIM                  = 145
TOK_LCASE                  = 146
TOK_RCASE                  = 147
TOK_LOWER                  = 148
TOK_OB_TEXT                = 149
TOK_ZTRIM                  = 150
TOK_ERROR                  = 151
TOK_STOP                   = 152
TOK_BREAK                  = 153
TOK_CONT                   = 154
TOK_FIX                    = 155
TOK_COMMA2                 = 156
TOK_LPAREN2                = 157
TOK_FNCALL                 = 158
TOK_GOSUB                  = 159
TOK_MIRROR                 = 160
TOK_TAB                    = 161
TOK_SPC                    = 162
TOK_USING                  = 163
TOK_DATE1                  = 164
TOK_TIME1                  = 165
TOK_TIMESTAMP              = 166
TOK_MENU                   = 167
TOK_NEXT                   = 168
TOK_CHAR                   = 169
TOK_KEY                    = 170
TOK_BUTTON                 = 171
TOK_IBOX                   = 172
TOK_OBOX                   = 173
TOK_MESSAGE                = 174
TOK_OFF                    = 175
TOK_KILL                   = 176
TOK_DIGITAL                = 177
TOK_REPLACE                = 178
TOK_CRYPT                  = 179
TOK_XLATE                  = 180
TOK_STRUCTSTR              = 181
TOK_BASE                   = 182
TOK_NULL                   = 183
TOK_CONST_ZERO             = 184
TOK_CONST_ONE              = 185
TOK_CONST_TWO              = 186
TOK_CONST_THREE            = 187
TOK_TRUE                   = 188
TOK_FALSE                  = 189
TOK_STR1                   = 190
TOK_STR2                   = 191
TOK_STR3                   = 192
TOK_HEX1                   = 193
TOK_HEX2                   = 194
TOK_OCT1                   = 195
TOK_OCT2                   = 196
TOK_RES_197                = 197
TOK_CHAR_CONST             = 198
TOK_CHAR_CONST_PAD         = 199
TOK_DEC_CONST              = 200
TOK_DEC_CONST_PAD          = 201
TOK_HEX_CONST              = 202
TOK_HEX_CONST_PAD          = 203
TOK_OCT_CONST              = 204
TOK_OCT_CONST_PAD          = 205
TOK_BIN_CONST              = 206
TOK_BIN_CONST_PAD          = 207
TOK_SUBFUNC_208            = 208
TOK_SUBFUNC_209            = 209
TOK_SUBFUNC_210            = 210
TOK_SUBFUNC_211            = 211
TOK_SUBFUNC_212            = 212
TOK_SUBFUNC_213            = 213
TOK_SUBFUNC_214            = 214
TOK_OCT_DBL_CONST_PAD      = 215
TOK_OCT_DBL_CONST          = 216
TOK_BIN_DBL_CONST_PAD      = 217
TOK_BIN_DBL_CONST          = 218
TOK_HEX_DBL_CONST_PAD      = 219
TOK_HEX_DBL_CONST          = 220
TOK_DEC_DBL_CONST_PAD      = 221
TOK_STRING_CONST           = 222
TOK_DEC_DBL_CONST          = 223
TOK_REF_FLOAT_SHORT        = 224
TOK_REF_STRING_SHORT       = 225
TOK_REF_INT_SHORT          = 226
TOK_REF_BOOL_SHORT         = 227
TOK_REF_FLOAT_ARR_SHORT    = 228
TOK_REF_STRING_ARR_SHORT   = 229
TOK_REF_INT_ARR_SHORT      = 230
TOK_REF_BOOL_ARR_SHORT     = 231
TOK_REF_WORD_SHORT         = 232
TOK_REF_BYTE_SHORT         = 233
TOK_REF_LABEL_SHORT        = 234
TOK_REF_PROCEDURE_SHORT    = 235
TOK_REF_WORD_ARR_SHORT     = 236
TOK_REF_BYTE_ARR_SHORT     = 237
TOK_REF_FUNCTION_SHORT     = 238
TOK_REF_FUNCTION_STR_SHORT = 239
TOK_REF_FLOAT              = 240
TOK_REF_STRING             = 241
TOK_REF_INT                = 242
TOK_REF_BOOL               = 243
TOK_REF_FLOAT_ARR          = 244
TOK_REF_STRING_ARR         = 245
TOK_REF_INT_ARR            = 246
TOK_REF_BOOL_ARR           = 247
TOK_REF_WORD               = 248
TOK_REF_BYTE               = 249
TOK_REF_LABEL              = 250
TOK_REF_PROCEDURE          = 251
TOK_REF_WORD_ARR           = 252
TOK_REF_BYTE_ARR           = 253
TOK_REF_FUNCTION           = 254
TOK_REF_FUNCTION_STR       = 255


TYPE_FLOAT         =  0
TYPE_STRING        =  1
TYPE_INT           =  2
TYPE_BOOL          =  3
TYPE_FLOAT_ARR     =  4
TYPE_STRING_ARR    =  5
TYPE_INT_ARR       =  6
TYPE_BOOL_ARR      =  7
TYPE_WORD          =  8
TYPE_BYTE          =  9
TYPE_LABEL         = 10
TYPE_PROCEDURE     = 11
TYPE_WORD_ARR      = 12
TYPE_BYTE_ARR      = 13
TYPE_FUNCTION      = 14
TYPE_FUNCTION_STR  = 15


	.IF GBE==0
MAX_FUNCS     = 464 /* 224 primary + 240 secondary */
MAX_CMDS      = 512
	.ENDC
	.IF GBE==370
MAX_FUNCS     = 1024 /* 256 primary + 3 * 256 secondary */
MAX_CMDS      = 1024
	.ENDC
	.IF GBE==371
MAX_FUNCS     = 2048 /* 256 primary + 7 * 256 secondary */
MAX_CMDS      = 600
	.ENDC
	.IF GBE==372
MAX_FUNCS     = 2048 /* 256 primary + 7 * 256 secondary */
MAX_CMDS      = 644
	.ENDC
	.IF GBE==373
MAX_FUNCS     = 2048 /* 256 primary + 7 * 256 secondary */
MAX_CMDS      = 688
	.ENDC


/*
 * storage area
 */

	.IF GBE==0
		.offset 0
error_jmp:          ds.b 8         /*    0 */
file_buffer:        ds.l 1         /*    8 */
file_buffer_size:   ds.l 1         /*   12 */
ptr_table:          ds.l 38        /*   16 */
                    ds.l 1         /*  168 */
strdesc_start:      ds.l 1         /*  172 */
strdesc_end:        ds.l 1         /*  176 */
                    ds.l 1         /*  180 */
                    ds.l 1         /*  184 */
                    ds.l 1         /*  188 */
                    ds.l 1         /*  192 */
                    ds.l 1         /*  196 */
                    ds.l 1         /*  200 */
baspag:             ds.l 1         /*  204 */
pgmsize:            ds.l 1         /*  208 */
                    ds.w 1         /*  212 */
extjmp_table:       ds.b 26*6      /*  214 */
                    ds.b 40        /*  370 */
                    ds.l 10        /*  410 */
                    ds.l 1         /*  450 */
                    ds.l 1         /*  454 */
                    ds.l 1         /*  458 */
                    ds.w 1         /*  462 */
                    ds.b 24        /*  464 */
o488:               ds.b 1         /*  488 */
o489:               ds.b 1         /*  489 */
fstr_tmpbuf:        ds.b 22        /*  490 */
fstr_outbuf:        ds.b 30        /*  512 */
decimal_digits:     ds.w 1         /*  542 */
                    ds.b 306
o850:               ds.b 256       /*  850 */
general_buffer:     ds.b 256       /* 1106 */
o1362:              ds.w 1         /* 1362 */
o1364:              ds.b 478       /* 1364 */
o1842:              ds.b 472       /* 1842 */
o2314:              ds.b 458       /* 2314 */
o2772:              ds.b 100*6     /* 2772 */
func_table_offsets: ds.w MAX_FUNCS /* 3372 */
cmd_table_offsets:  ds.w MAX_CMDS  /* 4300 */
                                   /* 5324 */
	.ENDC

	.IF GBE!=0
		.offset 0
error_jmp:          ds.b 8         /*    0 */
file_buffer:        ds.l 1         /*    8 */
file_buffer_size:   ds.l 1         /*   12 */
ptr_table:          ds.l 38        /*   16 */
                    ds.l 1         /*  168 */
strdesc_start:      ds.l 1         /*  172 */
strdesc_end:        ds.l 1         /*  176 */
                    ds.l 1         /*  180 */
                    ds.l 1         /*  184 */
                    ds.l 1         /*  188 */
                    ds.l 1         /*  192 */
                    ds.l 1         /*  196 */
                    ds.l 1         /*  200 */
                    ds.b 64        /*      */
o488:               ds.b 1         /*  268 */
o489:               ds.b 1         /*  269 */
fstr_tmpbuf:        ds.b 22        /*  270 */
fstr_outbuf:        ds.b 30        /*  292 */
decimal_digits:     ds.w 1         /*  322 */
o850:               ds.b 182       /*  324 */
o2314:              ds.b 74        /*  506 */
general_buffer:     ds.b 256       /*  580 */
o1362:              ds.w 1         /*  836 */
o1364:              ds.b 126       /*  838 */
o2772:              ds.b 214       /*  964 */
func_table_offsets: ds.w MAX_FUNCS /* 1178 */
cmd_table_offsets:  ds.w MAX_CMDS  /* 5274 */
                                   /* 6650 */
                                   
extjmp_table:       ds.b 26*6      /*      */
baspag:             ds.l 1         /*      */
pgmsize:            ds.l 1         /*      */
o1842:              ds.b 472       /*      */
	.ENDC


		.text

_entry:
		bra        _main_entry

x10004:
		movea.l    a6,a0
		move.l     #x1007a,error_jmp+4(a6)
		movea.l    baspag(a6),a0
		lea.l      128(a0),a0
x10004_1:
		tst.b      (a0)+
		bne.s      x10004_1
		movea.l    a0,a1
		subq.l     #5,a0
		bsr        copy32b
		andi.l     #0xFF5F5F5F,d0
		cmpi.l     #0x2E4C5354,d0 /* '.LST' */
		bne        x10194
		subq.l     #1,a1
		moveq.l    #0,d1
x10004_2:
		move.b     -(a1),d0
		beq.s      x10004_3
		cmpi.b     #0x5c,d0
		beq.s      x10004_3
		cmpi.b     #':',d0
		beq.s      x10004_3
		cmpi.b     #'a',d0
		blt.s      x10004_2
		cmpi.b     #'z',d0
		bgt.s      x10004_2
		moveq.l    #-1,d1
		bra.s      x10004_2
x10004_3:
		lea.l      lowercase_filenames(pc),a0
		move.w     d1,(a0)
	.IFNE GBE /* zzz */
		lea.l      reading_msg,a0
	.ELSE
		lea.l      reading_msg(pc),a0
	.ENDC
		bsr        printstr
		movea.l    baspag(a6),a0
		lea.l      129(a0),a0
		bsr        printstr
		bsr        printnl
		bsr        x1160e
		nop

x1007a:
		bsr        x1022c
		bsr        x11ae8
		move.l     #ERROR,error_jmp+4(a6)
		lea.l      general_buffer(a6),a0
		movea.l    baspag(a6),a1
		lea.l      128(a1),a1
		tst.b      (a1)+
		beq        x10194
x1007a_1:
		move.b     (a1)+,(a0)+
		bne.s      x1007a_1
		subq.l     #5,a0
		clr.b      (a0)
		bsr        x11578
		move.l     d0,-(a7)
		move.l     x10302(pc),d0
		bsr        print_decimal
	.IFNE GBE
		lea.l      lines_msg,a0
	.ELSE
		lea.l      lines_msg(pc),a0
	.ENDC
		bsr        printstr
	.IFNE GBE /* zzz */
		move.l     x16786+6,d0
	.ELSE
		move.l     x16786+6(pc),d0
	.ENDC
		bsr        print_decimal
	.IFNE GBE /* zzz */
		lea.l      bytes_msg,a0
	.ELSE
		lea.l      bytes_msg(pc),a0
	.ENDC
		bsr        printstr
		move.w     d6,d0
		cmpi.w     #6,d0
		blt.s      x1007a_2
		add.w      d0,d0
		add.w      d6,d0
		add.w      d0,d0
		lea.l      2772(a6),a0
		adda.w     d0,a0
		tst.w      4(a0)
		beq        x11162
		movea.l    (a0),a0
		bra.s      x1007a_3
x1007a_2:
		movea.l    strdesc_start(a6),a0
x1007a_3:
		move.l     6(a0),d0
		bsr        print_decimal
	.IFNE GBE /* zzz */
		lea.l      exitcode_msg,a0
	.ELSE
		lea.l      exitcode_msg(pc),a0
	.ENDC
		bsr        printstr
		move.l     x10306(pc),d0
		bne.s      x1007a_5
		move.l     (a7),d0
		bpl.s      x1007a_4
		moveq.l    #'-',d0
		bsr        cconout
		move.l     (a7),d0
		neg.l      d0
x1007a_4:
		bsr        print_decimal
		bsr        printnl
		move.l     (a7)+,d0
exit:
		move.l     d0,-(a7)
		move.w     #76,-(a7) /* Pterm */
		trap       #1

x1007a_5:
		bsr        print_decimal
	.IFNE GBE /* zzz */
		lea.l      x16780,a0
	.ELSE
		lea.l      x16780(pc),a0
	.ENDC
		move.w     #0x0200,(a0)
		moveq.l    #0,d1
x1007a_6:
		lea.l      x10306(pc),a1
		subq.l     #1,(a1)
		bmi.s      x1007a_10
	.IFNE GBE /* zzz */
		movea.l    x16782,a1
	.ELSE
		movea.l    x16782(pc),a1
	.ENDC
		move.l     a1,d0
		beq.s      x1007a_10
		move.w     d1,d0
		lsl.w      #2,d0
		move.l     0(a1,d0.w),d0
		ble.s      x1007a_10
		move.l     d0,d2
		moveq.l    #1,d3
x1007a_7:
		addq.w     #1,d3
		ext.l      d2
		divu.w     #10,d2
		tst.w      d2
		bne.s      x1007a_7
	.IFNE GBE /* zzz */
		lea.l      x16780,a0
	.ELSE
		lea.l      x16780(pc),a0
	.ENDC
		move.w     (a0),d2
		add.w      d3,d2
	.IFNE GBE /* zzz */
		cmp.w      columns,d2
	.ELSE
		cmp.w      columns(pc),d2
	.ENDC
		blt.s      x1007a_8
		subq.w     #1,d3
		move.w     d3,(a0)
		bsr        printnl
		bra.s      x1007a_9
x1007a_8:
		move.l     d0,-(a7)
		moveq.l    #32,d0
		bsr        cconout
		move.l     (a7)+,d0
		move.w     d2,(a0)
x1007a_9:
		bsr        print_decimal
		addq.w     #1,d1
		cmpi.w     #0x2000,d1
		blt.s      x1007a_6
x1007a_10:
		bra.s      x101d0

ERROR:
	.IFNE GBE /* zzz */
		lea.l      error_str,a0
	.ELSE
		lea.l      error_str(pc),a0
	.ENDC
		bra.s      failure

x10194:
	.IFNE GBE /* zzz */
		lea.l      usage_msg,a0
	.ELSE
		lea.l      usage_msg(pc),a0
	.ENDC
		bra.s      failure_1
stackoverflow:
	.IFNE GBE /* zzz */
		lea.l      stack_overflow_msg,a0
	.ELSE
		lea.l      stack_overflow_msg(pc),a0
	.ENDC
		bra.s      failure
x10194_1:
		bsr        x1022c
		bra.s      failure
x10194_2:
	.IFNE GBE /* zzz */
		lea.l      notalst_msg,a0
	.ELSE
		lea.l      notalst_msg(pc),a0
	.ENDC
x101aa:
	.IFNE GBE /* zzz */
		lea.l      open_err_msg,a0
	.ELSE
		lea.l      open_err_msg(pc),a0
	.ENDC
		bra.s      failure
x10194_3:
	.IFNE GBE /* zzz */
		lea.l      save_err_msg,a0
	.ELSE
		lea.l      save_err_msg(pc),a0
	.ENDC
		bra.s      failure
x10194_4:
	.IFNE GBE /* zzz */
		lea.l      load_err_msg,a0
	.ELSE
		lea.l      load_err_msg(pc),a0
	.ENDC

failure:
	.IFNE GBE /* zzz */
		pea.l      att_msg
	.ELSE
		pea.l      att_msg(pc)
	.ENDC
		bra.s      failure_2
failure_1:
		clr.l      -(a7)
failure_2:
		bsr        printstr
		move.l     (a7)+,d0
		beq.s      x101d0
		movea.l    d0,a0
		bsr.w      printstr

x101d0:
		bsr.w      printnl
	.IFNE GBE /* zzz */
		move.w     mtask,d0
	.ELSE
		move.w     mtask(pc),d0
	.ENDC
		bne.s      x101d0_1
	.IFNE GBE /* zzz */
		lea.l      waitkey_msg,a0
	.ELSE
		lea.l      waitkey_msg(pc),a0
	.ENDC
		bsr.w      printstr
		move.w     #7,-(a7) /* Crawcin */
		trap       #1
		addq.l     #2,a7
x101d0_1:
		moveq.l    #-1,d0
		bra        exit

x101f0:
		lea.l      general_buffer(a6),a0
		clr.w      -(a7)
		move.l     a0,-(a7)
		move.w     #61,-(a7) /* Fopen */
		trap       #1
		addq.l     #8,a7
		tst.w      d0
		bmi.s      x101aa
	.IFNE GBE /* zzz */
		lea.l      x16786,a1
	.ELSE
		lea.l      x16786(pc),a1
	.ENDC
		move.w     d0,d1
		add.w      d1,d1
		add.w      d0,d1
		add.w      d1,d1
		lea.l      2772(a6),a0
		adda.w     d1,a0
		move.w     #4096+10,4(a0)
		move.l     a1,(a0)
		move.l     #0,(a1)
		move.w     #1,4(a1)
		rts

x1022c:
		move.w     8434(a6),d0
		move.w     d0,-(a7)
		move.w     #62,-(a7) /* Fclose */
		trap       #1
		addq.l     #4,a7
		rts

copy32b:
		moveq.l    #3,d1
copy16b:
		moveq.l    #0,d0
copy32b_1:
		lsl.l      #8,d0
		move.b     (a0)+,d0
		dbf        d1,copy32b_1
		rts

printnl:
	.IFNE GBE /* zzz */
		lea.l      crnl,a0
	.ELSE
		lea.l      crnl(pc),a0
	.ENDC
printstr:
		movem.l    d0-d2/a0-a2,-(a7)
		pea.l      (a0)
		move.w     #9,-(a7) /* Cconws */
		trap       #1
		addq.l     #6,a7
		movem.l    (a7)+,d0-d2/a0-a2
		rts

print_decimal:
		movem.l    d0-d5/a0-a2,-(a7)
		move.l     #10000000,d4
		move.l     d0,d3
		clr.w      d1
print_decimal_1:
		clr.w      d2
print_decimal_2:
		cmp.l      d4,d3
		blt.s      print_decimal_3
		sub.l      d4,d3
		addq.w     #1,d2
		bra.s      print_decimal_2
print_decimal_3:
		tst.w      d2
		beq.s      print_decimal_6
		cmpi.w     #10,d2
		bmi.s      print_decimal_7
		clr.l      -(a7)
print_decimal_4:
		ext.l      d2
		divu.w     #10,d2
		move.l     d2,-(a7)
		cmpi.w     #9,d2
		bgt.s      print_decimal_4
print_decimal_5:
		addi.w     #'0',d2
		move.w     d2,d0
		bsr.s      cconout
		move.l     (a7)+,d2
		beq.s      print_decimal_8
		swap       d2
		bra.s      print_decimal_5
print_decimal_6:
		tst.w      d1
		beq.s      print_decimal_9
print_decimal_7:
		addi.w     #'0',d2
		move.w     d2,d0
		bsr.s      cconout
print_decimal_8:
		moveq.l    #1,d1
print_decimal_9:
		cmpi.w     #10,d4
		beq.s      print_decimal_13
		moveq.l    #10,d2
		moveq.l    #1,d5
print_decimal_14:
		cmp.l      d4,d2
		bcc.s      print_decimal_10
		asl.l      #1,d2
		asl.l      #1,d5
		bra.s      print_decimal_14
print_decimal_10:
		clr.l      d0
print_decimal_11:
		cmp.l      d4,d2
		bhi.s      print_decimal_12
		or.l       d5,d0
		sub.l      d2,d4
print_decimal_12:
		lsr.l      #1,d2
		lsr.l      #1,d5
		bcc.s      print_decimal_11
		move.l     d0,d4
		bra.s      print_decimal_1
print_decimal_13:
		addi.w     #'0',d3
		move.w     d3,d0
		bsr.s      cconout
		movem.l    (a7)+,d0-d5/a0-a2
		rts

cconout:
		tst.w      d0
		beq.s      cconout_1
		movem.l    d0-d2/a0-a2,-(a7)
		move.w     d0,-(a7)
		move.w     #2,-(a7) /* Cconout */
		trap       #1
		addq.l     #4,a7
		movem.l    (a7)+,d0-d2/a0-a2
cconout_1:
		rts

x10302: .dc.l 0
x10306: .dc.l 0

x1030a:
		movea.l    a1,a0
		move.l     d3,d0
		sub.l      4(a7),d0
		adda.l     4(a7),a0
		movem.l    d1-d3/a1-a2,-(a7)
		lea.l      -64(a7),a7
	.IFNE GBE /* zzz */
		lea.l      x16778,a1
	.ELSE
		lea.l      x16778(pc),a1
	.ENDC
		move.l     (a1),d1
		clr.l      (a1)
		cmp.l      d1,d0
		blt.s      x1030a_1
		move.l     d1,d0
x1030a_1:
		movem.l    d0/a0,-(a7)
		lea.l      8(a7),a2
		lea.l      general_buffer(a6),a0
		bsr        copy32b
		cmpi.l     #0x494E4C49,d0 /* 'INLI' */
		bne        x1030a_12
		moveq.l    #1,d1
		bsr        copy16b
		cmpi.w     #0x4E45,d0 /* 'NE' */
		bne        x1030a_12
x1030a_2:
		move.b     (a0)+,d0
		cmpi.b     #' ',d0
		beq.s      x1030a_2
		subq.l     #1,a0
		movea.l    a0,a1
		moveq.l    #0,d1
x1030a_3:
		move.b     (a0)+,d0
		addq.w     #1,d1
		cmpi.b     #'0',d0
		bcc.s      x1030a_3
		subq.w     #1,d1
		ble        x1030a_12
		subq.w     #1,d1
		bmi        x1030a_12
		cmpi.w     #':',d1
		ble.s      x1030a_4
		moveq.l    #58,d1
x1030a_4:
		move.b     (a1)+,(a2)+
		dbf        d1,x1030a_4
		move.b     #'.',(a2)+
		move.b     #'I',(a2)+
		move.b     #'N',(a2)+
		move.b     #'L',(a2)+
		clr.b      (a2)
		lea.l      8(a7),a0
		clr.w      -(a7)
		move.l     a0,-(a7)
		move.w     #61,-(a7) /* Fopen */
		trap       #1
		addq.l     #8,a7
		move.w     d0,d3
		movem.l    (a7)+,d0/a0
		tst.w      d3
		bmi.s      x1030a_8
		move.l     a0,-(a7)
		move.l     d0,-(a7)
		move.w     d3,-(a7)
		move.w     #63,-(a7) /* Fread */
		trap       #1
		lea.l      12(a7),a7
		tst.w      d0
		ble.s      x1030a_10
		move.w     d3,-(a7)
		move.l     d0,d3
		move.w     #62,-(a7) /* Fclose */
		trap       #1
		addq.l     #4,a7
		tst.w      d0
		bmi.s      x1030a_11
	.IFNE GBE /* zzz */
		lea.l      inline_msg,a0
	.ELSE
		lea.l      inline_msg(pc),a0
	.ENDC
		bsr        printstr
		lea.l      (a7),a0
x1030a_5:
		bsr        printstr
		moveq.l    #32,d0
		bsr        cconout
		move.l     d3,d0
		bsr        print_decimal
	.IFNE GBE /* zzz */
		lea.l      bytes_read_msg,a0
	.ELSE
		lea.l      bytes_read_msg(pc),a0
	.ENDC
x1030a_6:
		bsr        printstr
x1030a_7:
		lea.l      64(a7),a7
		movem.l    (a7)+,d1-d3/a1-a2
		rts
x1030a_8:
	.IFNE GBE /* zzz */
		lea.l      inline_msg,a0
	.ELSE
		lea.l      inline_msg(pc),a0
	.ENDC
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
	.IFNE GBE /* zzz */
		lea.l      cannot_open_msg,a0
	.ELSE
		lea.l      cannot_open_msg(pc),a0
	.ENDC
x1030a_9:
		bra.s      x1030a_6
x1030a_10:
	.IFNE GBE /* zzz */
		lea.l      inline_msg,a0
	.ELSE
		lea.l      inline_msg(pc),a0
	.ENDC
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
	.IFNE GBE /* zzz */
		lea.l      cannot_read_msg,a0
	.ELSE
		lea.l      cannot_read_msg(pc),a0
	.ENDC
		bsr        printstr
		move.w     d3,-(a7)
		move.w     #62,-(a7) /* Fclose */
		trap       #1
		addq.l     #4,a7
		bra.s      x1030a_7
x1030a_11:
	.IFNE GBE /* zzz */
		lea.l      inline_msg,a0
	.ELSE
		lea.l      inline_msg(pc),a0
	.ENDC
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
	.IFNE GBE /* zzz */
		lea.l      cannot_close_msg,a0
	.ELSE
		lea.l      cannot_close_msg(pc),a0
	.ENDC
		bra.s      x1030a_5
x1030a_12:
		addq.l     #8,a7
	.IFNE GBE /* zzz */
		lea.l      not_inline_msg,a0
	.ELSE
		lea.l      not_inline_msg(pc),a0
	.ENDC
		bsr        printstr
		lea.l      general_buffer(a6),a0
x1030a_13:
		move.b     (a0)+,d0
		cmpi.b     #EOL,d0
		bne.s      x1030a_13
		move.b     (a0),d0
		movem.l    d0/a0,-(a7)
		clr.b      (a0)
		bsr        printstr
		movem.l    (a7)+,d0/a0
		move.b     d0,(a0)
	.IFNE GBE /* zzz */
		lea.l      crnl,a0
	.ELSE
		lea.l      crnl(pc),a0
	.ENDC
		bra.s      x1030a_9

lowercase_filenames: .dc.w 0

_main_entry:
		bra.s startup

x1047e:
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0000
		.dc.w       0x0777
		.dc.w       0x0700
		.dc.w       0x0070
		.dc.w       0x0000

startup:
	.IFNE GBE /* zzz */
		pea.l      find_mtask
	.ELSE
		pea.l      find_mtask(pc)
	.ENDC
		move.w     #38,-(a7) /* Supexec */
		trap       #14
		addq.l     #6,a7
	.IFNE GBE /* zzz */
		move.w     mtask,d0
	.ELSE
		move.w     mtask(pc),d0
	.ENDC
		beq.s      startup_5
		lea.l      _entry-212(pc),a0 /* get environment ptr from basepage */
		move.l     (a0),d0
		beq.s      startup_5
		movea.l    d0,a0
		tst.b      (a0)
		beq.s      startup_5
startup_1:
		cmpi.b     #'C',(a0)
		bne.s      startup_3
		cmpi.b     #'O',1(a0)
		bne.s      startup_3
		cmpi.b     #'L',2(a0)
		bne.s      startup_3
		cmpi.b     #'U',3(a0)
		bne.s      startup_3
		cmpi.b     #'M',4(a0)
		bne.s      startup_3
		cmpi.b     #'N',5(a0)
		bne.s      startup_3
		cmpi.b     #'S',6(a0)
		bne.s      startup_3
		cmpi.b     #'=',7(a0)
		bne.s      startup_3
		addq.l     #8,a0
		moveq.l    #0,d0
		moveq.l    #0,d1
startup_2:
		move.b     (a0)+,d0
		beq.s      startup_4
		subi.w     #'0',d0
		bmi.s      startup_2
		cmpi.b     #9,d0
		bgt.s      startup_2
		lsl.l      #1,d1
		move.l     d1,-(a7)
		lsl.l      #2,d1
		add.l      (a7)+,d1
		add.l      d0,d1
		bra.s      startup_2
startup_3:
		tst.b      (a0)+
		bne.s      startup_3
		tst.b      (a0)
		beq.s      startup_5
		bra.s      startup_1
startup_4:
		move.l     d1,d0
		bne.s      startup_6
startup_5:
		.dc.w 0xa000 /* ALINE      #0 */
		movea.l    d0,a0
		move.w     -44(a0),d0
		addq.w     #1,d0
startup_6:
		cmpi.w     #256,d0
		bgt.s      startup_7
		cmpi.w     #40,d0
		bge.s      startup_8
		moveq.l    #40,d0
		bra.s      startup_8
startup_7:
		moveq.l    #80,d0
startup_8:
	.IFNE GBE /* zzz */
		lea.l      columns,a0
	.ELSE
		lea.l      columns(pc),a0
	.ENDC
		move.w     d0,(a0)
	.IFNE GBE /* zzz */
		lea.l      x16768,a0
	.ELSE
		lea.l      x16768(pc),a0
	.ENDC
		move.l     #0x40ACEAD6,d0 /* d0 = 2056756B ' Vuk' */
		ror.l      #1,d0
		move.l     d0,(a0)+
		move.l     #0x404C4086,d0
		ror.l      #1,d0 /* d0 = 20262043 ' & C' */
		move.l     d0,(a0)+
		move.l     #0xDE5D7E40,d0
		ror.l      #1,d0 /* d0 = 6F2EBF20 'o.tm ' */
		move.l     d0,(a0)+
		move.w     #0x2000,(a0)
		bsr        printnl
	.IFNE GBE /* zzz */
		lea.l      x16768,a0
	.ELSE
		lea.l      x16768(pc),a0
	.ENDC
		bsr        printstr
	.IFNE GBE /* zzz */
		lea.l      version_msg,a0
	.ELSE
		lea.l      version_msg(pc),a0
	.ENDC
		bsr        printstr
		jmp        main.l

x10590: .dc.w 0

FSUB:
		neg.w      d5
FADD:
		ext.l      d2
		bgt.s      FADD_1
		beq.s      FADD_9
		neg.w      d2
FADD_1:
		ext.l      d5
		bgt.s      FADD_2
		beq.s      FADD_7
		neg.w      d5
FADD_2:
		moveq.l    #16,d7
		move.w     d2,d6
		sub.w      d5,d6
		bgt.s      FADD_3
		beq.s      FADD_6
		exg        d3,d0
		exg        d4,d1
		exg        d5,d2
		neg.w      d6
FADD_3:
		sub.w      d7,d6
		bls.s      FADD_5
		sub.w      d7,d6
		bls.s      FADD_4
		cmp.w      d7,d6
		bhi.s      FADD_7
		move.l     d3,d4
		moveq.l    #0,d3
		swap       d4
		lsr.w      d6,d4
		bra.s      FADD_6
FADD_4:
		add.w      d7,d6
		lsr.l      d6,d3
		move.w     d3,d4
		clr.w      d3
		swap       d3
		bra.s      FADD_6
FADD_5:
		add.w      d7,d6
		swap       d4
		move.w     d3,d4
		swap       d4
		lsr.l      d6,d3
		lsr.l      d6,d4
FADD_6:
		eor.l      d2,d5
		bmi.s      FADD_11
		addx.w     d4,d1
		addx.l     d3,d0
		bcc.s      FADD_7
		roxr.l     #1,d0
		roxr.w     #1,d1
		addq.w     #1,d2
		cmpi.w     #0x1FFF,d2
		bhi.s      FADD_10
FADD_7:
		tst.l      d2
		bpl.s      FADD_8
		neg.w      d2
FADD_8:
		rts
FADD_9:
		move.l     d3,d0
		exg        d1,d4
		exg        d2,d5
		rts
FADD_10:
		moveq.l    #1,d0
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC
FADD_11:
		subx.w     d4,d1
		subx.l     d3,d0
		bpl.s      FADD_12
		bcc.s      FADD_14
		eor.l      d5,d2
		neg.w      d1
		negx.l     d0
FADD_12:
		cmpi.l     #0x0000FFFF,d0
		bls.s      FADD_18
FADD_13:
		add.w      d1,d1
		addx.l     d0,d0
		dbmi       d2,FADD_13
		subq.w     #1,d2
		ble.s      FADD_16
FADD_14:
		tst.l      d2
		bpl.s      FADD_15
		neg.w      d2
FADD_15:
		rts
FADD_16:
		moveq.l    #0,d1
FADD_17:
		moveq.l    #0,d0
		moveq.l    #0,d2
		rts
FADD_18:
		swap       d0
		beq.s      FADD_22
		move.w     d1,d0
		tst.l      d0
		bra.s      FADD_20
FADD_19:
		add.l      d0,d0
FADD_20:
		dbmi       d2,FADD_19
		moveq.l    #0,d1
		sub.w      d7,d2
		ble.s      FADD_17
		tst.l      d2
		bpl.s      FADD_21
		neg.w      d2
FADD_21:
		rts
FADD_22:
		move.w     d1,d0
		bne.s      FADD_24
		moveq.l    #0,d2
		rts
FADD_23:
		add.w      d0,d0
FADD_24:
		dbmi       d2,FADD_23
		moveq.l    #0,d1
		subi.w     #32,d2
		ble.s      FADD_17
		swap       d0
		tst.l      d2
		bpl.s      FADD_25
		neg.w      d2
FADD_25:
		rts


/* unused */
		bmi.s      Fnorm_6

Fnorm_1:
		beq.s      Fnorm_7
		tst.w      d2
		bpl.s      Fnorm_4
		neg.w      d2
Fnorm_2:
		add.w      d1,d1
		addx.l     d0,d0
		dbmi       d2,Fnorm_2
Fnorm_3:
		subq.w     #1,d2
		neg.w      d2
		bpl.w      Fmul10_2
		rts
Fnorm_4:
		add.w      d1,d1
		addx.l     d0,d0
		dbmi       d2,Fnorm_4
Fnorm_5:
		subq.w     #1,d2
		bmi.w      Fmul10_2
Fnorm_6:
		rts
Fnorm:
		tst.l      d0
		bge.s      Fnorm_1
		rts
Fnorm_7:
		move.w     d1,d0
		beq.w      Fmul10_2
		swap       d0
		moveq.l    #0,d1
		tst.w      d2
		bmi.s      Fnorm_9
		subi.w     #32,d2
		tst.l      d0
		bmi.s      Fnorm_6
Fnorm_8:
		add.l      d0,d0
		dbmi       d2,Fnorm_8
		bra.s      Fnorm_5
Fnorm_9:
		neg.w      d2
Fnorm_10:
		add.l      d0,d0
		dbmi       d2,Fnorm_10
		bra.s      Fnorm_3

Fmul10:
		tst.w      d2
		beq.s      Fmul10_1
		addq.w     #3,d2
		move.l     d0,d3
		move.w     d1,d4
		lsr.l      #1,d3
		roxr.w     #1,d4
		lsr.l      #1,d3
		roxr.w     #1,d4
		addx.w     d4,d1
		addx.l     d3,d0
		bcc.s      Fmul10_1
		roxr.l     #1,d0
		roxr.w     #1,d1
		addq.w     #1,d2
Fmul10_1:
		rts
Fmul10_2:
		moveq.l    #0,d2
		rts

FDIV:
		tst.w      d5
		ble.s      FDIV_4
		ext.l      d2
		bgt.s      FDIV_6
		bne.s      FDIV_5
FDIV_1:
		rts
FDIV_2:
		moveq.l    #0,d0
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC
FDIV_3:
		moveq.l    #0,d2
		rts
FDIV_4:
		beq.s      FDIV_2
		neg.w      d5
		neg.w      d2
		ext.l      d2
		bgt.s      FDIV_6
		beq.s      FDIV_1
FDIV_5:
		neg.w      d2
FDIV_6:
		sub.w      d5,d2
		addi.w     #0x03FF,d2
		bmi.s      FDIV_3
		lsr.l      #1,d0
		roxr.w     #1,d1
		move.l     d3,d5
		swap       d5
		tst.w      d4
		beq        FDIV_27
		divu.w     d5,d0
		move.w     d0,-(a7)
		move.w     d0,d6
		move.w     d0,d7
		move.w     d1,d0
		moveq.l    #0,d1
		mulu.w     d3,d6
		mulu.w     d4,d7
		swap       d7
		add.w      d7,d6
		bcc.s      FDIV_7
		addi.l     #0x00010000,d6
FDIV_7:
		swap       d7
		sub.w      d7,d1
		subx.l     d6,d0
		bcc.s      FDIV_9
FDIV_8:
		subq.w     #1,(a7)
		add.w      d4,d1
		addx.l     d3,d0
		bcc.s      FDIV_8
FDIV_9:
		divu.w     d5,d0
		bvs        FDIV_24
		move.w     d0,-(a7)
		move.w     d0,d6
		move.w     d0,d7
		move.w     d1,d0
		moveq.l    #0,d1
		mulu.w     d3,d6
		mulu.w     d4,d7
		swap       d7
		add.w      d7,d6
		bcc.s      FDIV_10
		addi.l     #0x00010000,d6
FDIV_10:
		swap       d7
		sub.w      d7,d1
		subx.l     d6,d0
		bcc.s      FDIV_12
FDIV_11:
		subq.w     #1,(a7)
		add.w      d4,d1
		addx.l     d3,d0
		bcc.s      FDIV_11
FDIV_12:
		divu.w     d5,d0
		bvs        FDIV_42
		move.w     d0,-(a7)
		move.w     d0,d6
		move.w     d0,d7
		move.w     d1,d0
		moveq.l    #0,d1
		mulu.w     d3,d6
		mulu.w     d4,d7
		swap       d7
		add.w      d7,d6
		bcc.s      FDIV_13
		addi.l     #0x00010000,d6
FDIV_13:
		swap       d7
		sub.w      d7,d1
		subx.l     d6,d0
		bcc.s      FDIV_15
FDIV_14:
		subq.w     #1,(a7)
		add.w      d4,d1
		addx.l     d3,d0
		bcc.s      FDIV_14
FDIV_15:
		move.l     d0,d3
		move.w     (a7)+,d1
		move.l     (a7)+,d0
		swap       d0
		bmi.s      FDIV_17
FDIV_16:
		add.l      d3,d3
		addx.w     d1,d1
		addx.l     d0,d0
		dbmi       d2,FDIV_16
		subq.w     #1,d2
		bmi.s      FDIV_21
FDIV_17:
		add.l      d3,d3
		bcs.s      FDIV_18
		bpl.s      FDIV_19
FDIV_18:
		addq.w     #1,d1
		bcc.s      FDIV_19
		addq.l     #1,d0
		bcc.s      FDIV_19
		roxr.l     #1,d0
		roxr.w     #1,d1
		addq.w     #1,d2
FDIV_19:
		tst.l      d2
		bpl.s      FDIV_20
		neg.w      d2
FDIV_20:
		rts
FDIV_21:
		moveq.l    #0,d2
		rts
FDIV_22:
		add.w      d3,d1
		addx.w     d5,d0
		bcc.s      FDIV_23
		addi.l     #0x00010000,d0
FDIV_23:
		subq.w     #1,(a7)
		bra.s      FDIV_26
FDIV_24:
		move.w     #-1,-(a7)
		move.l     d3,d6
		move.w     d4,d7
		sub.w      d3,d7
		subx.w     d5,d6
		bcc.s      FDIV_25
		subi.l     #0x00010000,d6 /* BUG: should be d5 */
FDIV_25:
		sub.w      d7,d1
		subx.l     d6,d0
		bcs.s      FDIV_22
FDIV_26:
		swap       d0
		move.w     d1,d0
		moveq.l    #0,d1
		bra        FDIV_12
FDIV_42:
		move.w     #-1,-(a7)
		bra.s      FDIV_15

Fvm10:
		andi.w     #15,d4
		add.w      d1,d1
		addx.l     d0,d0
		move.l     d0,d3
		add.w      d1,d4
		bcc.s      Fvm10_1
		addq.l     #1,d3
Fvm10_1:
		add.w      d1,d1
		addx.l     d0,d0
		add.w      d1,d1
		addx.l     d0,d0
		add.w      d4,d1
		addx.l     d3,d0
		rts

Fval:
		moveq.l    #0,d0
		moveq.l    #0,d1
		moveq.l    #0,d2
		moveq.l    #0,d6
		st         o488(a6)
		sf         o489(a6)
Fval_1:
		move.b     (a0)+,d4
		cmpi.b     #' ',d4
		beq.s      Fval_1
		cmpi.b     #'+',d4
		beq.s      Fval_2
		cmpi.b     #'-',d4
		bne.s      Fval_3
		bset       #30,d6
Fval_2:
		move.b     (a0)+,d4
Fval_3:
		cmpi.b     #'.',d4
		beq.s      Fval_7
		subi.b     #'0',d4
		cmpi.b     #9,d4
		bhi        Fval_23
		move.b     d4,d1
Fval_4:
		move.b     (a0)+,d4
		cmpi.b     #'0',d4
		bcs.s      Fval_6
		cmpi.b     #'9',d4
		bhi.s      Fval_6
		cmpi.l     #0x0FFFFFFF,d0
		bcc.s      Fval_5
		bsr.s      Fvm10
		bra.s      Fval_4
Fval_5:
		addq.w     #1,d6
		bra.s      Fval_4
Fval_6:
		cmpi.b     #'.',d4
		bne.s      Fval_9
Fval_7:
		move.b     (a0)+,d4
		cmpi.b     #'0',d4
		bcs.s      Fval_9
		cmpi.b     #'9',d4
		bhi.s      Fval_9
		cmpi.l     #0x0FFFFFFF,d0
		bcc.s      Fval_8
		bsr        Fvm10
		subq.w     #1,d6
Fval_8:
		bra.s      Fval_7
Fval_9:
		cmpi.b     #'E',d4
		beq.s      Fval_10
		cmpi.b     #'e',d4
		bne.s      Fval_17
Fval_10:
		move.b     (a0)+,d4
		cmpi.b     #'+',d4
		beq.s      Fval_11
		cmpi.b     #'-',d4
		bne.s      Fval_13
		bset       #31,d6
Fval_11:
		move.b     (a0)+,d4
		cmpi.b     #'0',d4
		bcs.s      Fval_12
		cmpi.b     #'9',d4
		ble.s      Fval_13
Fval_12:
		subq.w     #1,a0
		bclr       #31,d6
		bra.s      Fval_17
Fval_13:
		subi.b     #'0',d4
		cmpi.b     #9,d4
		bhi.s      Fval_17
		ext.w      d4
Fval_14:
		moveq.l    #0,d5
		move.b     (a0)+,d5
		subi.b     #'0',d5
		cmpi.b     #9,d5
		bhi.s      Fval_15
		mulu.w     #10,d4
		add.w      d5,d4
		cmpi.w     #1000,d4
		ble.s      Fval_14
		bra.s      Fval_23
Fval_15:
		tst.l      d6
		bpl.s      Fval_16
		neg.w      d4
Fval_16:
		add.w      d4,d6
Fval_17:
		subq.l     #1,a0
		move.w     #0x042E,d2
		bsr        Fnorm
		tst.w      d6
		bmi.s      Fval_19
		subq.w     #1,d6
		bmi.s      Fval_21
Fval_18:
		bsr        Fmul10
		dbf        d6,Fval_18
		bsr        Fnorm
		bra.s      Fval_21
Fval_19:
		movem.l    d0-d2,-(a7)
		movem.l    constone(pc),d0-d2
		not.w      d6
Fval_20:
		bsr        Fmul10
		dbf        d6,Fval_20
		move.l     d0,d3
		move.w     d1,d4
		move.l     d2,d5
		movem.l    (a7)+,d0-d2
		move.l     d6,-(a7)
		bsr        FDIV
		move.l     (a7)+,d6
		ext.l      d2
Fval_21:
		add.l      d6,d6
		bpl.s      Fval_22
		neg.w      d2
Fval_22:
		tst.b      o489(a6)
		beq.s      Fval_24
Fval_23:
		moveq.l    #-1,d2
Fval_24:
		clr.w      o488(a6)
		rts

constone:
		.dc.l 0x80000000,0,0x000003ff

ftstr_restart:
		cmpi.w     #0x3FFE,d2
		bhi        FTstr_12
		move.w     #0x1FFF,d2
		moveq.l    #-1,d1
		moveq.l    #-1,d0
/*
 * d0.l = manthi
 * d1.w = mantlo
 * d2.w = exp
 */
FTstr:
		andi.l     #0x0000FFFF,d1
		lea.l      fstr_tmpbuf(a6),a0
		moveq.l    #32,d3
		tst.w      d2
		bge.s      FTstr_1
		neg.w      d2
		moveq.l    #45,d3
FTstr_1:
		move.b     d3,(a0)+
		moveq.l    #0,d6
		tst.w      d2
		beq        FTstr_12
		cmpi.w     #0x1FFF,d2
		bhi.s      ftstr_restart
		cmpi.w     #0x03FF,d2
FTstr_2:
		bmi.s      FTstr_4
		movem.l    d0-d2,-(a7)
		move.w     d2,d7
		movem.l    constone(pc),d0-d2
FTstr_3:
		bsr        Fmul10
		addq.w     #1,d6
		cmp.w      d2,d7
		bcc.s      FTstr_3
		move.l     d0,d3
		move.w     d1,d4
		move.l     d2,d5
		movem.l    (a7)+,d0-d2
		move.w     d6,-(a7)
		bsr        FDIV
		move.w     (a7)+,d6
FTstr_4:
		bsr        Fmul10
		subq.w     #1,d6
		cmpi.w     #0x03FF,d2
		bcs.s      FTstr_4
FTstr_5:
		cmpi.w     #0x0402,d2
		beq.s      FTstr_6
		lsr.l      #1,d0
		roxr.w     #1,d1
		addq.w     #1,d2
		bra.s      FTstr_5
FTstr_6:
		addq.w     #1,d1
		bcc.s      FTstr_8
		addq.l     #1,d0
		cmpi.l     #0x9FFFFFFF,d0
		bcs.s      FTstr_8
FTstr_7:
		move.l     #0x10000000,d0
		moveq.l    #0,d1
		addq.w     #1,d6
FTstr_8:
		move.l     d0,d3
		rol.l      #4,d3
		andi.b     #15,d3
		ori.b      #'0',d3
		move.b     d3,(a0)+
		andi.l     #0x0FFFFFFF,d0
		moveq.l    #0,d4
		bsr        Fvm10
		lea.l      fstr_tmpbuf+15(a6),a1
		cmpa.l     a1,a0
		bne.s      FTstr_8
FTstr_9:
		move.b     #'E',(a0)+
		moveq.l    #'+',d3
		move.w     d6,d0
		tst.w      d6
		bpl.s      FTstr_10
		neg.w      d6
		moveq.l    #'-',d3
FTstr_10:
		move.b     d3,(a0)+
FTstr_11:
		ext.l      d6
		divu.w     #100,d6
		ori.b      #'0',d6
		move.b     d6,(a0)+
		clr.w      d6
		swap       d6
		divu.w     #10,d6
		ori.b      #'0',d6
		move.b     d6,(a0)+
		swap       d6
		ori.b      #'0',d6
		move.b     d6,(a0)+
		lea.l      fstr_tmpbuf(a6),a0
		rts
FTstr_12:
		moveq.l    #0,d0
		moveq.l    #0,d1
		moveq.l    #0,d2
		moveq.l    #0,d6
		bra.s      FTstr_8

roundup:
		pea.l      (a1)
		move.w     decimal_digits(a6),d1
		cmpi.w     #14,d1
		bcs.s      roundup_1
		beq.s      roundup_6
		moveq.l    #13,d1
roundup_1:
		lea.l      1(a0,d1.w),a1
		move.b     (a1),d2
		cmpi.b     #'5',d2
		bcs.s      roundup_5
roundup_2:
		move.b     -(a1),d2
		addq.b     #1,d2
		cmpi.b     #'0',d2
		bls.s      roundup_3
		cmpi.b     #'9',d2
		bls.s      roundup_4
		move.b     #'0',(a1)
		bra.s      roundup_2
roundup_3:
		move.w     d0,d6
		addq.l     #1,a0
		movea.l    (a7)+,a1
		bra        FTstr_7
roundup_4:
		move.b     d2,(a1)
		lea.l      1(a0,d1.w),a1
roundup_5:
		move.b     #'0',(a1)+
		cmpi.b     #'E',(a1)
		bne.s      roundup_5
roundup_6:
		movea.l    (a7)+,a1
		rts

Fstr:
		bsr        FTstr
		bsr.s      roundup
		move.l     a1,-(a7)
		lea.l      fstr_outbuf(a6),a1
		moveq.l    #14,d1
		cmpi.b     #' ',(a0)+
		beq.s      Fstr_1
		move.b     -1(a0),(a1)+
Fstr_1:
		cmpi.b     #'0',-1(a0,d1.w)
		dbne       d1,Fstr_1
		tst.w      d1
		beq.s      Fstr_7
Fstr_2:
		cmpi.w     #13,d0
		bgt.s      Fstr_9
		cmpi.w     #-5,d0
		blt.s      Fstr_9
Fstr_3:
		tst.w      d0
		bpl.s      Fstr_5
		move.b     #'0',(a1)+
		move.b     #'.',(a1)+
		move.w     d0,d2
		neg.w      d2
		subq.w     #2,d2
		bmi.s      Fstr_5
Fstr_4:
		move.b     #'0',(a1)+
		dbf        d2,Fstr_4
Fstr_5:
		move.b     (a0)+,(a1)+
		subq.w     #1,d1
		beq.s      Fstr_6
		dbf        d0,Fstr_5
		move.b     #'.',(a1)+
		bra.s      Fstr_5
Fstr_6:
		subq.w     #1,d0
		bmi.s      Fstr_8
		move.b     #'0',(a1)+
		bra.s      Fstr_6
Fstr_7:
		move.b     #'0',(a1)+
Fstr_8:
		clr.b      (a1)
		lea.l      fstr_outbuf(a6),a0
		suba.l     a0,a1
		move.l     a1,d0
		movea.l    (a7)+,a1
		rts
Fstr_9:
		move.b     (a0)+,(a1)+
		move.b     #'.',(a1)+
		move.b     (a0)+,(a1)+
		subq.w     #3,d1
		bmi.s      Fstr_11
Fstr_10:
		move.b     (a0)+,(a1)+
		dbf        d1,Fstr_10
Fstr_11:
		lea.l      fstr_tmpbuf+15(a6),a0
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,d0
		cmpi.b     #'0',d0
		beq.s      Fstr_12
		move.b     d0,(a1)+
Fstr_12:
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		bra.s      Fstr_8

DEFNUM:
		cmpi.w     #3,d0
		bcs.s      DEFNUM_1
		move.w     d0,decimal_digits(a6)
DEFNUM_1:
		rts

FITOF:
		moveq.l    #0,d1
		move.l     d0,d2
		ble.w      FITOF_5
		cmpi.l     #0x0000FFFF,d0
		bhi.s      FITOF_3
		move.w     #0x040D,d2
		tst.w      d0
		bmi.s      FITOF_2
FITOF_1:
		add.w      d0,d0
		dbmi       d2,FITOF_1
		swap       d0
		rts
FITOF_2:
		swap       d0
		addq.w     #1,d2
		rts
FITOF_3:
		move.w     #0x041D,d2
FITOF_4:
		add.l      d0,d0
		dbmi       d2,FITOF_4
		rts
FITOF_5:
		neg.l      d0
		beq.s      FITOF_11
		bmi.s      FITOF_10
		cmpi.l     #0x0000FFFF,d0
		bhi.s      FITOF_8
		move.w     #0x040D,d2
		tst.w      d0
		bmi.s      FITOF_7
FITOF_6:
		add.w      d0,d0
		dbmi       d2,FITOF_6
		swap       d0
		neg.w      d2
		rts
FITOF_7:
		swap       d0
		addq.w     #1,d2
		neg.w      d2
		rts
FITOF_8:
		move.w     #0x041D,d2
FITOF_9:
		add.l      d0,d0
		dbmi       d2,FITOF_9
		neg.w      d2
		rts
FITOF_10:
		move.w     #0xFBE2,d2
FITOF_11:
		rts

FDIV_27:
		divu.w     d5,d0
		tst.w      d3
		beq.s      FDIV_41
		move.w     d0,-(a7)
		move.w     d0,d6
		move.w     d1,d0
		moveq.l    #0,d1
		mulu.w     d3,d6
		sub.l      d6,d0
		bcc.s      FDIV_29
FDIV_28:
		subq.w     #1,(a7)
		add.l      d3,d0
		bcc.s      FDIV_28
FDIV_29:
		divu.w     d5,d0
		bvs        FDIV_24
		move.w     d0,-(a7)
		move.w     d0,d6
		move.w     d1,d0
		moveq.l    #0,d1
		mulu.w     d3,d6
		sub.l      d6,d0
		bcc.s      FDIV_32
FDIV_30:
		subq.w     #1,(a7)
FDIV_31:
		add.l      d3,d0
		bcc.s      FDIV_30
FDIV_32:
		divu.w     d5,d0
		bvs        FDIV_42
		move.w     d0,-(a7)
		move.w     d0,d6
		move.w     d1,d0
		mulu.w     d3,d6
		sub.l      d6,d0
		bcc.s      FDIV_34
FDIV_33:
		subq.w     #1,(a7)
		add.l      d3,d0
		bcc.s      FDIV_33
FDIV_34:
		move.l     d0,d3
		move.w     (a7)+,d1
		move.l     (a7)+,d0
		swap       d0
		bmi.s      FDIV_36
FDIV_35:
		add.l      d3,d3
		addx.w     d1,d1
		addx.l     d0,d0
		dbmi       d2,FDIV_35
		subq.w     #1,d2
		bmi.s      FDIV_40
FDIV_36:
		add.l      d3,d3
		bcs.s      FDIV_37
		bpl.s      FDIV_38
FDIV_37:
		addq.w     #1,d1
		bcc.s      FDIV_38
		addq.l     #1,d0
		bcc.s      FDIV_38
		roxr.l     #1,d0
		roxr.w     #1,d1
		addq.w     #1,d2
FDIV_38:
		tst.l      d2
		bpl.s      FDIV_39
		neg.w      d2
FDIV_39:
		rts
FDIV_40:
		moveq.l    #0,d2
		rts
FDIV_41:
		move.w     d0,-(a7)
		move.w     d0,d6
		move.w     d1,d0
		moveq.l    #0,d1
		divu.w     d5,d0
		bvs        FDIV_24
		move.w     d0,-(a7)
		move.w     d1,d0
		divu.w     d5,d0
		bvs        FDIV_42
		move.w     d0,-(a7)
		bra.s      FDIV_34

dummy_rts:
FFTOI:
		rts

mem_end: .dc.l 0
x10cae: .dc.l 0

x10cb2:
		.dc.l dummy_rts /* primary_expr */
		.dc.l dummy_rts /* get_2expr */
		.dc.l dummy_rts /* get_3expr */
		.dc.l dummy_rts /* get_4expr */
		.dc.l dummy_rts /* get_5expr */
		.dc.l dummy_rts /* get_6expr */
		.dc.l dummy_rts /* get_7expr */
		.dc.l dummy_rts /* get_8expr */
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l Screat
		.dc.l dummy_rts
		.dc.l GarColl
		.dc.l FADD
		.dc.l FSUB
		.dc.l dummy_rts /* FMUL */
		.dc.l FDIV
		.dc.l FITOF
		.dc.l dummy_rts /* FFTOI */
		.dc.l dummy_rts /* FSIN */
		.dc.l dummy_rts /* FCOS */
		.dc.l dummy_rts /* FTAN */
		.dc.l dummy_rts /* FATN */
		.dc.l dummy_rts /* FEXP */
		.dc.l dummy_rts /* FLOG */

main:
		movea.l    4(a7),a5
		lea.l      bss_end,a6
		move.l     a6,d0
		addq.l     #3,d0
		andi.b     #0xFC,d0
		movea.l    d0,a6
		movea.l    a6,a0
		moveq.l    #0,d0
		move.w     #0x0900-1,d1
main_1:
		move.l     d0,(a0)+
		move.l     d0,(a0)+
		move.l     d0,(a0)+
		move.l     d0,(a0)+
		dbf        d1,main_1
		movea.l    a6,a0
		adda.l     #36820,a0
		move.l     a6,mem_end
		lea.l      x10cb2(pc),a1
		lea.l      extjmp_table(a6),a2
		moveq.l    #26-1,d0
main_2:
		move.w     #0x4EF9,(a2)+ /* jmp.l opcode */
		move.l     (a1)+,(a2)+
		dbf        d0,main_2
		move.w     #13,decimal_digits(a6)
		move.b     612(a6),d0
		ori.b      #'.',d0
		bclr       #4,d0
		move.b     d0,612(a6)
		move.w     x10590(pc),d0
		bsr        x10ee0
		lea.l      25856(a6),a7
		move.l     #0x4E714EF9,(a6) /* nop; jmp */
		move.l     a5,baspag(a6)
		suba.l     a5,a0
		pea.l      (a0)
		pea.l      (a5)
		move.l     a0,pgmsize(a6)
		clr.w      -(a7)
		move.w     #74,-(a7) /* Mshrink */
		trap       #1
	.IFNE GBE /* zzz */
		jsr        x16534
	.ELSE
		bsr        x16534
	.ENDC
		jsr        x11a44.l
		.dc.w 0xa000 /* ALINE      #0 */
		move.l     a1,200(a6)
		lea.l      196(a6),a1
		move.l     a0,(a1)+
		jsr        x11ab0.l
		pea.l      (-1).w
		move.w     #72,-(a7) /* Malloc */
		trap       #1
		subi.l     #0x00004000,d0
		move.l     d0,file_buffer_size(a6)
		move.l     d0,-(a7)
		move.w     #72,-(a7) /* Malloc */
		trap       #1
		move.l     d0,file_buffer(a6)
		lea.l      25856(a6),a7
		move.w     x10ede.l,x1185a
		jsr        x1185c.l
		jsr        x1607a.l
		movea.l    baspag(a6),a0
		cmpi.b     #127,128(a0)
		bne        main_10
		move.l     44(a0),d0
		beq.w      main_10
		movea.l    d0,a1
		move.b     (a1),d0
		beq.w      main_10
		bra.s      main_4
main_3:
		tst.b      (a1)+
		bne.s      main_3
		tst.b      (a1)
		beq.s      main_10
main_4:
		cmpi.b     #'A',(a1)
		bne.w      main_3
		cmpi.b     #'R',1(a1)
		bne.w      main_3
		cmpi.b     #'G',2(a1)
		bne.w      main_3
		cmpi.b     #'V',3(a1)
		bne.w      main_3
		cmpi.b     #'=',4(a1)
		bne.w      main_3
		addq.l     #5,a1
main_5:
		movea.l    a1,a0
main_6:
		move.b     (a1)+,d1
		bne.s      main_6
		move.b     (a1),d1
		bne.s      main_5
		movea.l    a0,a1
		move.b     (a0),d0
		cmpi.b     #'"',d0
		beq.s      main_7
		cmpi.b     #0x27,d0
		bne.s      main_8
main_7:
		tst.b      (a0)+
		bne.s      main_7
		subq.l     #1,a0
		cmp.b      -(a0),d0
		bne.s      main_8
		clr.b      (a0)
		clr.b      (a1)+
main_8:
		movea.l    baspag(a6),a0
		lea.l      128(a0),a0
		move.b     #0x7F,(a0)+
main_9:
		move.b     (a1)+,(a0)+
		bne.s      main_9
main_10:
		movea.l    baspag(a6),a0
		adda.w     #128,a0
		moveq.l    #0,d7
		move.b     (a0),d7
		ble        x10194
		clr.b      1(a0,d7.w)
		cmpi.b     #13,0(a0,d7.w)
		bne.s      main_11
		clr.b      0(a0,d7.w)
main_11:
		tst.b      (a0)+
		beq        x10194
		moveq.l    #0,d7
		lea.l      general_buffer(a6),a1
main_12:
		cmpi.b     #' ',(a0)+
		beq.s      main_12
		cmpi.b     #'-',-(a0)
		seq        d7
		bne.s      main_14
		addq.l     #1,a0
main_13:
		cmpi.b     #' ',(a0)+
		beq.s      main_13
		subq.l     #1,a0
main_14:
		move.b     (a0)+,(a1)+
		bne.s      main_14
		move.b     d7,-(a7)
		jsr        x11838.l
		bra        x10004

x10ede: .dc.w 0

x10ee0:
		move.b     d0,8399(a6)
		moveq.l    #0,d1
		lsr.w      #1,d0
		bcc.s      x10ee0_1
		moveq.l    #32,d1
x10ee0_1:
		move.b     d1,8398(a6)
		rts

ALLOT:
		movea.l    a0,a2
		move.l     (a2),d2
		move.l     d0,d3
		movea.l    168(a6),a0
		lea.l      0(a0,d0.l),a1
		cmpa.l     strdesc_start(a6),a1
		bcs.s      ALLOT_1
		bsr        GarColl
		cmpa.l     strdesc_start(a6),a1
		bcc.s      ALLOT_2
ALLOT_1:
		move.l     a0,d0
		sub.l      d2,d0
		bsr.s      Lddre
		lea.l      strdesc_start(a6),a0
ALLOT_3:
		add.l      d3,(a2)+
		cmpa.l     a0,a2
		bne.s      ALLOT_3
		movea.l    d2,a0
		move.l     d3,d0
		lea.l      184(a6),a2
		moveq.l    #1,d1
		bsr.s      ALLOT_4
		lea.l      410(a6),a2
		moveq.l    #9,d1
ALLOT_4:
		move.l     (a2),d2
		beq.s      ALLOT_5
		cmpa.l     d2,a0
		bhi.s      ALLOT_5
		add.l      d0,(a2)
ALLOT_5:
		addq.l     #4,a2
		dbf        d1,ALLOT_4
		rts
ALLOT_2:
		moveq.l    #8,d0
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC

Lddre:
		movem.l    d1-d7/a2-a6,-(a7)
		lsr.l      #1,d0
		bcc.s      Lddre_1
		move.b     -(a0),-(a1)
Lddre_1:
		lsr.l      #1,d0
		bcc.s      Lddre_2
		move.w     -(a0),-(a1)
Lddre_2:
		lsr.l      #1,d0
		bcc.s      Lddre_3
		move.l     -(a0),-(a1)
Lddre_3:
		lsr.l      #1,d0
		bcc.s      Lddre_4
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
Lddre_4:
		lsr.l      #1,d0
		bcc.s      Lddre_5
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
Lddre_5:
		lsr.l      #1,d0
		bcc.s      Lddre_6
		lea.l      -32(a0),a0
		movem.l    (a0),d1-d7/a2
		movem.l    d1-d7/a2,-(a1)
Lddre_6:
		lsr.l      #1,d0
		bcc.s      Lddre_7
		lea.l      -64(a0),a0
		movem.l    32(a0),d1-d7/a2
		movem.l    d1-d7/a2,-(a1)
		movem.l    (a0),d1-d7/a2
		movem.l    d1-d7/a2,-(a1)
Lddre_7:
		lsr.l      #1,d0
		bcc.s      Lddre_8
		lea.l      -128(a0),a0
		movem.l    96(a0),d1-d7/a2
		movem.l    d1-d7/a2,-(a1)
		movem.l    48(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    (a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
Lddre_8:
		lsr.l      #1,d0
		bcc.s      Lddre_9
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
		lea.l      -240(a0),a0
		bra.s      Lddre_10
Lddre_11:
		lea.l      -512(a0),a0
		movem.l    480(a0),d1-d7/a2
		movem.l    d1-d7/a2,-(a1)
		movem.l    432(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    384(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    336(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    288(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    240(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
Lddre_10:
		movem.l    192(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    144(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    96(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    48(a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
		movem.l    (a0),d1-d7/a2-a6
		movem.l    d1-d7/a2-a6,-(a1)
Lddre_9:
		dbf        d0,Lddre_11
		movem.l    (a7)+,d1-d7/a2-a6
		rts

x1104c:
		lea.l      9748(a6),a0
		move.w     #1000,d0
		moveq.l    #-1,d1
x1104c_1:
		addq.l     #4,a0
		move.w     d1,(a0)+
		dbf        d0,x1104c_1
		rts

Screat:
		move.w     4(a0),d1
		beq.s      Screat_1
		movea.l    (a0),a1
		cmp.w      d0,d1
		beq.s      Screat_2
		addq.w     #1,d1
		andi.b     #0xFE,d1
		adda.w     d1,a1
		neg.w      d1
		ext.l      d1
		move.l     d1,(a1)
Screat_1:
		movea.l    strdesc_start(a6),a1
		moveq.l    #0,d1
		move.w     d0,d1
		beq.s      Screat_3
		addq.w     #5,d1
		andi.b     #0xFE,d1
		suba.l     d1,a1
		cmpa.l     168(a6),a1
		bcs.s      STcreat
STcreat_4:
		move.l     a1,(a0)
		move.w     d0,4(a0)
		move.l     a0,-4(a1,d1.l)
		move.l     a1,strdesc_start(a6)
Screat_2:
		rts
Screat_3:
		move.w     d0,4(a0)
		rts

STcreat:
		bsr.s      GarColl
		movea.l    strdesc_start(a6),a1
		suba.l     d1,a1
		cmpa.l     168(a6),a1
		bcc.s      STcreat_4
		moveq.l    #8,d0
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC

GarColl:
		movem.l    d0/a0-a3,-(a7)
		movea.l    strdesc_end(a6),a0
		movea.l    strdesc_start(a6),a2
GarColl_3:
		movea.l    a0,a1
		cmpa.l     a0,a2
		beq.s      GarColl_1
		move.l     -(a0),d0
		bmi.s      GarColl_2
		movea.l    d0,a3
		movea.l    (a3),a0
		bra.s      GarColl_3
GarColl_2:
		adda.l     d0,a0
		cmpa.l     a0,a2
		beq.s      GarColl_4
GarColl_13:
		move.l     -(a0),d0
		bmi.s      GarColl_2
		move.l     d0,-(a1)
		movea.l    d0,a3
		move.w     4(a3),d0
		lsr.w      #1,d0
		bcc.s      GarColl_5
		move.w     -(a0),-(a1)
GarColl_5:
		lsr.w      #1,d0
		bcc.s      GarColl_6
		move.w     -(a0),-(a1)
GarColl_6:
		lsr.w      #1,d0
		bcc.s      GarColl_7
		move.l     -(a0),-(a1)
GarColl_7:
		lsr.w      #1,d0
		bcc.s      GarColl_8
		bra.s      GarColl_9
GarColl_11:
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
GarColl_9:
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
GarColl_8:
		dbf        d0,GarColl_11
		move.l     a1,(a3)
		cmpa.l     a0,a2
GarColl_10:
		bne.s      GarColl_13
GarColl_4:
		move.l     a1,strdesc_start(a6)
GarColl_1:
		movem.l    (a7)+,d0/a0-a3
		rts

/* gfa: 00014e66 */
x1111c:
		movea.l    ptr_table+16*4(a6),a0
x1111c_1:
		cmpi.w     #468,2(a0)
		beq.s      x1111c_2
		cmpi.w     #180,2(a0)
		adda.w     (a0),a0
		bne.s      x1111c_1
		clr.l      458(a6)
		rts
x1111c_2:
		move.l     a0,458(a6)
		move.w     #4,462(a6)
		rts

/* gfa: 00015784 */
GetFBuf:
		move.w     d6,d0
		add.w      d0,d0
		add.w      d6,d0
		add.w      d0,d0
		lea.l      2772(a6),a0
		adda.w     d0,a0
		tst.w      4(a0)
		beq.w      x11162
		movea.l    (a0),a0
		movem.w    (a0),d0-d2
		rts
x11162:
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC

/* gfa: 000157be */
putcstdout:
		lea.l      general_buffer(a6),a1
		move.b     d0,(a1)
		moveq.l    #1,d0
putcstdout_1:
		pea.l      (a1)
		move.l     d0,-(a7)
		pea.l      0x00400001 /* Fwrite(1,...) */
		trap       #1
		adda.w     #12,a7
		rts

x1117e:
		lea.l      general_buffer(a6),a1
		moveq.l    #1,d0
		bsr.s      readstdin
		move.b     general_buffer(a6),d0
		rts

readstdin:
		pea.l      (a1)
		move.l     d0,-(a7)
		pea.l      0x003F0000 /* Fread(0,...) */
		trap       #1
		adda.w     #12,a7
		rts


FWrite:
		move.l     d0,d3
		beq.s      FWrite_4
		cmpi.w     #1,d6
		beq.s      putcstdout_1
		bsr.s      GetFBuf
		btst       #1,d2
		beq.w      eaccdn
		tst.w      d1
		beq.s      FWrite_1
		bsr        seekfile
FWrite_1:
		bset       #7,4(a0)
		move.w     #4096,d1
FWrite_2:
		move.b     (a1)+,10(a0,d0.w)
		addq.w     #1,d0
		cmp.w      d1,d0
		bcc.s      FWrite_5
FWrite_3:
		subq.l     #1,d3
		bne.s      FWrite_2
		move.w     d0,(a0)
FWrite_4:
		rts
FWrite_5:
		move.w     d0,(a0)
		bsr        FlushBuf
		moveq.l    #0,d0
		cmpi.w     #4096,d3
		bcs.s      FWrite_3
		bra        x11328

/* gfa: 00015872 */
FGetc:
		cmpi.w     #1,d6
		beq.w      x1117e
		bsr        GetFBuf
		btst       #0,d2
		beq.s      eaccdn
		tst.w      d2
		bpl.s      FGetc_1
		bsr        FlushBuf
FGetc_1:
		cmp.w      d1,d0
		bcs.s      FGetc_2
		bsr        _FillBuf
FGetc_2:
		addq.w     #1,(a0)
		move.b     10(a0,d0.w),d1
		moveq.l    #0,d0
		move.b     d1,d0
		rts

eaccdn:
		moveq.l    #-36,d0
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC

x1121a:
		cmpi.w     #1,d6
		beq        putcstdout
		move.w     d0,d3
		bsr        GetFBuf
		btst       #1,d2
		beq.s      eaccdn
		tst.w      d1
		beq.s      x1121a_1
		bsr.w      seekfile
x1121a_1:
		cmpi.w     #4096,d0
		bcs.s      x1121a_2
		bsr.w      FlushBuf
x1121a_2:
		addq.w     #1,(a0)
		move.b     d3,10(a0,d0.w)
		bset       #7,4(a0)
		rts

seekfile:
		movem.l    a0-a1,-(a7)
		sub.l      d1,d0
		add.l      d0,6(a0)
		clr.l      (a0)
		move.w     #1,-(a7)
		move.w     d6,-(a7)
		move.l     d0,-(a7)
		move.w     #66,-(a7) /* Fseek */
		trap       #1
		lea.l      10(a7),a7
		tst.l      d0
		bmi        x10194_4
		movem.l    (a7)+,a0-a1
		movem.w    (a0),d0-d2
		rts

FClose:
		bsr        GetFBuf
		tst.w      d2
		bpl.s      FClose_1
		bsr.w      FlushBuf
FClose_1:
		move.l     #0xFFFFEFF6,4106(a0)
		move.w     d6,-(a7)
		move.w     #62,-(a7) /* Fclose */
		trap       #1
		addq.w     #4,a7
		tst.l      d0
		bmi.s      FClose_2
		moveq.l    #0,d0
		rts
FClose_2:
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC

/* gfa: 00015986 */
FlushBuf:
		movem.w    (a0),d0-d2
		tst.l      d0
		beq.s      FlushBuf_1
		movem.l    a0-a1,-(a7)
		clr.l      (a0)+
		bclr       #7,(a0)
		pea.l      6(a0)
		move.l     d0,-(a7)
		move.w     d6,-(a7)
		move.w     #64,-(a7) /* Fwrite */
		trap       #1
		addq.l     #4,a7
		movem.l    (a7)+,d1-d2/a0-a1
		cmp.l      d0,d1
		bne.s      FlushBuf_2
		add.l      d0,6(a0)
		movem.w    (a0),d0-d2
FlushBuf_1:
		rts
FlushBuf_2:
		tst.l      d0
		bmi.s      FlushBuf_3
		moveq.l    #37,d0
FlushBuf_3:
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC

/* gfa: 000159c2 */
_FillBuf:
		movem.l    a0-a1,-(a7)
		clr.l      (a0)
		pea.l      10(a0)
		pea.l      (4096).w
		move.w     d6,-(a7)
		move.w     #63,-(a7) /* Fread */
		trap       #1
		lea.l      12(a7),a7
		movem.l    (a7)+,a0-a1
		tst.l      d0
		ble.s      _FillBuf_1
		move.l     d0,(a0)
		add.l      d0,6(a0)
		movem.w    (a0),d0-d2
		rts
_FillBuf_1:
		bmi.s      _FillBuf_3
		move.w     MergeFlg(pc),d1
		beq.w      _FillBuf_2
		tst.b      d1
		beq        ERROR
		moveq.l    #0,d1
		rts

MergeFlg: .dc.w 0

/* gfa: 00015a06 */
_FillBuf_2:
		moveq.l    #26,d0
_FillBuf_3:
	.IFNE FOR_LIB
		bra        ERROR
	.ELSE
		jmp        error_jmp(a6) /* ERROR */
	.ENDC


/* gfa: 00015a2e */
x11328:
		clr.l      (a0)
		pea.l      (a0)
		pea.l      (a1)
		subq.l     #1,d3
		move.l     d3,-(a7)
		move.w     d6,-(a7)
		move.w     #64,-(a7) /* Fwrite */
		trap       #1
		addq.l     #4,a7
		movem.l    (a7)+,d1-d2/a0
		cmp.l      d0,d1
		bne.w      FlushBuf_2
		add.l      d0,6(a0)
		rts

/* gfa: 00015db2 */
x1134c:
		add.b      d0,450(a6)
		move.w     8434(a6),d6
		lea.l      1990(a6),a0
		adda.w     d6,a0
		move.b     (a0),d7
		movea.l    a1,a2
		move.l     d0,d1
		moveq.l    #13,d2
x1134c_1:
		dbf        d1,x1134c_2
		subi.l     #0x00010000,d1
		bmi.s      x1134c_4
x1134c_2:
		addq.w     #1,d7
		cmp.b      (a2)+,d2
		bcs.s      x1134c_1
		bne.s      x1134c_3
		moveq.l    #0,d7
		bra.s      x1134c_1
x1134c_3:
		subq.w     #1,d7
		cmpi.b     #10,-1(a2)
		beq.s      x1134c_1
		cmpi.b     #8,-1(a2)
		bne.s      x1134c_1
		subq.w     #1,d7
		bra.s      x1134c_1
x1134c_4:
		move.b     d7,(a0)
		move.w     8434(a6),d6
		bpl.s      x1134c_8
		addq.w     #6,d6
		bmi.s      x1134c_7
		pea.l      (a3)
		movea.l    a1,a3
		move.l     d0,d7
		dbf        d7,x1134c_5
		bra.s      x1134c_6
x1134c_5:
		moveq.l    #0,d0
		move.b     (a3)+,d0
		move.w     d0,-(a7)
		move.w     d6,-(a7)
		move.w     #3,-(a7) /* Bconout */
		trap       #13
		addq.l     #6,a7
		dbf        d7,x1134c_5
x1134c_6:
		subi.l     #0x00010000,d7
		bpl.s      x1134c_5
		movea.l    (a7)+,a3
		rts
x1134c_7:
		pea.l      (a1)
		move.l     d0,-(a7)
		move.w     #-3,-(a7)
		move.w     #64,-(a7) /* Fwrite */
		trap       #1
		lea.l      12(a7),a7
		rts
x1134c_8:
		bra        FWrite

/* gfa: 00015f8c */
x113e0:
		move.w     d0,8434(a6)
		moveq.l    #0,d7
		tst.w      d0
		bmi.s      x113e0_1
		lea.l      o2314(a6),a1
		cmpa.l     a1,a0
		bcs.s      x113e0_2
		mulu.w     #6,d0
		lea.l      2772(a6),a0
		adda.w     d0,a0
		move.w     #4096+10,d0
		clr.w      4(a0)
		bsr        Screat
		clr.l      (a1)+
		move.w     d5,(a1)+
		move.l     d7,(a1)+
x113e0_1:
		rts
x113e0_2:
		mulu.w     #6,d0
		lea.l      2772(a6),a0
		adda.w     d0,a0
		lea.l      19856(a6),a1
		move.l     a1,(a0)+
		move.w     #4096+10,(a0)+
		clr.l      (a1)+
		move.w     d5,(a1)+
		move.l     d7,(a1)+
		rts

/* gfa: 0001601e */
x1142c:
		moveq.l    #2,d5
		moveq.l    #60,d0 /* Fcreate */
		clr.w      -(a7)
		pea.l      (a1)
		move.w     d0,-(a7)
	.IFNE STRANGE_CHECK
	.IFNE GBE /* zzz */
		lea.l      x16768-8196,a0
	.ELSE
		lea.l      x16768-8196(pc),a0
	.ENDC
		lea.l      8196(a0),a0 /* a0 = 00016768 */
		move.l     #0x8159D5AC,d0
		ror.l      #2,d0 /* d0 = 2056756B ' Vuk' */
		cmp.l      (a0)+,d0
		bne        exit
		move.l     #0x8098810C,d0
		ror.l      #2,d0 /* d0 = 20262043 ' & C' */
		cmp.l      (a0)+,d0
		bne        exit
		move.l     #0x37975F90,d0
		rol.l      #1,d0 /* d0 = 6F2EBF20 'o.tm ' */
		cmp.l      (a0)+,d0
		bne        exit
		move.w     #0x2000,d0
		cmp.w      (a0),d0
		bne        exit
	.ENDC
		trap       #1
		addq.l     #8,a7
		tst.w      d0
		bmi        x10194_3
		bra        x113e0

/* gfa: 000167d4 */
x11480:
		moveq.l    #61,d0 /* Fopen */
		bsr        gemdos_func
		bmi.w      x1142c
		pea.l      (a1)
		move.w     d0,-(a7)
		move.w     #62,-(a7) /* Fclose */
		trap       #1
		addq.l     #4,a7  /* leave filename on stack */
	.IFNE GBE /* zzz */
		lea.l      file_msg,a0
	.ELSE
		lea.l      file_msg(pc),a0
	.ENDC
		bsr        printstr
		movea.l    (a7),a0
		bsr        printstr
	.IFNE GBE /* zzz */
		lea.l      already_exists_msg,a0
	.ELSE
		lea.l      already_exists_msg(pc),a0
	.ENDC
		bsr        printstr
		movea.l    (a7),a1
		lea.l      o850(a6),a0
x11480_1:
		move.b     (a1)+,(a0)+
		bne.s      x11480_1
		subq.l     #1,a0
		moveq.l    #3,d0
x11480_2:
		move.b     -(a0),d1
		beq.s      x11480_3
		cmpi.b     #0x5c,d1
		beq.s      x11480_3
		cmpi.b     #'.',d1
		dbeq       d0,x11480_2
		beq.s      x11480_4
x11480_3:
		tst.b      (a0)+
		bne.s      x11480_3
		subq.l     #1,a0
x11480_4:
		move.b     #'.',(a0)+
		move.w     lowercase_filenames(pc),d0
		bne.s      x11480_5
		move.b     #'B',(a0)+
		move.b     #'A',(a0)+
		move.b     #'K',(a0)+
		bra.s      x11480_6
x11480_5:
		move.b     #'b',(a0)+
		move.b     #'a',(a0)+
		move.b     #'k',(a0)+
x11480_6:
		clr.b      (a0)
		pea.l      o850(a6)
		move.w     #65,-(a7) /* Fdelete */
		trap       #1
		addq.l     #2,a7
		tst.l      d0
		bmi.s      x11480_7
	.IFNE GBE /* zzz */
		lea.l      deleted_file_msg,a0
	.ELSE
		lea.l      deleted_file_msg(pc),a0
	.ENDC
		bsr        printstr
		lea.l      o850(a6),a0
		bsr        printstr
		bsr        printnl
x11480_7:
		move.l     4(a7),-(a7)
		clr.w      -(a7)
		move.w     #86,-(a7) /* Frename */
		trap       #1
		lea.l      12(a7),a7
		tst.l      d0
		bmi.s      x11480_8
	.IFNE GBE /* zzz */
		lea.l      renamed_file_msg,a0
	.ELSE
		lea.l      renamed_file_msg(pc),a0
	.ENDC
		bsr        printstr
		movea.l    (a7),a0
		bsr        printstr
	.IFNE GBE /* zzz */
		lea.l      to_msg,a0
	.ELSE
		lea.l      to_msg(pc),a0
	.ENDC
		bsr        printstr
		lea.l      o850(a6),a0
		bsr        printstr
		bsr        printnl
x11480_8:
		movea.l    (a7)+,a1
		bra        x1142c

/* gfa: 00016844 */
gemdos_func:
		clr.w      -(a7)
		pea.l      (a1)
		move.w     d0,-(a7)
		trap       #1
		movea.l    2(a7),a1
		addq.l     #8,a7
		tst.w      d0
		rts

x1156c:
		.dc.w 4
		.ascii "GFA-BASIC3"

/* gfa: 00018cc6 */
x11578:
		bsr        x117bc
		bsr        x11480
		lea.l      x1156c(pc),a1
		moveq.l    #12,d0
		bsr        x1134c
		lea.l      ptr_table(a6),a0
		lea.l      ptr_table+38*4(a6),a1
		lea.l      general_buffer(a6),a2
		move.l     (a0),d0
		tst.b      x1156c
		bpl.s      x11578_1
		move.l     64(a0),d0
x11578_1:
		move.l     (a0)+,d1
		sub.l      d0,d1
		bpl.s      x11578_2
		moveq.l    #0,d1
x11578_2:
		move.l     d1,(a2)+
		cmpa.l     a0,a1
		bne.s      x11578_1
		lea.l      general_buffer(a6),a1
		move.l     #152,d0 /* write the offsets */
		bsr        x1134c
		movea.l    ptr_table(a6),a1
		tst.b      x1156c
		beq.s      x11578_3
		clr.b      x1156c
		movea.l    ptr_table+16*4(a6),a1
x11578_3:
		move.l     ptr_table+19*4(a6),d0
		sub.l      a1,d0
		bsr        x1134c
		clr.w      x11ae6
x11578_7:
		clr.w      MergeFlg
		move.w     8434(a6),d0
		lea.l      2314(a6),a0
		cmp.b      -(a0),d0
		bne.s      x11578_4
		clr.b      (a0)
x11578_4:
		cmp.b      -(a0),d0
		bne.s      x11578_5
		clr.b      (a0)
x11578_5:
		cmpi.w     #6,d0
		blt.s      x11578_6
		move.w     d0,d6
		bra        FClose
x11578_6:
		rts

/* gfa: 0001915e */
x1160e:
		bsr        x117b4
		bsr        x101f0
		move.w     d0,8434(a6)
x1160e_1:
		lea.l      o850(a6),a1
		bsr        x1181c
		move.b     o850(a6),d0
		cmpi.b     #CR,d0
		beq.s      x1160e_1
		cmpi.b     #NL,d0
		beq.s      x1160e_1
		cmpi.b     #' ',d0
		bcs        x10194_1
		bsr        x118e2
		lea.l      o850(a6),a3
		bra.s      x1160e_4
x1160e_2:
		lea.l      o850(a6),a3
x1160e_3:
		movea.l    a3,a1
		bsr        x1181c
x1160e_4:
		cmpi.b     #10,(a3)
		beq.s      x1160e_3
		cmpi.b     #4,(a3)
		bne.s      x1160e_5
		bra.w      x11578_7
x1160e_5:
		cmpi.b     #' ',(a3)
		bne.s      x1160e_6
		lea.l      o850(a6),a2
		cmpa.l     a2,a3
		beq.s      x1160e_3
x1160e_6:
		lea.l      1105(a6),a2
		cmpa.l     a2,a3
		bhi        stackoverflow
		cmpi.b     #10,(a3)
		bne.s      x1160e_7
		addq.b     #3,(a3)
x1160e_7:
		cmpi.b     #13,(a3)+
		bne.s      x1160e_3
		lea.l      o850(a6),a0
		moveq.l    #32,d1
		moveq.l    #13,d0
x1160e_8:
		cmp.b      (a0)+,d1
		beq.s      x1160e_8
		cmp.b      -(a0),d0
		beq.s      x1160e_2
x1160e_9:
		cmp.b      (a0)+,d0
		bne.s      x1160e_9
		subq.l     #1,a0
x1160e_10:
		cmp.b      -(a0),d1
		beq.s      x1160e_10
		move.b     d0,1(a0)
		addq.l     #1,x10302
		cmpi.b     #'>',o850(a6)
		bne.s      x1160e_12
		move.b     #' ',o850(a6)
		jsr        x137d2.l
		cmpi.w     #TOK_CMD_FUNCTION*4,o1364(a6)
		bne.s      x1160e_11
		move.w     #TOK_CMD_FLAPPED_FUNCTION*4,o1364(a6)
		bra.s      x1160e_13
x1160e_11:
		cmpi.w     #TOK_CMD_PROCEDURE*4,o1364(a6)
		bne.s      x1160e_13
		move.w     #TOK_CMD_FLAPPED_PROCEDURE*4,o1364(a6)
		bra.s      x1160e_13
x1160e_12:
		jsr        x137d2.l
x1160e_13:
		move.l     a1,d1
		beq.s      x1160e_14
		bpl.s      x1160e_17
x1160e_14:
		lea.l      x10306(pc),a0
		move.l     (a0),d1
		cmpi.l     #8192-1,d1
		bgt.s      x1160e_15
		lsl.w      #2,d1
	.IFNE GBE /* zzz */
		lea.l      x16782,a1
	.ELSE
		lea.l      x16782(pc),a1
	.ENDC
		tst.l      (a1)
		beq.s      x1160e_15
		movea.l    (a1),a1
		tst.l      0(a1,d1.w)
		bne.s      x1160e_15
		move.l     x10302(pc),d0
		move.l     d0,0(a1,d1.w)
x1160e_15:
		addq.l     #1,(a0)
		lea.l      o1362(a6),a1
		move.l     #464,(a1)+ /* also writes to o1364 */
		lea.l      o850(a6),a0
x1160e_16:
		move.b     (a0),(a1)+
		cmpi.b     #13,(a0)+
		bne.s      x1160e_16
		move.l     a1,d0
		sub.l      a6,d0
		subi.w     #o1362,d0
		addq.w     #1,d0
		bclr       #0,d0
		move.w     d0,o1362(a6)
x1160e_17:
		moveq.l    #0,d0
		lea.l      ptr_table+18*4(a6),a0
		lea.l      o1362(a6),a1
		move.w     (a1)+,d0
		cmpi.w     #1668,(a1)+
		bne.s      x1160e_21
		cmpi.b     #240,(a1)+
		bcs.s      x1160e_18
		addq.l     #2,a1
x1160e_18:
		addq.l     #3,a1
		move.l     (a1)+,d1
	.IFNE GBE /* zzz */
		lea.l      x16778,a2
	.ELSE
		lea.l      x16778(pc),a2
	.ENDC
		move.l     d1,(a2)
		add.l      d0,d1
		addq.l     #1,d1
		andi.w     #-2,d1
		cmpi.l     #0x00007FF8,d1
		bhi        x1160e_14
		move.w     d1,o1362(a6)
		move.l     d0,-(a7)
		move.l     d1,d0
		bsr        ALLOT
		movea.l    a0,a1
		lsr.w      #1,d0
		bra.s      x1160e_20
x1160e_19:
		clr.w      (a0)+
x1160e_20:
		dbf        d0,x1160e_19
		bsr        x1030a
		movea.l    a1,a0
		move.l     (a7)+,d0
		bra.s      x1160e_22
x1160e_21:
		bsr        ALLOT
x1160e_22:
		st         x11ae6
		addq.l     #1,x11af6
		lea.l      o1362(a6),a1
		lsr.w      #1,d0
		subq.w     #1,d0
x1160e_23:
		move.w     (a1)+,(a0)+
		dbf        d0,x1160e_23
		bra        x1160e_2

x117b4:
		move.l     #0x2E4C5354,d0 /* '.LST' */
		bra.s      x117bc_1

/* gfa: 0001939c */
x117bc:
		move.l     #0x2E474641,d0 /* '.GFA' */
x117bc_1:
		lea.l      1105(a6),a0
		clr.b      (a0)+
x117bc_2:
		tst.b      (a0)+
		bne.s      x117bc_2
		subq.l     #1,a0
		movea.l    a0,a1
x117bc_3:
		cmpi.b     #'.',-(a0)
		beq.s      x117bc_9
		tst.b      (a0)
		beq.s      x117bc_4
		cmpi.b     #':',(a0)
		beq.s      x117bc_4
		cmpi.b     #0x5c,(a0)
		bne.s      x117bc_3
x117bc_4:
		move.b     (a0)+,d1
		beq.s      x117bc_6
		cmpi.b     #'a',d1
		blt.s      x117bc_4
		cmpi.b     #'z',d1
		bgt.s      x117bc_4
x117bc_5:
		eori.l     #0x00202020,d0
		bra.s      x117bc_7
x117bc_6:
		tst.w      lowercase_filenames
		bne.s      x117bc_5
x117bc_7:
		moveq.l    #3,d1
x117bc_8:
		rol.l      #8,d0
		move.b     d0,(a1)+
		dbf        d1,x117bc_8
		clr.b      (a1)
x117bc_9:
		movea.l    a1,a0
		lea.l      general_buffer(a6),a1
		rts

x1181a:
		.dc.w 0

/* gfa: 0001998a */
x1181c:
		move.w     8434(a6),d6
		bsr        FGetc
		move.b     d0,(a1)
		tst.w      2(a0)
		beq.s      x1181c_1
		rts
x1181c_1:
		addq.l     #4,a7
		bra        x11578_7

x11834: .dc.l 0

x11838:
		lea.l      614(a6),a0
		clr.l      (a0)+
		clr.l      (a0)+
		clr.l      (a0)+
		clr.l      (a0)+
		clr.l      (a0)+
		clr.l      654(a6)
		clr.b      611(a6)
		move.w     x1185a.l,x10ede
		rts

x1185a: .dc.w 0

/* gfa: 0001a424 */
x1185c:
		clr.w      x11ae6
		movem.w    8698(a6),d0-d1
		addq.w     #1,d0
		addq.w     #1,d1
		move.w     8724(a6),d2
		mulu.w     d1,d0
		lsr.w      #2,d2
		beq.s      x1185c_1
		add.l      d0,d0
		lsr.w      #1,d2
		beq.s      x1185c_1
		add.l      d0,d0
		lsr.w      #2,d2
		beq.s      x1185c_1
		add.l      d0,d0
x1185c_1:
		lsr.l      #3,d0
		move.l     d0,x11a54
		move.l     file_buffer_size(a6),d1
		sub.l      d0,d1
		movea.l    file_buffer(a6),a0
		add.l      a0,d1
		lea.l      ptr_table(a6),a1
		moveq.l    #19-1,d0
x1185c_2:
		move.l     a0,(a1)+
		dbf        d0,x1185c_2
		move.l     #0x000400B4,(a0)+
		moveq.l    #20-1,d0
x1185c_3:
		move.l     a0,(a1)+
		dbf        d0,x1185c_3
		move.l     d1,(a1)+ /* strdesc_start(a6) */
		move.l     d1,(a1)+ /* strdesc_end(a6) */
		move.l     d1,x10cae
		move.l     d1,(a1)+ /* 180(a6) */
		clr.l      (a1)+ /* 184(a6) */
		clr.l      (a1)+ /* 188(a6) */
		lea.l      410(a6),a0
		moveq.l    #9,d0
x1185c_4:
		clr.l      (a0)+
		dbf        d0,x1185c_4
		lea.l      x1047e.l,a1
		lea.l      deftype.l,a0
		moveq.l    #25,d0
x1185c_5:
		move.b     (a1)+,(a0)+
		dbf        d0,x1185c_5

x118e2:
		clr.b      639(a6)
		clr.b      610(a6)
		bsr        x11838
		lea.l      1662(a6),a0
		cmpa.l     a0,a5
		bhi.s      x118e2_1
		clr.l      x11834
x118e2_1:
		clr.w      698(a6)
		bsr        x119be
		move.l     strdesc_end(a6),strdesc_start(a6)
		movea.l    ptr_table+35*4(a6),a0
		move.l     ptr_table+36*4(a6),d0
		sub.l      a0,d0
		beq.s      x118e2_8
		moveq.l    #0,d1
		lsr.l      #2,d0
		bcc.s      x118e2_2
		move.w     d1,(a0)+
x118e2_2:
		lsr.l      #1,d0
		bcc.s      x118e2_3
		move.l     d1,(a0)+
x118e2_3:
		lsr.l      #1,d0
		bcc.s      x118e2_4
		move.l     d1,(a0)+
		move.l     d1,(a0)+
x118e2_4:
		lsr.l      #1,d0
		bcc.s      x118e2_7
		bra.s      x118e2_6
x118e2_5:
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		move.l     d1,(a0)+
x118e2_6:
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		move.l     d1,(a0)+
x118e2_7:
		dbf        d0,x118e2_5
x118e2_8:
		bsr        x1104c
		bra        x1111c

x1194e:
		lea.l      ptr_table+35*4(a6),a0
		move.l     (a0)+,(a0)
		move.l     (a0)+,(a0)
		move.l     (a0)+,(a0)+
		move.l     4(a0),(a0)
		rts

gen_vartable:
		movem.l    (a1),a0/a2
		cmpa.l     a0,a2
		beq.s      gen_vartable_2
gen_vartable_1:
		move.l     d1,(a0)+
		add.l      d0,d1
		cmpa.l     a0,a2
		bne.s      gen_vartable_1
gen_vartable_2:
		addq.l     #4,a1
		rts

x11972:
		move.l     ptr_table+35*4(a6),d1
		lea.l      ptr_table+19*4(a6),a1
		moveq.l    #8,d0 /* float: 8 bytes */
		bsr.s      gen_vartable
		moveq.l    #6,d0 /* string: 6 bytes */
		bsr.s      gen_vartable
		moveq.l    #4,d0 /* int: 4 bytes */
		bsr.s      gen_vartable
		moveq.l    #1,d0 /* bool: 1 byte */
		bsr.s      gen_vartable
		addq.l     #1,d1 /* make it even */
		andi.w     #-2,d1
		moveq.l    #6,d0 /* array: 6 bytes */
		bsr.s      gen_vartable /* float arrays */
		bsr.s      gen_vartable /* string arrays */
		bsr.s      gen_vartable /* int arrays */
		bsr.s      gen_vartable /* bool arrays */
		moveq.l    #2,d0 /* word: 2 byte */
		bsr.s      gen_vartable
		moveq.l    #1,d0 /* byte: 1 byte */
		bsr.s      gen_vartable
		addq.l     #1,d1 /* make it even */
		andi.w     #-2,d1
		lea.l      ptr_table+31*4(a6),a1
		moveq.l    #6,d0 /* array: 6 bytes */
		bsr.s      gen_vartable /* word arrays */
		bsr.s      gen_vartable /* byte arrays */
		lea.l      ptr_table+36*4(a6),a0
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		rts

x119be:
		bsr.s      x11972
		movea.l    ptr_table+16*4(a6),a1
		move.w     #180,d0
		moveq.l    #0,d1
x119be_1:
		movem.w    (a1),d2-d3
		adda.w     d2,a1
		addq.l     #1,d1
		cmp.w      d0,d3
		bne.s      x119be_1
		subq.l     #1,d1
		add.l      d1,d1
		movea.l    x10cae.l,a1
		suba.l     d1,a1
		subq.l     #8,a1
		move.l     a1,strdesc_end(a6)
		move.l     a1,strdesc_start(a6)
		lsr.l      #1,d1
		movea.l    ptr_table+16*4(a6),a0
		move.w     #0x8000,d4
		moveq.l    #28,d5
		move.w     #216,d6
		move.w     #1796,d7
x119be_2:
		movem.w    (a0),d2-d3
		adda.w     d2,a0
		cmp.w      d7,d3
		beq.s      x119be_8
		cmp.w      d6,d3
		beq.s      x119be_5
		move.w     d2,(a1)+
x119be_3:
		dbf        d1,x119be_2
		bra.s      x119be_6
x119be_4:
		movem.w    (a0),d2-d3
		adda.w     d2,a0
		or.w       d4,d2
x119be_5:
		move.w     d2,(a1)+
		cmp.w      d5,d3
		beq.s      x119be_3
		dbf        d1,x119be_4
x119be_6:
		clr.w      -(a1)
		clr.l      (a1)
		rts
x119be_7:
		movem.w    (a0),d2-d3
		adda.w     d2,a0
		or.w       d4,d2
x119be_8:
		move.w     d2,(a1)+
		cmpi.w     #44,d3
		beq.s      x119be_3
		dbf        d1,x119be_7
		bra.s      x119be_6

/* gfa: 0001a94c */
x11a44:
		moveq.l    #(x11a58_end-x11a58)/4-1,d0
		move.l     a6,d1
		lea.l      x11a58(pc),a0
x11a44_1:
		add.l      d1,(a0)+
		dbf        d0,x11a44_1
		rts

x11a54: .dc.l 32000

x11a58:
		.dc.l 5324
		.dc.l 2282
		.dc.l 8140
		.dc.l 8180
		.dc.l 8220
		.dc.l 8260
		.dc.l 5336
		.dc.l 7152
		.dc.l 6128
		.dc.l 7408
		.dc.l 6640
		.dc.l 2270
		.dc.l 2282
		.dc.l 7980
		.dc.l 8020
		.dc.l 8060
		.dc.l 8100
		.dc.l 2246
		.dc.l 5360
		.dc.l 5616
		.dc.l 7664
		.dc.l 7920
x11a58_end:

/* gfa: 0001abb4 */
x11ab0:
		lea.l      9708(a6),a0
		move.l     a0,2292(a6)
		bsr.s      x11abc
		rts

x11abc:
		moveq.l    #10-1,d1
		moveq.l    #1,d0
x11abc_1:
		move.w     d0,(a0)+
		dbf        d1,x11abc_1
		add.w      d0,-(a0)
		lea.l      7664(a6),a0
		lea.l      8698(a6),a1
		moveq.l    #45-1,d0
x11abc_2:
		move.w     (a0)+,(a1)+
		dbf        d0,x11abc_2
		lea.l      7920(a6),a0
		moveq.l    #12-1,d0
x11abc_3:
		move.w     (a0)+,(a1)+
		dbf        d0,x11abc_3
		rts

x11ae6:    .dc.w 0

x11ae8:
		movea.l    ptr_table+17*4(a6),a1
		movea.l    strdesc_end(a6),a2
		move.l     a1,ptr_table+18*4(a6)
		rts

x11af6: .dc.l 0

/* gfa: 0002111e */
/* 370: 50c42 */
/* 371: 527fe */
/* 372: 5292c */
/* 373: 52ebe */
cmd_table: /* 11afa */
		.dc.b 0
		.ascii "!"
		.dc.b ((115*2)>>8)&255,((115*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 1
		.ascii "//"
		.dc.b ((115*2)>>8)&255,((115*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 1
		.ascii "/*"
		.dc.b ((115*2)>>8)&255,((115*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 0
		.ascii "'"
		.dc.b ((115*2)>>8)&255,((115*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 0
		.ascii "*"
		.dc.b ((121*2)>>8)&255,((121*2)&255),((star_args-jmpbase)>>8)&255,(star_args-jmpbase)&255
		.dc.b 0
		.ascii "."
		.dc.b ((254*2)>>8)&255,((254*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 2
		.ascii "==>"
		.dc.b ((116*2)>>8)&255,((116*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 0
		.ascii "?"
		.dc.b ((147*2)>>8)&255,((147*2)&255),((yPRINT_args-jmpbase)>>8)&255,(yPRINT_args-jmpbase)&255
		.dc.b 0
		.ascii "$"
		.dc.b ((411*2)>>8)&255,((411*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 0
		.ascii "@"
		.dc.b ((62*2)>>8)&255,((62*2)&255),((yGOSUB_args-jmpbase)>>8)&255,(yGOSUB_args-jmpbase)&255
cmd_a_table: /* 11b3a */
		.dc.b 4
		.ascii "ALERT"
		.dc.b ((256*2)>>8)&255,((256*2)&255),((yALERT_args-jmpbase)>>8)&255,(yALERT_args-jmpbase)&255
		.dc.b 2
		.ascii "ADD"
		.dc.b ((176*2)>>8)&255,((176*2)&255),((yADD_args-jmpbase)>>8)&255,(yADD_args-jmpbase)&255
		.dc.b 4
		.ascii "ALINE"
		.dc.b ((90*2)>>8)&255,((90*2)&255),((yALINE_args-jmpbase)>>8)&255,(yALINE_args-jmpbase)&255
		.dc.b 4
		.ascii "ARECT"
		.dc.b ((92*2)>>8)&255,((92*2)&255),((yARECT_args-jmpbase)>>8)&255,(yARECT_args-jmpbase)&255
		.dc.b 4
		.ascii "APOLY"
		.dc.b ((93*2)>>8)&255,((93*2)&255),((yAPOLY_args-jmpbase)>>8)&255,(yAPOLY_args-jmpbase)&255
		.dc.b 4
		.ascii "ACHAR"
		.dc.b ((94*2)>>8)&255,((94*2)&255),((yACHAR_args-jmpbase)>>8)&255,(yACHAR_args-jmpbase)&255
		.dc.b 4
		.ascii "ACLIP"
		.dc.b ((95*2)>>8)&255,((95*2)&255),((yACLIP_args-jmpbase)>>8)&255,(yACLIP_args-jmpbase)&255
cmd_addrin:
		.dc.b 6
		.ascii "ADDRIN("
		.dc.b ((224*2)>>8)&255,((224*2)&255),((yADDRIN_args-jmpbase)>>8)&255,(yADDRIN_args-jmpbase)&255
cmd_addrout:
		.dc.b 7
		.ascii "ADDROUT("
		.dc.b ((225*2)>>8)&255,((225*2)&255),((yADDROUT_args-jmpbase)>>8)&255,(yADDROUT_args-jmpbase)&255
		.dc.b 7
		.ascii "ABSOLUTE"
		.dc.b ((253*2)>>8)&255,((253*2)&255),((yABSOLUTE_args-jmpbase)>>8)&255,(yABSOLUTE_args-jmpbase)&255
		.dc.b 4
		.ascii "AFTER"
		.dc.b ((365*2)>>8)&255,((365*2)&255),((yAFTER_args-jmpbase)>>8)&255,(yAFTER_args-jmpbase)&255
		.dc.b 4
		.ascii "ATEXT"
		.dc.b ((113*2)>>8)&255,((113*2)&255),((yATEXT_args-jmpbase)>>8)&255,(yATEXT_args-jmpbase)&255
		.dc.b 8
		.ascii "ARRAYFILL"
		.dc.b ((397*2)>>8)&255,((397*2)&255),((yARRAYFILL_args-jmpbase)>>8)&255,(yARRAYFILL_args-jmpbase)&255
	.IFNE GBE
	.IF GBE>=373
		.dc.b 6
		.ascii "ARRAY!("
		.dc.b ((680*2)>>8)&255,((680*2)&255),((yARRAY_args-jmpbase)>>8)&255,(yARRAY_args-jmpbase)&255
		.dc.b 6
		.ascii "ARRAY|("
		.dc.b ((681*2)>>8)&255,((681*2)&255),((yARRAY_args-jmpbase)>>8)&255,(yARRAY_args-jmpbase)&255
		.dc.b 6
		.ascii "ARRAY&("
		.dc.b ((682*2)>>8)&255,((682*2)&255),((yARRAY_args-jmpbase)>>8)&255,(yARRAY_args-jmpbase)&255
		.dc.b 6
		.ascii "ARRAY%("
		.dc.b ((683*2)>>8)&255,((683*2)&255),((yARRAY_args-jmpbase)>>8)&255,(yARRAY_args-jmpbase)&255
		.dc.b 5
		.ascii "ARRAY("
		.dc.b ((684*2)>>8)&255,((684*2)&255),((yARRAY_args-jmpbase)>>8)&255,(yARRAY_args-jmpbase)&255
	.ENDC
	.IFNE GBE
	.IF (GBE<=372)|GBE_OLDCOMPAT
		.dc.b 5
		.ascii "AMOUSE"
		.dc.b ((474*2)>>8)&255,((474*2)&255),((yAMOUSE_args-jmpbase)>>8)&255,(yAMOUSE_args-jmpbase)&255
	.ENDC
	.ENDC
		.dc.b 10
		.ascii "AVERAGE_RGB"
		.dc.b ((473*2)>>8)&255,((473*2)&255),((yAVERAGE_RGB_args-jmpbase)>>8)&255,(yAVERAGE_RGB_args-jmpbase)&255
	.ENDC
cmd_b_table: /* 11bc6 */
		.dc.b 4
		.ascii "BMOVE"
		.dc.b ((213*2)>>8)&255,((213*2)&255),((yBMOVE_args-jmpbase)>>8)&255,(yBMOVE_args-jmpbase)&255
		.dc.b 4
		.ascii "BYTE{"
		.dc.b ((234*2)>>8)&255,((234*2)&255),((yBYTE_args-jmpbase)>>8)&255,(yBYTE_args-jmpbase)&255
		.dc.b 2
		.ascii "BOX"
		.dc.b ((287*2)>>8)&255,((287*2)&255),((yBOX_args-jmpbase)>>8)&255,(yBOX_args-jmpbase)&255
		.dc.b 3
		.ascii "BGET"
		.dc.b ((111*2)>>8)&255,((111*2)&255),((yBGET_args-jmpbase)>>8)&255,(yBGET_args-jmpbase)&255
		.dc.b 3
		.ascii "BPUT"
		.dc.b ((112*2)>>8)&255,((112*2)&255),((yBPUT_args-jmpbase)>>8)&255,(yBPUT_args-jmpbase)&255
		.dc.b 7
		.ascii "BOUNDARY"
		.dc.b ((387*2)>>8)&255,((387*2)&255),((yBOUNDARY_args-jmpbase)>>8)&255,(yBOUNDARY_args-jmpbase)&255
		.dc.b 5
		.ascii "BITBLT"
		.dc.b ((399*2)>>8)&255,((399*2)&255),((yBITBLT_args-jmpbase)>>8)&255,(yBITBLT_args-jmpbase)&255
		.dc.b 4
		.ascii "BSAVE"
		.dc.b ((404*2)>>8)&255,((404*2)&255),((yBSAVE_args-jmpbase)>>8)&255,(yBSAVE_args-jmpbase)&255
		.dc.b 4
		.ascii "BLOAD"
		.dc.b ((405*2)>>8)&255,((405*2)&255),((yBLOAD_args-jmpbase)>>8)&255,(yBLOAD_args-jmpbase)&255
	.IFNE GBE
	.IF GBE<=371
		.dc.b 6
		.ascii "BITBLK("
		.dc.b ((545*2)>>8)&255,((545*2)&255),((yBITBLK_args-jmpbase)>>8)&255,(yBITBLK_args-jmpbase)&255
		.dc.b 8
		.ascii "BFOBSPEC("
		.dc.b ((544*2)>>8)&255,((544*2)&255),((yBFOBSPEC_args-jmpbase)>>8)&255,(yBFOBSPEC_args-jmpbase)&255
	.ENDC
	.IF GBE>=372
		.dc.b 3
		.ascii "BEXG"
		.dc.b ((638*2)>>8)&255,((638*2)&255),((yBEXG_args-jmpbase)>>8)&255,(yBEXG_args-jmpbase)&255
		.dc.b 6
		.ascii "BMIRROR"
		.dc.b ((544*2)>>8)&255,((544*2)&255),((yBMIRROR_args-jmpbase)>>8)&255,(yBMIRROR_args-jmpbase)&255
	.ENDC
		.dc.b 4
		.ascii "BZERO"
		.dc.b ((462*2)>>8)&255,((462*2)&255),((yBZERO_args-jmpbase)>>8)&255,(yBZERO_args-jmpbase)&255
	.IFNE GBE_OLDCOMPAT
		.dc.b 5
		.ascii "BCLEAR"
		.dc.b ((462*2)>>8)&255,((462*2)&255),((yBZERO_args-jmpbase)>>8)&255,(yBZERO_args-jmpbase)&255
	.ENDC
		.dc.b 4
		.ascii "BFILL"
		.dc.b ((463*2)>>8)&255,((463*2)&255),((yBFILL_args-jmpbase)>>8)&255,(yBFILL_args-jmpbase)&255
		.dc.b 3
		.ascii "BEEP"
		.dc.b ((465*2)>>8)&255,((465*2)&255),((yBEEP_args-jmpbase)>>8)&255,(yBEEP_args-jmpbase)&255
		.dc.b 5
		.ascii "BCRYPT"
		.dc.b ((477*2)>>8)&255,((477*2)&255),((yBCRYPT_args-jmpbase)>>8)&255,(yBCRYPT_args-jmpbase)&255
		.dc.b 5
		.ascii "BXLATE"
		.dc.b ((464*2)>>8)&255,((464*2)&255),((yBXLATE_args-jmpbase)>>8)&255,(yBXLATE_args-jmpbase)&255
		.dc.b 7
		.ascii "BREPLACE"
		.dc.b ((535*2)>>8)&255,((535*2)&255),((yBREPLACE_args-jmpbase)>>8)&255,(yBREPLACE_args-jmpbase)&255
	.IF GBE>=372
		.dc.b 9
		.ascii "BF_OBSPEC("
		.dc.b ((582*2)>>8)&255,((582*2)&255),((yBF_OBSPEC_args-jmpbase)>>8)&255,(yBF_OBSPEC_args-jmpbase)&255
		.dc.b 12
		.ascii "BF_CHARACTER("
		.dc.b ((583*2)>>8)&255,((583*2)&255),((yBF_CHARACTER_args-jmpbase)>>8)&255,(yBF_CHARACTER_args-jmpbase)&255
		.dc.b 12
		.ascii "BF_FRAMESIZE("
		.dc.b ((584*2)>>8)&255,((584*2)&255),((yBF_FRAMESIZE_args-jmpbase)>>8)&255,(yBF_FRAMESIZE_args-jmpbase)&255
		.dc.b 11
		.ascii "BF_FRAMECOL("
		.dc.b ((585*2)>>8)&255,((585*2)&255),((yBF_FRAMECOL_args-jmpbase)>>8)&255,(yBF_FRAMECOL_args-jmpbase)&255
		.dc.b 10
		.ascii "BF_TEXTCOL("
		.dc.b ((586*2)>>8)&255,((586*2)&255),((yBF_TEXTCOL_args-jmpbase)>>8)&255,(yBF_TEXTCOL_args-jmpbase)&255
		.dc.b 11
		.ascii "BF_TEXTMODE("
		.dc.b ((587*2)>>8)&255,((587*2)&255),((yBF_TEXTMODE_args-jmpbase)>>8)&255,(yBF_TEXTMODE_args-jmpbase)&255
		.dc.b 14
		.ascii "BF_FILLPATTERN("
		.dc.b ((588*2)>>8)&255,((588*2)&255),((yBF_FILLPATTERN_args-jmpbase)>>8)&255,(yBF_FILLPATTERN_args-jmpbase)&255
		.dc.b 14
		.ascii "BF_INTERIORCOL("
		.dc.b ((589*2)>>8)&255,((589*2)&255),((yBF_INTERIORCOL_args-jmpbase)>>8)&255,(yBF_INTERIORCOL_args-jmpbase)&255
		.dc.b 8
		.ascii "BI_PDATA("
		.dc.b ((590*2)>>8)&255,((590*2)&255),((yBI_PDATA_args-jmpbase)>>8)&255,(yBI_PDATA_args-jmpbase)&255
		.dc.b 5
		.ascii "BI_WB("
		.dc.b ((591*2)>>8)&255,((591*2)&255),((yBI_WB_args-jmpbase)>>8)&255,(yBI_WB_args-jmpbase)&255
		.dc.b 5
		.ascii "BI_HL("
		.dc.b ((592*2)>>8)&255,((592*2)&255),((yBI_HL_args-jmpbase)>>8)&255,(yBI_HL_args-jmpbase)&255
		.dc.b 4
		.ascii "BI_X("
		.dc.b ((593*2)>>8)&255,((593*2)&255),((yBI_X_args-jmpbase)>>8)&255,(yBI_X_args-jmpbase)&255
		.dc.b 4
		.ascii "BI_Y("
		.dc.b ((594*2)>>8)&255,((594*2)&255),((yBI_Y_args-jmpbase)>>8)&255,(yBI_Y_args-jmpbase)&255
		.dc.b 8
		.ascii "BI_COLOR("
		.dc.b ((595*2)>>8)&255,((595*2)&255),((yBI_COLOR_args-jmpbase)>>8)&255,(yBI_COLOR_args-jmpbase)&255
	.ENDC
	.IF GBE>=373
		.dc.b 2
		.ascii "BAR"
		.dc.b ((648*2)>>8)&255,((648*2)&255),((yBAR_args-jmpbase)>>8)&255,(yBAR_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_c_table: /* 11c20 */
		.dc.b 4
		.ascii "COLOR"
		.dc.b ((96*2)>>8)&255,((96*2)&255),((yCOLOR_args-jmpbase)>>8)&255,(yCOLOR_args-jmpbase)&255
		.dc.b 3
		.ascii "CASE"
		.dc.b ((56*2)>>8)&255,((56*2)&255),((yCASE_args-jmpbase)>>8)&255,(yCASE_args-jmpbase)&255
		.dc.b 3
		.ascii "CONT"
		.dc.b ((317*2)>>8)&255,((317*2)&255),((yCONT_args-jmpbase)>>8)&255,(yCONT_args-jmpbase)&255
cmd_contrl:
		.dc.b 6
		.ascii "CONTRL("
		.dc.b ((228*2)>>8)&255,((228*2)&255),((yCONTRL_args-jmpbase)>>8)&255,(yCONTRL_args-jmpbase)&255
		.dc.b 4
		.ascii "CARD{"
		.dc.b ((233*2)>>8)&255,((233*2)&255),((yCARD_args-jmpbase)>>8)&255,(yCARD_args-jmpbase)&255
		.dc.b 4
		.ascii "CHAR{"
		.dc.b ((235*2)>>8)&255,((235*2)&255),((yCHAR_args-jmpbase)>>8)&255,(yCHAR_args-jmpbase)&255
	.IFNE GBE
	.IFNE GBE_OLDCOMPAT
		.dc.b 4
		.ascii "CHAR$"
		.dc.b ((494*2)>>8)&255,((494*2)&255),((ySTRPOKE_args-jmpbase)>>8)&255,(ySTRPOKE_args-jmpbase)&255
	.ENDC
	.ENDC
		.dc.b 4
		.ascii "CLOSE"
		.dc.b ((268*2)>>8)&255,((268*2)&255),((yCLOSE_args-jmpbase)>>8)&255,(yCLOSE_args-jmpbase)&255
		.dc.b 4
		.ascii "CLEAR"
		.dc.b ((271*2)>>8)&255,((271*2)&255),((yCLEAR_args-jmpbase)>>8)&255,(yCLEAR_args-jmpbase)&255
		.dc.b 5
		.ascii "CIRCLE"
		.dc.b ((291*2)>>8)&255,((291*2)&255),((yCIRCLE_args-jmpbase)>>8)&255,(yCIRCLE_args-jmpbase)&255
		.dc.b 4
		.ascii "CHDIR"
		.dc.b ((311*2)>>8)&255,((311*2)&255),((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b 6
		.ascii "CHDRIVE"
		.dc.b ((312*2)>>8)&255,((312*2)&255),((yCHDRIVE_args-jmpbase)>>8)&255,(yCHDRIVE_args-jmpbase)&255
		.dc.b 2
		.ascii "CLR"
		.dc.b ((314*2)>>8)&255,((314*2)&255),((yCLR_args-jmpbase)>>8)&255,(yCLR_args-jmpbase)&255
		.dc.b 2
		.ascii "CLS"
		.dc.b ((315*2)>>8)&255,((315*2)&255),((yCLS_args-jmpbase)>>8)&255,(yCLS_args-jmpbase)&255
		.dc.b 3
		.ascii "CLIP"
		.dc.b ((356*2)>>8)&255,((356*2)&255),((yCLIP_args-jmpbase)>>8)&255,(yCLIP_args-jmpbase)&255
		.dc.b 4
		.ascii "CHAIN"
		.dc.b ((392*2)>>8)&255,((392*2)&255),((yCHAIN_args-jmpbase)>>8)&255,(yCHAIN_args-jmpbase)&255
		.dc.b 3
		.ascii "CALL"
		.dc.b ((152*2)>>8)&255,((152*2)&255),((yCALL_args-jmpbase)>>8)&255,(yCALL_args-jmpbase)&255
		.dc.b 4
		.ascii "CURVE"
		.dc.b ((422*2)>>8)&255,((422*2)&255),((yCURVE_args-jmpbase)>>8)&255,(yCURVE_args-jmpbase)&255
	.IFNE GBE
	.IF GBE<=371
		.dc.b 8
		.ascii "CICONBLK("
		.dc.b ((548*2)>>8)&255,((548*2)&255),((yCICONBLK_args-jmpbase)>>8)&255,(yCICONBLK_args-jmpbase)&255
	.ENDC
	.IF GBE>=372
		.dc.b 2
		.ascii "C2P"
		.dc.b ((507*2)>>8)&255,((507*2)&255),((yC2P_args-jmpbase)>>8)&255,(yC2P_args-jmpbase)&255
	.ENDC
	.IF GBE>=373
		.dc.b 6
		.ascii "CRASTER"
		.dc.b ((675*2)>>8)&255,((675*2)&255),((yCRASTER_args-jmpbase)>>8)&255,(yCRASTER_args-jmpbase)&255
	.ENDC
		.dc.b 7
		.ascii "CPUFLUSH"
		.dc.b ((476*2)>>8)&255,((476*2)&255),((yCPUFLUSH_args-jmpbase)>>8)&255,(yCPUFLUSH_args-jmpbase)&255
		.dc.b 7
		.ascii "COLDBOOT"
		.dc.b ((543*2)>>8)&255,((543*2)&255),((yCOLDBOOT_args-jmpbase)>>8)&255,(yCOLDBOOT_args-jmpbase)&255
	.IF GBE>=372
		.dc.b 11
		.ascii "CI_MAINLIST("
		.dc.b ((631*2)>>8)&255,((631*2)&255),((yCI_MAINLIST_args-jmpbase)>>8)&255,(yCI_MAINLIST_args-jmpbase)&255
		.dc.b 13
		.ascii "CI_NUM_PLANES("
		.dc.b ((632*2)>>8)&255,((632*2)&255),((yCI_NUM_PLANES_args-jmpbase)>>8)&255,(yCI_NUM_PLANES_args-jmpbase)&255
		.dc.b 11
		.ascii "CI_COL_DATA("
		.dc.b ((633*2)>>8)&255,((633*2)&255),((yCI_COL_DATA_args-jmpbase)>>8)&255,(yCI_COL_DATA_args-jmpbase)&255
		.dc.b 11
		.ascii "CI_COL_MASK("
		.dc.b ((634*2)>>8)&255,((634*2)&255),((yCI_COL_MASK_args-jmpbase)>>8)&255,(yCI_COL_MASK_args-jmpbase)&255
		.dc.b 11
		.ascii "CI_SEL_DATA("
		.dc.b ((635*2)>>8)&255,((635*2)&255),((yCI_SEL_DATA_args-jmpbase)>>8)&255,(yCI_SEL_DATA_args-jmpbase)&255
		.dc.b 11
		.ascii "CI_SEL_MASK("
		.dc.b ((636*2)>>8)&255,((636*2)&255),((yCI_SEL_MASK_args-jmpbase)>>8)&255,(yCI_SEL_MASK_args-jmpbase)&255
		.dc.b 11
		.ascii "CI_NEXT_RES("
		.dc.b ((637*2)>>8)&255,((637*2)&255),((yCI_NEXT_RES_args-jmpbase)>>8)&255,(yCI_NEXT_RES_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_d_table: /* 11cc7 */
		.dc.b 3
		.ascii "DATA"
		.dc.b ((117*2)>>8)&255,((117*2)&255),((yDATA_args-jmpbase)>>8)&255,(yDATA_args-jmpbase)&255
		.dc.b 1
		.ascii "DO"
		.dc.b ((0*2)>>8)&255,((0*2)&255),((yDO_args-jmpbase)>>8)&255,(yDO_args-jmpbase)&255
		.dc.b 6
		.ascii "DEFLINE"
		.dc.b ((277*2)>>8)&255,((277*2)&255),((yDEFLINE_args-jmpbase)>>8)&255,(yDEFLINE_args-jmpbase)&255
		.dc.b 7
		.ascii "DEFMOUSE"
		.dc.b ((279*2)>>8)&255,((279*2)&255),((yDEFMOUSE_args-jmpbase)>>8)&255,(yDEFMOUSE_args-jmpbase)&255
		.dc.b 6
		.ascii "DEFLIST"
		.dc.b ((281*2)>>8)&255,((281*2)&255),((yDEFLIST_args-jmpbase)>>8)&255,(yDEFLIST_args-jmpbase)&255
		.dc.b 6
		.ascii "DEFMARK"
		.dc.b ((282*2)>>8)&255,((282*2)&255),((yDEFMARK_args-jmpbase)>>8)&255,(yDEFMARK_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFNUM"
		.dc.b ((283*2)>>8)&255,((283*2)&255),((yDEFNUM_args-jmpbase)>>8)&255,(yDEFNUM_args-jmpbase)&255
		.dc.b 6
		.ascii "DEFTEXT"
		.dc.b ((284*2)>>8)&255,((284*2)&255),((yDEFTEXT_args-jmpbase)>>8)&255,(yDEFTEXT_args-jmpbase)&255
		.dc.b 6
		.ascii "DEFFILL"
		.dc.b ((285*2)>>8)&255,((285*2)&255),((yDEFFILL_args-jmpbase)>>8)&255,(yDEFFILL_args-jmpbase)&255
		.dc.b 4
		.ascii "DEFFN"
		.dc.b ((57*2)>>8)&255,((57*2)&255),((yDEFFN_args-jmpbase)>>8)&255,(yDEFFN_args-jmpbase)&255
		.dc.b 6
		.ascii "DEFAULT"
		.dc.b ((15*2)>>8)&255,((15*2)&255),((yDEFAULT_args-jmpbase)>>8)&255,(yDEFAULT_args-jmpbase)&255
		.dc.b 2
		.ascii "DEC"
		.dc.b ((168*2)>>8)&255,((168*2)&255),((yDEC_args-jmpbase)>>8)&255,(yDEC_args-jmpbase)&255
		.dc.b 2
		.ascii "DIV"
		.dc.b ((200*2)>>8)&255,((200*2)&255),((yDIV_args-jmpbase)>>8)&255,(yDIV_args-jmpbase)&255
		.dc.b 4
		.ascii "DPOKE"
		.dc.b ((98*2)>>8)&255,((98*2)&255),((yDPOKE_args-jmpbase)>>8)&255,(yDPOKE_args-jmpbase)&255
		.dc.b 2
		.ascii "DIM"
		.dc.b ((210*2)>>8)&255,((210*2)&255),((yDIM_args-jmpbase)>>8)&255,(yDIM_args-jmpbase)&255
		.dc.b 7
		.ascii "DMASOUND"
		.dc.b ((450*2)>>8)&255,((450*2)&255),((yDMASOUND_args-jmpbase)>>8)&255,(yDMASOUND_args-jmpbase)&255
		.dc.b 9
		.ascii "DMACONTROL"
		.dc.b ((451*2)>>8)&255,((451*2)&255),((yDMACONTROL_args-jmpbase)>>8)&255,(yDMACONTROL_args-jmpbase)&255
cmd_double_ref:
		.dc.b 6
		.ascii "DOUBLE{"
		.dc.b ((237*2)>>8)&255,((237*2)&255),((yDOUBLE_args-jmpbase)>>8)&255,(yDOUBLE_args-jmpbase)&255
		.dc.b 2
		.ascii "DIR"
		.dc.b ((319*2)>>8)&255,((319*2)&255),((yDIR_args-jmpbase)>>8)&255,(yDIR_args-jmpbase)&255
		.dc.b 5
		.ascii "DELETE"
		.dc.b ((351*2)>>8)&255,((351*2)&255),((yDELETE_args-jmpbase)>>8)&255,(yDELETE_args-jmpbase)&255
		.dc.b 3
		.ascii "DRAW"
		.dc.b ((370*2)>>8)&255,((370*2)&255),((yDRAW_args-jmpbase)>>8)&255,(yDRAW_args-jmpbase)&255
		.dc.b 4
		.ascii "DELAY"
		.dc.b ((110*2)>>8)&255,((110*2)&255),((yDELAY_args-jmpbase)>>8)&255,(yDELAY_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFINT"
		.dc.b ((381*2)>>8)&255,((381*2)&255),((yDEFINT_args-jmpbase)>>8)&255,(yDEFINT_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFBYT"
		.dc.b ((383*2)>>8)&255,((383*2)&255),((yDEFBYT_args-jmpbase)>>8)&255,(yDEFBYT_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFWRD"
		.dc.b ((384*2)>>8)&255,((384*2)&255),((yDEFWRD_args-jmpbase)>>8)&255,(yDEFWRD_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFBIT"
		.dc.b ((385*2)>>8)&255,((385*2)&255),((yDEFBIT_args-jmpbase)>>8)&255,(yDEFBIT_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFSTR"
		.dc.b ((386*2)>>8)&255,((386*2)&255),((yDEFSTR_args-jmpbase)>>8)&255,(yDEFSTR_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFSNG"
		.dc.b ((382*2)>>8)&255,((382*2)&255),((yDEFSNG_args-jmpbase)>>8)&255,(yDEFSNG_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFDBL"
		.dc.b ((382*2)>>8)&255,((382*2)&255),((yDEFDBL_args-jmpbase)>>8)&255,(yDEFDBL_args-jmpbase)&255
		.dc.b 5
		.ascii "DEFFLT"
		.dc.b ((382*2)>>8)&255,((382*2)&255),((yDEFFLT_args-jmpbase)>>8)&255,(yDEFFLT_args-jmpbase)&255
		.dc.b 3
		.ascii "DUMP"
		.dc.b ((398*2)>>8)&255,((398*2)&255),((yDUMP_args-jmpbase)>>8)&255,(yDUMP_args-jmpbase)&255
		.dc.b 5
		.ascii "DATE$="
		.dc.b ((408*2)>>8)&255,((408*2)&255),((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
cmd_e_table: /* 11e1d */
		.dc.b 3
		.ascii "ELSE"
		.dc.b ((14*2)>>8)&255,((14*2)&255),((yELSE_args-jmpbase)>>8)&255,(yELSE_args-jmpbase)&255
		.dc.b 4
		.ascii "ENDIF"
		.dc.b ((9*2)>>8)&255,((9*2)&255),((yENDIF_args-jmpbase)>>8)&255,(yENDIF_args-jmpbase)&255
		.dc.b 6
		.ascii "ENDFUNC"
		.dc.b ((11*2)>>8)&255,((11*2)&255),((yENDFUNC_args-jmpbase)>>8)&255,(yENDFUNC_args-jmpbase)&255
		.dc.b 8
		.ascii "ENDSWITCH"
		.dc.b ((13*2)>>8)&255,((13*2)&255),((yENDSWITCH_args-jmpbase)>>8)&255,(yENDSWITCH_args-jmpbase)&255
		.dc.b 8
		.ascii "ENDSELECT"
		.dc.b ((13*2)>>8)&255,((13*2)&255),((yENDSELECT_args-jmpbase)>>8)&255,(yENDSELECT_args-jmpbase)&255
		.dc.b 7
		.ascii "ENDWHILE"
		.dc.b ((5*2)>>8)&255,((5*2)&255),((yENDWHILE_args-jmpbase)>>8)&255,(yENDWHILE_args-jmpbase)&255
		.dc.b 4
		.ascii "ENDDO"
		.dc.b ((1*2)>>8)&255,((1*2)&255),((yENDDO_args-jmpbase)>>8)&255,(yENDDO_args-jmpbase)&255
		.dc.b 8
		.ascii "ENDREPEAT"
		.dc.b ((3*2)>>8)&255,((3*2)&255),((yENDREPEAT_args-jmpbase)>>8)&255,(yENDREPEAT_args-jmpbase)&255
		.dc.b 5
		.ascii "ENDFOR"
		.dc.b ((31*2)>>8)&255,((31*2)&255),((yENDFOR_args-jmpbase)>>8)&255,(yENDFOR_args-jmpbase)&255
		.dc.b 6
		.ascii "ENDPROC"
		.dc.b ((7*2)>>8)&255,((7*2)&255),((yENDPROC_args-jmpbase)>>8)&255,(yENDPROC_args-jmpbase)&255
		.dc.b 5
		.ascii "ENDSUB"
		.dc.b ((7*2)>>8)&255,((7*2)&255),((yENDSUB_args-jmpbase)>>8)&255,(yENDSUB_args-jmpbase)&255
		.dc.b 6
		.ascii "EXIT IF"
		.dc.b ((43*2)>>8)&255,((43*2)&255),((yEXIT_IF_args-jmpbase)>>8)&255,(yEXIT_IF_args-jmpbase)&255
		.dc.b 6
		.ascii "EXIT IF"
		.dc.b ((55*2)>>8)&255,((55*2)&255),((yEXIT_IF_args-jmpbase)>>8)&255,(yEXIT_IF_args-jmpbase)&255
		.dc.b 6
		.ascii "ELLIPSE"
		.dc.b ((295*2)>>8)&255,((295*2)&255),((yELLIPSE_args-jmpbase)>>8)&255,(yELLIPSE_args-jmpbase)&255
		.dc.b 4
		.ascii "ERROR"
		.dc.b ((299*2)>>8)&255,((299*2)&255),((yERROR_args-jmpbase)>>8)&255,(yERROR_args-jmpbase)&255
		.dc.b 3
		.ascii "EDIT"
		.dc.b ((328*2)>>8)&255,((328*2)&255),((yEDIT_args-jmpbase)>>8)&255,(yEDIT_args-jmpbase)&255
		.dc.b 4
		.ascii "ERASE"
		.dc.b ((322*2)>>8)&255,((322*2)&255),((yERASE_args-jmpbase)>>8)&255,(yERASE_args-jmpbase)&255
		.dc.b 3
		.ascii "EXEC"
		.dc.b ((323*2)>>8)&255,((323*2)&255),((yEXEC_args-jmpbase)>>8)&255,(yEXEC_args-jmpbase)&255
		.dc.b 4
		.ascii "EVERY"
		.dc.b ((362*2)>>8)&255,((362*2)&255),((yEVERY_args-jmpbase)>>8)&255,(yEVERY_args-jmpbase)&255
	.IFNE GBE
		.dc.b 6
		.ascii "ENDSEEK"
		.dc.b ((520*2)>>8)&255,((520*2)&255),((yENDSEEK_args-jmpbase)>>8)&255,(yENDSEEK_args-jmpbase)&255
		.dc.b 6
		.ascii "ENVIRON"
		.dc.b ((538*2)>>8)&255,((538*2)&255),((yENVIRON_args-jmpbase)>>8)&255,(yENVIRON_args-jmpbase)&255
	.ENDC
cmd_f_table: /* 11ef3 */
		.dc.b 2
		.ascii "FOR"
		.dc.b ((19*2)>>8)&255,((19*2)&255),((yFOR_args-jmpbase)>>8)&255,(yFOR_args-jmpbase)&255
		.dc.b 7
		.ascii "FUNCTION"
		.dc.b ((10*2)>>8)&255,((10*2)&255),((yFUNCTION_args-jmpbase)>>8)&255,(yFUNCTION_args-jmpbase)&255
		.dc.b 5
		.ascii "FLOAT{"
		.dc.b ((236*2)>>8)&255,((236*2)&255),((yFLOAT_args-jmpbase)>>8)&255,(yFLOAT_args-jmpbase)&255
		.dc.b 3
		.ascii "FILL"
		.dc.b ((300*2)>>8)&255,((300*2)&255),((yFILL_args-jmpbase)>>8)&255,(yFILL_args-jmpbase)&255
		.dc.b 4
		.ascii "FIELD"
		.dc.b ((324*2)>>8)&255,((324*2)&255),((yFIELD_args-jmpbase)>>8)&255,(yFIELD_args-jmpbase)&255
cmd_files:
		.dc.b 4
		.ascii "FILES"
		.dc.b ((325*2)>>8)&255,((325*2)&255),((yFILES_args-jmpbase)>>8)&255,(yFILES_args-jmpbase)&255
cmd_fileselect:
		.dc.b 9
		.ascii "FILESELECT"
		.dc.b ((329*2)>>8)&255,((329*2)&255),((yFILESELECT_args-jmpbase)>>8)&255,(yFILESELECT_args-jmpbase)&255
		.dc.b 4
		.ascii "FULLW"
		.dc.b ((361*2)>>8)&255,((361*2)&255),((yFULLW_args-jmpbase)>>8)&255,(yFULLW_args-jmpbase)&255
cmd_g_table: /* 11f49 */
		.dc.b 4
		.ascii "GOSUB"
		.dc.b ((61*2)>>8)&255,((61*2)&255),((yGOSUB_args-jmpbase)>>8)&255,(yGOSUB_args-jmpbase)&255
		.dc.b 3
		.ascii "GOTO"
		.dc.b ((58*2)>>8)&255,((58*2)&255),((yGOTO_args-jmpbase)>>8)&255,(yGOTO_args-jmpbase)&255
		.dc.b 5
		.ascii "GEMSYS"
		.dc.b ((218*2)>>8)&255,((218*2)&255),((yGEMSYS_args-jmpbase)>>8)&255,(yGEMSYS_args-jmpbase)&255
		.dc.b 6
		.ascii "GINTIN("
		.dc.b ((226*2)>>8)&255,((226*2)&255),((yGINTIN_args-jmpbase)>>8)&255,(yGINTIN_args-jmpbase)&255
		.dc.b 7
		.ascii "GINTOUT("
		.dc.b ((227*2)>>8)&255,((227*2)&255),((yGINTOUT_args-jmpbase)>>8)&255,(yGINTOUT_args-jmpbase)&255
		.dc.b 7
		.ascii "GCONTRL("
		.dc.b ((229*2)>>8)&255,((229*2)&255),((yGCONTRL_args-jmpbase)>>8)&255,(yGCONTRL_args-jmpbase)&255
		.dc.b 2
		.ascii "GET"
		.dc.b ((257*2)>>8)&255,((257*2)&255),((yGET_args-jmpbase)>>8)&255,(yGET_args-jmpbase)&255
		.dc.b 8
		.ascii "GRAPHMODE"
		.dc.b ((278*2)>>8)&255,((278*2)&255),((yGRAPHMODE_args-jmpbase)>>8)&255,(yGRAPHMODE_args-jmpbase)&255
	.IFNE GBE
		.dc.b 5
		.ascii "GSTICK"
		.dc.b ((478*2)>>8)&255,((478*2)&255),((yGSTICK_args-jmpbase)>>8)&255,(yGSTICK_args-jmpbase)&255
		.dc.b 5
		.ascii "GHIDEM"
		.dc.b ((466*2)>>8)&255,((466*2)&255),((yGHIDEM_args-jmpbase)>>8)&255,(yGHIDEM_args-jmpbase)&255
		.dc.b 5
		.ascii "GSHOWM"
		.dc.b ((467*2)>>8)&255,((467*2)&255),((yGSHOWM_args-jmpbase)>>8)&255,(yGSHOWM_args-jmpbase)&255
		.dc.b 5
		.ascii "GMOUSE"
		.dc.b ((468*2)>>8)&255,((468*2)&255),((yGMOUSE_args-jmpbase)>>8)&255,(yGMOUSE_args-jmpbase)&255
	.ENDC
cmd_h_table: /* 11fa3 */
		.dc.b 7
		.ascii "HARDCOPY"
		.dc.b ((343*2)>>8)&255,((343*2)&255),((yHARDCOPY_args-jmpbase)>>8)&255,(yHARDCOPY_args-jmpbase)&255
		.dc.b 4
		.ascii "HIDEM"
		.dc.b ((302*2)>>8)&255,((302*2)&255),((yHIDEM_args-jmpbase)>>8)&255,(yHIDEM_args-jmpbase)&255
		.dc.b 4
		.ascii "HLINE"
		.dc.b ((91*2)>>8)&255,((91*2)&255),((yHLINE_args-jmpbase)>>8)&255,(yHLINE_args-jmpbase)&255
		.dc.b 3
		.ascii "HTAB"
		.dc.b ((320*2)>>8)&255,((320*2)&255),((yHTAB_args-jmpbase)>>8)&255,(yHTAB_args-jmpbase)&255
cmd_i_table: /* 11fcd */
		.dc.b 1
		.ascii "IF"
		.dc.b ((8*2)>>8)&255,((8*2)&255),((yIF_args-jmpbase)>>8)&255,(yIF_args-jmpbase)&255
		.dc.b 2
		.ascii "INC"
		.dc.b ((160*2)>>8)&255,((160*2)&255),((yINC_args-jmpbase)>>8)&255,(yINC_args-jmpbase)&255
		.dc.b 5
		.ascii "INTIN("
		.dc.b ((222*2)>>8)&255,((222*2)&255),((yINTIN_args-jmpbase)>>8)&255,(yINTIN_args-jmpbase)&255
		.dc.b 6
		.ascii "INTOUT("
		.dc.b ((223*2)>>8)&255,((223*2)&255),((yINTOUT_args-jmpbase)>>8)&255,(yINTOUT_args-jmpbase)&255
		.dc.b 3
		.ascii "INT{"
		.dc.b ((232*2)>>8)&255,((232*2)&255),((yINT_args-jmpbase)>>8)&255,(yINT_args-jmpbase)&255
		.dc.b 4
		.ascii "INFOW"
		.dc.b ((276*2)>>8)&255,((276*2)&255),((yINFOW_args-jmpbase)>>8)&255,(yINFOW_args-jmpbase)&255
		.dc.b 6
		.ascii "INFOW #"
		.dc.b ((276*2)>>8)&255,((276*2)&255),((yINFOW_args-jmpbase)>>8)&255,(yINFOW_args-jmpbase)&255
		.dc.b 5
		.ascii "INSERT"
		.dc.b ((350*2)>>8)&255,((350*2)&255),((yINSERT_args-jmpbase)>>8)&255,(yINSERT_args-jmpbase)&255
		.dc.b 4
		.ascii "INPUT"
		.dc.b ((368*2)>>8)&255,((368*2)&255),((yINPUT_args-jmpbase)>>8)&255,(yINPUT_args-jmpbase)&255
		.dc.b 5
		.ascii "INLINE"
		.dc.b ((417*2)>>8)&255,((417*2)&255),((yINLINE_args-jmpbase)>>8)&255,(yINLINE_args-jmpbase)&255
	.IFNE GBE
	.IF GBE>=373
		.dc.b 3
		.ascii "IKBD"
		.dc.b ((668*2)>>8)&255,((668*2)&255),((yIKBD_args-jmpbase)>>8)&255,(yIKBD_args-jmpbase)&255
	.ENDC
	.IF GBE<=371
		.dc.b 7
		.ascii "ICONBLK("
		.dc.b ((547*2)>>8)&255,((547*2)&255),((yICONBLK_args-jmpbase)>>8)&255,(yICONBLK_args-jmpbase)&255
	.ENDC
	.IF GBE>=372
		.dc.b 8
		.ascii "IB_PMASK("
		.dc.b ((614*2)>>8)&255,((614*2)&255),((yIB_PMASK_args-jmpbase)>>8)&255,(yIB_PMASK_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_PDATA("
		.dc.b ((615*2)>>8)&255,((615*2)&255),((yIB_PDATA_args-jmpbase)>>8)&255,(yIB_PDATA_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_PTEXT("
		.dc.b ((616*2)>>8)&255,((616*2)&255),((yIB_PTEXT_args-jmpbase)>>8)&255,(yIB_PTEXT_args-jmpbase)&255
		.dc.b 7
		.ascii "IB_CHAR("
		.dc.b ((617*2)>>8)&255,((617*2)&255),((yIB_CHAR_args-jmpbase)>>8)&255,(yIB_CHAR_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_XCHAR("
		.dc.b ((618*2)>>8)&255,((618*2)&255),((yIB_XCHAR_args-jmpbase)>>8)&255,(yIB_XCHAR_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_YCHAR("
		.dc.b ((619*2)>>8)&255,((619*2)&255),((yIB_YCHAR_args-jmpbase)>>8)&255,(yIB_YCHAR_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_XICON("
		.dc.b ((620*2)>>8)&255,((620*2)&255),((yIB_XICON_args-jmpbase)>>8)&255,(yIB_XICON_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_YICON("
		.dc.b ((621*2)>>8)&255,((621*2)&255),((yIB_YICON_args-jmpbase)>>8)&255,(yIB_YICON_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_WICON("
		.dc.b ((622*2)>>8)&255,((622*2)&255),((yIB_WICON_args-jmpbase)>>8)&255,(yIB_WICON_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_HICON("
		.dc.b ((623*2)>>8)&255,((623*2)&255),((yIB_HICON_args-jmpbase)>>8)&255,(yIB_HICON_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_XTEXT("
		.dc.b ((624*2)>>8)&255,((624*2)&255),((yIB_XTEXT_args-jmpbase)>>8)&255,(yIB_XTEXT_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_YTEXT("
		.dc.b ((625*2)>>8)&255,((625*2)&255),((yIB_YTEXT_args-jmpbase)>>8)&255,(yIB_YTEXT_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_WTEXT("
		.dc.b ((626*2)>>8)&255,((626*2)&255),((yIB_WTEXT_args-jmpbase)>>8)&255,(yIB_WTEXT_args-jmpbase)&255
		.dc.b 8
		.ascii "IB_HTEXT("
		.dc.b ((627*2)>>8)&255,((627*2)&255),((yIB_HTEXT_args-jmpbase)>>8)&255,(yIB_HTEXT_args-jmpbase)&255
		.dc.b 9
		.ascii "IB_FCOLOR("
		.dc.b ((628*2)>>8)&255,((628*2)&255),((yIB_FCOLOR_args-jmpbase)>>8)&255,(yIB_FCOLOR_args-jmpbase)&255
		.dc.b 9
		.ascii "IB_BCOLOR("
		.dc.b ((629*2)>>8)&255,((629*2)&255),((yIB_BCOLOR_args-jmpbase)>>8)&255,(yIB_BCOLOR_args-jmpbase)&255
		.dc.b 9
		.ascii "IB_LETTER("
		.dc.b ((630*2)>>8)&255,((630*2)&255),((yIB_LETTER_args-jmpbase)>>8)&255,(yIB_LETTER_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_j_table: /* 12032 */
	.IFNE GBE
		.dc.b 5
		.ascii "JOYPAD"
		.dc.b ((513*2)>>8)&255,((513*2)&255),((yJOYPAD_args-jmpbase)>>8)&255,(yJOYPAD_args-jmpbase)&255
	.ENDC
cmd_k_table: /* 12032 */
		.dc.b 5
		.ascii "KEYPAD"
		.dc.b ((375*2)>>8)&255,((375*2)&255),((yKEYPAD_args-jmpbase)>>8)&255,(yKEYPAD_args-jmpbase)&255
		.dc.b 6
		.ascii "KEYTEST"
		.dc.b ((376*2)>>8)&255,((376*2)&255),((yKEYTEST_args-jmpbase)>>8)&255,(yKEYTEST_args-jmpbase)&255
		.dc.b 5
		.ascii "KEYGET"
		.dc.b ((377*2)>>8)&255,((377*2)&255),((yKEYGET_args-jmpbase)>>8)&255,(yKEYGET_args-jmpbase)&255
		.dc.b 6
		.ascii "KEYLOOK"
		.dc.b ((378*2)>>8)&255,((378*2)&255),((yKEYLOOK_args-jmpbase)>>8)&255,(yKEYLOOK_args-jmpbase)&255
		.dc.b 7
		.ascii "KEYPRESS"
		.dc.b ((379*2)>>8)&255,((379*2)&255),((yKEYPRESS_args-jmpbase)>>8)&255,(yKEYPRESS_args-jmpbase)&255
		.dc.b 5
		.ascii "KEYDEF"
		.dc.b ((380*2)>>8)&255,((380*2)&255),((yKEYDEF_args-jmpbase)>>8)&255,(yKEYDEF_args-jmpbase)&255
		.dc.b 3
		.ascii "KILL"
		.dc.b ((333*2)>>8)&255,((333*2)&255),((yKILL_args-jmpbase)>>8)&255,(yKILL_args-jmpbase)&255
cmd_l_table: /* 12081 */
		.dc.b 3
		.ascii "LOOP"
		.dc.b ((1*2)>>8)&255,((1*2)&255),((yLOOP_args-jmpbase)>>8)&255,(yLOOP_args-jmpbase)&255
		.dc.b 2
		.ascii "LET"
		.dc.b ((64*2)>>8)&255,((64*2)&255),((yLET_args-jmpbase)>>8)&255,(yLET_args-jmpbase)&255
		.dc.b 3
		.ascii "LINE"
		.dc.b ((155*2)>>8)&255,((155*2)&255),((yLINE_args-jmpbase)>>8)&255,(yLINE_args-jmpbase)&255
		.dc.b 4
		.ascii "LPOKE"
		.dc.b ((99*2)>>8)&255,((99*2)&255),((yLPOKE_args-jmpbase)>>8)&255,(yLPOKE_args-jmpbase)&255
		.dc.b 4
		.ascii "LONG{"
		.dc.b ((231*2)>>8)&255,((231*2)&255),((yLONG_args-jmpbase)>>8)&255,(yLONG_args-jmpbase)&255
		.dc.b 4
		.ascii "LOCAL"
		.dc.b ((53*2)>>8)&255,((53*2)&255),((yLOCAL_args-jmpbase)>>8)&255,(yLOCAL_args-jmpbase)&255
		.dc.b 5
		.ascii "LPRINT"
		.dc.b ((303*2)>>8)&255,((303*2)&255),((yLPRINT_args-jmpbase)>>8)&255,(yLPRINT_args-jmpbase)&255
		.dc.b 3
		.ascii "LSET"
		.dc.b ((304*2)>>8)&255,((304*2)&255),((yLSET_args-jmpbase)>>8)&255,(yLSET_args-jmpbase)&255
		.dc.b 5
		.ascii "LOCATE"
		.dc.b ((125*2)>>8)&255,((125*2)&255),((yLOCATE_args-jmpbase)>>8)&255,(yLOCATE_args-jmpbase)&255
		.dc.b 3
		.ascii "LIST"
		.dc.b ((388*2)>>8)&255,((388*2)&255),((yLIST_args-jmpbase)>>8)&255,(yLIST_args-jmpbase)&255
		.dc.b 4
		.ascii "LLIST"
		.dc.b ((389*2)>>8)&255,((389*2)&255),((yLLIST_args-jmpbase)>>8)&255,(yLLIST_args-jmpbase)&255
		.dc.b 3
		.ascii "LOAD"
		.dc.b ((395*2)>>8)&255,((395*2)&255),((yLOAD_args-jmpbase)>>8)&255,(yLOAD_args-jmpbase)&255
	.IFNE GBE
		.dc.b 6
		.ascii "LOG_MSG"
		.dc.b ((484*2)>>8)&255,((484*2)&255),((yLOG_MSG_args-jmpbase)>>8)&255,(yLOG_MSG_args-jmpbase)&255
		.dc.b 6
		.ascii "LOG_SET"
		.dc.b ((485*2)>>8)&255,((485*2)&255),((yLOG_SET_args-jmpbase)>>8)&255,(yLOG_SET_args-jmpbase)&255
		.dc.b 7
		.ascii "LOG_FILE"
		.dc.b ((486*2)>>8)&255,((486*2)&255),((yLOG_FILE_args-jmpbase)>>8)&255,(yLOG_FILE_args-jmpbase)&255
		.dc.b 7
		.ascii "LOG_KILL"
		.dc.b ((487*2)>>8)&255,((487*2)&255),((yLOG_KILL_args-jmpbase)>>8)&255,(yLOG_KILL_args-jmpbase)&255
	.ENDC
cmd_m_table: /* 120f4 */
		.dc.b 2
		.ascii "MAT"
		.dc.b ((424*2)>>8)&255,((424*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MONITOR"
		.dc.b ((48*2)>>8)&255,((48*2)&255),((yMONITOR_args-jmpbase)>>8)&255,(yMONITOR_args-jmpbase)&255
		.dc.b 2
		.ascii "MUL"
		.dc.b ((192*2)>>8)&255,((192*2)&255),((yMUL_args-jmpbase)>>8)&255,(yMUL_args-jmpbase)&255
		.dc.b 3
		.ascii "MENU"
		.dc.b ((139*2)>>8)&255,((139*2)&255),((yMENU_args-jmpbase)>>8)&255,(yMENU_args-jmpbase)&255
		.dc.b 4
		.ascii "MID$("
		.dc.b ((305*2)>>8)&255,((305*2)&255),((yMIDs_args-jmpbase)>>8)&255,(yMIDs_args-jmpbase)&255
		.dc.b 4
		.ascii "MKDIR"
		.dc.b ((331*2)>>8)&255,((331*2)&255),((yMKDIR_args-jmpbase)>>8)&255,(yMKDIR_args-jmpbase)&255
		.dc.b 4
		.ascii "MOUSE"
		.dc.b ((332*2)>>8)&255,((332*2)&255),((yMOUSE_args-jmpbase)>>8)&255,(yMOUSE_args-jmpbase)&255
		.dc.b 3
		.ascii "MODE"
		.dc.b ((414*2)>>8)&255,((414*2)&255),((yMODE_args-jmpbase)>>8)&255,(yMODE_args-jmpbase)&255
		.dc.b 5
		.ascii "MW_OUT"
		.dc.b ((452*2)>>8)&255,((452*2)&255),((yMW_OUT_args-jmpbase)>>8)&255,(yMW_OUT_args-jmpbase)&255
	.IFNE GBE
	.IF GBE>=372
		.dc.b 6
		.ascii "MEMEXG&"
		.dc.b ((548*2)>>8)&255,((548*2)&255),((yMEMEXG_args-jmpbase)>>8)&255,(yMEMEXG_args-jmpbase)&255
		.dc.b 6
		.ascii "MEMEXG%"
		.dc.b ((549*2)>>8)&255,((549*2)&255),((yMEMEXG_args-jmpbase)>>8)&255,(yMEMEXG_args-jmpbase)&255
	.ENDC
		.dc.b 7
		.ascii "MEMBSET|"
		.dc.b ((525*2)>>8)&255,((525*2)&255),((yMEMBSET_args-jmpbase)>>8)&255,(yMEMBSET_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBSET&"
		.dc.b ((526*2)>>8)&255,((526*2)&255),((yMEMBSET_args-jmpbase)>>8)&255,(yMEMBSET_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBSET%"
		.dc.b ((527*2)>>8)&255,((527*2)&255),((yMEMBSET_args-jmpbase)>>8)&255,(yMEMBSET_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBCLR|"
		.dc.b ((528*2)>>8)&255,((528*2)&255),((yMEMBCLR_args-jmpbase)>>8)&255,(yMEMBCLR_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBCLR&"
		.dc.b ((529*2)>>8)&255,((529*2)&255),((yMEMBCLR_args-jmpbase)>>8)&255,(yMEMBCLR_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBCLR%"
		.dc.b ((530*2)>>8)&255,((530*2)&255),((yMEMBCLR_args-jmpbase)>>8)&255,(yMEMBCLR_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBCHG|"
		.dc.b ((531*2)>>8)&255,((531*2)&255),((yMEMBCHG_args-jmpbase)>>8)&255,(yMEMBCHG_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBCHG&"
		.dc.b ((532*2)>>8)&255,((532*2)&255),((yMEMBCHG_args-jmpbase)>>8)&255,(yMEMBCHG_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMBCHG%"
		.dc.b ((533*2)>>8)&255,((533*2)&255),((yMEMBCHG_args-jmpbase)>>8)&255,(yMEMBCHG_args-jmpbase)&255
		.dc.b 4
		.ascii "MEMOR"
		.dc.b ((523*2)>>8)&255,((523*2)&255),((yMEMOR_args-jmpbase)>>8)&255,(yMEMOR_args-jmpbase)&255
		.dc.b 5
		.ascii "MEMAND"
		.dc.b ((522*2)>>8)&255,((522*2)&255),((yMEMAND_args-jmpbase)>>8)&255,(yMEMAND_args-jmpbase)&255
		.dc.b 5
		.ascii "MEMXOR"
		.dc.b ((524*2)>>8)&255,((524*2)&255),((yMEMXOR_args-jmpbase)>>8)&255,(yMEMXOR_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMSWAP&"
		.dc.b ((498*2)>>8)&255,((498*2)&255),((yMEMSWAP_args-jmpbase)>>8)&255,(yMEMSWAP_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMSWAP%"
		.dc.b ((499*2)>>8)&255,((499*2)&255),((yMEMSWAP_args-jmpbase)>>8)&255,(yMEMSWAP_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMFILL&"
		.dc.b ((500*2)>>8)&255,((500*2)&255),((yMEMFILL_args-jmpbase)>>8)&255,(yMEMFILL_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMFILL%"
		.dc.b ((501*2)>>8)&255,((501*2)&255),((yMEMFILL_args-jmpbase)>>8)&255,(yMEMFILL_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMZERO&"
		.dc.b ((515*2)>>8)&255,((515*2)&255),((yMEMZERO_args-jmpbase)>>8)&255,(yMEMZERO_args-jmpbase)&255
		.dc.b 7
		.ascii "MEMZERO%"
		.dc.b ((516*2)>>8)&255,((516*2)&255),((yMEMZERO_args-jmpbase)>>8)&255,(yMEMZERO_args-jmpbase)&255
		.dc.b 10
		.ascii "MEMREPLACE&"
		.dc.b ((539*2)>>8)&255,((539*2)&255),((yMEMREPLACE_args-jmpbase)>>8)&255,(yMEMREPLACE_args-jmpbase)&255
		.dc.b 10
		.ascii "MEMREPLACE%"
		.dc.b ((540*2)>>8)&255,((540*2)&255),((yMEMREPLACE_args-jmpbase)>>8)&255,(yMEMREPLACE_args-jmpbase)&255
	.IF GBE>=372
		.dc.b 9
		.ascii "MEMMIRROR&"
		.dc.b ((545*2)>>8)&255,((545*2)&255),((yMEMMIRROR_args-jmpbase)>>8)&255,(yMEMMIRROR_args-jmpbase)&255
		.dc.b 9
		.ascii "MEMMIRROR%"
		.dc.b ((546*2)>>8)&255,((546*2)&255),((yMEMMIRROR_args-jmpbase)>>8)&255,(yMEMMIRROR_args-jmpbase)&255
		.dc.b 9
		.ascii "MEMMIRROR3"
		.dc.b ((547*2)>>8)&255,((547*2)&255),((yMEMMIRROR3_args-jmpbase)>>8)&255,(yMEMMIRROR3_args-jmpbase)&255
	.ENDC
	.IF GBE>=373
		.dc.b 5
		.ascii "MDPOKE"
		.dc.b ((664*2)>>8)&255,((664*2)&255),((yMDPOKE_args-jmpbase)>>8)&255,(yMDPOKE_args-jmpbase)&255
		.dc.b 5
		.ascii "MLPOKE"
		.dc.b ((665*2)>>8)&255,((665*2)&255),((yMLPOKE_args-jmpbase)>>8)&255,(yMLPOKE_args-jmpbase)&255
		.dc.b 3
		.ascii "MNAM"
		.dc.b ((666*2)>>8)&255,((666*2)&255),((yMNAM_args-jmpbase)>>8)&255,(yMNAM_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_n_table: /* 1214b */
		.dc.b 3
		.ascii "NEXT"
		.dc.b ((31*2)>>8)&255,((31*2)&255),((yNEXT_args-jmpbase)>>8)&255,(yNEXT_args-jmpbase)&255
		.dc.b 3
		.ascii "NAME"
		.dc.b ((330*2)>>8)&255,((330*2)&255),((yNAME_args-jmpbase)>>8)&255,(yNAME_args-jmpbase)&255
		.dc.b 2
		.ascii "NEW"
		.dc.b ((306*2)>>8)&255,((306*2)&255),((yNEW_args-jmpbase)>>8)&255,(yNEW_args-jmpbase)&255
cmd_o_table: /* 12165 */
		.dc.b 3
		.ascii "OPEN"
		.dc.b ((265*2)>>8)&255,((265*2)&255),((yOPEN_args-jmpbase)>>8)&255,(yOPEN_args-jmpbase)&255
		.dc.b 1
		.ascii "ON"
		.dc.b ((126*2)>>8)&255,((126*2)&255),((yON_args-jmpbase)>>8)&255,(yON_args-jmpbase)&255
		.dc.b 7
		.ascii "OB_NEXT("
		.dc.b ((242*2)>>8)&255,((242*2)&255),((yOB_NEXT_args-jmpbase)>>8)&255,(yOB_NEXT_args-jmpbase)&255
		.dc.b 7
		.ascii "OB_HEAD("
		.dc.b ((243*2)>>8)&255,((243*2)&255),((yOB_HEAD_args-jmpbase)>>8)&255,(yOB_HEAD_args-jmpbase)&255
		.dc.b 7
		.ascii "OB_TAIL("
		.dc.b ((244*2)>>8)&255,((244*2)&255),((yOB_TAIL_args-jmpbase)>>8)&255,(yOB_TAIL_args-jmpbase)&255
		.dc.b 7
		.ascii "OB_TYPE("
		.dc.b ((245*2)>>8)&255,((245*2)&255),((yOB_TYPE_args-jmpbase)>>8)&255,(yOB_TYPE_args-jmpbase)&255
		.dc.b 8
		.ascii "OB_FLAGS("
		.dc.b ((246*2)>>8)&255,((246*2)&255),((yOB_FLAGS_args-jmpbase)>>8)&255,(yOB_FLAGS_args-jmpbase)&255
		.dc.b 8
		.ascii "OB_STATE("
		.dc.b ((247*2)>>8)&255,((247*2)&255),((yOB_STATE_args-jmpbase)>>8)&255,(yOB_STATE_args-jmpbase)&255
		.dc.b 7
		.ascii "OB_SPEC("
		.dc.b ((248*2)>>8)&255,((248*2)&255),((yOB_SPEC_args-jmpbase)>>8)&255,(yOB_SPEC_args-jmpbase)&255
		.dc.b 4
		.ascii "OB_X("
		.dc.b ((249*2)>>8)&255,((249*2)&255),((yOB_X_args-jmpbase)>>8)&255,(yOB_X_args-jmpbase)&255
		.dc.b 4
		.ascii "OB_Y("
		.dc.b ((250*2)>>8)&255,((250*2)&255),((yOB_Y_args-jmpbase)>>8)&255,(yOB_Y_args-jmpbase)&255
		.dc.b 4
		.ascii "OB_W("
		.dc.b ((251*2)>>8)&255,((251*2)&255),((yOB_W_args-jmpbase)>>8)&255,(yOB_W_args-jmpbase)&255
		.dc.b 4
		.ascii "OB_H("
		.dc.b ((252*2)>>8)&255,((252*2)&255),((yOB_H_args-jmpbase)>>8)&255,(yOB_H_args-jmpbase)&255
		.dc.b 2
		.ascii "OUT"
		.dc.b ((307*2)>>8)&255,((307*2)&255),((yOUT_args-jmpbase)>>8)&255,(yOUT_args-jmpbase)&255
		.dc.b 3
		.ascii "OUT%"
		.dc.b ((421*2)>>8)&255,((421*2)&255),((yOUT_args-jmpbase)>>8)&255,(yOUT_args-jmpbase)&255
		.dc.b 3
		.ascii "OUT&"
		.dc.b ((420*2)>>8)&255,((420*2)&255),((yOUT_args-jmpbase)>>8)&255,(yOUT_args-jmpbase)&255
		.dc.b 8
		.ascii "OTHERWISE"
		.dc.b ((15*2)>>8)&255,((15*2)&255),((yDEFAULT_args-jmpbase)>>8)&255,(yDEFAULT_args-jmpbase)&255
		.dc.b 5
		.ascii "OPTION"
		.dc.b ((410*2)>>8)&255,((410*2)&255),((yOPTION_args-jmpbase)>>8)&255,(yOPTION_args-jmpbase)&255
	.IFNE GBE
		.dc.b 8
		.ascii "OB.STATE("
		.dc.b ((504*2)>>8)&255,((504*2)&255),((yOB_dot_STATE_args-jmpbase)>>8)&255,(yOB_dot_STATE_args-jmpbase)&255
		.dc.b 8
		.ascii "OB.FLAGS("
		.dc.b ((505*2)>>8)&255,((505*2)&255),((yOB_dot_FLAGS_args-jmpbase)>>8)&255,(yOB_dot_FLAGS_args-jmpbase)&255
		.dc.b 8
		.ascii "OB_RADIO("
		.dc.b ((510*2)>>8)&255,((510*2)&255),((yOB_RADIO_args-jmpbase)>>8)&255,(yOB_RADIO_args-jmpbase)&255
		.dc.b 8
		.ascii "OB_TEXT$("
		.dc.b ((511*2)>>8)&255,((511*2)&255),((yOB_TEXTs_args-jmpbase)>>8)&255,(yOB_TEXTs_args-jmpbase)&255
	.IF GBE>=372
		.dc.b 11
		.ascii "OB_SELECTED("
		.dc.b ((560*2)>>8)&255,((560*2)&255),((yOB_SELECTED_args-jmpbase)>>8)&255,(yOB_SELECTED_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_CROSSED("
		.dc.b ((561*2)>>8)&255,((561*2)&255),((yOB_CROSSED_args-jmpbase)>>8)&255,(yOB_CROSSED_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_CHECKED("
		.dc.b ((562*2)>>8)&255,((562*2)&255),((yOB_CHECKED_args-jmpbase)>>8)&255,(yOB_CHECKED_args-jmpbase)&255
		.dc.b 11
		.ascii "OB_DISABLED("
		.dc.b ((563*2)>>8)&255,((563*2)&255),((yOB_DISABLED_args-jmpbase)>>8)&255,(yOB_DISABLED_args-jmpbase)&255
		.dc.b 11
		.ascii "OB_OUTLINED("
		.dc.b ((564*2)>>8)&255,((564*2)&255),((yOB_OUTLINED_args-jmpbase)>>8)&255,(yOB_OUTLINED_args-jmpbase)&255
		.dc.b 11
		.ascii "OB_SHADOWED("
		.dc.b ((565*2)>>8)&255,((565*2)&255),((yOB_SHADOWED_args-jmpbase)>>8)&255,(yOB_SHADOWED_args-jmpbase)&255
		.dc.b 11
		.ascii "OB_WHITEBAK("
		.dc.b ((566*2)>>8)&255,((566*2)&255),((yOB_WHITEBAK_args-jmpbase)>>8)&255,(yOB_WHITEBAK_args-jmpbase)&255
		.dc.b 13
		.ascii "OB_SELECTABLE("
		.dc.b ((568*2)>>8)&255,((568*2)&255),((yOB_SELECTABLE_args-jmpbase)>>8)&255,(yOB_SELECTABLE_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_DEFAULT("
		.dc.b ((569*2)>>8)&255,((569*2)&255),((yOB_DEFAULT_args-jmpbase)>>8)&255,(yOB_DEFAULT_args-jmpbase)&255
		.dc.b 7
		.ascii "OB_EXIT("
		.dc.b ((570*2)>>8)&255,((570*2)&255),((yOB_EXIT_args-jmpbase)>>8)&255,(yOB_EXIT_args-jmpbase)&255
		.dc.b 11
		.ascii "OB_EDITABLE("
		.dc.b ((571*2)>>8)&255,((571*2)&255),((yOB_EDITABLE_args-jmpbase)>>8)&255,(yOB_EDITABLE_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_RBUTTON("
		.dc.b ((572*2)>>8)&255,((572*2)&255),((yOB_RBUTTON_args-jmpbase)>>8)&255,(yOB_RBUTTON_args-jmpbase)&255
		.dc.b 9
		.ascii "OB_LASTOB("
		.dc.b ((573*2)>>8)&255,((573*2)&255),((yOB_LASTOB_args-jmpbase)>>8)&255,(yOB_LASTOB_args-jmpbase)&255
		.dc.b 12
		.ascii "OB_TOUCHEXIT("
		.dc.b ((574*2)>>8)&255,((574*2)&255),((yOB_TOUCHEXIT_args-jmpbase)>>8)&255,(yOB_TOUCHEXIT_args-jmpbase)&255
		.dc.b 11
		.ascii "OB_HIDETREE("
		.dc.b ((575*2)>>8)&255,((575*2)&255),((yOB_HIDETREE_args-jmpbase)>>8)&255,(yOB_HIDETREE_args-jmpbase)&255
		.dc.b 11
		.ascii "OB_INDIRECT("
		.dc.b ((576*2)>>8)&255,((576*2)&255),((yOB_INDIRECT_args-jmpbase)>>8)&255,(yOB_INDIRECT_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_FL3DIND("
		.dc.b ((577*2)>>8)&255,((577*2)&255),((yOB_FL3DIND_args-jmpbase)>>8)&255,(yOB_FL3DIND_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_FL3DACT("
		.dc.b ((578*2)>>8)&255,((578*2)&255),((yOB_FL3DACT_args-jmpbase)>>8)&255,(yOB_FL3DACT_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_SUBMENU("
		.dc.b ((579*2)>>8)&255,((579*2)&255),((yOB_SUBMENU_args-jmpbase)>>8)&255,(yOB_SUBMENU_args-jmpbase)&255
		.dc.b 10
		.ascii "OB_FL3DBAK("
		.dc.b ((581*2)>>8)&255,((581*2)&255),((yOB_FL3DBAK_args-jmpbase)>>8)&255,(yOB_FL3DBAK_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_p_table: /* 1222d */
		.dc.b 4
		.ascii "PRINT"
		.dc.b ((147*2)>>8)&255,((147*2)&255),((yPRINT_args-jmpbase)>>8)&255,(yPRINT_args-jmpbase)&255
		.dc.b 3
		.ascii "PLOT"
		.dc.b ((88*2)>>8)&255,((88*2)&255),((yPLOT_args-jmpbase)>>8)&255,(yPLOT_args-jmpbase)&255
		.dc.b 3
		.ascii "PSET"
		.dc.b ((89*2)>>8)&255,((89*2)&255),((yPSET_args-jmpbase)>>8)&255,(yPSET_args-jmpbase)&255
		.dc.b 3
		.ascii "POKE"
		.dc.b ((97*2)>>8)&255,((97*2)&255),((yPOKE_args-jmpbase)>>8)&255,(yPOKE_args-jmpbase)&255
		.dc.b 5
		.ascii "PTSIN("
		.dc.b ((220*2)>>8)&255,((220*2)&255),((yPTSIN_args-jmpbase)>>8)&255,(yPTSIN_args-jmpbase)&255
		.dc.b 6
		.ascii "PTSOUT("
		.dc.b ((221*2)>>8)&255,((221*2)&255),((yPTSOUT_args-jmpbase)>>8)&255,(yPTSOUT_args-jmpbase)&255
		.dc.b 8
		.ascii "PROCEDURE"
		.dc.b ((6*2)>>8)&255,((6*2)&255),((yPROCEDURE_args-jmpbase)>>8)&255,(yPROCEDURE_args-jmpbase)&255
		.dc.b 2
		.ascii "PUT"
		.dc.b ((260*2)>>8)&255,((260*2)&255),((yPUT_args-jmpbase)>>8)&255,(yPUT_args-jmpbase)&255
		.dc.b 3
		.ascii "PBOX"
		.dc.b ((288*2)>>8)&255,((288*2)&255),((yPBOX_args-jmpbase)>>8)&255,(yPBOX_args-jmpbase)&255
		.dc.b 4
		.ascii "PRBOX"
		.dc.b ((290*2)>>8)&255,((290*2)&255),((yPRBOX_args-jmpbase)>>8)&255,(yPRBOX_args-jmpbase)&255
		.dc.b 6
		.ascii "PCIRCLE"
		.dc.b ((293*2)>>8)&255,((293*2)&255),((yPCIRCLE_args-jmpbase)>>8)&255,(yPCIRCLE_args-jmpbase)&255
		.dc.b 7
		.ascii "PELLIPSE"
		.dc.b ((297*2)>>8)&255,((297*2)&255),((yPELLIPSE_args-jmpbase)>>8)&255,(yPELLIPSE_args-jmpbase)&255
		.dc.b 4
		.ascii "PAUSE"
		.dc.b ((344*2)>>8)&255,((344*2)&255),((yPAUSE_args-jmpbase)>>8)&255,(yPAUSE_args-jmpbase)&255
		.dc.b 7
		.ascii "POLYLINE"
		.dc.b ((347*2)>>8)&255,((347*2)&255),((yPOLYLINE_args-jmpbase)>>8)&255,(yPOLYLINE_args-jmpbase)&255
		.dc.b 7
		.ascii "POLYFILL"
		.dc.b ((348*2)>>8)&255,((348*2)&255),((yPOLYFILL_args-jmpbase)>>8)&255,(yPOLYFILL_args-jmpbase)&255
		.dc.b 7
		.ascii "POLYMARK"
		.dc.b ((349*2)>>8)&255,((349*2)&255),((yPOLYMARK_args-jmpbase)>>8)&255,(yPOLYMARK_args-jmpbase)&255
		.dc.b 4
		.ascii "PSAVE"
		.dc.b ((391*2)>>8)&255,((391*2)&255),((yPSAVE_args-jmpbase)>>8)&255,(yPSAVE_args-jmpbase)&255
	.IFNE GBE
		.dc.b 5
		.ascii "PALGET"
		.dc.b ((502*2)>>8)&255,((502*2)&255),((yPALGET_args-jmpbase)>>8)&255,(yPALGET_args-jmpbase)&255
		.dc.b 5
		.ascii "PALSET"
		.dc.b ((503*2)>>8)&255,((503*2)&255),((yPALSET_args-jmpbase)>>8)&255,(yPALSET_args-jmpbase)&255
	.IF GBE>=373
		.dc.b 6
		.ascii "PIXEL32"
		.dc.b ((642*2)>>8)&255,((642*2)&255),((yPIXEL32_args-jmpbase)>>8)&255,(yPIXEL32_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL24"
		.dc.b ((640*2)>>8)&255,((640*2)&255),((yPIXEL24_args-jmpbase)>>8)&255,(yPIXEL24_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL16"
		.dc.b ((644*2)>>8)&255,((644*2)&255),((yPIXEL16_args-jmpbase)>>8)&255,(yPIXEL16_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL15"
		.dc.b ((646*2)>>8)&255,((646*2)&255),((yPIXEL15_args-jmpbase)>>8)&255,(yPIXEL15_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL8C"
		.dc.b ((655*2)>>8)&255,((655*2)&255),((yPIXEL8C_args-jmpbase)>>8)&255,(yPIXEL8C_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL8P"
		.dc.b ((653*2)>>8)&255,((653*2)&255),((yPIXEL8P_args-jmpbase)>>8)&255,(yPIXEL8P_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL4P"
		.dc.b ((662*2)>>8)&255,((662*2)&255),((yPIXEL4P_args-jmpbase)>>8)&255,(yPIXEL4P_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL2P"
		.dc.b ((663*2)>>8)&255,((663*2)&255),((yPIXEL2P_args-jmpbase)>>8)&255,(yPIXEL2P_args-jmpbase)&255
		.dc.b 6
		.ascii "PIXEL1M"
		.dc.b ((654*2)>>8)&255,((654*2)&255),((yPIXEL1M_args-jmpbase)>>8)&255,(yPIXEL1M_args-jmpbase)&255
		.dc.b 3
		.ascii "PBAR"
		.dc.b ((649*2)>>8)&255,((649*2)&255),((yPBAR_args-jmpbase)>>8)&255,(yPBAR_args-jmpbase)&255
		.dc.b 4
		.ascii "PRBAR"
		.dc.b ((651*2)>>8)&255,((651*2)&255),((yPRBAR_args-jmpbase)>>8)&255,(yPRBAR_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_q_table: /* 122e6 */
		.dc.b 3
		.ascii "QUIT"
		.dc.b ((309*2)>>8)&255,((309*2)&255),((yQUIT_args-jmpbase)>>8)&255,(yQUIT_args-jmpbase)&255
		.dc.b 4
		.ascii "QSORT"
		.dc.b ((345*2)>>8)&255,((345*2)&255),((yQSORT_args-jmpbase)>>8)&255,(yQSORT_args-jmpbase)&255
cmd_r_table: /* 122f9 */
		.dc.b 2
		.ascii "REM"
		.dc.b ((114*2)>>8)&255,((114*2)&255),((REM_args-jmpbase)>>8)&255,(REM_args-jmpbase)&255
		.dc.b 5
		.ascii "REPEAT"
		.dc.b ((2*2)>>8)&255,((2*2)&255),((yREPEAT_args-jmpbase)>>8)&255,(yREPEAT_args-jmpbase)&255
		.dc.b 6
		.ascii "RESTORE"
		.dc.b ((59*2)>>8)&255,((59*2)&255),((yRESTORE_args-jmpbase)>>8)&255,(yRESTORE_args-jmpbase)&255
		.dc.b 5
		.ascii "RETURN"
		.dc.b ((7*2)>>8)&255,((7*2)&255),((yRETURN_args-jmpbase)>>8)&255,(yRETURN_args-jmpbase)&255
		.dc.b 5
		.ascii "RETURN"
		.dc.b ((17*2)>>8)&255,((17*2)&255),((yRETURN_args-jmpbase)>>8)&255,(yRETURN_args-jmpbase)&255
		.dc.b 6
		.ascii "RELSEEK"
		.dc.b ((209*2)>>8)&255,((209*2)&255),((yRELSEEK_args-jmpbase)>>8)&255,(yRELSEEK_args-jmpbase)&255
		.dc.b 6
		.ascii "RESERVE"
		.dc.b ((103*2)>>8)&255,((103*2)&255),((yRESERVE_args-jmpbase)>>8)&255,(yRESERVE_args-jmpbase)&255
		.dc.b 8
		.ascii "RANDOMIZE"
		.dc.b ((255*2)>>8)&255,((255*2)&255),((yRANDOMIZE_args-jmpbase)>>8)&255,(yRANDOMIZE_args-jmpbase)&255
		.dc.b 3
		.ascii "RBOX"
		.dc.b ((289*2)>>8)&255,((289*2)&255),((yRBOX_args-jmpbase)>>8)&255,(yRBOX_args-jmpbase)&255
		.dc.b 4
		.ascii "RMDIR"
		.dc.b ((334*2)>>8)&255,((334*2)&255),((yRMDIR_args-jmpbase)>>8)&255,(yRMDIR_args-jmpbase)&255
		.dc.b 3
		.ascii "RSET"
		.dc.b ((335*2)>>8)&255,((335*2)&255),((yRSET_args-jmpbase)>>8)&255,(yRSET_args-jmpbase)&255
		.dc.b 5
		.ascii "RENAME"
		.dc.b ((352*2)>>8)&255,((352*2)&255),((yRENAME_args-jmpbase)>>8)&255,(yRENAME_args-jmpbase)&255
		.dc.b 4
		.ascii "RCALL"
		.dc.b ((151*2)>>8)&255,((151*2)&255),((yRCALL_args-jmpbase)>>8)&255,(yRCALL_args-jmpbase)&255
		.dc.b 5
		.ascii "RESUME"
		.dc.b ((105*2)>>8)&255,((105*2)&255),((yRESUME_args-jmpbase)>>8)&255,(yRESUME_args-jmpbase)&255
		.dc.b 3
		.ascii "READ"
		.dc.b ((372*2)>>8)&255,((372*2)&255),((yREAD_args-jmpbase)>>8)&255,(yREAD_args-jmpbase)&255
		.dc.b 5
		.ascii "RECORD"
		.dc.b ((109*2)>>8)&255,((109*2)&255),((yRECORD_args-jmpbase)>>8)&255,(yRECORD_args-jmpbase)&255
		.dc.b 2
		.ascii "RUN"
		.dc.b ((393*2)>>8)&255,((393*2)&255),((yRUN_args-jmpbase)>>8)&255,(yRUN_args-jmpbase)&255
		.dc.b 5
		.ascii "RECALL"
		.dc.b ((403*2)>>8)&255,((403*2)&255),((yRECALL_args-jmpbase)>>8)&255,(yRECALL_args-jmpbase)&255
		.dc.b 6
		.ascii "RC_COPY"
		.dc.b ((413*2)>>8)&255,((413*2)&255),((yRC_COPY_args-jmpbase)>>8)&255,(yRC_COPY_args-jmpbase)&255
	.IFNE GBE
	.IF GBE>=373
		.dc.b 8
		.ascii "RC_REDRAW"
		.dc.b ((676*2)>>8)&255,((676*2)&255),((yRC_REDRAW_args-jmpbase)>>8)&255,(yRC_REDRAW_args-jmpbase)&255
	.ENDC
		.dc.b 2
		.ascii "RGB"
		.dc.b ((536*2)>>8)&255,((536*2)&255),((yRGB_args-jmpbase)>>8)&255,(yRGB_args-jmpbase)&255
	.IF GBE>=373
		.dc.b 3
		.ascii "RBAR"
		.dc.b ((650*2)>>8)&255,((650*2)&255),((yRBAR_args-jmpbase)>>8)&255,(yRBAR_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_s_table: /* 123c3 */
		.dc.b 5
		.ascii "SWITCH"
		.dc.b ((12*2)>>8)&255,((12*2)&255),((ySWITCH_args-jmpbase)>>8)&255,(ySWITCH_args-jmpbase)&255
		.dc.b 5
		.ascii "SELECT"
		.dc.b ((12*2)>>8)&255,((12*2)&255),((ySWITCH_args-jmpbase)>>8)&255,(ySWITCH_args-jmpbase)&255
		.dc.b 3
		.ascii "SWAP"
		.dc.b ((118*2)>>8)&255,((118*2)&255),((ySWAP_args-jmpbase)>>8)&255,(ySWAP_args-jmpbase)&255
		.dc.b 2
		.ascii "SUB"
		.dc.b ((184*2)>>8)&255,((184*2)&255),((ySUB_args-jmpbase)>>8)&255,(ySUB_args-jmpbase)&255
		.dc.b 4
		.ascii "SPOKE"
		.dc.b ((100*2)>>8)&255,((100*2)&255),((ySPOKE_args-jmpbase)>>8)&255,(ySPOKE_args-jmpbase)&255
		.dc.b 5
		.ascii "SDPOKE"
		.dc.b ((101*2)>>8)&255,((101*2)&255),((ySDPOKE_args-jmpbase)>>8)&255,(ySDPOKE_args-jmpbase)&255
		.dc.b 5
		.ascii "SLPOKE"
		.dc.b ((102*2)>>8)&255,((102*2)&255),((ySLPOKE_args-jmpbase)>>8)&255,(ySLPOKE_args-jmpbase)&255
		.dc.b 7
		.ascii "SETCOLOR"
		.dc.b ((211*2)>>8)&255,((211*2)&255),((ySETCOLOR_args-jmpbase)>>8)&255,(ySETCOLOR_args-jmpbase)&255
		.dc.b 3
		.ascii "SEEK"
		.dc.b ((208*2)>>8)&255,((208*2)&255),((ySEEK_args-jmpbase)>>8)&255,(ySEEK_args-jmpbase)&255
		.dc.b 6
		.ascii "SETTIME"
		.dc.b ((336*2)>>8)&255,((336*2)&255),((ySETTIME_args-jmpbase)>>8)&255,(ySETTIME_args-jmpbase)&255
		.dc.b 3
		.ascii "SGET"
		.dc.b ((337*2)>>8)&255,((337*2)&255),((ySGET_args-jmpbase)>>8)&255,(ySGET_args-jmpbase)&255
		.dc.b 3
		.ascii "SPUT"
		.dc.b ((339*2)>>8)&255,((339*2)&255),((ySPUT_args-jmpbase)>>8)&255,(ySPUT_args-jmpbase)&255
		.dc.b 4
		.ascii "SHOWM"
		.dc.b ((338*2)>>8)&255,((338*2)&255),((ySHOWM_args-jmpbase)>>8)&255,(ySHOWM_args-jmpbase)&255
		.dc.b 3
		.ascii "STOP"
		.dc.b ((340*2)>>8)&255,((340*2)&255),((ySTOP_args-jmpbase)>>8)&255,(ySTOP_args-jmpbase)&255
		.dc.b 5
		.ascii "SYSTEM"
		.dc.b ((341*2)>>8)&255,((341*2)&255),((ySYSTEM_args-jmpbase)>>8)&255,(ySYSTEM_args-jmpbase)&255
		.dc.b 4
		.ascii "SSORT"
		.dc.b ((346*2)>>8)&255,((346*2)&255),((ySSORT_args-jmpbase)>>8)&255,(ySSORT_args-jmpbase)&255
		.dc.b 4
		.ascii "STICK"
		.dc.b ((353*2)>>8)&255,((353*2)&255),((ySTICK_args-jmpbase)>>8)&255,(ySTICK_args-jmpbase)&255
		.dc.b 4
		.ascii "SOUND"
		.dc.b ((354*2)>>8)&255,((354*2)&255),((ySOUND_args-jmpbase)>>8)&255,(ySOUND_args-jmpbase)&255
		.dc.b 6
		.ascii "SINGLE{"
		.dc.b ((123*2)>>8)&255,((123*2)&255),((ySINGLE_args-jmpbase)>>8)&255,(ySINGLE_args-jmpbase)&255
		.dc.b 7
		.ascii "SETMOUSE"
		.dc.b ((374*2)>>8)&255,((374*2)&255),((ySETMOUSE_args-jmpbase)>>8)&255,(ySETMOUSE_args-jmpbase)&255
		.dc.b 3
		.ascii "SAVE"
		.dc.b ((390*2)>>8)&255,((390*2)&255),((ySAVE_args-jmpbase)>>8)&255,(ySAVE_args-jmpbase)&255
		.dc.b 6
		.ascii "SETDRAW"
		.dc.b ((396*2)>>8)&255,((396*2)&255),((ySETDRAW_args-jmpbase)>>8)&255,(ySETDRAW_args-jmpbase)&255
		.dc.b 4
		.ascii "STORE"
		.dc.b ((402*2)>>8)&255,((402*2)&255),((ySTORE_args-jmpbase)>>8)&255,(ySTORE_args-jmpbase)&255
		.dc.b 5
		.ascii "SPRITE"
		.dc.b ((409*2)>>8)&255,((409*2)&255),((ySPRITE_args-jmpbase)>>8)&255,(ySPRITE_args-jmpbase)&255
	.IFNE GBE
	.IF GBE>=373
		.dc.b 4
		.ascii "SFILL"
		.dc.b ((670*2)>>8)&255,((670*2)&255),((ySFILL_args-jmpbase)>>8)&255,(ySFILL_args-jmpbase)&255
		.dc.b 6
		.ascii "STRUCT("
		.dc.b ((661*2)>>8)&255,((661*2)&255),((ySTRUCT_args-jmpbase)>>8)&255,(ySTRUCT_args-jmpbase)&255
		.dc.b 7
		.ascii "STRUCT!("
		.dc.b ((657*2)>>8)&255,((657*2)&255),((ySTRUCT_args-jmpbase)>>8)&255,(ySTRUCT_args-jmpbase)&255
		.dc.b 7
		.ascii "STRUCT|("
		.dc.b ((658*2)>>8)&255,((658*2)&255),((ySTRUCT_args-jmpbase)>>8)&255,(ySTRUCT_args-jmpbase)&255
		.dc.b 7
		.ascii "STRUCT&("
		.dc.b ((659*2)>>8)&255,((659*2)&255),((ySTRUCT_args-jmpbase)>>8)&255,(ySTRUCT_args-jmpbase)&255
		.dc.b 7
		.ascii "STRUCT%("
		.dc.b ((660*2)>>8)&255,((660*2)&255),((ySTRUCT_args-jmpbase)>>8)&255,(ySTRUCT_args-jmpbase)&255
		.dc.b 7
		.ascii "STRUCT$("
		.dc.b ((656*2)>>8)&255,((656*2)&255),((ySTRUCTs_args-jmpbase)>>8)&255,(ySTRUCTs_args-jmpbase)&255
		.dc.b 4
		.ascii "SUPER"
		.dc.b ((639*2)>>8)&255,((639*2)&255),((ySUPER_args-jmpbase)>>8)&255,(ySUPER_args-jmpbase)&255
	.ENDC
		.dc.b 4
		.ascii "SLEEP"
		.dc.b ((514*2)>>8)&255,((514*2)&255),((ySLEEP_args-jmpbase)>>8)&255,(ySLEEP_args-jmpbase)&255
		.dc.b 5
		.ascii "SBYTE{"
		.dc.b ((506*2)>>8)&255,((506*2)&255),((ySBYTE_args-jmpbase)>>8)&255,(ySBYTE_args-jmpbase)&255
		.dc.b 5
		.ascii "SCREEN"
		.dc.b ((534*2)>>8)&255,((534*2)&255),((ySCREEN_args-jmpbase)>>8)&255,(ySCREEN_args-jmpbase)&255
		.dc.b 3
		.ascii "SNDH"
		.dc.b ((497*2)>>8)&255,((497*2)&255),((ySNDH_args-jmpbase)>>8)&255,(ySNDH_args-jmpbase)&255
		.dc.b 4
		.ascii "SCALL"
		.dc.b ((491*2)>>8)&255,((491*2)&255),((ySCALL_args-jmpbase)>>8)&255,(ySCALL_args-jmpbase)&255
		.dc.b 6
		.ascii "STRPOKE"
		.dc.b ((494*2)>>8)&255,((494*2)&255),((ySTRPOKE_args-jmpbase)>>8)&255,(ySTRPOKE_args-jmpbase)&255
		.dc.b 7
		.ascii "SET.MFDB"
		.dc.b ((460*2)>>8)&255,((460*2)&255),((ySET_MFDB_args-jmpbase)>>8)&255,(ySET_MFDB_args-jmpbase)&255
		.dc.b 7
		.ascii "SET.MENU"
		.dc.b ((541*2)>>8)&255,((541*2)&255),((ySET_MENU_args-jmpbase)>>8)&255,(ySET_MENU_args-jmpbase)&255
	.IF GBE>=372
		.dc.b 8
		.ascii "SET.SXYXY"
		.dc.b ((517*2)>>8)&255,((517*2)&255),((ySET_SXYXY_args-jmpbase)>>8)&255,(ySET_SXYXY_args-jmpbase)&255
		.dc.b 8
		.ascii "SET.DXYXY"
		.dc.b ((518*2)>>8)&255,((518*2)&255),((ySET_DXYXY_args-jmpbase)>>8)&255,(ySET_DXYXY_args-jmpbase)&255
		.dc.b 8
		.ascii "SET.SXYWH"
		.dc.b ((508*2)>>8)&255,((508*2)&255),((ySET_SXYWH_args-jmpbase)>>8)&255,(ySET_SXYWH_args-jmpbase)&255
		.dc.b 8
		.ascii "SET.DXYWH"
		.dc.b ((509*2)>>8)&255,((509*2)&255),((ySET_DXYWH_args-jmpbase)>>8)&255,(ySET_DXYWH_args-jmpbase)&255
	.ENDC
		.dc.b 8
		.ascii "SET.PXYWH"
		.dc.b ((461*2)>>8)&255,((461*2)&255),((ySET_PXYWH_args-jmpbase)>>8)&255,(ySET_PXYWH_args-jmpbase)&255
	.IF GBE>=372
		.dc.b 8
		.ascii "SET.RXYWH"
		.dc.b ((519*2)>>8)&255,((519*2)&255),((ySET_RXYWH_args-jmpbase)>>8)&255,(ySET_RXYWH_args-jmpbase)&255
	.ENDC
		.dc.b 8
		.ascii "SET.PXYXY"
		.dc.b ((488*2)>>8)&255,((488*2)&255),((ySET_PXYXY_args-jmpbase)>>8)&255,(ySET_PXYXY_args-jmpbase)&255
	.IF GBE>=372
		.dc.b 11
		.ascii "SET.GCBITMAP"
		.dc.b ((521*2)>>8)&255,((521*2)&255),((ySET_GCBITMAP_args-jmpbase)>>8)&255,(ySET_GCBITMAP_args-jmpbase)&255
	.ENDC
		.dc.b 14
		.ascii "SET.SOCKADDR_IN"
		.dc.b ((495*2)>>8)&255,((495*2)&255),((ySET_SOCKADDR_IN_args-jmpbase)>>8)&255,(ySET_SOCKADDR_IN_args-jmpbase)&255
		.dc.b 11
		.ascii "STRARRAYFILL"
		.dc.b ((537*2)>>8)&255,((537*2)&255),((ySTRARRAYFILL_args-jmpbase)>>8)&255,(ySTRARRAYFILL_args-jmpbase)&255
	.ENDC
cmd_t_table: /* 124bd */
		.dc.b 3
		.ascii "TEXT"
		.dc.b ((149*2)>>8)&255,((149*2)&255),((yTEXT_args-jmpbase)>>8)&255,(yTEXT_args-jmpbase)&255
		.dc.b 3
		.ascii "TRON"
		.dc.b ((143*2)>>8)&255,((143*2)&255),((yTRON_args-jmpbase)>>8)&255,(yTRON_args-jmpbase)&255
		.dc.b 4
		.ascii "TROFF"
		.dc.b ((146*2)>>8)&255,((146*2)&255),((yTROFF_args-jmpbase)>>8)&255,(yTROFF_args-jmpbase)&255
		.dc.b 3
		.ascii "TOPW"
		.dc.b ((274*2)>>8)&255,((274*2)&255),((yTOPW_args-jmpbase)>>8)&255,(yTOPW_args-jmpbase)&255
		.dc.b 5
		.ascii "TITLEW"
		.dc.b ((275*2)>>8)&255,((275*2)&255),((yTITLEW_args-jmpbase)>>8)&255,(yTITLEW_args-jmpbase)&255
		.dc.b 4
		.ascii "TOUCH"
		.dc.b ((326*2)>>8)&255,((326*2)&255),((yTOUCH_args-jmpbase)>>8)&255,(yTOUCH_args-jmpbase)&255
		.dc.b 5
		.ascii "TIME$="
		.dc.b ((407*2)>>8)&255,((407*2)&255),((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
	.IFNE GBE
	.IF GBE<=371
		.dc.b 7
		.ascii "TEDINFO("
		.dc.b ((546*2)>>8)&255,((546*2)&255),((yTEDINFO_args-jmpbase)>>8)&255,(yTEDINFO_args-jmpbase)&255
	.ENDC
		.dc.b 3
		.ascii "TPUT"
		.dc.b ((496*2)>>8)&255,((496*2)&255),((yTPUT_args-jmpbase)>>8)&255,(yTPUT_args-jmpbase)&255
		.dc.b 6
		.ascii "TBITBLT"
		.dc.b ((490*2)>>8)&255,((490*2)&255),((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
	.IFNE GBE_OLDCOMPAT
		.dc.b 6
		.ascii "VBITBLT"
		.dc.b ((490*2)>>8)&255,((490*2)&255),((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
	.ENDC
	.IF GBE>=372
		.dc.b 8
		.ascii "TE_PTEXT("
		.dc.b ((598*2)>>8)&255,((598*2)&255),((yTE_PTEXT_args-jmpbase)>>8)&255,(yTE_PTEXT_args-jmpbase)&255
		.dc.b 9
		.ascii "TE_PTMPLT("
		.dc.b ((599*2)>>8)&255,((599*2)&255),((yTE_PTMPLT_args-jmpbase)>>8)&255,(yTE_PTMPLT_args-jmpbase)&255
		.dc.b 9
		.ascii "TE_PVALID("
		.dc.b ((600*2)>>8)&255,((600*2)&255),((yTE_PVALID_args-jmpbase)>>8)&255,(yTE_PVALID_args-jmpbase)&255
		.dc.b 7
		.ascii "TE_FONT("
		.dc.b ((601*2)>>8)&255,((601*2)&255),((yTE_FONT_args-jmpbase)>>8)&255,(yTE_FONT_args-jmpbase)&255
		.dc.b 9
		.ascii "TE_FONTID("
		.dc.b ((602*2)>>8)&255,((602*2)&255),((yTE_FONTID_args-jmpbase)>>8)&255,(yTE_FONTID_args-jmpbase)&255
		.dc.b 7
		.ascii "TE_JUST("
		.dc.b ((603*2)>>8)&255,((603*2)&255),((yTE_JUST_args-jmpbase)>>8)&255,(yTE_JUST_args-jmpbase)&255
		.dc.b 8
		.ascii "TE_COLOR("
		.dc.b ((604*2)>>8)&255,((604*2)&255),((yTE_COLOR_args-jmpbase)>>8)&255,(yTE_COLOR_args-jmpbase)&255
		.dc.b 11
		.ascii "TE_FONTSIZE("
		.dc.b ((605*2)>>8)&255,((605*2)&255),((yTE_FONTSIZE_args-jmpbase)>>8)&255,(yTE_FONTSIZE_args-jmpbase)&255
		.dc.b 12
		.ascii "TE_THICKNESS("
		.dc.b ((606*2)>>8)&255,((606*2)&255),((yTE_THICKNESS_args-jmpbase)>>8)&255,(yTE_THICKNESS_args-jmpbase)&255
		.dc.b 9
		.ascii "TE_TXTLEN("
		.dc.b ((607*2)>>8)&255,((607*2)&255),((yTE_TXTLEN_args-jmpbase)>>8)&255,(yTE_TXTLEN_args-jmpbase)&255
		.dc.b 9
		.ascii "TE_TMPLEN("
		.dc.b ((608*2)>>8)&255,((608*2)&255),((yTE_TMPLEN_args-jmpbase)>>8)&255,(yTE_TMPLEN_args-jmpbase)&255
		.dc.b 11
		.ascii "TE_FRAMECOL("
		.dc.b ((609*2)>>8)&255,((609*2)&255),((yTE_FRAMECOL_args-jmpbase)>>8)&255,(yTE_FRAMECOL_args-jmpbase)&255
		.dc.b 10
		.ascii "TE_TEXTCOL("
		.dc.b ((610*2)>>8)&255,((610*2)&255),((yTE_TEXTCOL_args-jmpbase)>>8)&255,(yTE_TEXTCOL_args-jmpbase)&255
		.dc.b 11
		.ascii "TE_TEXTMODE("
		.dc.b ((611*2)>>8)&255,((611*2)&255),((yTE_TEXTMODE_args-jmpbase)>>8)&255,(yTE_TEXTMODE_args-jmpbase)&255
		.dc.b 14
		.ascii "TE_FILLPATTERN("
		.dc.b ((612*2)>>8)&255,((612*2)&255),((yTE_FILLPATTERN_args-jmpbase)>>8)&255,(yTE_FILLPATTERN_args-jmpbase)&255
		.dc.b 14
		.ascii "TE_INTERIORCOL("
		.dc.b ((613*2)>>8)&255,((613*2)&255),((yTE_INTERIORCOL_args-jmpbase)>>8)&255,(yTE_INTERIORCOL_args-jmpbase)&255
	.ENDC
	.IF GBE>=373
		.dc.b 5
		.ascii "TMOUSE"
		.dc.b ((474*2)>>8)&255,((474*2)&255),((yTMOUSE_args-jmpbase)>>8)&255,(yTMOUSE_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_u_table: /* 12502 */
		.dc.b 4
		.ascii "UNTIL"
		.dc.b ((3*2)>>8)&255,((3*2)&255),((yUNTIL_args-jmpbase)>>8)&255,(yUNTIL_args-jmpbase)&255
	.IFNE GBE
	.IF GBE<=371
		.dc.b 7
		.ascii "USERBLK("
		.dc.b ((549*2)>>8)&255,((549*2)&255),((yUSERBLK_args-jmpbase)>>8)&255,(yUSERBLK_args-jmpbase)&255
	.ENDC
	.IF GBE>=372
		.dc.b 7
		.ascii "UB_CODE("
		.dc.b ((596*2)>>8)&255,((596*2)&255),((yUB_CODE_args-jmpbase)>>8)&255,(yUB_CODE_args-jmpbase)&255
		.dc.b 7
		.ascii "UB_PARM("
		.dc.b ((597*2)>>8)&255,((597*2)&255),((yUB_PARM_args-jmpbase)>>8)&255,(yUB_PARM_args-jmpbase)&255
	.ENDC
	.IF GBE>=373
		.dc.b 8
		.ascii "USERDEF!("
		.dc.b ((671*2)>>8)&255,((671*2)&255),((yUSERDEF_args-jmpbase)>>8)&255,(yUSERDEF_args-jmpbase)&255
		.dc.b 8
		.ascii "USERDEF|("
		.dc.b ((672*2)>>8)&255,((672*2)&255),((yUSERDEF_args-jmpbase)>>8)&255,(yUSERDEF_args-jmpbase)&255
		.dc.b 8
		.ascii "USERDEF&("
		.dc.b ((673*2)>>8)&255,((673*2)&255),((yUSERDEF_args-jmpbase)>>8)&255,(yUSERDEF_args-jmpbase)&255
		.dc.b 8
		.ascii "USERDEF%("
		.dc.b ((674*2)>>8)&255,((674*2)&255),((yUSERDEF_args-jmpbase)>>8)&255,(yUSERDEF_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_v_table: /* 1250c */
		.dc.b 5
		.ascii "VDISYS"
		.dc.b ((214*2)>>8)&255,((214*2)&255),((yVDISYS_args-jmpbase)>>8)&255,(yVDISYS_args-jmpbase)&255
		.dc.b 3
		.ascii "VOID"
		.dc.b ((240*2)>>8)&255,((240*2)&255),((yVOID_args-jmpbase)>>8)&255,(yVOID_args-jmpbase)&255
		.dc.b 4
		.ascii "VSYNC"
		.dc.b ((342*2)>>8)&255,((342*2)&255),((yVSYNC_args-jmpbase)>>8)&255,(yVSYNC_args-jmpbase)&255
		.dc.b 3
		.ascii "VTAB"
		.dc.b ((321*2)>>8)&255,((321*2)&255),((yVTAB_args-jmpbase)>>8)&255,(yVTAB_args-jmpbase)&255
		.dc.b 3
		.ascii "V~H="
		.dc.b ((406*2)>>8)&255,((406*2)&255),((yV_H_args-jmpbase)>>8)&255,(yV_H_args-jmpbase)&255
		.dc.b 8
		.ascii "VSETCOLOR"
		.dc.b ((419*2)>>8)&255,((419*2)&255),((yVSETCOLOR_args-jmpbase)>>8)&255,(yVSETCOLOR_args-jmpbase)&255
	.IFNE GBE
		.dc.b 7
		.ascii "VRC_COPY"
		.dc.b ((470*2)>>8)&255,((470*2)&255),((yVRC_COPY_args-jmpbase)>>8)&255,(yVRC_COPY_args-jmpbase)&255
		.dc.b 5
		.ascii "VCURVE"
		.dc.b ((469*2)>>8)&255,((469*2)&255),((yVCURVE_args-jmpbase)>>8)&255,(yVCURVE_args-jmpbase)&255
		.dc.b 3
		.ascii "VCLS"
		.dc.b ((481*2)>>8)&255,((481*2)&255),((yVCLS_args-jmpbase)>>8)&255,(yVCLS_args-jmpbase)&255
		.dc.b 3
		.ascii "VGET"
		.dc.b ((471*2)>>8)&255,((471*2)&255),((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b 3
		.ascii "VPUT"
		.dc.b ((492*2)>>8)&255,((492*2)&255),((yVPUT_args-jmpbase)>>8)&255,(yVPUT_args-jmpbase)&255
		.dc.b 4
		.ascii "VSGET"
		.dc.b ((479*2)>>8)&255,((479*2)&255),((yVSGET_args-jmpbase)>>8)&255,(yVSGET_args-jmpbase)&255
		.dc.b 4
		.ascii "VSPUT"
		.dc.b ((480*2)>>8)&255,((480*2)&255),((yVSPUT_args-jmpbase)>>8)&255,(yVSPUT_args-jmpbase)&255
		.dc.b 4
		.ascii "VPLOT"
		.dc.b ((472*2)>>8)&255,((472*2)&255),((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b 4
		.ascii "VLINE"
		.dc.b ((475*2)>>8)&255,((475*2)&255),((yVLINE_args-jmpbase)>>8)&255,(yVLINE_args-jmpbase)&255
		.dc.b 3
		.ascii "VBOX"
		.dc.b ((489*2)>>8)&255,((489*2)&255),((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b 6
		.ascii "VPALGET"
		.dc.b ((482*2)>>8)&255,((482*2)&255),((yVPALGET_args-jmpbase)>>8)&255,(yVPALGET_args-jmpbase)&255
		.dc.b 6
		.ascii "VPALSET"
		.dc.b ((483*2)>>8)&255,((483*2)&255),((yVPALSET_args-jmpbase)>>8)&255,(yVPALSET_args-jmpbase)&255
	.IF GBE>=373
		.dc.b 4
		.ascii "VPBAR"
		.dc.b ((652*2)>>8)&255,((652*2)&255),((yVPBAR_args-jmpbase)>>8)&255,(yVPBAR_args-jmpbase)&255
		.dc.b 6
		.ascii "VER2STR"
		.dc.b ((667*2)>>8)&255,((667*2)&255),((yVER2STR_args-jmpbase)>>8)&255,(yVER2STR_args-jmpbase)&255
	.ENDC
	.ENDC
cmd_w_table: /* 1254a */
		.dc.b 4
		.ascii "WHILE"
		.dc.b ((4*2)>>8)&255,((4*2)&255),((yWHILE_args-jmpbase)>>8)&255,(yWHILE_args-jmpbase)&255
		.dc.b 3
		.ascii "WEND"
		.dc.b ((5*2)>>8)&255,((5*2)&255),((yWEND_args-jmpbase)>>8)&255,(yWEND_args-jmpbase)&255
		.dc.b 3
		.ascii "WAVE"
		.dc.b ((355*2)>>8)&255,((355*2)&255),((yWAVE_args-jmpbase)>>8)&255,(yWAVE_args-jmpbase)&255
		.dc.b 7
		.ascii "WINDTAB("
		.dc.b ((412*2)>>8)&255,((412*2)&255),((yWINDTAB_args-jmpbase)>>8)&255,(yWINDTAB_args-jmpbase)&255
		.dc.b 4
		.ascii "WRITE"
		.dc.b ((416*2)>>8)&255,((416*2)&255),((yWRITE_args-jmpbase)>>8)&255,(yWRITE_args-jmpbase)&255
		.dc.b 4
		.ascii "WORD{"
		.dc.b ((418*2)>>8)&255,((418*2)&255),((yWORD_args-jmpbase)>>8)&255,(yWORD_args-jmpbase)&255
	.IFNE GBE
		.dc.b 6
		.ascii "WAITVBL"
		.dc.b ((542*2)>>8)&255,((542*2)&255),((yWAITVBL_args-jmpbase)>>8)&255,(yWAITVBL_args-jmpbase)&255
		.dc.b 7
		.ascii "WARMBOOT"
		.dc.b ((512*2)>>8)&255,((512*2)&255),((yWARMBOOT_args-jmpbase)>>8)&255,(yWARMBOOT_args-jmpbase)&255
	.ENDC
cmd_x_table:
cmd_y_table:
cmd_z_table:

cmd_other_table:
	.IF GBE>=373
		.dc.b 7
		.ascii "_GLOBAL="
		.dc.b ((669*2)>>8)&255,((669*2)&255),((y_GLOBAL_args-jmpbase)>>8)&255,(y_GLOBAL_args-jmpbase)&255
	.ENDC
		.dc.b 5
		.ascii "_DATA="
		.dc.b ((423*2)>>8)&255,((423*2)&255),((y_DATA_args-jmpbase)>>8)&255,(y_DATA_args-jmpbase)&255
	.IFNE GBE
		.dc.b 2
		.ascii "_0="
		.dc.b ((550*2)>>8)&255,((550*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_1="
		.dc.b ((551*2)>>8)&255,((551*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_2="
		.dc.b ((552*2)>>8)&255,((552*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_3="
		.dc.b ((553*2)>>8)&255,((553*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_4="
		.dc.b ((554*2)>>8)&255,((554*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_5="
		.dc.b ((555*2)>>8)&255,((555*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_6="
		.dc.b ((556*2)>>8)&255,((556*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_7="
		.dc.b ((557*2)>>8)&255,((557*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_8="
		.dc.b ((558*2)>>8)&255,((558*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
		.dc.b 2
		.ascii "_9="
		.dc.b ((559*2)>>8)&255,((559*2)&255),((yspecvar_args-jmpbase)>>8)&255,(yspecvar_args-jmpbase)&255
	.ENDC
		.dc.b 0
		.ascii "{"
		.dc.b ((230*2)>>8)&255,((230*2)&255),((yWORD_args-jmpbase)>>8)&255,(yWORD_args-jmpbase)&255
		.dc.b 0
		.ascii "~"
		.dc.b ((241*2)>>8)&255,((241*2)&255),((yBOUNDARY_args-jmpbase)>>8)&255,(yBOUNDARY_args-jmpbase)&255
		.dc.b 9
		.ascii "FORM INPUT"
		.dc.b ((153*2)>>8)&255,((153*2)&255),((yFORM_INPUT_args-jmpbase)>>8)&255,(yFORM_INPUT_args-jmpbase)&255
		.dc.b 9
		.ascii "LINE INPUT"
		.dc.b ((154*2)>>8)&255,((154*2)&255),((yLINE_INPUT_args-jmpbase)>>8)&255,(yLINE_INPUT_args-jmpbase)&255
		.dc.b 6
		.ascii "ELSE IF"
		.dc.b ((16*2)>>8)&255,((16*2)&255),((yELSE_args-jmpbase)>>8)&255,(yELSE_args-jmpbase)&255
		.dc.b 2
		.ascii "END"
		.dc.b ((124*2)>>8)&255,((124*2)&255),((yEND_args-jmpbase)>>8)&255,(yEND_args-jmpbase)&255
		.dc.b 7
		.ascii "DO WHILE"
		.dc.b ((49*2)>>8)&255,((49*2)&255),((yDO_WHILE_args-jmpbase)>>8)&255,(yDO_WHILE_args-jmpbase)&255
		.dc.b 7
		.ascii "DO UNTIL"
		.dc.b ((50*2)>>8)&255,((50*2)&255),((yDO_UNTIL_args-jmpbase)>>8)&255,(yDO_UNTIL_args-jmpbase)&255
		.dc.b 9
		.ascii "LOOP WHILE"
		.dc.b ((51*2)>>8)&255,((51*2)&255),((yLOOP_WHILE_args-jmpbase)>>8)&255,(yLOOP_WHILE_args-jmpbase)&255
		.dc.b 9
		.ascii "LOOP UNTIL"
		.dc.b ((52*2)>>8)&255,((52*2)&255),((yLOOP_UNTIL_args-jmpbase)>>8)&255,(yLOOP_UNTIL_args-jmpbase)&255
		.dc.b 7
		.ascii "ON ERROR"
		.dc.b ((128*2)>>8)&255,((128*2)&255),((yON_ERROR_args-jmpbase)>>8)&255,(yON_ERROR_args-jmpbase)&255
		.dc.b 13
		.ascii "ON ERROR GOSUB"
		.dc.b ((129*2)>>8)&255,((129*2)&255),((yON_ERROR_GOSUB_args-jmpbase)>>8)&255,(yON_ERROR_GOSUB_args-jmpbase)&255
		.dc.b 7
		.ascii "ON BREAK"
		.dc.b ((130*2)>>8)&255,((130*2)&255),((yON_BREAK_args-jmpbase)>>8)&255,(yON_BREAK_args-jmpbase)&255
		.dc.b 12
		.ascii "ON BREAK CONT"
		.dc.b ((131*2)>>8)&255,((131*2)&255),((yON_BREAK_CONT_args-jmpbase)>>8)&255,(yON_BREAK_CONT_args-jmpbase)&255
		.dc.b 13
		.ascii "ON BREAK GOSUB"
		.dc.b ((132*2)>>8)&255,((132*2)&255),((yON_BREAK_GOSUB_args-jmpbase)>>8)&255,(yON_BREAK_GOSUB_args-jmpbase)&255
		.dc.b 12
		.ascii "ON MENU GOSUB"
		.dc.b ((133*2)>>8)&255,((133*2)&255),((yON_MENU_GOSUB_args-jmpbase)>>8)&255,(yON_MENU_GOSUB_args-jmpbase)&255
		.dc.b 20
		.ascii "ON MENU MESSAGE GOSUB"
		.dc.b ((134*2)>>8)&255,((134*2)&255),((yON_MENU_MESSAGE_GOSUB_args-jmpbase)>>8)&255,(yON_MENU_MESSAGE_GOSUB_args-jmpbase)&255
		.dc.b 16
		.ascii "ON MENU KEY GOSUB"
		.dc.b ((135*2)>>8)&255,((135*2)&255),((yON_MENU_KEY_GOSUB_args-jmpbase)>>8)&255,(yON_MENU_KEY_GOSUB_args-jmpbase)&255
		.dc.b 13
		.ascii "ON MENU BUTTON"
		.dc.b ((136*2)>>8)&255,((136*2)&255),((yON_MENU_BUTTON_args-jmpbase)>>8)&255,(yON_MENU_BUTTON_args-jmpbase)&255
		.dc.b 6
		.ascii "ON MENU"
		.dc.b ((137*2)>>8)&255,((137*2)&255),((yON_MENU_args-jmpbase)>>8)&255,(yON_MENU_args-jmpbase)&255
		.dc.b 11
		.ascii "ON MENU IBOX"
		.dc.b ((238*2)>>8)&255,((238*2)&255),((yON_MENU_IBOX_args-jmpbase)>>8)&255,(yON_MENU_IBOX_args-jmpbase)&255
		.dc.b 11
		.ascii "ON MENU OBOX"
		.dc.b ((239*2)>>8)&255,((239*2)&255),((yON_MENU_OBOX_args-jmpbase)>>8)&255,(yON_MENU_OBOX_args-jmpbase)&255
		.dc.b 7
		.ascii "MENU OFF"
		.dc.b ((140*2)>>8)&255,((140*2)&255),((yMENU_OFF_args-jmpbase)>>8)&255,(yMENU_OFF_args-jmpbase)&255
		.dc.b 8
		.ascii "MENU KILL"
		.dc.b ((141*2)>>8)&255,((141*2)&255),((yMENU_KILL_args-jmpbase)>>8)&255,(yMENU_KILL_args-jmpbase)&255
		.dc.b 3
		.ascii "MENU"
		.dc.b ((142*2)>>8)&255,((142*2)&255),((yMENU_args-jmpbase)>>8)&255,(yMENU_args-jmpbase)&255
		.dc.b 4
		.ascii "OPENW"
		.dc.b ((266*2)>>8)&255,((266*2)&255),((yOPENW_args-jmpbase)>>8)&255,(yOPENW_args-jmpbase)&255
		.dc.b 6
		.ascii "OPENW #"
		.dc.b ((267*2)>>8)&255,((267*2)&255),((yOPENW_args-jmpbase)>>8)&255,(yOPENW_args-jmpbase)&255
		.dc.b 5
		.ascii "CLOSEW"
		.dc.b ((269*2)>>8)&255,((269*2)&255),((yCLOSEW_args-jmpbase)>>8)&255,(yCLOSEW_args-jmpbase)&255
		.dc.b 7
		.ascii "CLOSEW #"
		.dc.b ((270*2)>>8)&255,((270*2)&255),((yCLOSEW_args-jmpbase)>>8)&255,(yCLOSEW_args-jmpbase)&255
		.dc.b 5
		.ascii "CLEARW"
		.dc.b ((272*2)>>8)&255,((272*2)&255),((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b 7
		.ascii "CLEARW #"
		.dc.b ((273*2)>>8)&255,((273*2)&255),((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b 10
		.ascii "> PROCEDURE"
		.dc.b ((54*2)>>8)&255,((54*2)&255),((yPROCEDURE_flapped_args-jmpbase)>>8)&255,(yPROCEDURE_flapped_args-jmpbase)&255
		.dc.b 9
		.ascii "> FUNCTION"
		.dc.b ((449*2)>>8)&255,((449*2)&255),((yFUNCTION_flapped_args-jmpbase)>>8)&255,(yFUNCTION_flapped_args-jmpbase)&255
		.dc.b 8
		.ascii "RELSEEK #"
		.dc.b ((209*2)>>8)&255,((209*2)&255),((yRELSEEK_args-jmpbase)>>8)&255,(yRELSEEK_args-jmpbase)&255
		.dc.b 5
		.ascii "SEEK #"
		.dc.b ((208*2)>>8)&255,((208*2)&255),((ySEEK_args-jmpbase)>>8)&255,(ySEEK_args-jmpbase)&255
		.dc.b 5
		.ascii "TOPW #"
		.dc.b ((274*2)>>8)&255,((274*2)&255),((yTOPW_args-jmpbase)>>8)&255,(yTOPW_args-jmpbase)&255
		.dc.b 7
		.ascii "TITLEW #"
		.dc.b ((275*2)>>8)&255,((275*2)&255),((yTITLEW_args-jmpbase)>>8)&255,(yTITLEW_args-jmpbase)&255
		.dc.b 6
		.ascii "TOUCH #"
		.dc.b ((326*2)>>8)&255,((326*2)&255),((yTOUCH_args-jmpbase)>>8)&255,(yTOUCH_args-jmpbase)&255
	.IFNE GBE
		.dc.b 8
		.ascii "ENDSEEK #"
		.dc.b ((520*2)>>8)&255,((520*2)&255),((yENDSEEK_args-jmpbase)>>8)&255,(yENDSEEK_args-jmpbase)&255
	.ENDC
		.dc.b 6
		.ascii "DEFAULT"
		.dc.b ((15*2)>>8)&255,((15*2)&255),((yDEFAULT_args-jmpbase)>>8)&255,(yDEFAULT_args-jmpbase)&255
		.dc.b 5
		.ascii "SELECT"
		.dc.b ((44*2)>>8)&255,((44*2)&255),((ySELECT_args-jmpbase)>>8)&255,(ySELECT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT ADD"
		.dc.b ((424*2)>>8)&255,((424*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT SUB"
		.dc.b ((426*2)>>8)&255,((426*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT CPY"
		.dc.b ((428*2)>>8)&255,((428*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 7
		.ascii "MAT XCPY"
		.dc.b ((429*2)>>8)&255,((429*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT DET"
		.dc.b ((430*2)>>8)&255,((430*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT NEG"
		.dc.b ((431*2)>>8)&255,((431*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT ABS"
		.dc.b ((432*2)>>8)&255,((432*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 7
		.ascii "MAT NORM"
		.dc.b ((433*2)>>8)&255,((433*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 7
		.ascii "MAT READ"
		.dc.b ((434*2)>>8)&255,((434*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 8
		.ascii "MAT PRINT"
		.dc.b ((435*2)>>8)&255,((435*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 8
		.ascii "MAT TRANS"
		.dc.b ((436*2)>>8)&255,((436*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT CLR"
		.dc.b ((437*2)>>8)&255,((437*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT SET"
		.dc.b ((438*2)>>8)&255,((438*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT ONE"
		.dc.b ((439*2)>>8)&255,((439*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 7
		.ascii "MAT BASE"
		.dc.b ((440*2)>>8)&255,((440*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 7
		.ascii "MAT QDET"
		.dc.b ((441*2)>>8)&255,((441*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 8
		.ascii "MAT INPUT"
		.dc.b ((442*2)>>8)&255,((442*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 7
		.ascii "MAT RANG"
		.dc.b ((443*2)>>8)&255,((443*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT MUL"
		.dc.b ((444*2)>>8)&255,((444*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b 6
		.ascii "MAT INV"
		.dc.b ((448*2)>>8)&255,((448*2)&255),((yMAT_args-jmpbase)>>8)&255,(yMAT_args-jmpbase)&255
		.dc.b -1
/* gfa: 21edb */
/* 370: 51c8a */
/* 371: 539fb */
/* 372: 54030 */
/* 373: 5478b */

func_misc_table:
		.dc.b 0,'#',0,TOK_CHANNEL
		.dc.b 0,0x27,0,TOK_PRINTSPACE
		.dc.b 0,0x0d,0,TOK_LINE_COMMENT
		.dc.b 0,'(',0,TOK_LPAREN
		.dc.b 0,')',0,TOK_RPAREN
		.dc.b 0,'*',0,TOK_MUL
		.dc.b 0,'+',0,TOK_ADD
		.dc.b 0,'-',0,TOK_SUB
		.dc.b 0,'-',0,TOK_UMINUS
		.dc.b 0,',',0,TOK_COMMA
		.dc.b 0,';',0,TOK_SEMI
		.dc.b 1,'=','=',0,TOK_APPROX_EQ
		.dc.b 1,'>','<',0,TOK_NE
		.dc.b 1,'<','>',0,TOK_NE
		.dc.b 1,'<','=',0,TOK_LE
		.dc.b 1,'=','<',0,TOK_LE2
		.dc.b 1,'=','>',0,TOK_GE2
		.dc.b 1,'>','=',0,TOK_GE
		.dc.b 0,'<',0,TOK_LT
		.dc.b 0,'=',0,TOK_EQ
		.dc.b 0,'>',0,TOK_GT
		.dc.b 0,':',0,TOK_LABEL
		.dc.b 0,'@',0,TOK_GOSUB
		.dc.b 0,'(',0,TOK_RES_46
		.dc.b 0,'(',0,TOK_LPAREN2
		.dc.b 0,',',0,TOK_COMMA2
		.dc.b 0,'+',0,TOK_PLUS_STR
		.dc.b 0,',',0,TOK_RES_64
		.dc.b 0,'<',0,TOK_LT_STR
		.dc.b 1,'<','=',0,TOK_LE_STR
		.dc.b 1,'<','>',0,TOK_NE_STR
		.dc.b 0,'=',0,TOK_EQ_STR
		.dc.b 0,'=',0,TOK_ASSIGN
		.dc.b 1,'=','<',0,TOK_LE2_STR
		.dc.b 1,'=','>',0,TOK_GE2_STR
		.dc.b 0,'>',0,TOK_GT_STR
		.dc.b 1,'>','=',0,TOK_GE_STR
		.dc.b 0,'*',TOK_SUBFUNC_208,189
		.dc.b 0,'0',0,TOK_CONST_ZERO
		.dc.b 0,'1',0,TOK_CONST_ONE
		.dc.b 0,'2',0,TOK_CONST_TWO
		.dc.b 0,'3',0,TOK_CONST_THREE
		.dc.b 1,')','=',0,TOK_ARRAY_ASS
		.dc.b 1,'}','=',0,TOK_REFEND
		.dc.b 1,']','=',0,TOK_RES_68
		.dc.b 0,')',0,TOK_RPAREN2

/* 370: 51d51 */
/* 371: 53ac2 */
/* 372: 540f7 */
/* 373: 54852 */
func_table:
func_a_table: /* 1297e */
		.dc.b 2,'A','N','D',0,TOK_AND
		.dc.b 3,'A','N','D','(',TOK_SUBFUNC_208,5
		.dc.b 3,'A','B','S','(',0,TOK_ABS
		.dc.b 3,'A','T','N','(',0,TOK_ATAN
		.dc.b 3,'A','S','C','(',TOK_SUBFUNC_208,67
		.dc.b 2,'A','T','(',0,TOK_AT
		.dc.b 4,'A','S','I','N','(',0,TOK_ASIN
		.dc.b 4,'A','C','O','S','(',0,TOK_ACOS
		.dc.b 1,'A','S',0,TOK_AS
		.dc.b 6,'A','R','R','P','T','R','(',TOK_SUBFUNC_208,188
		.dc.b 3,'A','D','D','(',TOK_SUBFUNC_208,2
		.dc.b 6,'A','D','D','R','I','N','(',TOK_SUBFUNC_208,18
		.dc.b 5,'A','D','D','R','I','N',TOK_SUBFUNC_208,19
		.dc.b 7,'A','D','D','R','O','U','T','(',TOK_SUBFUNC_208,20
		.dc.b 6,'A','D','D','R','O','U','T',TOK_SUBFUNC_208,21
		.dc.b 10,'A','P','P','L','_','I','N','I','T','(',')',TOK_SUBFUNC_208,135
		.dc.b 9,'A','P','P','L','_','R','E','A','D','(',TOK_SUBFUNC_208,136
		.dc.b 10,'A','P','P','L','_','W','R','I','T','E','(',TOK_SUBFUNC_208,137
		.dc.b 9,'A','P','P','L','_','F','I','N','D','(',TOK_SUBFUNC_208,138
		.dc.b 10,'A','P','P','L','_','T','P','L','A','Y','(',TOK_SUBFUNC_208,139
		.dc.b 12,'A','P','P','L','_','T','R','E','C','O','R','D','(',TOK_SUBFUNC_208,140
		.dc.b 10,'A','P','P','L','_','E','X','I','T','(',')',TOK_SUBFUNC_208,141
	.IFNE GBE
	.IF GBE>=373
		.dc.b 6,'A','R','R','A','Y','!','(',TOK_SUBFUNC_211,246
		.dc.b 6,'A','R','R','A','Y','|','(',TOK_SUBFUNC_211,247
		.dc.b 6,'A','R','R','A','Y','&','(',TOK_SUBFUNC_211,248
		.dc.b 6,'A','R','R','A','Y','%','(',TOK_SUBFUNC_211,249
		.dc.b 5,'A','R','R','A','Y','(',TOK_SUBFUNC_211,250
	.ENDC
		.dc.b 9,'A','R','R','A','Y','S','I','Z','E','(',TOK_SUBFUNC_210,32
		.dc.b 5,'A','L','L','O','C','(',TOK_SUBFUNC_209,66
		.dc.b 9,'A','P','P','L','.','F','I','N','D','(',TOK_SUBFUNC_210,120
		.dc.b 12,'A','P','P','L','_','C','O','N','T','R','O','L','(',TOK_SUBFUNC_209,23
		.dc.b 11,'A','P','P','L','_','S','E','A','R','C','H','(',TOK_SUBFUNC_209,167
		.dc.b 12,'A','P','P','L','_','G','E','T','I','N','F','O','(',TOK_SUBFUNC_209,22
		.dc.b 11,'A','P','P','L','_','Y','I','E','L','D','(',')',TOK_SUBFUNC_209,86
		.dc.b 3,'A','C','C','?',TOK_SUBFUNC_210,249
		.dc.b 4,'A','U','T','O','?',TOK_SUBFUNC_210,250
	.IFNE GBE_OLDCOMPAT
		.dc.b 5,'A','L','I','G','N','(',TOK_SUBFUNC_210,9
	.ENDC
		.dc.b 2,'A','~','I',TOK_SUBFUNC_208,244
		.dc.b 5,'A','L','E','R','T','(',TOK_SUBFUNC_209,250
		.dc.b 7,'A','P','_','S','E','N','D','(',TOK_SUBFUNC_209,252
		.dc.b 8,'A','V','_','I','N','I','T','(',')',TOK_SUBFUNC_210,93
		.dc.b 12,'A','V','_','P','R','O','T','O','K','O','L','L','(',TOK_SUBFUNC_210,94
		.dc.b 10,'A','V','_','S','E','N','D','K','E','Y','(',TOK_SUBFUNC_210,97
	.IF GBE>=373
		.dc.b 11,'A','V','_','O','P','E','N','W','I','N','D','(',TOK_SUBFUNC_210,100
	.ENDC
		.dc.b 12,'A','V','_','S','T','A','R','T','P','R','O','G','(',TOK_SUBFUNC_210,101
		.dc.b 14,'A','V','_','A','C','C','W','I','N','D','O','P','E','N','(',TOK_SUBFUNC_210,102
		.dc.b 16,'A','V','_','A','C','C','W','I','N','D','C','L','O','S','E','D','(',TOK_SUBFUNC_210,103
		.dc.b 14,'A','V','_','P','A','T','H','_','U','P','D','A','T','E','(',TOK_SUBFUNC_210,105
		.dc.b 12,'A','V','_','W','H','A','T','_','I','Z','I','T','(',TOK_SUBFUNC_210,106
		.dc.b 8,'A','V','_','E','X','I','T','(',')',TOK_SUBFUNC_210,108
		.dc.b 10,'A','V','_','S','T','A','R','T','E','D','(',TOK_SUBFUNC_210,109
		.dc.b 8,'A','V','_','X','W','I','N','D','(',TOK_SUBFUNC_210,110
	.IF GBE>=373
		.dc.b 11,'A','V','_','F','I','L','E','I','N','F','O','(',TOK_SUBFUNC_210,112
		.dc.b 11,'A','V','_','C','O','P','Y','F','I','L','E','(',TOK_SUBFUNC_210,113
		.dc.b 10,'A','V','_','D','E','L','F','I','L','E','(',TOK_SUBFUNC_210,114
	.ENDC
	.ENDC
func_b_table: /* 12a82 */
		.dc.b 4,'B','I','N','$','(',0,TOK_BIN1
		.dc.b 7,'B','A','S','E','P','A','G','E',TOK_SUBFUNC_208,31
		.dc.b 4,'B','I','O','S','(',TOK_SUBFUNC_208,85
		.dc.b 4,'B','R','E','A','K',0,TOK_BREAK
		.dc.b 5,'B','U','T','T','O','N',0,TOK_BUTTON
		.dc.b 3,'B','A','S','E',0,TOK_BASE
		.dc.b 4,'B','Y','T','E','(',TOK_SUBFUNC_208,16
		.dc.b 4,'B','T','S','T','(',TOK_SUBFUNC_208,44
		.dc.b 4,'B','S','E','T','(',TOK_SUBFUNC_208,45
		.dc.b 4,'B','C','L','R','(',TOK_SUBFUNC_208,46
		.dc.b 4,'B','C','H','G','(',TOK_SUBFUNC_208,47
		.dc.b 4,'B','Y','T','E','{',TOK_SUBFUNC_208,116
	.IFNE GBE
		.dc.b 7,'B','M','P','S','I','Z','E','(',TOK_SUBFUNC_210,244
	.IF GBE<=371
		.dc.b 8,'B','F','O','B','S','P','E','C','(',TOK_SUBFUNC_210,206
		.dc.b 6,'B','I','T','B','L','K','(',TOK_SUBFUNC_210,207
	.ENDC
		.dc.b 5,'B','F','I','N','D','(',TOK_SUBFUNC_209,96
		.dc.b 6,'B','F','I','N','D','&','(',TOK_SUBFUNC_210,174
		.dc.b 6,'B','F','I','N','D','%','(',TOK_SUBFUNC_210,175
		.dc.b 6,'B','I','N','S','T','R','(',TOK_SUBFUNC_209,95
		.dc.b 7,'B','C','O','N','O','U','T','(',TOK_SUBFUNC_209,152
		.dc.b 8,'B','C','O','N','S','T','A','T','(',TOK_SUBFUNC_209,154
		.dc.b 7,'B','C','O','S','T','A','T','(',TOK_SUBFUNC_209,153
		.dc.b 6,'B','C','O','N','I','N','(',TOK_SUBFUNC_209,151
		.dc.b 8,'B','U','F','F','O','P','E','R','(',TOK_SUBFUNC_209,35
		.dc.b 7,'B','U','F','F','P','T','R','(',TOK_SUBFUNC_209,40
		.dc.b 6,'B','S','W','A','P','&','(',TOK_SUBFUNC_209,99
		.dc.b 5,'B','S','W','A','P','(',TOK_SUBFUNC_209,100
		.dc.b 6,'B','S','W','A','P','3','(',TOK_SUBFUNC_210,10
		.dc.b 8,'B','L','I','T','M','O','D','E','(',TOK_SUBFUNC_209,76
		.dc.b 7,'B','C','O','N','M','A','P','(',TOK_SUBFUNC_209,206
		.dc.b 6,'B','C','O','U','N','T','(',TOK_SUBFUNC_209,97
		.dc.b 7,'B','C','O','U','N','T','&','(',TOK_SUBFUNC_210,23
		.dc.b 7,'B','C','O','U','N','T','%','(',TOK_SUBFUNC_210,24
		.dc.b 9,'B','I','O','S','K','E','Y','S','(',')',TOK_SUBFUNC_209,222
		.dc.b 5,'B','O','U','N','D','(',TOK_SUBFUNC_210,131
		.dc.b 8,'B','C','O','M','P','A','R','E','(',TOK_SUBFUNC_210,132
		.dc.b 9,'B','C','O','M','P','A','R','E','&','(',TOK_SUBFUNC_210,180
		.dc.b 9,'B','C','O','M','P','A','R','E','%','(',TOK_SUBFUNC_210,181
		.dc.b 9,'B','F','_','O','B','S','P','E','C','(',TOK_SUBFUNC_211,110
	.IF GBE>=372
		.dc.b 12,'B','F','_','C','H','A','R','A','C','T','E','R','(',TOK_SUBFUNC_211,111
		.dc.b 12,'B','F','_','F','R','A','M','E','S','I','Z','E','(',TOK_SUBFUNC_211,112
		.dc.b 11,'B','F','_','F','R','A','M','E','C','O','L','(',TOK_SUBFUNC_211,113
		.dc.b 10,'B','F','_','T','E','X','T','C','O','L','(',TOK_SUBFUNC_211,114
		.dc.b 11,'B','F','_','T','E','X','T','M','O','D','E','(',TOK_SUBFUNC_211,115
		.dc.b 14,'B','F','_','F','I','L','L','P','A','T','T','E','R','N','(',TOK_SUBFUNC_211,116
		.dc.b 14,'B','F','_','I','N','T','E','R','I','O','R','C','O','L','(',TOK_SUBFUNC_211,117
		.dc.b 8,'B','I','_','P','D','A','T','A','(',TOK_SUBFUNC_211,118
		.dc.b 5,'B','I','_','W','B','(',TOK_SUBFUNC_211,119
		.dc.b 5,'B','I','_','H','L','(',TOK_SUBFUNC_211,120
		.dc.b 4,'B','I','_','X','(',TOK_SUBFUNC_211,121
		.dc.b 4,'B','I','_','Y','(',TOK_SUBFUNC_211,122
		.dc.b 8,'B','I','_','C','O','L','O','R','(',TOK_SUBFUNC_211,123
	.ENDC
	.ENDC
func_c_table: /* 12afd */
		.dc.b 3,'C','O','S','(',0,TOK_COS
		.dc.b 4,'C','O','S','Q','(',0,TOK_COSQ
		.dc.b 4,'C','H','R','$','(',0,TOK_CHR
		.dc.b 3,'C','V','I','(',TOK_SUBFUNC_208,75
		.dc.b 3,'C','V','L','(',TOK_SUBFUNC_208,76
		.dc.b 3,'C','V','S','(',0,TOK_CVS
		.dc.b 3,'C','V','F','(',0,TOK_CVF
		.dc.b 3,'C','V','D','(',0,TOK_CVD
	.IFNE GBE
		.dc.b 7,'C','O','N','T','E','R','M','(',TOK_SUBFUNC_210,16
	.ENDC
		.dc.b 6,'C','O','N','T','R','L','(',TOK_SUBFUNC_208,22
		.dc.b 5,'C','O','N','T','R','L',TOK_SUBFUNC_208,23
		.dc.b 3,'C','O','N','T',0,TOK_CONT
		.dc.b 1,'C',':',TOK_SUBFUNC_208,117
		.dc.b 5,'C','R','S','L','I','N',TOK_SUBFUNC_208,56
		.dc.b 5,'C','R','S','C','O','L',TOK_SUBFUNC_208,57
		.dc.b 4,'C','A','R','D','(',TOK_SUBFUNC_208,15
		.dc.b 4,'C','A','R','D','{',TOK_SUBFUNC_208,115
		.dc.b 4,'C','H','A','R','{',0,TOK_CHAR_REF
	.IFNE GBE
	.IFNE GBE_OLDCOMPAT
		.dc.b 5,'C','H','A','R','$','(',0,TOK_CHAR
	.ENDC
	.ENDC
		.dc.b 4,'C','I','N','T','(',TOK_SUBFUNC_208,103
		.dc.b 6,'C','F','L','O','A','T','(',0,TOK_CFLOAT
		.dc.b 6,'C','O','M','B','I','N','(',0,TOK_COMBIN
	.IFNE GBE
	.IF GBE>=373
		.dc.b 6,'C','C','O','N','R','S','(',TOK_SUBFUNC_212,24
		.dc.b 7,'C','C','O','N','I','S','(',')',TOK_SUBFUNC_212,19
		.dc.b 7,'C','C','O','N','O','S','(',')',TOK_SUBFUNC_212,20
		.dc.b 7,'C','A','U','X','I','S','(',')',TOK_SUBFUNC_212,21
		.dc.b 7,'C','A','U','X','O','S','(',')',TOK_SUBFUNC_212,22
		.dc.b 7,'C','P','R','N','O','S','(',')',TOK_SUBFUNC_212,23
		.dc.b 6,'C','R','A','W','I','O','(',TOK_SUBFUNC_212,16
		.dc.b 8,'C','R','A','W','C','I','N','(',')',TOK_SUBFUNC_212,17
		.dc.b 7,'C','N','E','C','I','N','(',')',TOK_SUBFUNC_212,18
		.dc.b 7,'C','C','O','N','I','N','(',')',TOK_SUBFUNC_212,11
		.dc.b 7,'C','C','O','N','O','U','T','(',TOK_SUBFUNC_212,12
		.dc.b 7,'C','A','U','X','I','N','(',')',TOK_SUBFUNC_212,13
		.dc.b 7,'C','A','U','X','O','U','T','(',TOK_SUBFUNC_212,14
		.dc.b 7,'C','P','R','N','O','U','T','(',TOK_SUBFUNC_212,15
		.dc.b 5,'C','R','E','A','D','(',TOK_SUBFUNC_211,187
		.dc.b 6,'C','W','R','I','T','E','(',TOK_SUBFUNC_211,186
	.ENDC
		.dc.b 9,'C','O','N','S','T','R','A','I','N','(',TOK_SUBFUNC_210,138
		.dc.b 6,'C','_','V','D','I','(','#',TOK_SUBFUNC_210,25
		.dc.b 8,'C','_','X','B','I','O','S','(','#',TOK_SUBFUNC_210,26
		.dc.b 6,'C','A','L','L','O','C','(',TOK_SUBFUNC_210,31
	.IF GBE<=371
		.dc.b 8,'C','I','C','O','N','B','L','K','(',TOK_SUBFUNC_210,210
	.ENDC
		.dc.b 6,'C','R','Y','P','T','$','(',0,TOK_CRYPT
		.dc.b 6,'C','U','R','D','I','R','$',0,TOK_CURDIR
		.dc.b 7,'C','M','D','L','I','N','E','$',0,TOK_CMDLINE
		.dc.b 8,'C','H','E','C','K','S','U','M','(',TOK_SUBFUNC_210,34
		.dc.b 7,'C','P','U','0','2','0','(',')',TOK_SUBFUNC_208,245
		.dc.b 6,'C','C','O','N','W','S','(',TOK_SUBFUNC_209,101
		.dc.b 5,'C','R','C','1','6','(',TOK_SUBFUNC_209,246
		.dc.b 5,'C','R','C','3','2','(',TOK_SUBFUNC_209,247
		.dc.b 8,'C','U','R','S','C','O','N','F','(',TOK_SUBFUNC_209,205
		.dc.b 9,'C','A','C','H','E','C','T','R','L','(',TOK_SUBFUNC_209,77
		.dc.b 10,'C','T','6','0','_','C','A','C','H','E','(',TOK_SUBFUNC_209,78
		.dc.b 17,'C','T','6','0','_','F','L','U','S','H','_','C','A','C','H','E','(',')',TOK_SUBFUNC_209,79
		.dc.b 26,'C','T','6','0','_','R','E','A','D','_','C','O','R','E','_','T','E','M','P','E','R','A','T','U','R','E','(',TOK_SUBFUNC_209,80
		.dc.b 17,'C','T','6','0','_','R','W','_','P','A','R','A','M','E','T','E','R','(',TOK_SUBFUNC_209,81
		.dc.b 12,'C','T','6','0','_','V','M','A','L','L','O','C','(',TOK_SUBFUNC_209,82
		.dc.b 8,'C','O','M','P','I','L','E','D','?',TOK_SUBFUNC_210,225
		.dc.b 6,'C','P','U','0','2','0','?',TOK_SUBFUNC_210,252
	.IF GBE>=372
		.dc.b 11,'C','I','_','M','A','I','N','L','I','S','T','(',TOK_SUBFUNC_211,159
		.dc.b 13,'C','I','_','N','U','M','_','P','L','A','N','E','S','(',TOK_SUBFUNC_211,160
		.dc.b 11,'C','I','_','C','O','L','_','D','A','T','A','(',TOK_SUBFUNC_211,161
		.dc.b 11,'C','I','_','C','O','L','_','M','A','S','K','(',TOK_SUBFUNC_211,162
		.dc.b 11,'C','I','_','S','E','L','_','D','A','T','A','(',TOK_SUBFUNC_211,163
		.dc.b 11,'C','I','_','S','E','L','_','M','A','S','K','(',TOK_SUBFUNC_211,164
		.dc.b 11,'C','I','_','N','E','X','T','_','R','E','S','(',TOK_SUBFUNC_211,165
	.ENDC
	.ENDC
func_d_table: /* 12bc4 */
		.dc.b 2,'D','I','V',0,TOK_DIV
		.dc.b 3,'D','I','V','(',TOK_SUBFUNC_208,1
		.dc.b 5,'D','O','W','N','T','O',0,TOK_DOWNTO
		.dc.b 5,'D','P','E','E','K','(',TOK_SUBFUNC_208,64
		.dc.b 4,'D','I','M','?','(',TOK_SUBFUNC_208,81
	.IFNE GBE
		.dc.b 5,'D','A','T','E','$','(',0,TOK_DATE1
	.ENDC
		.dc.b 4,'D','A','T','E','$',0,TOK_DATE
		.dc.b 4,'D','I','R','$','(',0,TOK_DIR
		.dc.b 5,'D','F','R','E','E','(',TOK_SUBFUNC_208,83
		.dc.b 6,'D','O','U','B','L','E','{',0,TOK_DOUBLE_REF
		.dc.b 3,'D','E','G','(',0,TOK_DEG
		.dc.b 4,'D','R','A','W','(',0,TOK_DRAW
	.IFNE GBE
	.IF GBE>=373
		.dc.b 7,'D','C','H','R','O','O','T','(',TOK_SUBFUNC_212,46
		.dc.b 5,'D','C','N','T','L','(',TOK_SUBFUNC_212,10
		.dc.b 5,'D','B','M','S','G','(',TOK_SUBFUNC_212,6
	.ENDC
		.dc.b 5,'D','A','Y','N','O','(',TOK_SUBFUNC_210,254
		.dc.b 4,'D','A','T','E','(',TOK_SUBFUNC_210,214
		.dc.b 3,'D','A','Y','(',TOK_SUBFUNC_210,217
		.dc.b 9,'D','E','L','C','O','O','K','I','E','(',TOK_SUBFUNC_210,204
		.dc.b 10,'D','H','S','T','_','I','N','I','T','(',')',TOK_SUBFUNC_210,187
		.dc.b 8,'D','H','S','T','_','A','D','D','(',TOK_SUBFUNC_210,188
		.dc.b 5,'D','L','O','C','K','(',TOK_SUBFUNC_210,148
		.dc.b 8,'D','I','G','I','T','A','L','$','(',0,TOK_DIGITAL
		.dc.b 7,'D','C','R','E','A','T','E','(',TOK_SUBFUNC_209,103
		.dc.b 7,'D','D','E','L','E','T','E','(',TOK_SUBFUNC_209,104
		.dc.b 8,'D','S','E','T','P','A','T','H','(',TOK_SUBFUNC_209,108
		.dc.b 7,'D','O','S','O','U','N','D','(',TOK_SUBFUNC_209,8
		.dc.b 10,'D','E','V','C','O','N','N','E','C','T','(',TOK_SUBFUNC_209,38
		.dc.b 11,'D','S','P','T','R','I','S','T','A','T','E','(',TOK_SUBFUNC_209,36
		.dc.b 8,'D','G','E','T','D','R','V','(',')',TOK_SUBFUNC_209,11
		.dc.b 7,'D','S','E','T','D','R','V','(',TOK_SUBFUNC_209,102
		.dc.b 9,'D','P','A','T','H','C','O','N','F','(',TOK_SUBFUNC_209,114
		.dc.b 7,'D','R','V','M','A','P','(',')',TOK_SUBFUNC_209,112
		.dc.b 7,'D','M','A','R','E','A','D','(',TOK_SUBFUNC_209,218
		.dc.b 8,'D','M','A','W','R','I','T','E','(',TOK_SUBFUNC_209,219
		.dc.b 6,'D','F','R','E','E','%','(',TOK_SUBFUNC_209,116
		.dc.b 8,'D','G','E','T','P','A','T','H','(',TOK_SUBFUNC_209,107
		.dc.b 2,'D','T','A',TOK_SUBFUNC_209,56
		.dc.b 11,'D','W','R','I','T','E','L','A','B','E','L','(',TOK_SUBFUNC_210,163
		.dc.b 10,'D','R','E','A','D','L','A','B','E','L','(',TOK_SUBFUNC_210,164
		.dc.b 7,'D','G','E','T','C','W','D','(',TOK_SUBFUNC_210,165
		.dc.b 9,'D','C','L','O','S','E','D','I','R','(',TOK_SUBFUNC_210,166
		.dc.b 10,'D','R','E','W','I','N','D','D','I','R','(',TOK_SUBFUNC_210,167
		.dc.b 8,'D','O','P','E','N','D','I','R','(',TOK_SUBFUNC_210,168
		.dc.b 8,'D','R','E','A','D','D','I','R','(',TOK_SUBFUNC_210,169
		.dc.b 9,'D','X','R','E','A','D','D','I','R','(',TOK_SUBFUNC_210,170
		.dc.b 6,'D','M','A','S','N','D','?',TOK_SUBFUNC_210,253
	.IF GBE>=372
		.dc.b 11,'D','S','P','_','D','O','B','L','O','C','K','(',TOK_SUBFUNC_211,12
		.dc.b 16,'D','S','P','_','B','L','K','H','A','N','D','S','H','A','K','E','(',TOK_SUBFUNC_211,13
		.dc.b 15,'D','S','P','_','B','L','K','U','N','P','A','C','K','E','D','(',TOK_SUBFUNC_211,14
		.dc.b 12,'D','S','P','_','I','N','S','T','R','E','A','M','(',TOK_SUBFUNC_211,15
		.dc.b 13,'D','S','P','_','O','U','T','S','T','R','E','A','M','(',TOK_SUBFUNC_211,16
		.dc.b 12,'D','S','P','_','I','O','S','T','R','E','A','M','(',TOK_SUBFUNC_211,17
		.dc.b 20,'D','S','P','_','R','E','M','O','V','E','I','N','T','E','R','R','U','P','T','S','(',TOK_SUBFUNC_211,18
		.dc.b 16,'D','S','P','_','G','E','T','W','O','R','D','S','I','Z','E','(',')',TOK_SUBFUNC_211,19
		.dc.b 9,'D','S','P','_','L','O','C','K','(',')',TOK_SUBFUNC_211,20
		.dc.b 11,'D','S','P','_','U','N','L','O','C','K','(',')',TOK_SUBFUNC_211,21
		.dc.b 13,'D','S','P','_','A','V','A','I','L','A','B','L','E','(',TOK_SUBFUNC_211,22
		.dc.b 11,'D','S','P','_','R','E','S','E','R','V','E','(',TOK_SUBFUNC_211,23
		.dc.b 12,'D','S','P','_','L','O','A','D','P','R','O','G','(',TOK_SUBFUNC_211,24
		.dc.b 12,'D','S','P','_','E','X','E','C','P','R','O','G','(',TOK_SUBFUNC_211,25
		.dc.b 12,'D','S','P','_','E','X','E','C','B','O','O','T','(',TOK_SUBFUNC_211,26
		.dc.b 15,'D','S','P','_','L','O','D','T','O','B','I','N','A','R','Y','(',TOK_SUBFUNC_211,27
		.dc.b 13,'D','S','P','_','T','R','I','G','G','E','R','H','C','(',TOK_SUBFUNC_211,28
		.dc.b 25,'D','S','P','_','R','E','Q','U','E','S','T','U','N','I','Q','U','E','A','B','I','L','I','T','Y','(',')',TOK_SUBFUNC_211,29
		.dc.b 19,'D','S','P','_','G','E','T','P','R','O','G','A','B','I','L','I','T','Y','(',')',TOK_SUBFUNC_211,30
		.dc.b 21,'D','S','P','_','F','L','U','S','H','S','U','B','R','O','U','T','I','N','E','S','(',')',TOK_SUBFUNC_211,31
		.dc.b 18,'D','S','P','_','L','O','A','D','S','U','B','R','O','U','T','I','N','E','(',TOK_SUBFUNC_211,32
		.dc.b 18,'D','S','P','_','I','N','Q','S','U','B','R','A','B','I','L','I','T','Y','(',TOK_SUBFUNC_211,33
		.dc.b 17,'D','S','P','_','R','U','N','S','U','B','R','O','U','T','I','N','E','(',TOK_SUBFUNC_211,34
		.dc.b 7,'D','S','P','_','H','F','0','(',TOK_SUBFUNC_211,35
		.dc.b 7,'D','S','P','_','H','F','1','(',TOK_SUBFUNC_211,36
		.dc.b 8,'D','S','P','_','H','F','2','(',')',TOK_SUBFUNC_211,37
		.dc.b 8,'D','S','P','_','H','F','3','(',')',TOK_SUBFUNC_211,38
		.dc.b 12,'D','S','P','_','B','L','K','W','O','R','D','S','(',TOK_SUBFUNC_211,39
		.dc.b 12,'D','S','P','_','B','L','K','B','Y','T','E','S','(',TOK_SUBFUNC_211,40
		.dc.b 10,'D','S','P','_','H','S','T','A','T','(',')',TOK_SUBFUNC_211,41
		.dc.b 14,'D','S','P','_','S','E','T','V','E','C','T','O','R','S','(',TOK_SUBFUNC_211,42
		.dc.b 14,'D','S','P','_','M','U','L','T','B','L','O','C','K','S','(',TOK_SUBFUNC_211,43
	.ENDC
	.ENDC
func_e_table: /* 12c33 */
		.dc.b 4,'E','O','F','(','#',TOK_SUBFUNC_208,78
		.dc.b 3,'E','O','F','(',TOK_SUBFUNC_208,78
		.dc.b 2,'E','Q','V',0,TOK_EQV
		.dc.b 3,'E','Q','V','(',TOK_SUBFUNC_208,8
		.dc.b 4,'E','R','R','O','R',0,TOK_ERROR
		.dc.b 4,'E','R','R','$','(',0,TOK_ERRSTR
		.dc.b 2,'E','R','R',TOK_SUBFUNC_208,88
		.dc.b 4,'E','V','E','N','(',TOK_SUBFUNC_208,101
		.dc.b 4,'E','X','E','C','(',TOK_SUBFUNC_208,95
		.dc.b 5,'E','X','I','S','T','(',TOK_SUBFUNC_208,84
		.dc.b 3,'E','X','P','(',0,TOK_EXP
		.dc.b 11,'E','V','N','T','_','K','E','Y','B','D','(',')',TOK_SUBFUNC_208,118
		.dc.b 11,'E','V','N','T','_','B','U','T','T','O','N','(',TOK_SUBFUNC_208,119
		.dc.b 10,'E','V','N','T','_','M','O','U','S','E','(',TOK_SUBFUNC_208,120
		.dc.b 10,'E','V','N','T','_','M','E','S','A','G','(',TOK_SUBFUNC_208,121
		.dc.b 10,'E','V','N','T','_','T','I','M','E','R','(',TOK_SUBFUNC_208,122
		.dc.b 10,'E','V','N','T','_','M','U','L','T','I','(',TOK_SUBFUNC_208,123
		.dc.b 11,'E','V','N','T','_','D','C','L','I','C','K','(',TOK_SUBFUNC_208,142
	.IFNE GBE
		.dc.b 2,'E','R','L',TOK_SUBFUNC_210,2
		.dc.b 8,'E','N','V','I','R','O','N','$','(',0,TOK_ENVIRON
		.dc.b 6,'E','N','V','I','R','O','N',TOK_SUBFUNC_210,121
		.dc.b 10,'E','G','E','T','S','H','I','F','T','(',')',TOK_SUBFUNC_209,238
		.dc.b 9,'E','S','E','T','S','H','I','F','T','(',TOK_SUBFUNC_209,239
		.dc.b 8,'E','S','E','T','B','A','N','K','(',TOK_SUBFUNC_209,240
		.dc.b 9,'E','S','E','T','C','O','L','O','R','(',TOK_SUBFUNC_209,241
		.dc.b 8,'E','S','E','T','G','R','A','Y','(',TOK_SUBFUNC_209,242
		.dc.b 9,'E','S','E','T','S','M','E','A','R','(',TOK_SUBFUNC_209,243
		.dc.b 11,'E','G','E','T','P','A','L','E','T','T','E','(',TOK_SUBFUNC_209,244
		.dc.b 11,'E','S','E','T','P','A','L','E','T','T','E','(',TOK_SUBFUNC_209,245
		.dc.b 3,'E','J','P','?',TOK_SUBFUNC_208,254
	.ENDC
func_f_table: /* 12d0e */
		.dc.b 4,'F','R','A','C','(',0,TOK_FRAC
		.dc.b 3,'F','R','E','(',TOK_SUBFUNC_208,71
		.dc.b 4,'F','A','L','S','E',0,TOK_FALSE
		.dc.b 4,'F','A','T','A','L',TOK_SUBFUNC_208,89
		.dc.b 3,'F','I','X','(',0,TOK_FIX
		.dc.b 1,'F','N',0,TOK_FNCALL
		.dc.b 5,'F','L','O','A','T','{',0,TOK_FLOAT_REF
		.dc.b 7,'F','O','R','M','_','D','O','(',TOK_SUBFUNC_208,157
		.dc.b 9,'F','O','R','M','_','D','I','A','L','(',TOK_SUBFUNC_208,158
		.dc.b 10,'F','O','R','M','_','A','L','E','R','T','(',TOK_SUBFUNC_208,159
		.dc.b 10,'F','O','R','M','_','E','R','R','O','R','(',TOK_SUBFUNC_208,160
		.dc.b 11,'F','O','R','M','_','C','E','N','T','E','R','(',TOK_SUBFUNC_208,161
		.dc.b 10,'F','O','R','M','_','K','E','Y','B','D','(',TOK_SUBFUNC_208,204
		.dc.b 11,'F','O','R','M','_','B','U','T','T','O','N','(',TOK_SUBFUNC_208,205
		.dc.b 10,'F','S','E','L','_','I','N','P','U','T','(',TOK_SUBFUNC_208,174
		.dc.b 7,'F','S','F','I','R','S','T','(',TOK_SUBFUNC_208,218
		.dc.b 7,'F','S','N','E','X','T','(',')',TOK_SUBFUNC_208,219
		.dc.b 7,'F','S','E','T','D','T','A','(',TOK_SUBFUNC_208,220
		.dc.b 8,'F','G','E','T','D','T','A','(',')',TOK_SUBFUNC_208,221
		.dc.b 4,'F','A','C','T','(',0,TOK_FACT
	.IFNE GBE
	.IF GBE>=373
		.dc.b 6,'F','C','H','D','I','R','(',TOK_SUBFUNC_212,50
		.dc.b 10,'F','F','D','O','P','E','N','D','I','R','(',TOK_SUBFUNC_212,51
		.dc.b 6,'F','D','I','R','F','D','(',TOK_SUBFUNC_212,52
		.dc.b 8,'F','C','H','O','W','N','1','6','(',TOK_SUBFUNC_212,49
		.dc.b 8,'F','F','S','T','A','T','6','4','(',TOK_SUBFUNC_212,48
		.dc.b 7,'F','S','T','A','T','6','4','(',TOK_SUBFUNC_212,47
		.dc.b 6,'F','R','E','A','D','V','(',TOK_SUBFUNC_212,44
		.dc.b 7,'F','W','R','I','T','E','V','(',TOK_SUBFUNC_212,45
		.dc.b 7,'F','F','C','H','M','O','D','(',TOK_SUBFUNC_212,7
		.dc.b 7,'F','F','C','H','O','W','N','(',TOK_SUBFUNC_212,8
		.dc.b 5,'F','S','Y','N','C','(',TOK_SUBFUNC_211,234
		.dc.b 8,'F','S','Y','M','L','I','N','K','(',TOK_SUBFUNC_211,199
		.dc.b 5,'F','L','I','N','K','(',TOK_SUBFUNC_211,198
	.ENDC
		.dc.b 6,'F','E','X','I','S','T','(',TOK_SUBFUNC_210,176
		.dc.b 5,'F','I','L','E','S','(',TOK_SUBFUNC_210,192
		.dc.b 8,'F','I','L','E','C','O','P','Y','(',TOK_SUBFUNC_210,152
		.dc.b 7,'F','P','U','8','8','2','(',')',TOK_SUBFUNC_208,246
		.dc.b 6,'F','X','A','T','T','R','(',TOK_SUBFUNC_210,171
		.dc.b 5,'F','P','I','P','E','(',TOK_SUBFUNC_210,134
		.dc.b 5,'F','P','O','L','L','(',TOK_SUBFUNC_210,126
		.dc.b 7,'F','R','E','N','A','M','E','(',TOK_SUBFUNC_209,111
		.dc.b 7,'F','D','E','L','E','T','E','(',TOK_SUBFUNC_209,49
		.dc.b 7,'F','C','R','E','A','T','E','(',TOK_SUBFUNC_209,47
		.dc.b 6,'F','C','L','O','S','E','(',TOK_SUBFUNC_209,44
		.dc.b 6,'F','W','R','I','T','E','(',TOK_SUBFUNC_209,46
		.dc.b 5,'F','O','P','E','N','(',TOK_SUBFUNC_209,43
		.dc.b 5,'F','R','E','A','D','(',TOK_SUBFUNC_209,45
		.dc.b 5,'F','S','E','E','K','(',TOK_SUBFUNC_209,48
		.dc.b 10,'F','O','R','M','.','K','E','Y','B','D','(',TOK_SUBFUNC_210,205
		.dc.b 10,'F','O','R','M','_','P','O','P','U','P','(',TOK_SUBFUNC_209,160
		.dc.b 12,'F','S','E','L','_','E','X','I','N','P','U','T','(',TOK_SUBFUNC_209,25
		.dc.b 7,'F','I','N','S','T','A','T','(',TOK_SUBFUNC_209,175
		.dc.b 5,'F','C','N','T','L','(',TOK_SUBFUNC_209,177
		.dc.b 7,'F','S','E','L','E','C','T','(',TOK_SUBFUNC_209,178
		.dc.b 8,'F','G','E','T','C','H','A','R','(',TOK_SUBFUNC_209,83
		.dc.b 8,'F','P','U','T','C','H','A','R','(',TOK_SUBFUNC_209,84
		.dc.b 7,'F','D','A','T','I','M','E','(',TOK_SUBFUNC_209,113
		.dc.b 8,'F','O','U','T','S','T','A','T','(',TOK_SUBFUNC_209,176
		.dc.b 7,'F','A','T','T','R','I','B','(',TOK_SUBFUNC_209,115
		.dc.b 4,'F','D','U','P','(',TOK_SUBFUNC_209,171
		.dc.b 6,'F','F','O','R','C','E','(',TOK_SUBFUNC_209,172
		.dc.b 6,'F','C','H','M','O','D','(',TOK_SUBFUNC_209,254
		.dc.b 6,'F','C','H','O','W','N','(',TOK_SUBFUNC_210,144
		.dc.b 6,'F','L','O','P','R','D','(',TOK_SUBFUNC_209,213
		.dc.b 6,'F','L','O','P','W','R','(',TOK_SUBFUNC_209,214
		.dc.b 7,'F','L','O','P','F','M','T','(',TOK_SUBFUNC_209,215
		.dc.b 7,'F','L','O','P','V','E','R','(',TOK_SUBFUNC_209,216
		.dc.b 8,'F','L','O','P','R','A','T','E','(',TOK_SUBFUNC_209,217
		.dc.b 5,'F','L','O','C','K','(',TOK_SUBFUNC_209,173
		.dc.b 5,'F','_','I','N','P','(',TOK_SUBFUNC_209,63
		.dc.b 6,'F','_','I','N','P','&','(',TOK_SUBFUNC_209,64
		.dc.b 6,'F','_','I','N','P','%','(',TOK_SUBFUNC_209,65
		.dc.b 5,'F','_','O','U','T','(',TOK_SUBFUNC_209,60
		.dc.b 6,'F','_','O','U','T','&','(',TOK_SUBFUNC_209,61
		.dc.b 6,'F','_','O','U','T','%','(',TOK_SUBFUNC_209,62
		.dc.b 6,'F','_','B','G','E','T','(',TOK_SUBFUNC_209,51
		.dc.b 6,'F','_','B','P','U','T','(',TOK_SUBFUNC_209,52
		.dc.b 6,'F','_','O','P','E','N','(',TOK_SUBFUNC_209,59
		.dc.b 12,'F','_','L','I','N','E','_','I','N','P','U','T','(',TOK_SUBFUNC_209,68
		.dc.b 13,'F','_','L','I','N','E','_','O','U','T','P','U','T','(',TOK_SUBFUNC_209,67
		.dc.b 7,'F','_','I','N','P','U','T','(',TOK_SUBFUNC_209,90
		.dc.b 8,'F','_','O','U','T','P','U','T','(',TOK_SUBFUNC_209,89
		.dc.b 5,'F','_','L','O','F','(',TOK_SUBFUNC_209,55
		.dc.b 5,'F','_','L','O','C','(',TOK_SUBFUNC_209,54
		.dc.b 5,'F','_','E','O','F','(',TOK_SUBFUNC_209,53
		.dc.b 7,'F','_','B','L','O','A','D','(',TOK_SUBFUNC_209,69
		.dc.b 7,'F','_','B','S','A','V','E','(',TOK_SUBFUNC_209,70
		.dc.b 6,'F','_','S','E','E','K','(',TOK_SUBFUNC_209,71
		.dc.b 9,'F','_','R','E','L','S','E','E','K','(',TOK_SUBFUNC_209,72
		.dc.b 7,'F','_','C','L','O','S','E','(',TOK_SUBFUNC_210,119
		.dc.b 9,'F','_','E','N','D','S','E','E','K','(',TOK_SUBFUNC_210,124
		.dc.b 7,'F','I','L','E','L','E','N','(',TOK_SUBFUNC_210,127
		.dc.b 7,'F','S','O','C','K','E','T','(',TOK_SUBFUNC_210,35
		.dc.b 11,'F','S','O','C','K','E','T','P','A','I','R','(',TOK_SUBFUNC_210,36
		.dc.b 7,'F','A','C','C','E','P','T','(',TOK_SUBFUNC_210,37
		.dc.b 8,'F','C','O','N','N','E','C','T','(',TOK_SUBFUNC_210,38
		.dc.b 5,'F','B','I','N','D','(',TOK_SUBFUNC_210,39
		.dc.b 7,'F','L','I','S','T','E','N','(',TOK_SUBFUNC_210,40
		.dc.b 8,'F','R','E','C','V','M','S','G','(',TOK_SUBFUNC_210,41
		.dc.b 8,'F','S','E','N','D','M','S','G','(',TOK_SUBFUNC_210,42
		.dc.b 9,'F','R','E','C','V','F','R','O','M','(',TOK_SUBFUNC_210,43
		.dc.b 7,'F','S','E','N','D','T','O','(',TOK_SUBFUNC_210,44
		.dc.b 11,'F','S','E','T','S','O','C','K','O','P','T','(',TOK_SUBFUNC_210,45
		.dc.b 11,'F','G','E','T','S','O','C','K','O','P','T','(',TOK_SUBFUNC_210,46
		.dc.b 12,'F','G','E','T','P','E','E','R','N','A','M','E','(',TOK_SUBFUNC_210,47
		.dc.b 12,'F','G','E','T','S','O','C','K','N','A','M','E','(',TOK_SUBFUNC_210,48
		.dc.b 9,'F','S','H','U','T','D','O','W','N','(',TOK_SUBFUNC_210,49
		.dc.b 10,'F','O','N','T','_','I','N','I','T','(',')',TOK_SUBFUNC_210,89
		.dc.b 11,'F','O','N','T','_','S','E','L','E','C','T','(',TOK_SUBFUNC_210,90
		.dc.b 9,'F','R','E','E','F','I','L','E','(',')',TOK_SUBFUNC_210,5
		.dc.b 9,'F','M','I','D','I','P','I','P','E','(',TOK_SUBFUNC_210,137
	.IF GBE>=372
		.dc.b 9,'F','R','E','A','D','L','I','N','K','(',TOK_SUBFUNC_211,183
	.ENDC
		.dc.b 3,'F','P','U','?',TOK_SUBFUNC_210,251
	.ENDC
func_g_table: /* 12e0d */
		.dc.b 4,'G','O','S','U','B',0,TOK_GOSUB_FUNC
		.dc.b 3,'G','O','T','O',0,TOK_GOTO_FUNC
		.dc.b 1,'G','B',TOK_SUBFUNC_208,61
		.dc.b 7,'G','C','O','N','T','R','L','(',TOK_SUBFUNC_208,24
		.dc.b 6,'G','C','O','N','T','R','L',TOK_SUBFUNC_208,25
		.dc.b 6,'G','E','M','D','O','S','(',TOK_SUBFUNC_208,87
		.dc.b 6,'G','I','N','T','I','N','(',TOK_SUBFUNC_208,26
		.dc.b 5,'G','I','N','T','I','N',TOK_SUBFUNC_208,27
		.dc.b 7,'G','I','N','T','O','U','T','(',TOK_SUBFUNC_208,28
		.dc.b 6,'G','I','N','T','O','U','T',TOK_SUBFUNC_208,29
	.IFNE GBE
		.dc.b 6,'G','L','O','B','A','L','(',TOK_SUBFUNC_208,250
		.dc.b 5,'G','L','O','B','A','L',TOK_SUBFUNC_208,251
	.ENDC
		.dc.b 14,'G','R','A','F','_','R','U','B','B','E','R','B','O','X','(',TOK_SUBFUNC_208,162
		.dc.b 12,'G','R','A','F','_','D','R','A','G','B','O','X','(',TOK_SUBFUNC_208,163
		.dc.b 12,'G','R','A','F','_','M','O','V','E','B','O','X','(',TOK_SUBFUNC_208,164
		.dc.b 12,'G','R','A','F','_','G','R','O','W','B','O','X','(',TOK_SUBFUNC_208,165
		.dc.b 14,'G','R','A','F','_','S','H','R','I','N','K','B','O','X','(',TOK_SUBFUNC_208,166
		.dc.b 13,'G','R','A','F','_','W','A','T','C','H','B','O','X','(',TOK_SUBFUNC_208,167
		.dc.b 13,'G','R','A','F','_','S','L','I','D','E','B','O','X','(',TOK_SUBFUNC_208,168
		.dc.b 11,'G','R','A','F','_','H','A','N','D','L','E','(',TOK_SUBFUNC_208,169
		.dc.b 10,'G','R','A','F','_','M','O','U','S','E','(',TOK_SUBFUNC_208,170
		.dc.b 12,'G','R','A','F','_','M','K','S','T','A','T','E','(',TOK_SUBFUNC_208,171
		.dc.b 4,'G','D','O','S','?',TOK_SUBFUNC_208,104
		.dc.b 7,'G','E','T','S','I','Z','E','(',TOK_SUBFUNC_208,239
	.IFNE GBE
		.dc.b 2,'G','~','H',TOK_SUBFUNC_210,242
		.dc.b 2,'G','~','R',TOK_SUBFUNC_210,243
		.dc.b 9,'G','E','T','C','O','O','K','I','E','(',TOK_SUBFUNC_208,252
		.dc.b 6,'G','M','O','U','S','E','K',TOK_SUBFUNC_208,247
		.dc.b 6,'G','M','O','U','S','E','X',TOK_SUBFUNC_208,248
		.dc.b 6,'G','M','O','U','S','E','Y',TOK_SUBFUNC_208,249
		.dc.b 16,'G','R','A','F','_','M','U','L','T','I','R','U','B','B','E','R','(',TOK_SUBFUNC_209,168
		.dc.b 4,'G','P','I','O','(',TOK_SUBFUNC_209,37
		.dc.b 7,'G','E','T','R','E','Z','(',')',TOK_SUBFUNC_209,118
		.dc.b 8,'G','E','T','T','I','M','E','(',')',TOK_SUBFUNC_209,109
		.dc.b 6,'G','E','T','B','P','B','(',TOK_SUBFUNC_209,158
		.dc.b 8,'G','I','A','C','C','E','S','S','(',TOK_SUBFUNC_209,212
		.dc.b 7,'G','S','T','I','C','K','(',')',TOK_SUBFUNC_209,74
		.dc.b 7,'G','S','T','R','I','G','(',')',TOK_SUBFUNC_209,75
		.dc.b 6,'G','E','T','S','T','R','(',TOK_SUBFUNC_210,179
		.dc.b 9,'G','R','A','Y','S','C','A','L','E','(',TOK_SUBFUNC_210,213
	.IF GBE>=373
		.dc.b 6,'G','E','T','M','P','B','(',TOK_SUBFUNC_212,0
	.ENDC
	.ENDC
func_h_table: /* 12f4a */
		.dc.b 4,'H','E','X','$','(',0,TOK_HEX1
		.dc.b 4,'H','I','M','E','M',TOK_SUBFUNC_208,30
	.IFNE GBE
		.dc.b 7,'H','I','N','Y','B','L','E','(',TOK_SUBFUNC_210,195
		.dc.b 6,'H','I','B','Y','T','E','(',TOK_SUBFUNC_210,196
		.dc.b 6,'H','I','W','O','R','D','(',TOK_SUBFUNC_210,197
		.dc.b 6,'H','I','C','A','R','D','(',TOK_SUBFUNC_210,198
		.dc.b 6,'H','O','U','R','2','4','(',TOK_SUBFUNC_210,218
		.dc.b 6,'H','O','U','R','1','2','(',TOK_SUBFUNC_211,3
	.ENDC
func_i_table: /* 12f5e */
		.dc.b 1,'I','F',0,TOK_IF
		.dc.b 2,'I','M','P',0,TOK_IMP
		.dc.b 3,'I','M','P','(',TOK_SUBFUNC_208,9
		.dc.b 5,'I','N','K','E','Y','$',0,TOK_INKEY
		.dc.b 6,'I','N','P','U','T','$','(',0,TOK_INPUT1
	.IFNE GBE
		.dc.b 8,'I','N','P','U','T','B','O','X','(',TOK_SUBFUNC_210,22
	.IFNE GBE>=372
		.dc.b 10,'I','N','P','U','T','R','A','D','I','O','(',TOK_SUBFUNC_211,184
	.ENDC
	.ENDC
		.dc.b 4,'I','N','P','(','#',TOK_SUBFUNC_208,77
		.dc.b 3,'I','N','P','(',TOK_SUBFUNC_208,74
		.dc.b 5,'I','N','P','&','(','#',TOK_SUBFUNC_208,224
		.dc.b 4,'I','N','P','&','(',TOK_SUBFUNC_208,223
		.dc.b 5,'I','N','P','%','(','#',TOK_SUBFUNC_208,226
		.dc.b 4,'I','N','P','%','(',TOK_SUBFUNC_208,225
		.dc.b 4,'I','N','P','?','(',TOK_SUBFUNC_208,93
		.dc.b 4,'I','N','P','U','T',0,TOK_INPUT3
		.dc.b 5,'I','N','S','T','R','(',TOK_SUBFUNC_208,68
		.dc.b 3,'I','N','T','(',0,TOK_INT
		.dc.b 3,'I','B','O','X',0,TOK_IBOX
		.dc.b 5,'I','N','T','I','N','(',TOK_SUBFUNC_208,32
		.dc.b 4,'I','N','T','I','N',TOK_SUBFUNC_208,33
		.dc.b 6,'I','N','T','O','U','T','(',TOK_SUBFUNC_208,34
		.dc.b 5,'I','N','T','O','U','T',TOK_SUBFUNC_208,35
		.dc.b 3,'I','N','T','{',TOK_SUBFUNC_208,114
		.dc.b 6,'I','N','P','A','U','X','$',0,TOK_INPAUX
		.dc.b 6,'I','N','P','M','I','D','$',0,TOK_INPMID
	.IFNE GBE
		.dc.b 10,'I','N','D','E','X','C','O','U','N','T','(',TOK_SUBFUNC_210,30
	.IF GBE<=371
		.dc.b 7,'I','C','O','N','B','L','K','(',TOK_SUBFUNC_210,209
	.ENDC
	.IF GBE>=372
		.dc.b 8,'I','N','I','T','M','O','U','S','(',TOK_SUBFUNC_211,182
	.ENDC
		.dc.b 5,'I','O','R','E','C','(',TOK_SUBFUNC_209,209
		.dc.b 6,'I','K','B','D','W','S','(',TOK_SUBFUNC_209,210
		.dc.b 7,'I','S','A','S','C','I','I','(',TOK_SUBFUNC_209,98
		.dc.b 7,'I','S','B','L','A','N','K','(',TOK_SUBFUNC_210,153
		.dc.b 7,'I','S','C','N','T','R','L','(',TOK_SUBFUNC_210,154
		.dc.b 7,'I','S','P','R','I','N','T','(',TOK_SUBFUNC_210,155
		.dc.b 7,'I','S','S','P','A','C','E','(',TOK_SUBFUNC_210,156
	.IF GBE>=372
		.dc.b 8,'I','B','_','P','M','A','S','K','(',TOK_SUBFUNC_211,142
		.dc.b 8,'I','B','_','P','D','A','T','A','(',TOK_SUBFUNC_211,143
		.dc.b 8,'I','B','_','P','T','E','X','T','(',TOK_SUBFUNC_211,144
		.dc.b 7,'I','B','_','C','H','A','R','(',TOK_SUBFUNC_211,145
		.dc.b 8,'I','B','_','X','C','H','A','R','(',TOK_SUBFUNC_211,146
		.dc.b 8,'I','B','_','Y','C','H','A','R','(',TOK_SUBFUNC_211,147
		.dc.b 8,'I','B','_','X','I','C','O','N','(',TOK_SUBFUNC_211,148
		.dc.b 8,'I','B','_','Y','I','C','O','N','(',TOK_SUBFUNC_211,149
		.dc.b 8,'I','B','_','W','I','C','O','N','(',TOK_SUBFUNC_211,150
		.dc.b 8,'I','B','_','H','I','C','O','N','(',TOK_SUBFUNC_211,151
		.dc.b 8,'I','B','_','X','T','E','X','T','(',TOK_SUBFUNC_211,152
		.dc.b 8,'I','B','_','Y','T','E','X','T','(',TOK_SUBFUNC_211,153
		.dc.b 8,'I','B','_','W','T','E','X','T','(',TOK_SUBFUNC_211,154
		.dc.b 8,'I','B','_','H','T','E','X','T','(',TOK_SUBFUNC_211,155
		.dc.b 9,'I','B','_','F','C','O','L','O','R','(',TOK_SUBFUNC_211,156
		.dc.b 9,'I','B','_','B','C','O','L','O','R','(',TOK_SUBFUNC_211,157
		.dc.b 9,'I','B','_','L','E','T','T','E','R','(',TOK_SUBFUNC_211,158
	.ENDC
	.ENDC
func_j_table: /* 13048 */
	.IFNE GBE
		.dc.b 4,'J','O','I','N','(',TOK_SUBFUNC_210,178
		.dc.b 6,'J','O','Y','P','A','D','(',TOK_SUBFUNC_209,93
		.dc.b 7,'J','D','I','S','I','N','T','(',TOK_SUBFUNC_209,224
		.dc.b 8,'J','E','N','A','B','I','N','T','(',TOK_SUBFUNC_209,225
	.IF GBE>=372
		.dc.b 11,'J','P','E','G','D','_','I','N','I','T','(',')',TOK_SUBFUNC_211,5
		.dc.b 16,'J','P','E','G','D','_','O','P','E','N','D','R','I','V','E','R','(',TOK_SUBFUNC_211,6
		.dc.b 17,'J','P','E','G','D','_','C','L','O','S','E','D','R','I','V','E','R','(',TOK_SUBFUNC_211,7
		.dc.b 20,'J','P','E','G','D','_','G','E','T','S','T','R','U','C','T','S','I','Z','E','(',')',TOK_SUBFUNC_211,8
		.dc.b 18,'J','P','E','G','D','_','G','E','T','I','M','A','G','E','I','N','F','O','(',TOK_SUBFUNC_211,9
		.dc.b 18,'J','P','E','G','D','_','G','E','T','I','M','A','G','E','S','I','Z','E','(',TOK_SUBFUNC_211,10
		.dc.b 17,'J','P','E','G','D','_','D','E','C','O','D','E','I','M','A','G','E','(',TOK_SUBFUNC_211,11
	.ENDC
	.ENDC
func_k_table: /* 13048 */
	.IFNE GBE
		.dc.b 6,'K','E','Y','T','B','L','(',TOK_SUBFUNC_209,26
		.dc.b 7,'K','B','S','H','I','F','T','(',TOK_SUBFUNC_209,10
	.ENDC
		.dc.b 2,'K','E','Y',0,TOK_KEY
		.dc.b 3,'K','I','L','L',0,TOK_KILL
	.IFNE GBE
		.dc.b 6,'K','B','R','A','T','E','(',TOK_SUBFUNC_209,203
		.dc.b 9,'K','B','D','V','B','A','S','E','(',')',TOK_SUBFUNC_209,207
	.ENDC
func_l_table: /* 13059 */
		.dc.b 5,'L','E','F','T','$','(',0,TOK_LEFT1
		.dc.b 3,'L','E','N','(',TOK_SUBFUNC_208,66
		.dc.b 4,'L','O','C','(','#',TOK_SUBFUNC_208,80
		.dc.b 3,'L','O','C','(',TOK_SUBFUNC_208,80
		.dc.b 4,'L','O','F','(','#',TOK_SUBFUNC_208,79
		.dc.b 3,'L','O','F','(',TOK_SUBFUNC_208,79
		.dc.b 3,'L','O','G','(',0,TOK_LOG
		.dc.b 5,'L','O','G','1','0','(',0,TOK_LOG10
		.dc.b 5,'L','P','E','E','K','(',TOK_SUBFUNC_208,65
		.dc.b 1,'L',':',0,TOK_LONGARG
		.dc.b 4,'L','P','O','S','(',TOK_SUBFUNC_208,91
		.dc.b 4,'L','O','N','G','{',TOK_SUBFUNC_208,113
		.dc.b 2,'L','~','A',TOK_SUBFUNC_208,212
		.dc.b 4,'L','P','E','N','X',TOK_SUBFUNC_208,231
		.dc.b 4,'L','P','E','N','Y',TOK_SUBFUNC_208,232
	.IFNE GBE
		.dc.b 4,'L','E','A','P','(',TOK_SUBFUNC_211,0
		.dc.b 7,'L','O','A','D','S','T','R','(',TOK_SUBFUNC_210,191
		.dc.b 7,'L','O','A','D','M','E','M','(',TOK_SUBFUNC_210,18
		.dc.b 6,'L','C','A','S','E','$','(',0,TOK_LCASE
		.dc.b 6,'L','T','R','I','M','$','(',0,TOK_LTRIM
		.dc.b 6,'L','O','W','E','R','$','(',0,TOK_LOWER
		.dc.b 8,'L','O','C','K','S','N','D','(',')',TOK_SUBFUNC_209,27
		.dc.b 8,'L','O','G','B','A','S','E','(',')',TOK_SUBFUNC_209,119
		.dc.b 6,'L','R','W','A','B','S','(',TOK_SUBFUNC_209,251
		.dc.b 9,'L','D','G','_','I','N','I','T','(',')',TOK_SUBFUNC_210,50
		.dc.b 8,'L','D','G','_','O','P','E','N','(',TOK_SUBFUNC_210,51
		.dc.b 8,'L','D','G','_','F','I','N','D','(',TOK_SUBFUNC_210,52
		.dc.b 9,'L','D','G','_','C','L','O','S','E','(',TOK_SUBFUNC_210,53
		.dc.b 11,'L','D','G','_','L','I','B','P','A','T','H','(',TOK_SUBFUNC_210,54
		.dc.b 10,'L','D','G','_','E','R','R','O','R','(',')',TOK_SUBFUNC_210,55
	.ENDC
func_m_table: /* 130e9 */
		.dc.b 3,'M','A','X','(',0,TOK_MAX
		.dc.b 4,'M','I','D','$','(',0,TOK_MID2
		.dc.b 3,'M','I','N','(',0,TOK_MIN
		.dc.b 4,'M','K','D','$','(',0,TOK_MKD
		.dc.b 4,'M','K','F','$','(',0,TOK_MKF
		.dc.b 4,'M','K','I','$','(',0,TOK_MKI
		.dc.b 4,'M','K','L','$','(',0,TOK_MKL
		.dc.b 4,'M','K','S','$','(',0,TOK_MKS
		.dc.b 2,'M','O','D',0,TOK_MOD
		.dc.b 3,'M','O','D','(',TOK_SUBFUNC_208,4
		.dc.b 8,'M','E','N','U','_','B','A','R','(',TOK_SUBFUNC_208,143
		.dc.b 11,'M','E','N','U','_','I','C','H','E','C','K','(',TOK_SUBFUNC_208,144
		.dc.b 12,'M','E','N','U','_','I','E','N','A','B','L','E','(',TOK_SUBFUNC_208,145
		.dc.b 12,'M','E','N','U','_','T','N','O','R','M','A','L','(',TOK_SUBFUNC_208,146
		.dc.b 9,'M','E','N','U','_','T','E','X','T','(',TOK_SUBFUNC_208,147
		.dc.b 13,'M','E','N','U','_','R','E','G','I','S','T','E','R','(',TOK_SUBFUNC_208,148
	.IFNE GBE
		.dc.b 9,'M','E','N','U','.','T','E','X','T','(',TOK_SUBFUNC_210,6
		.dc.b 10,'M','E','N','U','_','P','O','P','U','P','(',TOK_SUBFUNC_209,163
		.dc.b 11,'M','E','N','U','_','I','S','T','A','R','T','(',TOK_SUBFUNC_209,162
		.dc.b 11,'M','E','N','U','_','A','T','T','A','C','H','(',TOK_SUBFUNC_209,161
		.dc.b 13,'M','E','N','U','_','S','E','T','T','I','N','G','S','(',TOK_SUBFUNC_209,164
	.ENDC
		.dc.b 5,'M','O','U','S','E','K',TOK_SUBFUNC_208,60
		.dc.b 5,'M','O','U','S','E','X',TOK_SUBFUNC_208,58
		.dc.b 5,'M','O','U','S','E','Y',TOK_SUBFUNC_208,59
		.dc.b 4,'M','E','N','U','(',TOK_SUBFUNC_208,92
		.dc.b 3,'M','E','N','U',0,TOK_MENU
		.dc.b 6,'M','E','S','S','A','G','E',0,TOK_MESSAGE
		.dc.b 3,'M','U','L','(',TOK_SUBFUNC_208,0
		.dc.b 6,'M','A','L','L','O','C','(',TOK_SUBFUNC_208,184
		.dc.b 5,'M','F','R','E','E','(',TOK_SUBFUNC_208,185
		.dc.b 7,'M','S','H','R','I','N','K','(',TOK_SUBFUNC_208,186
	.IFNE GBE
	.IF GBE>=373
		.dc.b 6,'M','F','P','I','N','T','(',TOK_SUBFUNC_212,2
		.dc.b 7,'M','A','D','D','A','L','T','(',TOK_SUBFUNC_212,1
		.dc.b 6,'M','D','P','E','E','K','(',TOK_SUBFUNC_211,211
		.dc.b 6,'M','L','P','E','E','K','(',TOK_SUBFUNC_211,212
	.ENDC
		.dc.b 8,'M','E','R','I','D','I','E','M','(',TOK_SUBFUNC_211,4
		.dc.b 6,'M','I','N','U','T','E','(',TOK_SUBFUNC_210,219
		.dc.b 5,'M','O','N','T','H','(',TOK_SUBFUNC_210,216
		.dc.b 8,'M','E','M','B','T','S','T','|','(',TOK_SUBFUNC_210,141
		.dc.b 8,'M','E','M','B','T','S','T','&','(',TOK_SUBFUNC_210,142
		.dc.b 8,'M','E','M','B','T','S','T','%','(',TOK_SUBFUNC_210,143
		.dc.b 7,'M','X','A','L','L','O','C','(',TOK_SUBFUNC_209,9
		.dc.b 7,'M','E','D','I','A','C','H','(',TOK_SUBFUNC_209,157
		.dc.b 6,'M','I','D','I','W','S','(',TOK_SUBFUNC_209,211
		.dc.b 7,'M','I','R','R','O','R','|','(',TOK_SUBFUNC_210,11
		.dc.b 7,'M','I','R','R','O','R','&','(',TOK_SUBFUNC_210,12
		.dc.b 6,'M','I','R','R','O','R','(',TOK_SUBFUNC_210,13
		.dc.b 7,'M','I','R','R','O','R','3','(',TOK_SUBFUNC_210,14
		.dc.b 7,'M','I','R','R','O','R','$','(',0,TOK_MIRROR
		.dc.b 4,'M','A','K','E','(',TOK_SUBFUNC_210,140
		.dc.b 5,'M','A','K','E','|','(',TOK_SUBFUNC_210,118
		.dc.b 5,'M','A','K','E','&','(',TOK_SUBFUNC_210,116
		.dc.b 5,'M','A','K','E','%','(',TOK_SUBFUNC_210,117
		.dc.b 7,'M','A','C','C','E','S','S','(',TOK_SUBFUNC_210,172
		.dc.b 9,'M','V','A','L','I','D','A','T','E','(',TOK_SUBFUNC_210,173
		.dc.b 6,'M','R','O','U','N','D','(',TOK_SUBFUNC_210,9
		.dc.b 3,'M','S','G','(',TOK_SUBFUNC_210,193
		.dc.b 2,'M','S','G',TOK_SUBFUNC_210,194
		.dc.b 4,'M','6','8','K','?',TOK_SUBFUNC_210,226
	.IF GBE>=373
		.dc.b 9,'M','U','L','T','I','T','A','S','K','?',TOK_SUBFUNC_211,214
	.ENDC
	.ENDC
func_n_table: /* 1321a */
		.dc.b 3,'N','E','X','T',0,TOK_NEXT
		.dc.b 2,'N','O','T',0,TOK_UNOT
	.IFNE GBE
		.dc.b 3,'N','U','L','L',0,TOK_NULL
		.dc.b 5,'N','Y','B','L','E','(',TOK_SUBFUNC_210,139
		.dc.b 7,'N','E','T','W','O','R','K','?',TOK_SUBFUNC_210,27
		.dc.b 9,'N','V','M','A','C','C','E','S','S','(',TOK_SUBFUNC_209,208
		.dc.b 11,'N','E','A','R','E','S','T','_','R','G','B','(',TOK_SUBFUNC_210,212
	.ENDC
func_o_table: /* 1322b */
		.dc.b 3,'O','B','O','X',0,TOK_OBOX
		.dc.b 4,'O','C','T','$','(',0,TOK_OCT1
		.dc.b 3,'O','D','D','(',TOK_SUBFUNC_208,102
	.IFNE GBE
		.dc.b 8,'O','F','F','G','I','B','I','T','(',TOK_SUBFUNC_209,221
	.ENDC
		.dc.b 5,'O','F','F','S','E','T',0,TOK_OFFSET
		.dc.b 2,'O','F','F',0,TOK_OFF
		.dc.b 1,'O','R',0,TOK_OR
		.dc.b 2,'O','R','(',TOK_SUBFUNC_208,6
		.dc.b 4,'O','U','T','?','(',TOK_SUBFUNC_208,94
		.dc.b 8,'O','B','J','C','_','A','D','D','(',TOK_SUBFUNC_208,149
		.dc.b 11,'O','B','J','C','_','D','E','L','E','T','E','(',TOK_SUBFUNC_208,150
		.dc.b 9,'O','B','J','C','_','D','R','A','W','(',TOK_SUBFUNC_208,151
		.dc.b 9,'O','B','J','C','_','F','I','N','D','(',TOK_SUBFUNC_208,152
		.dc.b 11,'O','B','J','C','_','O','F','F','S','E','T','(',TOK_SUBFUNC_208,153
		.dc.b 10,'O','B','J','C','_','O','R','D','E','R','(',TOK_SUBFUNC_208,154
		.dc.b 9,'O','B','J','C','_','E','D','I','T','(',TOK_SUBFUNC_208,155
		.dc.b 11,'O','B','J','C','_','C','H','A','N','G','E','(',TOK_SUBFUNC_208,156
	.IFNE GBE
		.dc.b 10,'O','B','J','C','_','X','F','I','N','D','(',TOK_SUBFUNC_209,165
		.dc.b 11,'O','B','J','C','_','S','Y','S','V','A','R','(',TOK_SUBFUNC_209,24
	.ENDC
		.dc.b 6,'O','B','_','A','D','R','(',TOK_SUBFUNC_208,191
		.dc.b 7,'O','B','_','N','E','X','T','(',TOK_SUBFUNC_208,192
		.dc.b 7,'O','B','_','H','E','A','D','(',TOK_SUBFUNC_208,193
		.dc.b 7,'O','B','_','T','A','I','L','(',TOK_SUBFUNC_208,194
		.dc.b 7,'O','B','_','T','Y','P','E','(',TOK_SUBFUNC_208,195
		.dc.b 8,'O','B','_','F','L','A','G','S','(',TOK_SUBFUNC_208,196
		.dc.b 8,'O','B','_','S','T','A','T','E','(',TOK_SUBFUNC_208,197
		.dc.b 7,'O','B','_','S','P','E','C','(',TOK_SUBFUNC_208,198
		.dc.b 4,'O','B','_','X','(',TOK_SUBFUNC_208,199
		.dc.b 4,'O','B','_','Y','(',TOK_SUBFUNC_208,200
		.dc.b 4,'O','B','_','W','(',TOK_SUBFUNC_208,201
		.dc.b 4,'O','B','_','H','(',TOK_SUBFUNC_208,202
	.IFNE GBE
		.dc.b 8,'O','B','.','S','T','A','T','E','(',TOK_SUBFUNC_210,19
		.dc.b 8,'O','B','.','F','L','A','G','S','(',TOK_SUBFUNC_210,20
		.dc.b 8,'O','B','_','R','A','D','I','O','(',TOK_SUBFUNC_210,33
		.dc.b 8,'O','B','_','T','E','X','T','$','(',0,TOK_OB_TEXT
		.dc.b 7,'O','N','G','I','B','I','T','(',TOK_SUBFUNC_209,220
	.IF GBE>=372
		.dc.b 11,'O','B','_','S','E','L','E','C','T','E','D','(',TOK_SUBFUNC_211,88
		.dc.b 10,'O','B','_','C','R','O','S','S','E','D','(',TOK_SUBFUNC_211,89
		.dc.b 10,'O','B','_','C','H','E','C','K','E','D','(',TOK_SUBFUNC_211,90
		.dc.b 11,'O','B','_','D','I','S','A','B','L','E','D','(',TOK_SUBFUNC_211,91
		.dc.b 11,'O','B','_','O','U','T','L','I','N','E','D','(',TOK_SUBFUNC_211,92
		.dc.b 11,'O','B','_','S','H','A','D','O','W','E','D','(',TOK_SUBFUNC_211,93
		.dc.b 11,'O','B','_','W','H','I','T','E','B','A','K','(',TOK_SUBFUNC_211,94
		.dc.b 13,'O','B','_','S','E','L','E','C','T','A','B','L','E','(',TOK_SUBFUNC_211,96
		.dc.b 10,'O','B','_','D','E','F','A','U','L','T','(',TOK_SUBFUNC_211,97
		.dc.b 7,'O','B','_','E','X','I','T','(',TOK_SUBFUNC_211,98
		.dc.b 11,'O','B','_','E','D','I','T','A','B','L','E','(',TOK_SUBFUNC_211,99
		.dc.b 10,'O','B','_','R','B','U','T','T','O','N','(',TOK_SUBFUNC_211,100
		.dc.b 9,'O','B','_','L','A','S','T','O','B','(',TOK_SUBFUNC_211,101
		.dc.b 12,'O','B','_','T','O','U','C','H','E','X','I','T','(',TOK_SUBFUNC_211,102
		.dc.b 11,'O','B','_','H','I','D','E','T','R','E','E','(',TOK_SUBFUNC_211,103
		.dc.b 11,'O','B','_','I','N','D','I','R','E','C','T','(',TOK_SUBFUNC_211,104
		.dc.b 10,'O','B','_','F','L','3','D','I','N','D','(',TOK_SUBFUNC_211,105
		.dc.b 10,'O','B','_','F','L','3','D','A','C','T','(',TOK_SUBFUNC_211,106
		.dc.b 10,'O','B','_','S','U','B','M','E','N','U','(',TOK_SUBFUNC_211,107
		.dc.b 10,'O','B','_','F','L','3','D','B','A','K','(',TOK_SUBFUNC_211,109
	.ENDC
	.IF GBE>=373
		.dc.b 7,'O','B','_','X','Y','W','H','(',TOK_SUBFUNC_211,195
	.ENDC
	.ENDC
func_p_table: /* 13382 */
		.dc.b 4,'P','E','E','K','(',TOK_SUBFUNC_208,63
	.IF GBE>=373
		.dc.b 7,'P','I','X','E','L','3','2','(',TOK_SUBFUNC_211,189
		.dc.b 7,'P','I','X','E','L','2','4','(',TOK_SUBFUNC_211,185
		.dc.b 7,'P','I','X','E','L','1','6','(',TOK_SUBFUNC_211,190
		.dc.b 7,'P','I','X','E','L','1','5','(',TOK_SUBFUNC_211,196
		.dc.b 7,'P','I','X','E','L','8','C','(',TOK_SUBFUNC_211,206
		.dc.b 7,'P','I','X','E','L','8','P','(',TOK_SUBFUNC_211,208
		.dc.b 7,'P','I','X','E','L','4','P','(',TOK_SUBFUNC_211,209
		.dc.b 7,'P','I','X','E','L','2','P','(',TOK_SUBFUNC_211,210
		.dc.b 7,'P','I','X','E','L','1','M','(',TOK_SUBFUNC_211,207
	.ENDC
		.dc.b 1,'P','I',0,TOK_PI
		.dc.b 5,'P','O','I','N','T','(',TOK_SUBFUNC_208,72
		.dc.b 3,'P','O','S','(',TOK_SUBFUNC_208,90
		.dc.b 5,'P','T','S','I','N','(',TOK_SUBFUNC_208,36
		.dc.b 4,'P','T','S','I','N',TOK_SUBFUNC_208,37
		.dc.b 6,'P','T','S','O','U','T','(',TOK_SUBFUNC_208,38
		.dc.b 5,'P','T','S','O','U','T',TOK_SUBFUNC_208,39
		.dc.b 4,'P','T','S','T','(',TOK_SUBFUNC_208,43
		.dc.b 4,'P','R','E','D','(',TOK_SUBFUNC_208,97
		.dc.b 4,'P','A','D','X','(',TOK_SUBFUNC_208,228
		.dc.b 4,'P','A','D','Y','(',TOK_SUBFUNC_208,229
		.dc.b 4,'P','A','D','T','(',TOK_SUBFUNC_208,230
	.IFNE GBE
	.IF GBE>=373
		.dc.b 5,'P','T','E','R','M','(',TOK_SUBFUNC_212,43
		.dc.b 7,'P','T','E','R','M','0','(',')',TOK_SUBFUNC_212,42
		.dc.b 10,'P','S','E','M','A','P','H','O','R','E','(',TOK_SUBFUNC_212,37
		.dc.b 9,'P','S','E','T','R','E','U','I','D','(',TOK_SUBFUNC_212,35
		.dc.b 9,'P','S','E','T','R','E','G','I','D','(',TOK_SUBFUNC_212,36
		.dc.b 9,'P','G','E','T','E','G','I','D','(',')',TOK_SUBFUNC_212,33
		.dc.b 8,'P','S','E','T','E','G','I','D','(',TOK_SUBFUNC_212,34
		.dc.b 9,'P','G','E','T','E','U','I','D','(',')',TOK_SUBFUNC_212,31
		.dc.b 8,'P','S','E','T','E','U','I','D','(',TOK_SUBFUNC_212,32
		.dc.b 9,'P','G','E','T','A','U','I','D','(',')',TOK_SUBFUNC_212,29
		.dc.b 8,'P','S','E','T','A','U','I','D','(',TOK_SUBFUNC_212,30
		.dc.b 10,'P','G','E','T','G','R','O','U','P','S','(',TOK_SUBFUNC_212,27
		.dc.b 10,'P','S','E','T','G','R','O','U','P','S','(',TOK_SUBFUNC_212,28
		.dc.b 9,'P','G','E','T','P','G','R','P','(',')',TOK_SUBFUNC_212,25
		.dc.b 8,'P','S','E','T','P','G','R','P','(',TOK_SUBFUNC_212,26
		.dc.b 8,'P','U','N','T','A','E','S','(',')',TOK_SUBFUNC_212,4
		.dc.b 9,'P','S','I','G','P','A','U','S','E','(',TOK_SUBFUNC_211,230
		.dc.b 10,'P','S','I','G','A','C','T','I','O','N','(',TOK_SUBFUNC_211,231
		.dc.b 6,'P','A','U','S','E','(',')',TOK_SUBFUNC_211,228
		.dc.b 12,'P','S','I','G','P','E','N','D','I','N','G','(',')',TOK_SUBFUNC_211,229
		.dc.b 9,'P','S','I','G','B','L','O','C','K','(',TOK_SUBFUNC_211,224
		.dc.b 11,'P','S','I','G','S','E','T','M','A','S','K','(',TOK_SUBFUNC_211,225
	.ENDC
		.dc.b 5,'P','O','P','U','P','(',TOK_SUBFUNC_210,125
		.dc.b 7,'P','S','I','G','N','A','L','(',TOK_SUBFUNC_210,190
		.dc.b 5,'P','K','I','L','L','(',TOK_SUBFUNC_210,186
		.dc.b 5,'P','R','E','A','D','(',TOK_SUBFUNC_209,92
		.dc.b 6,'P','W','R','I','T','E','(',TOK_SUBFUNC_209,91
		.dc.b 5,'P','N','I','C','E','(',TOK_SUBFUNC_210,145
		.dc.b 7,'P','R','E','N','I','C','E','(',TOK_SUBFUNC_210,146
		.dc.b 9,'P','G','E','T','P','P','I','D','(',')',TOK_SUBFUNC_210,147
		.dc.b 7,'P','R','U','S','A','G','E','(',TOK_SUBFUNC_210,135
		.dc.b 8,'P','G','E','T','P','I','D','(',')',TOK_SUBFUNC_210,128
		.dc.b 7,'P','S','Y','S','C','T','L','(',TOK_SUBFUNC_209,180
		.dc.b 7,'P','D','O','M','A','I','N','(',TOK_SUBFUNC_209,17
		.dc.b 5,'P','E','X','E','C','(',TOK_SUBFUNC_209,16
		.dc.b 9,'P','H','Y','S','B','A','S','E','(',')',TOK_SUBFUNC_209,120
		.dc.b 7,'P','R','O','T','O','B','T','(',TOK_SUBFUNC_209,226
		.dc.b 6,'P','R','T','B','L','K','(',TOK_SUBFUNC_209,228
		.dc.b 8,'P','T','E','R','M','R','E','S','(',TOK_SUBFUNC_209,255
		.dc.b 3,'P','C','R','?',TOK_SUBFUNC_210,15
		.dc.b 3,'P','C','R','(',TOK_SUBFUNC_210,17
		.dc.b 12,'P','G','E','T','P','R','I','O','R','I','T','Y','(',TOK_SUBFUNC_210,149
		.dc.b 12,'P','S','E','T','P','R','I','O','R','I','T','Y','(',TOK_SUBFUNC_210,150
		.dc.b 9,'P','S','E','T','L','I','M','I','T','(',TOK_SUBFUNC_210,162
		.dc.b 7,'P','U','S','R','V','A','L','(',TOK_SUBFUNC_210,161
	.IF GBE>=373
		.dc.b 6,'P','U','M','A','S','K','(',TOK_SUBFUNC_211,197
		.dc.b 8,'P','G','E','T','U','I','D','(',')',TOK_SUBFUNC_211,244
		.dc.b 7,'P','S','E','T','U','I','D','(',TOK_SUBFUNC_211,245
		.dc.b 8,'P','G','E','T','G','I','D','(',')',TOK_SUBFUNC_211,242
		.dc.b 7,'P','S','E','T','G','I','D','(',TOK_SUBFUNC_211,243
		.dc.b 6,'P','T','R','A','C','E','(',TOK_SUBFUNC_211,232
		.dc.b 6,'P','W','A','I','T','(',')',TOK_SUBFUNC_211,239
		.dc.b 6,'P','W','A','I','T','3','(',TOK_SUBFUNC_211,240
		.dc.b 8,'P','W','A','I','T','P','I','D','(',TOK_SUBFUNC_211,241
		.dc.b 4,'P','M','S','G','(',TOK_SUBFUNC_211,236
		.dc.b 6,'P','F','O','R','K','(',')',TOK_SUBFUNC_211,237
		.dc.b 7,'P','V','F','O','R','K','(',')',TOK_SUBFUNC_211,238
		.dc.b 2,'P','~','I',TOK_SUBFUNC_210,129
	.ENDC
	.ENDC
func_q_table: /* 13405 */
func_r_table: /* 13405 */
		.dc.b 6,'R','A','N','D','O','M','(',0,TOK_RANDOM
		.dc.b 4,'R','A','N','D','(',TOK_SUBFUNC_208,82
		.dc.b 6,'R','I','G','H','T','$','(',0,TOK_RIGHT1
	.IFNE GBE
		.dc.b 6,'R','T','R','I','M','$','(',0,TOK_RTRIM
	.ENDC
		.dc.b 3,'R','N','D','(',0,TOK_RND1
		.dc.b 2,'R','N','D',0,TOK_RND
		.dc.b 3,'R','O','L','(',TOK_SUBFUNC_208,12
		.dc.b 3,'R','O','R','(',TOK_SUBFUNC_208,13
		.dc.b 4,'R','O','L','&','(',TOK_SUBFUNC_208,50
		.dc.b 4,'R','O','R','&','(',TOK_SUBFUNC_208,51
		.dc.b 4,'R','O','L','|','(',TOK_SUBFUNC_208,54
		.dc.b 4,'R','O','R','|','(',TOK_SUBFUNC_208,55
		.dc.b 9,'R','S','R','C','_','L','O','A','D','(',TOK_SUBFUNC_208,124
		.dc.b 10,'R','S','R','C','_','F','R','E','E','(',')',TOK_SUBFUNC_208,125
		.dc.b 10,'R','S','R','C','_','G','A','D','D','R','(',TOK_SUBFUNC_208,126
		.dc.b 10,'R','S','R','C','_','S','A','D','D','R','(',TOK_SUBFUNC_208,127
		.dc.b 10,'R','S','R','C','_','O','B','F','I','X','(',TOK_SUBFUNC_208,128
	.IFNE GBE
		.dc.b 10,'R','S','R','C','_','R','C','F','I','X','(',TOK_SUBFUNC_209,166
	.ENDC
		.dc.b 3,'R','A','D','(',0,TOK_RAD
		.dc.b 5,'R','O','U','N','D','(',0,TOK_ROUND1
		.dc.b 6,'R','I','N','S','T','R','(',TOK_SUBFUNC_208,209
		.dc.b 12,'R','C','_','I','N','T','E','R','S','E','C','T','(',TOK_SUBFUNC_208,217
	.IFNE GBE
	.IF GBE>=373
		.dc.b 7,'R','E','A','L','L','O','C','(',TOK_SUBFUNC_212,53
	.ENDC
		.dc.b 3,'R','G','B','(',TOK_SUBFUNC_210,157
		.dc.b 6,'R','G','B','2','5','6','(',TOK_SUBFUNC_210,158
		.dc.b 7,'R','G','B','1','0','0','0','(',TOK_SUBFUNC_210,159
		.dc.b 6,'R','S','C','O','N','F','(',TOK_SUBFUNC_209,204
		.dc.b 8,'R','A','N','D','O','M','%','(',')',TOK_SUBFUNC_209,117
		.dc.b 5,'R','W','A','B','S','(',TOK_SUBFUNC_209,159
		.dc.b 8,'R','E','P','L','A','C','E','$','(',0,TOK_REPLACE
	.IF GBE>=373
		.dc.b 8,'R','C','_','E','Q','U','A','L','(',TOK_SUBFUNC_211,194
	.ENDC
	.ENDC
func_s_table: /* 134f3 */
		.dc.b 3,'S','G','N','(',TOK_SUBFUNC_208,100
		.dc.b 3,'S','I','N','(',0,TOK_SIN
		.dc.b 4,'S','I','N','Q','(',0,TOK_SINQ
		.dc.b 6,'S','P','A','C','E','$','(',0,TOK_SPACE
		.dc.b 3,'S','P','C','(',0,TOK_SPC
		.dc.b 3,'S','Q','R','(',0,TOK_SQR
		.dc.b 3,'S','T','E','P',0,TOK_STEP
		.dc.b 4,'S','T','R','$','(',0,TOK_STR1
		.dc.b 7,'S','T','R','I','N','G','$','(',0,TOK_STRING_CODE
		.dc.b 3,'S','H','L','(',TOK_SUBFUNC_208,10
		.dc.b 3,'S','H','R','(',TOK_SUBFUNC_208,11
		.dc.b 4,'S','H','L','&','(',TOK_SUBFUNC_208,48
		.dc.b 4,'S','H','R','&','(',TOK_SUBFUNC_208,49
		.dc.b 4,'S','H','L','|','(',TOK_SUBFUNC_208,52
		.dc.b 4,'S','H','R','|','(',TOK_SUBFUNC_208,53
		.dc.b 4,'S','W','A','P','(',TOK_SUBFUNC_208,17
		.dc.b 9,'S','H','E','L','_','R','E','A','D','(',TOK_SUBFUNC_208,129
		.dc.b 10,'S','H','E','L','_','W','R','I','T','E','(',TOK_SUBFUNC_208,130
		.dc.b 8,'S','H','E','L','_','G','E','T','(',TOK_SUBFUNC_208,131
		.dc.b 8,'S','H','E','L','_','P','U','T','(',TOK_SUBFUNC_208,132
		.dc.b 9,'S','H','E','L','_','F','I','N','D','(',TOK_SUBFUNC_208,133
		.dc.b 10,'S','H','E','L','_','E','N','V','R','N','(',TOK_SUBFUNC_208,134
		.dc.b 9,'S','C','R','P','_','R','E','A','D','(',TOK_SUBFUNC_208,172
		.dc.b 10,'S','C','R','P','_','W','R','I','T','E','(',TOK_SUBFUNC_208,173
		.dc.b 4,'S','U','C','C','(',TOK_SUBFUNC_208,96
		.dc.b 3,'S','U','B','(',TOK_SUBFUNC_208,3
		.dc.b 5,'S','T','I','C','K','(',TOK_SUBFUNC_208,206
		.dc.b 5,'S','T','R','I','G','(',TOK_SUBFUNC_208,207
		.dc.b 3,'S','T','O','P',0,TOK_STOP
		.dc.b 6,'S','I','N','G','L','E','{',0,TOK_SINGLE_REF
		.dc.b 3,'S','T','E','?',TOK_SUBFUNC_208,233
		.dc.b 5,'S','C','A','L','E','(',TOK_SUBFUNC_208,235
	.IFNE GBE
	.IF GBE>=373
		.dc.b 9,'S','V','E','R','S','I','O','N','(',')',TOK_SUBFUNC_212,9
		.dc.b 5,'S','S','B','R','K','(',TOK_SUBFUNC_212,5
		.dc.b 5,'S','Y','N','C','(',')',TOK_SUBFUNC_211,233
		.dc.b 8,'S','R','E','A','L','L','O','C','(',TOK_SUBFUNC_211,235
		.dc.b 6,'S','T','R','U','C','T','(',TOK_SUBFUNC_211,205
		.dc.b 7,'S','T','R','U','C','T','!','(',TOK_SUBFUNC_211,201
		.dc.b 7,'S','T','R','U','C','T','|','(',TOK_SUBFUNC_211,202
		.dc.b 7,'S','T','R','U','C','T','&','(',TOK_SUBFUNC_211,203
		.dc.b 7,'S','T','R','U','C','T','%','(',TOK_SUBFUNC_211,204
		.dc.b 7,'S','T','R','U','C','T','$','(',0,181
		.dc.b 5,'S','U','P','E','R','?',TOK_SUBFUNC_211,188
	.ENDC
	.IF GBE>=372
		.dc.b 11,'S','U','P','E','R','S','C','A','L','A','R','(',TOK_SUBFUNC_211,86
	.ENDC
		.dc.b 6,'S','E','C','O','N','D','(',TOK_SUBFUNC_210,220
		.dc.b 6,'S','E','T','S','T','R','(',TOK_SUBFUNC_210,21
		.dc.b 5,'S','B','Y','T','E','(',TOK_SUBFUNC_210,28
		.dc.b 5,'S','B','Y','T','E','{',TOK_SUBFUNC_210,29
		.dc.b 9,'S','E','T','C','O','O','K','I','E','(',TOK_SUBFUNC_210,203
		.dc.b 9,'S','H','E','L','_','R','D','E','F','(',TOK_SUBFUNC_210,185
		.dc.b 9,'S','H','E','L','_','W','D','E','F','(',TOK_SUBFUNC_210,184
		.dc.b 9,'S','H','E','L','_','H','E','L','P','(',TOK_SUBFUNC_210,183
		.dc.b 5,'S','P','L','I','T','(',TOK_SUBFUNC_210,177
		.dc.b 7,'S','U','P','T','I','M','E','(',TOK_SUBFUNC_210,136
		.dc.b 7,'S','C','R','D','M','P','(',')',TOK_SUBFUNC_210,133
		.dc.b 8,'S','T','R','P','E','E','K','$','(',0,TOK_CHAR
		.dc.b 5,'S','W','A','P','|','(',TOK_SUBFUNC_210,130
		.dc.b 7,'S','L','B','O','P','E','N','(',TOK_SUBFUNC_210,122
		.dc.b 8,'S','L','B','C','L','O','S','E','(',TOK_SUBFUNC_210,123
		.dc.b 10,'S','H','E','L','.','W','R','I','T','E','(',TOK_SUBFUNC_210,7
		.dc.b 1,'S',':',TOK_SUBFUNC_210,1
		.dc.b 6,'S','U','B','P','T','R','(',TOK_SUBFUNC_210,0
		.dc.b 7,'S','S','Y','S','T','E','M','(',TOK_SUBFUNC_209,13
		.dc.b 7,'S','Y','S','C','O','N','F','(',TOK_SUBFUNC_209,12
		.dc.b 9,'S','E','T','B','U','F','F','E','R','(',TOK_SUBFUNC_209,30
		.dc.b 7,'S','E','T','M','O','D','E','(',TOK_SUBFUNC_209,31
		.dc.b 12,'S','E','T','M','O','N','T','R','A','C','K','S','(',TOK_SUBFUNC_209,33
		.dc.b 9,'S','E','T','T','R','A','C','K','S','(',TOK_SUBFUNC_209,32
		.dc.b 9,'S','N','D','S','T','A','T','U','S','(',TOK_SUBFUNC_209,39
		.dc.b 8,'S','O','U','N','D','C','M','D','(',TOK_SUBFUNC_209,29
		.dc.b 12,'S','E','T','I','N','T','E','R','R','U','P','T','(',TOK_SUBFUNC_209,34
		.dc.b 5,'S','U','P','E','R','(',TOK_SUBFUNC_209,50
		.dc.b 7,'S','U','P','E','X','E','C','(',TOK_SUBFUNC_209,202
		.dc.b 6,'S','E','T','E','X','C','(',TOK_SUBFUNC_209,155
		.dc.b 9,'S','E','T','S','C','R','E','E','N','(',TOK_SUBFUNC_209,200
		.dc.b 10,'S','E','T','P','A','L','E','T','T','E','(',TOK_SUBFUNC_209,201
		.dc.b 7,'S','Y','I','E','L','D','(',')',TOK_SUBFUNC_209,174
		.dc.b 8,'S','H','U','T','D','O','W','N','(',TOK_SUBFUNC_209,179
		.dc.b 7,'S','E','T','T','I','M','E','(',TOK_SUBFUNC_209,110
		.dc.b 6,'S','E','T','P','R','T','(',TOK_SUBFUNC_209,223
		.dc.b 8,'S','E','T','C','O','L','O','R','(',TOK_SUBFUNC_209,199
		.dc.b 3,'S','N','D','?',TOK_SUBFUNC_209,58
		.dc.b 6,'S','A','L','E','R','T','(',TOK_SUBFUNC_209,253
		.dc.b 6,'S','Y','S','T','A','B','?',TOK_SUBFUNC_210,8
		.dc.b 6,'S','Y','S','T','A','B','(',TOK_SUBFUNC_210,3
		.dc.b 5,'S','Y','S','T','A','B',TOK_SUBFUNC_210,4
		.dc.b 9,'S','T','I','K','_','I','N','I','T','(',TOK_SUBFUNC_210,56
		.dc.b 11,'S','T','I','K','_','K','R','F','R','E','E','(',TOK_SUBFUNC_210,58
		.dc.b 14,'S','T','I','K','_','K','R','G','E','T','F','R','E','E','(',TOK_SUBFUNC_210,59
		.dc.b 17,'S','T','I','K','_','G','E','T','_','E','R','R','_','T','E','X','T','(',TOK_SUBFUNC_210,61
		.dc.b 12,'S','T','I','K','_','G','E','T','V','S','T','R','(',TOK_SUBFUNC_210,62
		.dc.b 13,'S','T','I','K','_','T','C','P','_','O','P','E','N','(',TOK_SUBFUNC_210,64
		.dc.b 14,'S','T','I','K','_','T','C','P','_','C','L','O','S','E','(',TOK_SUBFUNC_210,65
		.dc.b 13,'S','T','I','K','_','T','C','P','_','S','E','N','D','(',TOK_SUBFUNC_210,66
		.dc.b 19,'S','T','I','K','_','T','C','P','_','W','A','I','T','_','S','T','A','T','E','(',TOK_SUBFUNC_210,67
		.dc.b 11,'S','T','I','K','_','C','N','K','I','C','K','(',TOK_SUBFUNC_210,72
		.dc.b 17,'S','T','I','K','_','C','N','B','Y','T','E','_','C','O','U','N','T','(',TOK_SUBFUNC_210,73
		.dc.b 15,'S','T','I','K','_','C','N','G','E','T','_','C','H','A','R','(',TOK_SUBFUNC_210,74
		.dc.b 16,'S','T','I','K','_','C','N','G','E','T','_','B','L','O','C','K','(',TOK_SUBFUNC_210,76
		.dc.b 12,'S','T','I','K','_','R','E','S','O','L','V','E','(',TOK_SUBFUNC_210,78
		.dc.b 14,'S','T','I','K','_','C','N','G','E','T','I','N','F','O','(',TOK_SUBFUNC_210,83
	.ENDC
func_t_table: /* 1365c */
		.dc.b 3,'T','A','B','(',0,TOK_TAB
		.dc.b 3,'T','A','N','(',0,TOK_TAN
		.dc.b 3,'T','H','E','N',0,TOK_THEN
	.IFNE GBE
		.dc.b 5,'T','I','M','E','$','(',0,TOK_TIME1
	.ENDC
		.dc.b 4,'T','I','M','E','$',0,TOK_TIME
		.dc.b 4,'T','I','M','E','R',TOK_SUBFUNC_208,62
	.IFNE GBE
		.dc.b 10,'T','I','M','E','S','T','A','M','P','$','(',0,TOK_TIMESTAMP
	.ENDC
		.dc.b 1,'T','O',0,TOK_TO
		.dc.b 3,'T','R','U','E',0,TOK_TRUE
		.dc.b 5,'T','R','U','N','C','(',0,TOK_TRUNC
		.dc.b 4,'T','Y','P','E','(',TOK_SUBFUNC_208,190
		.dc.b 5,'T','R','A','C','E','$',0,TOK_TRACE
		.dc.b 5,'T','R','I','M','$','(',0,TOK_TRIM
		.dc.b 2,'T','T','?',TOK_SUBFUNC_208,234
	.IFNE GBE
	.IF GBE>=373
		.dc.b 8,'T','A','D','J','T','I','M','E','(',TOK_SUBFUNC_212,39
		.dc.b 13,'T','G','E','T','T','I','M','E','O','F','D','A','Y','(',TOK_SUBFUNC_212,40
		.dc.b 13,'T','S','E','T','T','I','M','E','O','F','D','A','Y','(',TOK_SUBFUNC_212,41
		.dc.b 10,'T','S','E','T','I','T','I','M','E','R','(',TOK_SUBFUNC_212,38
	.ENDC
		.dc.b 4,'T','I','M','E','(',TOK_SUBFUNC_210,221
	.IF GBE>=373
		.dc.b 6,'T','A','L','A','R','M','(',TOK_SUBFUNC_211,226
		.dc.b 7,'T','M','A','L','A','R','M','(',TOK_SUBFUNC_211,227
	.ENDC
	.IF GBE<=371
		.dc.b 7,'T','E','D','I','N','F','O','(',TOK_SUBFUNC_210,208
	.ENDC
		.dc.b 9,'T','G','E','T','D','A','T','E','(',')',TOK_SUBFUNC_209,19
		.dc.b 9,'T','G','E','T','T','I','M','E','(',')',TOK_SUBFUNC_209,20
		.dc.b 8,'T','S','E','T','D','A','T','E','(',TOK_SUBFUNC_209,105
		.dc.b 8,'T','S','E','T','T','I','M','E','(',TOK_SUBFUNC_209,106
		.dc.b 8,'T','I','C','K','C','A','L','(',')',TOK_SUBFUNC_209,156
	.IF GBE>=372
		.dc.b 8,'T','E','_','P','T','E','X','T','(',TOK_SUBFUNC_211,126
		.dc.b 9,'T','E','_','P','T','M','P','L','T','(',TOK_SUBFUNC_211,127
		.dc.b 9,'T','E','_','P','V','A','L','I','D','(',TOK_SUBFUNC_211,128
		.dc.b 7,'T','E','_','F','O','N','T','(',TOK_SUBFUNC_211,129
		.dc.b 9,'T','E','_','F','O','N','T','I','D','(',TOK_SUBFUNC_211,130
		.dc.b 7,'T','E','_','J','U','S','T','(',TOK_SUBFUNC_211,131
		.dc.b 8,'T','E','_','C','O','L','O','R','(',TOK_SUBFUNC_211,132
		.dc.b 11,'T','E','_','F','O','N','T','S','I','Z','E','(',TOK_SUBFUNC_211,133
		.dc.b 12,'T','E','_','T','H','I','C','K','N','E','S','S','(',TOK_SUBFUNC_211,134
		.dc.b 9,'T','E','_','T','X','T','L','E','N','(',TOK_SUBFUNC_211,135
		.dc.b 9,'T','E','_','T','M','P','L','E','N','(',TOK_SUBFUNC_211,136
		.dc.b 11,'T','E','_','F','R','A','M','E','C','O','L','(',TOK_SUBFUNC_211,137
		.dc.b 10,'T','E','_','T','E','X','T','C','O','L','(',TOK_SUBFUNC_211,138
		.dc.b 11,'T','E','_','T','E','X','T','M','O','D','E','(',TOK_SUBFUNC_211,139
		.dc.b 14,'T','E','_','F','I','L','L','P','A','T','T','E','R','N','(',TOK_SUBFUNC_211,140
		.dc.b 14,'T','E','_','I','N','T','E','R','I','O','R','C','O','L','(',TOK_SUBFUNC_211,141
	.ENDC
	.ENDC
func_u_table: /* 136ce */
		.dc.b 6,'U','P','P','E','R','$','(',0,TOK_UPPER
		.dc.b 4,'U','S','I','N','G',0,TOK_USING
	.IFNE GBE
	.IF GBE>=373
		.dc.b 8,'U','S','E','R','D','E','F','!','(',TOK_SUBFUNC_211,221
		.dc.b 9,'U','S','E','R','D','E','F','B','I','T',TOK_SUBFUNC_211,222
		.dc.b 8,'U','S','E','R','D','E','F','|','(',TOK_SUBFUNC_211,215
		.dc.b 9,'U','S','E','R','D','E','F','B','Y','T',TOK_SUBFUNC_211,216
		.dc.b 8,'U','S','E','R','D','E','F','&','(',TOK_SUBFUNC_211,217
		.dc.b 9,'U','S','E','R','D','E','F','W','R','D',TOK_SUBFUNC_211,218
		.dc.b 8,'U','S','E','R','D','E','F','%','(',TOK_SUBFUNC_211,219
		.dc.b 9,'U','S','E','R','D','E','F','L','N','G',TOK_SUBFUNC_211,220
	.ENDC
		.dc.b 6,'U','C','A','S','E','$','(',0,TOK_RCASE
		.dc.b 10,'U','N','L','O','C','K','S','N','D','(',')',TOK_SUBFUNC_209,28
		.dc.b 6,'U','N','P','A','C','K','(',TOK_SUBFUNC_209,94
	.IF GBE>=372
		.dc.b 7,'U','B','_','C','O','D','E','(',TOK_SUBFUNC_211,124
		.dc.b 7,'U','B','_','P','A','R','M','(',TOK_SUBFUNC_211,125
	.ENDC
	.ENDC
func_v_table: /* 136e4 */
		.dc.b 3,'V','A','L','(',0,TOK_VAL
		.dc.b 4,'V','A','L','?','(',TOK_SUBFUNC_208,73
		.dc.b 6,'V','A','R','P','T','R','(',TOK_SUBFUNC_208,187
		.dc.b 6,'V','A','R','I','A','T','(',0,TOK_VARIAT
		.dc.b 2,'V','A','R',0,TOK_VAR
		.dc.b 6,'V','D','I','B','A','S','E',TOK_SUBFUNC_208,40
		.dc.b 1,'V',':',TOK_SUBFUNC_208,203
		.dc.b 2,'V','~','H',TOK_SUBFUNC_208,213
		.dc.b 7,'V','_','O','P','N','W','K','(',TOK_SUBFUNC_208,105
		.dc.b 8,'V','_','C','L','S','W','K','(',')',TOK_SUBFUNC_208,106
		.dc.b 8,'V','_','O','P','N','V','W','K','(',TOK_SUBFUNC_208,107
		.dc.b 9,'V','_','C','L','S','V','W','K','(',')',TOK_SUBFUNC_208,108
		.dc.b 8,'V','_','U','P','D','W','K','(',')',TOK_SUBFUNC_208,109
		.dc.b 14,'V','S','T','_','L','O','A','D','_','F','O','N','T','S','(',TOK_SUBFUNC_208,110
		.dc.b 16,'V','S','T','_','U','N','L','O','A','D','_','F','O','N','T','S','(',TOK_SUBFUNC_208,111
		.dc.b 8,'V','_','C','L','R','W','K','(',')',TOK_SUBFUNC_208,214
		.dc.b 8,'V','Q','T','_','N','A','M','E','(',TOK_SUBFUNC_208,215
		.dc.b 10,'V','Q','T','_','E','X','T','E','N','T','(',TOK_SUBFUNC_208,216
	.IFNE GBE
	.IF GBE>=373
		.dc.b 13,'V','Q','_','T','A','B','S','T','A','T','U','S','(',')',TOK_SUBFUNC_212,65
		.dc.b 7,'V','_','E','E','O','L','(',')',TOK_SUBFUNC_212,66
		.dc.b 7,'V','_','E','E','O','S','(',')',TOK_SUBFUNC_212,67
		.dc.b 8,'V','_','R','M','C','U','R','(',')',TOK_SUBFUNC_212,68
		.dc.b 8,'V','_','D','S','P','C','U','R','(',TOK_SUBFUNC_212,69
		.dc.b 8,'V','_','C','U','R','U','P','(',')',TOK_SUBFUNC_212,60
		.dc.b 10,'V','_','C','U','R','D','O','W','N','(',')',TOK_SUBFUNC_212,61
		.dc.b 11,'V','_','C','U','R','R','I','G','H','T','(',')',TOK_SUBFUNC_212,62
		.dc.b 10,'V','_','C','U','R','L','E','F','T','(',')',TOK_SUBFUNC_212,63
		.dc.b 10,'V','_','C','U','R','H','O','M','E','(',')',TOK_SUBFUNC_212,64
		.dc.b 7,'V','_','R','V','O','N','(',')',TOK_SUBFUNC_212,56
		.dc.b 8,'V','_','R','V','O','F','F','(',')',TOK_SUBFUNC_212,57
		.dc.b 11,'V','_','E','X','I','T','_','C','U','R','(',')',TOK_SUBFUNC_212,58
		.dc.b 12,'V','_','E','N','T','E','R','_','C','U','R','(',')',TOK_SUBFUNC_212,59
		.dc.b 13,'V','Q','_','C','U','R','A','D','D','R','E','S','S','(',TOK_SUBFUNC_212,54
		.dc.b 12,'V','_','C','U','R','A','D','D','R','E','S','S','(',TOK_SUBFUNC_212,55
		.dc.b 10,'V','Q','_','C','H','C','E','L','L','S','(',TOK_SUBFUNC_211,193
		.dc.b 9,'V','_','B','E','Z','_','O','N','(',')',TOK_SUBFUNC_211,191
		.dc.b 10,'V','_','B','E','Z','_','O','F','F','(',')',TOK_SUBFUNC_211,192
	.ENDC
	.IF GBE>=372
		.dc.b 11,'V','_','H','A','R','D','C','O','P','Y','(',')',TOK_SUBFUNC_211,54
	.ENDC
		.dc.b 9,'V','Q','_','V','G','D','O','S','(',')',TOK_SUBFUNC_209,14
		.dc.b 7,'V','_','O','P','N','B','M','(',TOK_SUBFUNC_209,6
		.dc.b 8,'V','Q','_','C','O','L','O','R','(',TOK_SUBFUNC_209,0
		.dc.b 9,'V','S','T','_','P','O','I','N','T','(',TOK_SUBFUNC_209,21
		.dc.b 12,'V','G','E','T','M','O','N','I','T','O','R','(',')',TOK_SUBFUNC_209,229
		.dc.b 8,'V','G','E','T','S','I','Z','E','(',TOK_SUBFUNC_209,230
		.dc.b 8,'V','S','E','T','M','O','D','E','(',TOK_SUBFUNC_209,231
		.dc.b 10,'V','C','H','E','C','K','M','O','D','E','(',TOK_SUBFUNC_209,232
		.dc.b 10,'V','S','E','T','S','C','R','E','E','N','(',TOK_SUBFUNC_209,233
		.dc.b 11,'V','_','G','E','T','_','P','I','X','E','L','(',TOK_SUBFUNC_209,73
		.dc.b 10,'V','_','B','E','Z','_','Q','U','A','L','(',TOK_SUBFUNC_209,135
		.dc.b 9,'V','_','H','I','D','E','_','C','(',')',TOK_SUBFUNC_209,88
		.dc.b 9,'V','_','S','H','O','W','_','C','(',')',TOK_SUBFUNC_209,87
		.dc.b 15,'V','Q','F','_','A','T','T','R','I','B','U','T','E','S','(',')',TOK_SUBFUNC_209,127
		.dc.b 15,'V','Q','L','_','A','T','T','R','I','B','U','T','E','S','(',')',TOK_SUBFUNC_209,128
		.dc.b 15,'V','Q','M','_','A','T','T','R','I','B','U','T','E','S','(',')',TOK_SUBFUNC_209,129
		.dc.b 15,'V','Q','T','_','A','T','T','R','I','B','U','T','E','S','(',')',TOK_SUBFUNC_209,130
		.dc.b 12,'V','Q','T','_','F','O','N','T','I','N','F','O','(',TOK_SUBFUNC_209,42
		.dc.b 9,'V','Q','T','_','W','I','D','T','H','(',TOK_SUBFUNC_209,41
		.dc.b 9,'V','R','O','_','C','P','Y','F','M','(',TOK_SUBFUNC_209,4
		.dc.b 9,'V','R','T','_','C','P','Y','F','M','(',TOK_SUBFUNC_209,5
		.dc.b 8,'V','R','_','T','R','N','F','M','(',TOK_SUBFUNC_209,131
		.dc.b 8,'V','Q','_','E','X','T','N','D','(',TOK_SUBFUNC_209,132
		.dc.b 11,'V','Q','_','S','C','R','N','I','N','F','O','(',TOK_SUBFUNC_209,133
		.dc.b 8,'V','_','C','L','S','B','M','(',')',TOK_SUBFUNC_209,7
		.dc.b 8,'V','Q','_','M','O','U','S','E','(',TOK_SUBFUNC_209,136
		.dc.b 13,'V','S','T','_','A','L','I','G','N','M','E','N','T','(',TOK_SUBFUNC_209,15
		.dc.b 8,'V','S','_','C','O','L','O','R','(',TOK_SUBFUNC_208,253
		.dc.b 5,'V','_','B','E','Z','(',TOK_SUBFUNC_209,134
		.dc.b 7,'V','G','E','T','R','G','B','(',TOK_SUBFUNC_209,234
		.dc.b 7,'V','S','E','T','R','G','B','(',TOK_SUBFUNC_209,235
		.dc.b 8,'V','S','E','T','M','A','S','K','(',TOK_SUBFUNC_209,236
		.dc.b 8,'V','S','E','T','S','Y','N','C','(',TOK_SUBFUNC_209,237
		.dc.b 9,'V','_','C','U','R','T','E','X','T','(',TOK_SUBFUNC_209,121
		.dc.b 9,'V','S','T','_','C','O','L','O','R','(',TOK_SUBFUNC_209,122
		.dc.b 11,'V','S','T','_','E','F','F','E','C','T','S','(',TOK_SUBFUNC_209,123
		.dc.b 12,'V','S','T','_','R','O','T','A','T','I','O','N','(',TOK_SUBFUNC_209,124
		.dc.b 10,'V','S','T','_','H','E','I','G','H','T','(',TOK_SUBFUNC_209,125
		.dc.b 8,'V','S','T','_','F','O','N','T','(',TOK_SUBFUNC_209,126
		.dc.b 8,'V','S','L','_','T','Y','P','E','(',TOK_SUBFUNC_209,137
		.dc.b 9,'V','S','L','_','W','I','D','T','H','(',TOK_SUBFUNC_209,138
		.dc.b 8,'V','S','L','_','E','N','D','S','(',TOK_SUBFUNC_209,139
		.dc.b 9,'V','S','L','_','U','D','S','T','Y','(',TOK_SUBFUNC_209,140
		.dc.b 9,'V','S','L','_','C','O','L','O','R','(',TOK_SUBFUNC_209,141
		.dc.b 9,'V','S','M','_','C','O','L','O','R','(',TOK_SUBFUNC_209,142
		.dc.b 10,'V','S','M','_','H','E','I','G','H','T','(',TOK_SUBFUNC_209,143
		.dc.b 8,'V','S','M','_','T','Y','P','E','(',TOK_SUBFUNC_209,144
		.dc.b 9,'V','S','W','R','_','M','O','D','E','(',TOK_SUBFUNC_209,145
		.dc.b 9,'V','S','F','_','C','O','L','O','R','(',TOK_SUBFUNC_209,146
		.dc.b 12,'V','S','F','_','I','N','T','E','R','I','O','R','(',TOK_SUBFUNC_209,147
		.dc.b 13,'V','S','F','_','P','E','R','I','M','E','T','E','R','(',TOK_SUBFUNC_209,148
		.dc.b 9,'V','S','F','_','S','T','Y','L','E','(',TOK_SUBFUNC_209,149
		.dc.b 9,'V','S','F','_','U','D','P','A','T','(',TOK_SUBFUNC_209,150
		.dc.b 7,'V','S','_','C','L','I','P','(',TOK_SUBFUNC_209,169
		.dc.b 9,'V','S','C','_','F','O','R','M','(',')',TOK_SUBFUNC_209,170
		.dc.b 5,'V','_','B','A','R','(',TOK_SUBFUNC_209,181
		.dc.b 6,'V','_','R','B','O','X','(',TOK_SUBFUNC_209,182
		.dc.b 7,'V','_','R','F','B','O','X','(',TOK_SUBFUNC_209,183
		.dc.b 8,'V','R','_','R','E','C','F','L','(',TOK_SUBFUNC_209,184
		.dc.b 5,'V','_','A','R','C','(',TOK_SUBFUNC_209,185
		.dc.b 8,'V','_','C','I','R','C','L','E','(',TOK_SUBFUNC_209,186
		.dc.b 8,'V','_','E','L','L','A','R','C','(',TOK_SUBFUNC_209,187
		.dc.b 8,'V','_','E','L','L','P','I','E','(',TOK_SUBFUNC_209,188
		.dc.b 9,'V','_','E','L','L','I','P','S','E','(',TOK_SUBFUNC_209,189
		.dc.b 10,'V','_','P','I','E','S','L','I','C','E','(',TOK_SUBFUNC_209,190
		.dc.b 13,'V','_','C','O','N','T','O','U','R','F','I','L','L','(',TOK_SUBFUNC_209,191
		.dc.b 7,'V','_','G','T','E','X','T','(',TOK_SUBFUNC_209,192
		.dc.b 7,'V','_','P','L','I','N','E','(',TOK_SUBFUNC_209,193
		.dc.b 9,'V','_','P','M','A','R','K','E','R','(',TOK_SUBFUNC_209,194
		.dc.b 10,'V','_','F','I','L','L','A','R','E','A','(',TOK_SUBFUNC_209,195
		.dc.b 11,'V','_','J','U','S','T','I','F','I','E','D','(',TOK_SUBFUNC_209,196
		.dc.b 8,'V','Q','_','K','E','Y','_','S','(',TOK_SUBFUNC_209,197
		.dc.b 10,'V','_','B','E','Z','_','F','I','L','L','(',TOK_SUBFUNC_209,198
		.dc.b 8,'V','A','_','S','T','A','R','T','(',TOK_SUBFUNC_210,115
		.dc.b 6,'V','S','Y','N','C','(',')',TOK_SUBFUNC_210,151
	.IF GBE>=372
		.dc.b 16,'V','R','_','T','R','A','N','S','F','E','R','_','B','I','T','S','(',TOK_SUBFUNC_211,44
		.dc.b 13,'V','_','C','R','E','A','T','E','_','C','T','A','B','(',TOK_SUBFUNC_211,45
		.dc.b 13,'V','_','D','E','L','E','T','E','_','C','T','A','B','(',TOK_SUBFUNC_211,46
		.dc.b 13,'V','_','C','R','E','A','T','E','_','I','T','A','B','(',TOK_SUBFUNC_211,47
		.dc.b 13,'V','_','D','E','L','E','T','E','_','I','T','A','B','(',TOK_SUBFUNC_211,48
		.dc.b 12,'V','Q','_','P','X','_','F','O','R','M','A','T','(',TOK_SUBFUNC_211,49
		.dc.b 14,'V','_','G','E','T','_','C','T','A','B','_','I','D','(',')',TOK_SUBFUNC_211,50
		.dc.b 12,'V','Q','T','_','E','X','T','_','N','A','M','E','(',TOK_SUBFUNC_211,51
		.dc.b 9,'V','_','O','P','E','N','_','B','M','(',TOK_SUBFUNC_211,52
		.dc.b 11,'V','_','R','E','S','I','Z','E','_','B','M','(',TOK_SUBFUNC_211,53
		.dc.b 8,'V','S','T','_','N','A','M','E','(',TOK_SUBFUNC_211,55
		.dc.b 15,'V','Q','T','_','N','A','M','E','_','A','N','D','_','I','D','(',TOK_SUBFUNC_211,56
		.dc.b 12,'V','S','T','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,57
		.dc.b 12,'V','S','F','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,58
		.dc.b 12,'V','S','L','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,59
		.dc.b 12,'V','S','M','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,60
		.dc.b 12,'V','S','R','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,61
		.dc.b 12,'V','Q','T','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,62
		.dc.b 12,'V','Q','F','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,63
		.dc.b 12,'V','Q','L','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,64
		.dc.b 12,'V','Q','M','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,65
		.dc.b 12,'V','Q','R','_','F','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,66
		.dc.b 12,'V','S','T','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,67
		.dc.b 12,'V','S','F','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,68
		.dc.b 12,'V','S','L','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,69
		.dc.b 12,'V','S','M','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,70
		.dc.b 12,'V','S','R','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,71
		.dc.b 12,'V','Q','T','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,72
		.dc.b 12,'V','Q','F','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,73
		.dc.b 12,'V','Q','L','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,74
		.dc.b 12,'V','Q','M','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,75
		.dc.b 12,'V','Q','R','_','B','G','_','C','O','L','O','R','(',TOK_SUBFUNC_211,76
		.dc.b 15,'V','S','_','H','I','L','I','T','E','_','C','O','L','O','R','(',TOK_SUBFUNC_211,77
		.dc.b 12,'V','S','_','M','I','N','_','C','O','L','O','R','(',TOK_SUBFUNC_211,78
		.dc.b 12,'V','S','_','M','A','X','_','C','O','L','O','R','(',TOK_SUBFUNC_211,79
		.dc.b 15,'V','S','_','W','E','I','G','H','T','_','C','O','L','O','R','(',TOK_SUBFUNC_211,80
		.dc.b 15,'V','Q','_','H','I','L','I','T','E','_','C','O','L','O','R','(',TOK_SUBFUNC_211,81
		.dc.b 12,'V','Q','_','M','I','N','_','C','O','L','O','R','(',TOK_SUBFUNC_211,82
		.dc.b 12,'V','Q','_','M','A','X','_','C','O','L','O','R','(',TOK_SUBFUNC_211,83
		.dc.b 15,'V','Q','_','W','E','I','G','H','T','_','C','O','L','O','R','(',TOK_SUBFUNC_211,84
		.dc.b 8,'V','_','S','E','T','R','G','B','(',TOK_SUBFUNC_211,85
		.dc.b 12,'V','Q','T','_','X','F','N','T','I','N','F','O','(',TOK_SUBFUNC_211,87
		.dc.b 13,'V','_','C','O','L','O','R','2','V','A','L','U','E','(',TOK_SUBFUNC_210,211
		.dc.b 13,'V','_','V','A','L','U','E','2','C','O','L','O','R','(',TOK_SUBFUNC_210,210
		.dc.b 15,'V','_','C','O','L','O','R','2','N','E','A','R','E','S','T','(',TOK_SUBFUNC_210,209
		.dc.b 12,'V','Q','_','D','F','L','T','_','C','T','A','B','(',TOK_SUBFUNC_210,208
		.dc.b 16,'V','_','C','T','A','B','_','I','D','X','2','V','A','L','U','E','(',TOK_SUBFUNC_210,207
		.dc.b 14,'V','_','C','T','A','B','_','V','D','I','2','I','D','X','(',TOK_SUBFUNC_210,206
		.dc.b 14,'V','_','C','T','A','B','_','I','D','X','2','V','D','I','(',TOK_SUBFUNC_211,166
		.dc.b 11,'V','Q','_','C','T','A','B','_','I','D','(',')',TOK_SUBFUNC_211,167
		.dc.b 13,'V','Q','_','C','T','A','B','_','E','N','T','R','Y','(',TOK_SUBFUNC_211,168
		.dc.b 7,'V','Q','_','C','T','A','B','(',TOK_SUBFUNC_211,169
		.dc.b 13,'V','S','_','D','F','L','T','_','C','T','A','B','(',')',TOK_SUBFUNC_211,170
		.dc.b 13,'V','S','_','C','T','A','B','_','E','N','T','R','Y','(',TOK_SUBFUNC_211,171
		.dc.b 7,'V','S','_','C','T','A','B','(',TOK_SUBFUNC_211,172
		.dc.b 21,'V','R','_','C','L','I','P','_','R','E','C','T','S','_','B','Y','_','D','S','T','(',')',TOK_SUBFUNC_211,173
		.dc.b 21,'V','R','_','C','L','I','P','_','R','E','C','T','S','_','B','Y','_','S','R','C','(',')',TOK_SUBFUNC_211,174
		.dc.b 14,'V','Q','T','_','F','O','N','T','H','E','A','D','E','R','(',TOK_SUBFUNC_211,175
		.dc.b 9,'V','S','T','_','W','I','D','T','H','(',TOK_SUBFUNC_211,176
		.dc.b 18,'V','_','C','L','E','A','R','_','D','I','S','P','_','L','I','S','T','(',')',TOK_SUBFUNC_211,177
		.dc.b 8,'V','E','X','_','T','I','M','V','(',TOK_SUBFUNC_211,178
		.dc.b 8,'V','E','X','_','B','U','T','V','(',TOK_SUBFUNC_211,179
		.dc.b 8,'V','E','X','_','M','O','T','V','(',TOK_SUBFUNC_211,180
		.dc.b 8,'V','E','X','_','C','U','R','V','(',TOK_SUBFUNC_211,181
	.ENDC
	.ENDC
func_w_table: /* 137ce */
		.dc.b 1,'W',':',0,TOK_WORDARG
		.dc.b 7,'W','I','N','D','T','A','B','(',TOK_SUBFUNC_208,41
		.dc.b 6,'W','I','N','D','T','A','B',TOK_SUBFUNC_208,42
		.dc.b 4,'W','O','R','D','(',TOK_SUBFUNC_208,14
		.dc.b 11,'W','I','N','D','_','C','R','E','A','T','E','(',TOK_SUBFUNC_208,175
		.dc.b 9,'W','I','N','D','_','O','P','E','N','(',TOK_SUBFUNC_208,176
		.dc.b 10,'W','I','N','D','_','C','L','O','S','E','(',TOK_SUBFUNC_208,177
		.dc.b 11,'W','I','N','D','_','D','E','L','E','T','E','(',TOK_SUBFUNC_208,178
		.dc.b 8,'W','I','N','D','_','G','E','T','(',TOK_SUBFUNC_208,179
		.dc.b 8,'W','I','N','D','_','S','E','T','(',TOK_SUBFUNC_208,180
		.dc.b 9,'W','I','N','D','_','F','I','N','D','(',TOK_SUBFUNC_208,181
		.dc.b 11,'W','I','N','D','_','U','P','D','A','T','E','(',TOK_SUBFUNC_208,182
		.dc.b 9,'W','I','N','D','_','C','A','L','C','(',TOK_SUBFUNC_208,183
		.dc.b 7,'W','_','H','A','N','D','(','#',TOK_SUBFUNC_208,98
		.dc.b 8,'W','_','I','N','D','E','X','(','#',TOK_SUBFUNC_208,99
		.dc.b 8,'W','O','R','K','_','O','U','T','(',TOK_SUBFUNC_208,208
		.dc.b 3,'W','I','T','H',0,TOK_WITH
		.dc.b 4,'W','O','R','D','{',TOK_SUBFUNC_208,222
	.IFNE GBE
		.dc.b 9,'W','I','N','D','_','S','G','E','T','(',TOK_SUBFUNC_210,182
		.dc.b 9,'W','I','N','D','_','N','E','W','(',')',TOK_SUBFUNC_209,85
		.dc.b 8,'W','A','K','E','T','I','M','E','(',TOK_SUBFUNC_209,227
		.dc.b 7,'W','F','_','N','A','M','E','(',TOK_SUBFUNC_209,248
		.dc.b 7,'W','F','_','I','N','F','O','(',TOK_SUBFUNC_209,249
		.dc.b 7,'W','E','E','K','D','A','Y','(',TOK_SUBFUNC_210,91
		.dc.b 6,'W','F','_','T','O','P','(',TOK_SUBFUNC_210,160
		.dc.b 4,'W','E','E','K','(',TOK_SUBFUNC_211,1
	.ENDC
func_x_table: /* 138c0 */
		.dc.b 5,'X','B','I','O','S','(',TOK_SUBFUNC_208,86
		.dc.b 2,'X','O','R',0,TOK_XOR
		.dc.b 3,'X','O','R','(',TOK_SUBFUNC_208,7
	.IFNE GBE
	.IF GBE>=373
		.dc.b 7,'X','B','T','I','M','E','R','(',TOK_SUBFUNC_212,3
	.ENDC
		.dc.b 6,'X','L','A','T','E','$','(',0,TOK_XLATE
	.ENDC
func_y_table:
	.IFNE GBE
		.dc.b 4,'Y','E','A','R','(',TOK_SUBFUNC_210,215
	.ENDC
func_z_table:
	.IFNE GBE
		.dc.b 6,'Z','T','R','I','M','$','(',0,TOK_ZTRIM
	.ENDC

func_other_table:
		.dc.b 0,0x5c,0,TOK_INTDIV
		.dc.b 0,'[',0,TOK_LBRACKET
		.dc.b 0,']',0,TOK_RBRACKET
		.dc.b 4,'_','D','A','T','A',TOK_SUBFUNC_208,227
	.IFNE GBE
		.dc.b 9,'_','B','U','I','L','D','I','N','F','O',TOK_SUBFUNC_210,240
	.IF GBE>=373
		.dc.b 7,'_','B','M','P','S','I','Z','E',TOK_SUBFUNC_211,223
		.dc.b 7,'_','B','O','O','T','D','E','V',TOK_SUBFUNC_211,200
	.ENDC
		.dc.b 7,'_','V','E','R','S','I','O','N',TOK_SUBFUNC_210,227
		.dc.b 6,'_','G','E','M','D','O','S',TOK_SUBFUNC_209,18
	.IF GBE>=373
		.dc.b 6,'_','G','L','O','B','A','L',TOK_SUBFUNC_211,213
	.ENDC
		.dc.b 5,'_','C','P','U','I','D',TOK_SUBFUNC_210,224
		.dc.b 4,'_','M','I','N','T',TOK_SUBFUNC_209,1
	.IFNE GBE
	.IF (GBE<=372)|GBE_OLDCOMPAT
		.dc.b 3,'_','P','I','D',TOK_SUBFUNC_210,129
	.ENDC
	.ENDC
		.dc.b 3,'_','A','E','S',TOK_SUBFUNC_208,242
		.dc.b 3,'_','C','P','U',TOK_SUBFUNC_209,57
		.dc.b 3,'_','F','P','U',TOK_SUBFUNC_210,222
		.dc.b 3,'_','M','C','H',TOK_SUBFUNC_210,223
		.dc.b 3,'_','T','O','S',TOK_SUBFUNC_208,243
		.dc.b 3,'_','C','F','_',TOK_SUBFUNC_210,241
		.dc.b 2,'_','C','W',TOK_SUBFUNC_210,228
		.dc.b 2,'_','C','H',TOK_SUBFUNC_210,229
		.dc.b 2,'_','S','W',TOK_SUBFUNC_209,2
		.dc.b 2,'_','S','H',TOK_SUBFUNC_209,3
		.dc.b 2,'_','D','X',TOK_SUBFUNC_210,245
		.dc.b 2,'_','D','Y',TOK_SUBFUNC_210,246
		.dc.b 2,'_','D','W',TOK_SUBFUNC_210,247
		.dc.b 2,'_','D','H',TOK_SUBFUNC_210,248
	.ENDC
	.IF GBE>=373
		.dc.b 2,'_','A','3',TOK_SUBFUNC_211,251
		.dc.b 2,'_','A','4',TOK_SUBFUNC_211,252
		.dc.b 2,'_','A','5',TOK_SUBFUNC_211,253
		.dc.b 2,'_','A','6',TOK_SUBFUNC_211,254
		.dc.b 2,'_','A','7',TOK_SUBFUNC_211,255
	.ENDC
		.dc.b 1,'_','X',TOK_SUBFUNC_208,236
		.dc.b 1,'_','Y',TOK_SUBFUNC_208,237
	.IFNE GBE
		.dc.b 1,'_','P',TOK_SUBFUNC_208,255
	.ENDC
		.dc.b 1,'_','C',TOK_SUBFUNC_208,238
	.IFNE GBE
		.dc.b 1,'_','B',TOK_SUBFUNC_208,241
		.dc.b 1,'_','0',TOK_SUBFUNC_210,230
		.dc.b 1,'_','1',TOK_SUBFUNC_210,231
		.dc.b 1,'_','2',TOK_SUBFUNC_210,232
		.dc.b 1,'_','3',TOK_SUBFUNC_210,233
		.dc.b 1,'_','4',TOK_SUBFUNC_210,234
		.dc.b 1,'_','5',TOK_SUBFUNC_210,235
		.dc.b 1,'_','6',TOK_SUBFUNC_210,236
		.dc.b 1,'_','7',TOK_SUBFUNC_210,237
		.dc.b 1,'_','8',TOK_SUBFUNC_210,238
		.dc.b 1,'_','9',TOK_SUBFUNC_210,239
	.ENDC
		.dc.b 0,'^',0,TOK_POWER
		.dc.b 0,'{',TOK_SUBFUNC_208,112
		.dc.b 0,'}',0,TOK_RBRACE
		.dc.b 4,'E','O','F','(','#',TOK_SUBFUNC_208,78
		.dc.b 4,'L','O','F','(','#',TOK_SUBFUNC_208,79
		.dc.b 4,'L','O','C','(','#',TOK_SUBFUNC_208,80
		.dc.b 3,' ','A','T','(',0,TOK_AT2
		.dc.b 4,'S','U','C','C','(',0,TOK_SUCC
		.dc.b 4,'P','R','E','D','(',0,TOK_PRED
		.dc.b 0,'/',0,TOK_DIVIDE
		.dc.b -1
x55f08_371:
x5701f_372:
x57e10_373:

	.IFNE GBE
jmpbase:
    .ENDC
		.even
	.IFEQ GBE
jmpbase:
	.ENDC

f13696:
		moveq.l    #9,d0
		bra.s      f136a0

f1369a:
		moveq.l    #3,d0
		bra.s      f136a0

f1369e:
		moveq.l    #2,d0
f136a0:
		bsr        find_function
	.IFNE GBE
		cmpi.w     #(x136d0_end-x136d0)*2-1,d6
	.ELSE
		cmpi.w     #(x136d0_end-x136d0)*2,d6
	.ENDC
		bhi.s      f136a0_1
		move.w     d6,d1
		lsr.w      #1,d1
		bcc.s      f136a0_2
		move.b     x136d0(pc,d1.w),d1
		andi.w     #15,d1
		cmp.b      d1,d0
		beq.s      f136a0_3
f136a0_1:
		moveq.l    #-1,d7
		rts
f136a0_2:
		move.b     x136d0(pc,d1.w),d1
		lsr.w      #4,d1
		cmp.b      d1,d0
		bne.s      f136a0_1
f136a0_3:
		move.b     d6,(a1)+
		moveq.l    #0,d7
		rts

x136d0:
		.dc.b (3<<4)+3   /* TOK_AND,TOK_OR */
		.dc.b (3<<4)+3   /* TOK_XOR,TOK_IMP */
		.dc.b (3<<4)+3   /* TOK_EQV,TOK_SUB */
		.dc.b (3<<4)+3   /* TOK_ADD,TOK_MUL */
		.dc.b (3<<4)+3   /* TOK_DIVIDE,TOK_POWER */
		.dc.b (3<<4)+3   /* TOK_MOD,TOK_DIV */
		.dc.b (3<<4)+3   /* TOK_NE,TOK_LE */
		.dc.b (3<<4)+3   /* TOK_LE2,TOK_GE */
		.dc.b (3<<4)+3   /* TOK_GE2,TOK_LT */
		.dc.b (3<<4)+3   /* TOK_GT,TOK_EQ */
		.dc.b (5<<4)+5   /* TOK_NE_STR,TOK_LE_STR */
		.dc.b (5<<4)+5   /* TOK_LE2_STR,TOK_GE_STR */
		.dc.b (5<<4)+5   /* TOK_GE2_STR,TOK_LT_STR */
		.dc.b (5<<4)+5   /* TOK_GT_STR,TOK_EQ_STR */
		.dc.b (5<<4)+4   /* TOK_PLUS_STR,TOK_UPLUS */
		.dc.b (4<<4)+4   /* TOK_UMINUS,TOK_UNOT */
		.dc.b (7<<4)+7   /* TOK_RPAREN,TOK_COMMA */
		.dc.b (7<<4)+0   /* TOK_SEMI,TOK_LPAREN */
		.dc.b (2<<4)+0   /* TOK_ERRSTR,TOK_INT */
		.dc.b (0<<4)+0   /* TOK_TRUNC,TOK_FRAC */
		.dc.b (0<<4)+0   /* TOK_ABS,TOK_SIN */
		.dc.b (0<<4)+0   /* TOK_COS,TOK_TAN */
		.dc.b (0<<4)+3   /* TOK_ATAN,TOK_APPROX_EQ */
		.dc.b (0<<4)+0   /* TOK_RES_46,TOK_EXP */
		.dc.b (0<<4)+0   /* TOK_LOG,TOK_LOG10 */
		.dc.b (0<<4)+0   /* TOK_VAR,TOK_RPAREN2 */
		.dc.b (9<<4)+1   /* TOK_INPAUX,TOK_VAL */
		.dc.b (9<<4)+0   /* TOK_INPMID,TOK_PRINTNUM */
		.dc.b (9<<4)+0   /* TOK_TIME,TOK_ARRAY_ASS */
		.dc.b (0<<4)+0   /* TOK_LEFT1,TOK_LEFT2 */
		.dc.b (0<<4)+0   /* TOK_RIGHT1,TOK_RIGHT2 */
		.dc.b (0<<4)+0   /* TOK_MID2,TOK_MID3 */
		.dc.b (0<<4)+0   /* TOK_RES_64,TOK_ASIN */
		.dc.b (2<<4)+0   /* TOK_CHR,TOK_REFEND */
		.dc.b (0<<4)+0   /* TOK_RES_68,TOK_ASSIGN */
		.dc.b (0<<4)+0   /* TOK_LINE_COMMENT,TOK_TO */
		.dc.b (0<<4)+0   /* TOK_STEP,TOK_DOWNTO */
		.dc.b (0<<4)+0   /* TOK_THEN,TOK_GOTO_FUNC */
		.dc.b (0<<4)+0   /* TOK_GOSUB_FUNC,TOK_CHANNEL */
		.dc.b (0<<4)+0   /* TOK_SQR,TOK_PI */
		.dc.b (0<<4)+0   /* TOK_LBRACKET,TOK_RBRACKET */
		.dc.b (0<<4)+9   /* TOK_ACOS,TOK_INKEY */
		.dc.b (0<<4)+0   /* TOK_RND1,TOK_RND */
		.dc.b (0<<4)+0   /* TOK_RANDOM,TOK_PRINTSPACE */
		.dc.b (0<<4)+0   /* TOK_RBRACE,TOK_AT */
		.dc.b (0<<4)+3   /* TOK_IF,TOK_INTDIV */
		.dc.b (12<<4)+12 /* TOK_FLOAT_REF,TOK_DOUBLE_REF */
		.dc.b (0<<4)+0   /* TOK_INPUT1,TOK_INPUT2 */
		.dc.b (0<<4)+0   /* TOK_INPUT3,TOK_CHAR_REF */
		.dc.b (2<<4)+2   /* TOK_MKI,TOK_MKL */
		.dc.b (2<<4)+2   /* TOK_MKS,TOK_MKF */
		.dc.b (2<<4)+1   /* TOK_MKD,TOK_DEG */
		.dc.b (1<<4)+1   /* TOK_RAD,TOK_CVS */
		.dc.b (1<<4)+1   /* TOK_CVF,TOK_CVD */
		.dc.b (0<<4)+0   /* TOK_AS,TOK_OFFSET */
		.dc.b (0<<4)+9   /* TOK_CFLOAT,TOK_TRACE */
		.dc.b (0<<4)+0   /* TOK_ROUND1,TOK_ROUND2 */
		.dc.b (0<<4)+0   /* TOK_WITH,TOK_BIN1 */
		.dc.b (0<<4)+0   /* TOK_BIN2,TOK_MIN */
		.dc.b (0<<4)+0   /* TOK_MIN_STR,TOK_MAX */
		.dc.b (0<<4)+0   /* TOK_MAX_STR,TOK_SINGLE_REF */
		.dc.b (0<<4)+0   /* TOK_AT2,TOK_SINQ */
		.dc.b (0<<4)+0   /* TOK_LABEL,TOK_COSQ */
		.dc.b (9<<4)+0   /* TOK_DATE,TOK_UPPER */
		.dc.b (2<<4)+0   /* TOK_SPACE,TOK_STRING_CODE */
		.dc.b (0<<4)+0   /* TOK_STRING,TOK_SUCC */
		.dc.b (2<<4)+0   /* TOK_DIR,TOK_PRED */
		.dc.b (1<<4)+0   /* TOK_DRAW,TOK_TRIM */
	.IFNE GBE
		.dc.b (9<<4)+9   /* TOK_CMDLINE,TOK_CURDIR */
	.ENDC
x136d0_end:
		.even

cmd_index_table:
		.dc.w cmd_a_table-jmpbase
		.dc.w cmd_b_table-jmpbase
		.dc.w cmd_c_table-jmpbase
		.dc.w cmd_d_table-jmpbase
		.dc.w cmd_e_table-jmpbase
		.dc.w cmd_f_table-jmpbase
		.dc.w cmd_g_table-jmpbase
		.dc.w cmd_h_table-jmpbase
		.dc.w cmd_i_table-jmpbase
		.dc.w cmd_j_table-jmpbase
		.dc.w cmd_k_table-jmpbase
		.dc.w cmd_l_table-jmpbase
		.dc.w cmd_m_table-jmpbase
		.dc.w cmd_n_table-jmpbase
		.dc.w cmd_o_table-jmpbase
		.dc.w cmd_p_table-jmpbase
		.dc.w cmd_q_table-jmpbase
		.dc.w cmd_r_table-jmpbase
		.dc.w cmd_s_table-jmpbase
		.dc.w cmd_t_table-jmpbase
		.dc.w cmd_u_table-jmpbase
		.dc.w cmd_v_table-jmpbase
		.dc.w cmd_w_table-jmpbase
		.dc.w cmd_x_table-jmpbase
		.dc.w cmd_y_table-jmpbase
		.dc.w cmd_z_table-jmpbase

func_index_table:
		.dc.w func_a_table-jmpbase
		.dc.w func_b_table-jmpbase
		.dc.w func_c_table-jmpbase
		.dc.w func_d_table-jmpbase
		.dc.w func_e_table-jmpbase
		.dc.w func_f_table-jmpbase
		.dc.w func_g_table-jmpbase
		.dc.w func_h_table-jmpbase
		.dc.w func_i_table-jmpbase
		.dc.w func_j_table-jmpbase
		.dc.w func_k_table-jmpbase
		.dc.w func_l_table-jmpbase
		.dc.w func_m_table-jmpbase
		.dc.w func_n_table-jmpbase
		.dc.w func_o_table-jmpbase
		.dc.w func_p_table-jmpbase
		.dc.w func_q_table-jmpbase
		.dc.w func_r_table-jmpbase
		.dc.w func_s_table-jmpbase
		.dc.w func_t_table-jmpbase
		.dc.w func_u_table-jmpbase
		.dc.w func_v_table-jmpbase
		.dc.w func_w_table-jmpbase
		.dc.w func_x_table-jmpbase
		.dc.w func_y_table-jmpbase
		.dc.w func_z_table-jmpbase

x1377c:
		lea.l      o850(a6),a4
		lea.l      general_buffer(a6),a5
x1377c_1:
		move.b     (a4)+,d0
		bne.s      x1377c_2
		moveq.l    #EOL,d0
x1377c_2:
		cmpi.b     #'z',d0
		bhi.s      x1377c_3
		cmpi.b     #'a',d0
		bcs.s      x1377c_3
		subi.b     #' ',d0
x1377c_3:
		move.b     d0,(a5)+
		cmpi.b     #CR,d0 /* FIXME: handle also LF */
		bne.s      x1377c_1
		lea.l      general_buffer(a6),a0
		rts

skip_spaces_0:
		addq.l     #1,a0
skip_spaces:
		cmpi.b     #' ',(a0)
		beq.s      skip_spaces_0
		rts

x137b2:        .dc.w 0
x137b4:        .dc.l 0
longest_match: .dc.l 0
x137bc:        .dc.l 0

/*
 * a2 = yLET_args/LABEL_args/yGOSUB_args
 */
x137c0:
		lea.l      o1364(a6),a1
		move.w     d0,(a1)+
		movea.l    x137bc(pc),a0
		bsr        parse_cmd_args
		move.l     a1,d0
		rts

x137d2:
		sf         x137b2
		move.l     a7,x13898
		move.l     a0,longest_match
		lea.l      o1364(a6),a1
		clr.l      (a1)
		bsr.s      x1377c
		bsr.s      skip_spaces
		move.l     a0,x137bc
		bsr        x1389c
		bsr        parse_cmd_args
		move.l     a1,d0
		bne.s      x137d2_1
		lea.l      yLET_args(pc),a2
		move.w     #TOK_CMD_ASSIGN_FLOAT*2,d0
		bsr.s      x137c0
		bne.s      x137d2_1
		lea.l      LABEL_args(pc),a2
		move.w     #TOK_CMD_LABEL*2,d0
		bsr.s      x137c0
		bne.s      x137d2_1
		lea.l      yGOSUB_args(pc),a2
		move.w     #TOK_CMD_GOSUB_IMP*2,d0
		bsr.s      x137c0
		beq.s      x137d2_5
x137d2_1:
		bmi.s      x137d2_6
		pea.l      (a0)
		bsr        x154f0
		bsr        x15982
		move.l     x137b4(pc),d0
		beq.s      x137d2_4
		movea.l    d0,a0
		lea.l      -256(a0),a0
		move.l     a1,d0
		ble.s      x137d2_4
		addq.l     #1,d0
		bclr       #0,d0
		movea.l    d0,a1
		movea.l    a0,a2
		moveq.l    #-1,d0
x137d2_2:
		addq.w     #1,d0
		cmpi.b     #' ',-(a2)
		beq.s      x137d2_2
		move.b     d0,(a1)+
		cmpi.b     #'!',(a0)+
		beq.s      x137d2_3
		addq.l     #1,a0
x137d2_3:
		move.b     (a0)+,d0
		move.b     d0,(a1)+
		cmpi.b     #13,d0
		bne.s      x137d2_3
x137d2_4:
		movea.l    (a7)+,a0
		move.l     a1,d0
		lea.l      o1362(a6),a1
		sub.l      a1,d0
		addq.w     #1,d0
		andi.w     #0xFFFE,d0
		cmpi.w     #0x10FE,d0
		bhi.s      x137d2_6
		move.w     d0,(a1)
		asl.w      2(a1)
		rts
x13886:
		movea.l    x13898(pc),a7
		suba.l     a1,a1
x137d2_5:
		movea.l    longest_match(pc),a0
		rts
x137d2_6:
		lea.l      (-1).w,a1
		rts

x13898: .dc.l 0

x1389c:
		moveq.l    #0,d2
		move.b     (a0),d2
		cmpi.b     #'E',d2
		bne.s      x1389c_4
		cmpi.b     #'N',1(a0)
		bne.s      x1389c_4
		cmpi.b     #'D',2(a0)
		bne.s      x1389c_4
		cmpi.b     #EOL,3(a0)
		beq.s      x1389c_1
		cmpi.b     #' ',3(a0)
		bne.s      x1389c_4
x1389c_1:
		addq.l     #3,a0
		move.w     #TOK_CMD_END*2,(a1)+
		lea.l      yENDIF_args(pc),a2
		rts
x1389c_2:
		lea.l      cmd_table(pc),a2
		moveq.l    #64,d2
		bra.s      x1389c_5
x1389c_3:
		lea.l      cmd_other_table(pc),a2
		moveq.l    #127,d2
		bra.s      x1389c_5
x1389c_4:
		lea.l      cmd_index_table(pc),a2
		move.w     d2,d3
		subi.w     #'A',d3
		bmi.s      x1389c_2
		cmpi.w     #25,d3
		bhi.s      x1389c_3
		add.w      d3,d3
		move.w     0(a2,d3.w),d3
		lea.l      jmpbase(pc),a2
		adda.w     d3,a2
x1389c_5:
		movea.l    a0,a4
x1389c_6:
		moveq.l    #0,d0
		move.b     (a2)+,d0
		bmi.s      x1389c_10
		lea.l      5(a2,d0.w),a3
		cmp.b      (a2),d2
		bcs.s      x1389c_10
x1389c_7:
		cmpm.b     (a0)+,(a2)+
		dbne       d0,x1389c_7
		beq.s      x1389c_9
		cmpi.b     #' ',-1(a0)
		beq.s      x1389c_9
		cmpi.b     #13,-1(a0)
		beq.s      x1389c_8
		movea.l    a3,a2
		movea.l    a4,a0
		bra.s      x1389c_6
x1389c_8:
		subq.l     #1,a0
x1389c_9:
		move.b     -4(a3),-(a7)
		move.w     (a7)+,d1  /* d1 = -4(a3)<<8 */
		move.b     -3(a3),d1
		move.w     d1,(a1)+
		move.b     -2(a3),-(a7)
		move.w     (a7)+,d0  /* d0 = -2(a3)<<8 */
		move.b     -1(a3),d0
		lea.l      jmpbase(pc),a2
		adda.w     d0,a2
		rts
x1389c_10:
		move.w     #TOK_CMD_ASSIGN_FLOAT*2,(a1)+
		lea.l      yLET_args.l,a2
		rts


ARG_PUSH      = 255
ARG_CALL_FUNC = 254
ARG_POP       = 253
ARG_END       = 252
ARG_REPLACE   = 251
ARG_BACK      = 250

/* gfa: 22f7e */
/* 371: 561ce */
/* 372: 572e6 */
/* 373: 580d6 */
x1395a:
parse_cmd_args:
		clr.l      x137b4
		pea.l      (0).w
		pea.l      (a1)
		pea.l      (a0)
		clr.l      8438(a6)
parse_cmd_args0:
		moveq.l    #0,d7
		moveq.l    #0,d0
		move.b     (a2)+,d0
		cmpi.b     #240,d0
		bhi.s      x1395a_5
	.IFNE GBE
		cmpi.b     #TOK_SUBFUNC_208,d0 /* secondary function table? */
		bcs.s      x1395a_2
		cmpi.b     #TOK_SUBFUNC_214,d0
		bhi.s      x1395a_2
	.ELSE
		cmpi.b     #TOK_SUBFUNC_208,d0 /* secondary function table? */
		bne.s      x1395a_2
	.ENDC
		asl.w      #8,d0
		move.b     (a2)+,d0
x1395a_2:
		bsr        handle_function
		tst.b      d7
		beq.s      parse_cmd_args0
		bra.s      x1395a_11
/* handle 0xfc & 0xfd */
x1395a_3:
		addq.l     #8,a7
		movea.l    (a7)+,a2
		move.l     a2,d0
		bne.s      parse_cmd_args0
		move.l     a1,d0
		sub.l      a6,d0
		cmpi.l     #o1842,d0 /* maybe bug here in GBE: same value as in GFA */
		bcs.s      x1395a_4
		lea.l      (-1).w,a1
x1395a_4:
		rts

/* gfa: 22fca */
/* 371: 56220 */
/* 372: 57338 */
/* 373: 58128 */
/* XXX */
x1395a_5:
		addq.b     #2,d0
		bgt.s      x1395a_8
		beq.s      x1395a_9
		addq.b     #2,d0
		bpl.s      x1395a_3
		addq.b     #2,d0
		bgt.s      x1395a_7
		beq.s      x1395a_6
		move.b     (a2)+,(a1)+
		bra.s      parse_cmd_args0
/* handle 0xfa */
x1395a_6:
		subq.l     #1,a1
		bra.s      parse_cmd_args0
/* handle 0xfb */
x1395a_7:
		move.b     (a2)+,-1(a1)
		bra.s      parse_cmd_args0

/* handle 0xff */
x1395a_8:
		move.b     (a2)+,-(a7)
		move.w     (a7)+,d0
		move.b     (a2)+,d0 /* d0.w = *((short *)a2++) now */
		pea.l      (a2)
		pea.l      (a1)
		pea.l      (a0)
		lea.l      jmpbase(pc),a2
		adda.w     d0,a2
		bra.s      parse_cmd_args0

/* handle 0xfe */
x1395a_9:
		move.b     (a2)+,-(a7)
		move.w     (a7)+,d0
		move.b     (a2)+,d0 /* d0.w = *((short *)a2++) now */
		pea.l      (a2)
		pea.l      (a1)
		pea.l      (a0)
		lea.l      jmpbase(pc),a2
		jsr        0(a2,d0.w)
		tst.b      d7 /* does not come back here in call to f14bde */
		beq.s      x1395a_3
/* error */
x1395a_10:
		addq.l     #8,a7
		movea.l    (a7)+,a2
		move.l     a2,d0
		beq.s      x1395a_14

x1395a_11:
		move.b     (a2)+,d0
		cmpi.b     #249,d0
		beq.s      x1395a_12
		cmpi.b     #ARG_END,d0
		beq.s      x1395a_10
		cmpi.b     #ARG_POP,d0
		beq.s      x1395a_13
		bcs.s      x1395a_11
		addq.l     #1,a2
x1395a_12:
		addq.l     #1,a2
		bra.s      x1395a_11
x1395a_13:
		movea.l    (a7),a0
		movea.l    4(a7),a1
		bra        parse_cmd_args0
x1395a_14:
		suba.l     a1,a1
		rts

/*
 * function code in d0.w
 * bits 8-15: secondary table code
 */
/* 371: 5629c */
/* 372: 573b4 */
/* 373: 581a4 */
handle_function:
		bsr        find_function
handle_function_1:
		cmp.w      d0,d6
		sne        d7
		beq.s      handle_function_2
		cmpi.b     #TOK_LINE_COMMENT,d0
		beq.s      handle_function_6
		cmpa.l     longest_match(pc),a0
		bcs.s      handle_function_5
		move.l     a0,longest_match
		rts
handle_function_2:
		cmpi.w     #255,d0
		bls.s      handle_function_3
		rol.w      #8,d0
		move.b     d0,(a1)+
		rol.w      #8,d0
handle_function_3:
		move.b     d0,(a1)+
handle_function_4:
		cmpa.l     longest_match(pc),a0
		bcs.s      handle_function_5
		move.l     a0,longest_match
handle_function_5:
		rts
handle_function_6:
		cmpi.b     #'/',(a0)
		bne.s      handle_function_7
		cmpi.b     #'/',1(a0)
		beq.s      handle_function_8
		cmpi.b     #'*',1(a0)
		beq.s      handle_function_8
handle_function_7:
		cmpi.b     #'!',(a0)
		bne.s      handle_function_4
handle_function_8:
		cmpi.w     #TOK_CMD_INLINE*2,o1364(a6)
		beq.s      handle_function_4
		move.w     d0,d6
		move.l     a0,x137b4
		bra.s      handle_function_1

find_function_10:
		lea.l      func_misc_table(pc),a3
		cmpi.b     #('/'-'A')&255,d6
		beq.s      find_function_11
		moveq.l    #64,d6
		bra.s      find_function_1
find_function_11:
		cmpi.b     #'/',1(a0)
		beq.s      find_function_12
		cmpi.b     #'*',1(a0)
		beq.s      find_function_12
		moveq.l    #8,d6
		addq.l     #1,a0
		.IFNE GBE
		bra.s      find_function_7
		.ELSE
		bra.w      find_function_7
		.ENDC
find_function_12:
		movea.l    a0,a5
		moveq.l    #-1,d6
		rts
find_function_13:
		lea.l      func_other_table(pc),a3
		moveq.l    #127,d6
		bra.s      find_function_1

/*
 * find a function name in table
 * return code in d6 (bits 8-15: secondary table code)
 */
find_function:
		cmpa.l     8438(a6),a0
		beq.s      find_function_5
		move.l     a0,8438(a6)
		bsr        skip_spaces
		moveq.l    #0,d6
		move.b     (a0),d6
		subi.w     #'A',d6
		bmi.s      find_function_10
		cmpi.w     #25,d6
	.IFNE GBE
		bhi.s      find_function_13
	.ELSE
		bcc.s      find_function_13
	.ENDC
		lea.l      func_index_table(pc),a3
		add.w      d6,d6
		move.w     0(a3,d6.w),d6
		lea.l      jmpbase(pc),a3
		adda.w     d6,a3
		move.b     (a0),d6
find_function_1:
		movea.l    a0,a4
find_function_2:
		moveq.l    #0,d1
		move.b     (a3)+,d1
		bmi.s      find_function_4
		lea.l      3(a3,d1.w),a5
		cmp.b      (a3),d6
		bcs.s      find_function_4
find_function_3:
		cmpm.b     (a0)+,(a3)+
		dbne       d1,find_function_3
		beq.s      find_function_6
		movea.l    a5,a3
		movea.l    a4,a0
		bra.s      find_function_2
find_function_4:
		moveq.l    #-1,d6
		movea.l    a0,a5
		rts
find_function_5:
		movea.l    a5,a0
		rts
find_function_6:
		move.b     -2(a5),-(a7)
		move.w     (a7)+,d6
		move.b     -1(a5),d6
find_function_7:
		movea.l    a0,a5
		cmpi.b     #'A',-1(a0)
		bcs.s      find_function_9
		cmpi.b     #'Z',-1(a0)
		bhi.s      find_function_9
		cmpi.b     #TOK_GE2_STR,d6 /* wtf? why .b? */
		bls.s      find_function_9
		move.b     (a0),d1
		cmpi.b     #'_',d1
		beq.s      find_function_8
		cmpi.b     #'.',d1
		beq.s      find_function_8
		cmpi.b     #'0',d1
		bcs.s      find_function_9
		cmpi.b     #'9',d1
		bls.s      find_function_8
		cmpi.b     #'A',d1
		bcs.s      find_function_9
		cmpi.b     #'Z',d1
		bhi.s      find_function_9
find_function_8:
		moveq.l    #-1,d6
find_function_9:
		rts

f13b62:
		moveq.l    #0,d7 /* placeholder for target label */
		move.l     d7,(a1)+
		rts

f13b68:
		moveq.l    #TOK_CMD_DO_WHILE*2,d0
		bra.s      f13b6c_1
f13b6c:
		moveq.l    #TOK_CMD_LOOP_WHILE*2,d0
f13b6c_1:
		move.w     d0,o1364(a6)
		clr.l      (a1)+
f13b6c_2:
		cmpi.b     #' ',(a0)+
		beq.s      f13b6c_2
		cmpi.b     #'U',-(a0)
		beq.s      f13b6c_5
		cmpi.b     #'W',(a0)+
		bne.s      f13b6c_6
		cmpi.b     #'H',(a0)+
		bne.s      f13b6c_4
		cmpi.b     #'I',(a0)+
		bne.s      f13b6c_4
		cmpi.b     #'L',(a0)+
		bne.s      f13b6c_4
		cmpi.b     #'E',(a0)+
f13b6c_7:
		bne.s      f13b6c_4
f13b6c_3:
		cmpi.b     #' ',(a0)+
		beq.s      f13b6c_3
f13b6c_4:
		subq.l     #1,a0
		rts
f13b6c_5:
		addq.w     #(TOK_CMD_DO_UNTIL-TOK_CMD_DO_WHILE)*2,o1364(a6) /* DO WHILE -> DO UNTIL */
		addq.l     #1,a0
		cmpi.b     #'N',(a0)+
		bne.s      f13b6c_4
		cmpi.b     #'T',(a0)+
		bne.s      f13b6c_4
		cmpi.b     #'I',(a0)+
		bne.s      f13b6c_4
		cmpi.b     #'L',(a0)+
		bra.s      f13b6c_7
f13b6c_6:
		moveq.l    #-1,d7
		rts

f13bca:
		cmpi.b     #' ',-1(a0)
		beq.s      f13bca_1
		cmpi.b     #' ',(a0)
		bne.s      f13bca_1
		addq.l     #1,a0
f13bca_1:
		lea.l      -256(a0),a3
f13bca_2:
		move.b     (a3)+,(a1)+
		cmpi.b     #13,-1(a3)
		bne.s      f13bca_2
		moveq.l    #0,d7
		rts

x13bec:
		addq.l     #1,a0
x13bec_3:
		moveq.l    #0,d0
		moveq.l    #-2,d2
x13bec_1:
		addq.w     #1,d2
		move.b     (a0)+,d1
		subi.b     #'0',d1
		cmpi.b     #1,d1
		bhi.s      x13bec_4
		add.l      d0,d0
		or.b       d1,d0
		tst.l      d0
		bpl.s      x13bec_1
x13bec_2:
		addq.l     #1,a0
x13bec_4:
		move.b     #TOK_BIN_DBL_CONST,(a1)+
		bra.s      x13c36_5

x13c10:
		moveq.l    #0,d0
		moveq.l    #-2,d2
x13c10_1:
		addq.w     #1,d2
		move.b     (a0)+,d1
		subi.b     #'0',d1
		cmpi.b     #7,d1
		bhi.s      x13c10_2
		asl.l      #3,d0
		or.b       d1,d0
		cmpi.l     #0x20000000,d0
		bcs.s      x13c10_1
		addq.l     #1,a0
x13c10_2:
		move.b     #TOK_OCT_DBL_CONST,(a1)+
		bra.s      x13c36_5

x13c36:
		addq.l     #1,a0
		move.b     (a0)+,d0
		cmpi.b     #'X',d0
		beq.s      x13bec_3
		cmpi.b     #'O',d0
		beq.s      x13c10
		cmpi.b     #'H',d0
		beq.s      x13c36_2
		subq.l     #2,a0
x13c36_1:
		addq.l     #1,a0
x13c36_2:
		moveq.l    #0,d0
		moveq.l    #-2,d2
x13c36_6:
		addq.w     #1,d2
		move.b     (a0)+,d1
		cmpi.b     #'F',d1
		bhi.s      x13c36_4
		subi.b     #'0',d1
		bmi.s      x13c36_4
		cmpi.b     #9,d1
		bls.s      x13c36_3
		subq.b     #7,d1
		cmpi.b     #9,d1
		bls.s      x13c36_4
x13c36_3:
		asl.l      #4,d0
		or.b       d1,d0
		cmpi.l     #0x10000000,d0
		bcs.s      x13c36_6
		addq.l     #1,a0
x13c36_4:
		move.b     #TOK_HEX_DBL_CONST,(a1)+
x13c36_5:
		subq.l     #1,a0
		tst.w      d2
		bmi.s      f13c9a_6
		.IFNE GBE
		jsr        FITOF.l
		.ELSE
		jsr        322(a6) /* -> FITOF */
		.ENDC
		move.l     a1,d3
		lsr.b      #1,d3
		bcc.s      f13c9a_4 /* odd address? */
		subq.b     #1,-1(a1) /* turn it into padding token */
		bra.s      f13c9a_3

f13c9a:
		bsr        skip_spaces
		cmpi.b     #'&',(a0)
		beq.s      x13c36
		cmpi.b     #'$',(a0)
		beq.s      x13c36_1
		cmpi.b     #'%',(a0)
		beq        x13bec
		move.w     d6,-(a7)
		jsr        Fval.l
		move.w     (a7)+,d6
		tst.w      d2
		bmi.s      f13c9a_6
		beq.s      f13c9a_7
		tst.w      d1
		bne.s      f13c9a_2
		cmpi.w     #512,d2
		bne.s      f13c9a_1
		cmpi.l     #0x80000000,d0
		beq.s      f13c9a_8
f13c9a_1:
		cmpi.w     #513,d2
		bne.s      f13c9a_2
		cmpi.l     #0x80000000,d0
		beq.s      f13c9a_9
		cmpi.l     #0xC0000000,d0
		beq.s      f13c9a_10
f13c9a_2:
		move.b     #TOK_DEC_DBL_CONST,(a1)+
		move.l     a1,d3
		lsr.b      #1,d3
		bcc.s      f13c9a_4
		move.b     #TOK_DEC_DBL_CONST_PAD,-1(a1)
f13c9a_3:
		clr.b      (a1)+
f13c9a_4:
		move.l     d0,(a1)+
		move.w     d1,(a1)+
		move.w     d2,(a1)+
f13c9a_5:
		moveq.l    #0,d7
		rts
f13c9a_6:
		moveq.l    #-1,d7
		rts
f13c9a_7:
		moveq.l    #TOK_CONST_ZERO-256,d0
		bra.s      f13c9a_11
f13c9a_8:
		moveq.l    #TOK_CONST_ONE-256,d0
		bra.s      f13c9a_11
f13c9a_9:
		moveq.l    #TOK_CONST_TWO-256,d0
		bra.s      f13c9a_11
f13c9a_10:
		moveq.l    #TOK_CONST_THREE-256,d0
f13c9a_11:
		move.b     d0,(a1)+
		bra.s      f13c9a_5

f13d1c:
		bsr        skip_spaces
		bra.s      f13d22_1

f13d22:
		bsr        skip_spaces
		cmpi.b     #'"',(a0)
		bne.s      f13c9a_6
		addq.l     #1,a0
f13d22_1:
		move.b     #TOK_STRING_CONST,(a1)+
		movea.l    a1,a3
		clr.b      (a1)+
f13d22_2:
		move.b     (a0)+,d0
		cmpi.b     #CR,d0 /* FIXME: handle also LF */
		beq.s      f13d22_5
		cmpi.b     #'"',d0
		beq.s      f13d22_4
f13d22_3:
		move.b     -257(a0),(a1)+
		addq.b     #1,(a3)
		bra.s      f13d22_2
f13d22_4:
		cmp.b      (a0),d0
		bne.s      f13d22_6
		addq.l     #1,a0
		bra.s      f13d22_3
f13d22_5:
		subq.l     #1,a0
f13d22_6:
		moveq.l    #0,d7
		rts

f13d5a:
		cmpi.b     #87,(a0)
		bne.s      f13c9a_6
		addq.l     #1,a0
		rts

f13d64:
		addq.w     #2,o1364(a6)
		rts

f13d6a:
		move.w     #TOK_CMD_FILESELECT*2,o1364(a6)
		lea.l      cmd_fileselect(pc),a2
		bra.s      f13da6_1
f13d76:
		move.w     #TOK_CMD_FILES*2,o1364(a6)
		lea.l      cmd_files(pc),a2
		bra.s      f13da6_1
f13d82:
		move.w     #TOK_CMD_DOUBLE_REF*2,o1364(a6)
		lea.l      cmd_double_ref(pc),a2
		bra.s      f13da6_1
f13d8e:
		move.w     #TOK_CMD_ADDRIN*2,o1364(a6)
		lea.l      cmd_addrin(pc),a2
		bra.s      f13da6_1
f13d9a:
		move.w     #TOK_CMD_ADDROUT*2,o1364(a6)
		lea.l      cmd_addrout(pc),a2
		bra.s      f13da6_1
f13da6:
		move.w     #TOK_CMD_CONTRL*2,o1364(a6)
		lea.l      cmd_contrl(pc),a2
f13da6_1:
		lea.l      general_buffer(a6),a0
		moveq.l    #0,d1
		move.b     (a2)+,d1
		bsr        skip_spaces
f13da6_2:
		cmpm.b     (a2)+,(a0)+
		dbne       d1,f13da6_2
		beq.s      f13da6_3
		cmpi.b     #' ',-(a0)
		beq.s      f13da6_3
		moveq.l    #-1,d7
		rts
f13da6_3:
		moveq.l    #0,d7
		rts

handle_form_input:
		move.w     #TOK_CMD_FORM_INPUT*2,-2(a1)
		cmpi.b     #'M',(a0)+
		beq.s      handle_form_input_1
		subq.l     #1,a0
handle_form_input_1:
		moveq.l    #0,d7
		rts

f13de4:
		move.w     #TOK_CMD_OUT*2,o1364(a6)
		moveq.l    #0,d7
		move.b     (a0)+,d0
		cmpi.b     #'&',d0
		beq.s      f13de4_2
		cmpi.b     #'%',d0
		beq.s      f13de4_1
		moveq.l    #-1,d7
f13de4_1:
		addq.w     #2,o1364(a6)
f13de4_2:
		rts

/* 370: 543e0 */
/* 371: 5667c */
/* 372: 57794 */
/* 373: 58584 */
mat_cmd_table:
		.ascii "ADD"
		.dc.b 0
		.dc.b ((ymat_ADD_args-jmpbase)>>8)&255,(ymat_ADD_args-jmpbase)&255
		.ascii "ABS"
		.dc.b 0
		.dc.b ((ymat_ABS_args-jmpbase)>>8)&255,(ymat_ABS_args-jmpbase)&255
		.ascii "BASE"
		.dc.b 0
		.dc.b ((ymat_BASE_args-jmpbase)>>8)&255,(ymat_BASE_args-jmpbase)&255
		.ascii "CPY"
		.dc.b 0
		.dc.b ((ymat_CPY_args-jmpbase)>>8)&255,(ymat_CPY_args-jmpbase)&255
		.ascii "CLR"
		.dc.b 0
		.dc.b ((ymat_CLR_args-jmpbase)>>8)&255,(ymat_CLR_args-jmpbase)&255
		.ascii "DET"
		.dc.b 0
		.dc.b ((ymat_DET_args-jmpbase)>>8)&255,(ymat_DET_args-jmpbase)&255
		.ascii "QDET"
		.dc.b 0
		.dc.b ((ymat_QDET_args-jmpbase)>>8)&255,(ymat_QDET_args-jmpbase)&255
		.ascii "INV"
		.dc.b 0
		.dc.b ((ymat_INV_args-jmpbase)>>8)&255,(ymat_INV_args-jmpbase)&255
		.ascii "INPUT"
		.dc.b 0
		.dc.b ((ymat_INPUT_args-jmpbase)>>8)&255,(ymat_INPUT_args-jmpbase)&255
		.ascii "MUL"
		.dc.b 0
		.dc.b ((ymat_MUL_args-jmpbase)>>8)&255,(ymat_MUL_args-jmpbase)&255
		.ascii "NORM"
		.dc.b 0
		.dc.b ((ymat_NORM_args-jmpbase)>>8)&255,(ymat_NORM_args-jmpbase)&255
		.ascii "NEG"
		.dc.b 0
		.dc.b ((ymat_NEG_args-jmpbase)>>8)&255,(ymat_NEG_args-jmpbase)&255
		.ascii "ONE"
		.dc.b 0
		.dc.b ((ymat_ONE_args-jmpbase)>>8)&255,(ymat_ONE_args-jmpbase)&255
		.ascii "PRINT"
		.dc.b 0
		.dc.b ((ymat_PRINT_args-jmpbase)>>8)&255,(ymat_PRINT_args-jmpbase)&255
		.ascii "?"
		.dc.b 0
		.dc.b ((ymat_PRINT_args-jmpbase)>>8)&255,(ymat_PRINT_args-jmpbase)&255
		.ascii "READ"
		.dc.b 0
		.dc.b ((ymat_READ_args-jmpbase)>>8)&255,(ymat_READ_args-jmpbase)&255
		.ascii "RANG"
		.dc.b 0
		.dc.b ((ymat_RANG_args-jmpbase)>>8)&255,(ymat_RANG_args-jmpbase)&255
		.ascii "SUB"
		.dc.b 0
		.dc.b ((ymat_SUB_args-jmpbase)>>8)&255,(ymat_SUB_args-jmpbase)&255
		.ascii "SET"
		.dc.b 0
		.dc.b ((ymat_SET_args-jmpbase)>>8)&255,(ymat_SET_args-jmpbase)&255
		.ascii "TRANS"
		.dc.b 0
		.dc.b ((ymat_TRANS_args-jmpbase)>>8)&255,(ymat_TRANS_args-jmpbase)&255
		.ascii "XCPY"
		.dc.b 0
		.dc.b ((ymat_XCPY_args-jmpbase)>>8)&255,(ymat_XCPY_args-jmpbase)&255
		.dc.b 0
		.even

/* 372: 5781e */
f13e8c:
		bsr        skip_spaces
		move.l     a0,d0
		move.l     a1,d1
		lea.l      mat_cmd_table(pc),a1
f13e8c_1:
		move.b     (a0)+,d2
		move.b     (a1)+,d3
		beq.s      f13e8c_4
		cmp.b      d2,d3
		beq.s      f13e8c_1
		cmpi.b     #' ',d2
		beq.s      f13e8c_3
f13e8c_2:
		tst.b      (a1)+
		bne.s      f13e8c_2
		movea.l    d0,a0
		addq.l     #2,a1
		tst.b      (a1)
		bne.s      f13e8c_1
		moveq.l    #-1,d7
		rts
f13e8c_3:
		tst.b      (a1)+
		bne.s      f13e8c_3
f13e8c_4:
		subq.l     #1,a0
		move.b     (a1)+,d2
		asl.w      #8,d2
		move.b     (a1)+,d2
		lea.l      jmpbase(pc),a2
		adda.w     d2,a2
		move.l     a2,12(a7) /* replace table ptr */
		movea.l    d1,a1
		rts


/*
 * 0xfa,-6: backup 1 byte
 * 0xfb,-5: 1 byte follows
 * 0xfc,-4: stop
 * 0xfd,-3: stop
 * 0xfe,-2: two bytes offset to function follow
 * 0xff,-1: two bytes offset to subtable follow
 */

/* 370: 544b0 */
/* 371: 5674c */
/* 372: 57864 */
/* 373: 58654 */
yMAT_args:
		.dc.b ARG_CALL_FUNC,((f13e8c-jmpbase)>>8)&255,(f13e8c-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((ymat_ADD_args-jmpbase)>>8)&255,(ymat_ADD_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((ymat_SUB_args-jmpbase)>>8)&255,(ymat_SUB_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((ymat_MUL_args-jmpbase)>>8)&255,(ymat_MUL_args-jmpbase)&255
		.dc.b ARG_END

ymat_ADD_args:
		.dc.b ARG_REPLACE,80
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_PUSH,((x13eec-jmpbase)>>8)&255,(x13eec-jmpbase)&255
		.dc.b ARG_END

x13eec:
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_ADD
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ymat_SUB_args:
		.dc.b ARG_REPLACE,84
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_PUSH,((x13f0e-jmpbase)>>8)&255,(x13f0e-jmpbase)&255
		.dc.b ARG_END

x13f0e:
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_SUB
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
ymat_MUL_args:
		.dc.b ARG_PUSH,((x13f2a-jmpbase)>>8)&255,(x13f2a-jmpbase)&255
		.dc.b ARG_END

x13f2a:
		.dc.b ARG_REPLACE,120
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b 7
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,122
		.dc.b ARG_CALL_FUNC,((expect_float-jmpbase)>>8)&255,(expect_float-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b 7
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,124
		.dc.b ARG_CALL_FUNC,((expect_float-jmpbase)>>8)&255,(expect_float-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b 7
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b 7
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,126
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ymat_DET_args:
		.dc.b ARG_REPLACE,92
x13f6b:
		.dc.b ARG_CALL_FUNC,((expect_float-jmpbase)>>8)&255,(expect_float-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x13f77-jmpbase)>>8)&255,(x13f77-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x13f77:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_RPAREN
		.dc.b ARG_END

ymat_QDET_args:
		.dc.b ARG_REPLACE,114
		.dc.b ARG_PUSH,((x13f6b-jmpbase)>>8)&255,(x13f6b-jmpbase)&255
		.dc.b ARG_END

ymat_RANG_args:
		.dc.b ARG_REPLACE,118
		.dc.b ARG_PUSH,((x13f6b-jmpbase)>>8)&255,(x13f6b-jmpbase)&255
		.dc.b ARG_END

ymat_XCPY_args:
		.dc.b ARG_REPLACE,90
		.dc.b ARG_PUSH,((x13f96-jmpbase)>>8)&255,(x13f96-jmpbase)&255
		.dc.b ARG_END

ymat_CPY_args:
		.dc.b ARG_REPLACE,88
x13f96:
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x13fab-jmpbase)>>8)&255,(x13fab-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x13fab-jmpbase)>>8)&255,(x13fab-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_PUSH,((x13faa-jmpbase)>>8)&255,(x13faa-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x13faa:
		.dc.b TOK_COMMA
x13fab:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

ymat_PRINT_args:
		.dc.b ARG_REPLACE,102
		.dc.b ARG_PUSH,((print_channel_args-jmpbase)>>8)&255,(print_channel_args-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_PUSH,((x13fbe-jmpbase)>>8)&255,(x13fbe-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x13fbe:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

ymat_INPUT_args:
		.dc.b ARG_REPLACE,116
		.dc.b ARG_PUSH,((print_channel_args-jmpbase)>>8)&255,(print_channel_args-jmpbase)&255
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_END

ymat_READ_args:
		.dc.b ARG_REPLACE,100
x13fd3:
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ymat_TRANS_args:
		.dc.b ARG_REPLACE,104
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_PUSH,((x13fe4-jmpbase)>>8)&255,(x13fe4-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x13fe4:
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_END

ymat_INV_args:
		.dc.b ARG_REPLACE,128
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_EQ
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_END

ymat_CLR_args:
		.dc.b ARG_REPLACE,106
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_END

ymat_ONE_args:
		.dc.b ARG_REPLACE,110
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_END

ymat_NEG_args:
		.dc.b ARG_REPLACE,94
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_END

ymat_ABS_args:
		.dc.b ARG_REPLACE,96
		.dc.b ARG_PUSH,((x13fd3-jmpbase)>>8)&255,(x13fd3-jmpbase)&255
		.dc.b ARG_END

ymat_NORM_args:
		.dc.b ARG_REPLACE,98
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

ymat_SET_args:
		.dc.b ARG_REPLACE,108
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_EQ
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ymat_BASE_args:
		.dc.b ARG_REPLACE,112
		.dc.b ARG_PUSH,((x1402b-jmpbase)>>8)&255,(x1402b-jmpbase)&255
		.dc.b ARG_END
x1402b:
		.dc.b 184
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b 185
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ySSORT_args:
yQSORT_args:
		.dc.b ARG_PUSH,((x14039-jmpbase)>>8)&255,(x14039-jmpbase)&255
		.dc.b ARG_PUSH,((x14066-jmpbase)>>8)&255,(x14066-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x14039:
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x14076-jmpbase)>>8)&255,(x14076-jmpbase)&255
		.dc.b ARG_PUSH,((x14054-jmpbase)>>8)&255,(x14054-jmpbase)&255
		.dc.b ARG_PUSH,((x1404d-jmpbase)>>8)&255,(x1404d-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1436a-jmpbase)>>8)&255,(x1436a-jmpbase)&255
		.dc.b ARG_PUSH,((x14076-jmpbase)>>8)&255,(x14076-jmpbase)&255
		.dc.b ARG_END

x1404d:
		.dc.b 114
		.dc.b ARG_PUSH,((x1405a-jmpbase)>>8)&255,(x1405a-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_END

x14054:
		.dc.b TOK_OFFSET
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x1405a:
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_word_arr-jmpbase)>>8)&255,(expect_word_arr-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_byte_arr-jmpbase)>>8)&255,(expect_byte_arr-jmpbase)&255
		.dc.b ARG_END
x14066:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x1406f-jmpbase)>>8)&255,(x1406f-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x1406f:
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_END

x14076:
		.dc.b TOK_SUB
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_ADD
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_RPAREN
		.dc.b ARG_END

yVOID_args:
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yLET_args:
		.dc.b ARG_PUSH,((x14392-jmpbase)>>8)&255,(x14392-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1435e-jmpbase)>>8)&255,(x1435e-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1438e-jmpbase)>>8)&255,(x1438e-jmpbase)&255
		.dc.b TOK_SUB
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((f140e2-jmpbase)>>8)&255,(f140e2-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1438e-jmpbase)>>8)&255,(x1438e-jmpbase)&255
		.dc.b TOK_ADD
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((f140d6-jmpbase)>>8)&255,(f140d6-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1438e-jmpbase)>>8)&255,(x1438e-jmpbase)&255
		.dc.b 7
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((f140ee-jmpbase)>>8)&255,(f140ee-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1438e-jmpbase)>>8)&255,(x1438e-jmpbase)&255
		.dc.b 8
		.dc.b TOK_EQ
		.dc.b ARG_CALL_FUNC,((f140fa-jmpbase)>>8)&255,(f140fa-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14372-jmpbase)>>8)&255,(x14372-jmpbase)&255
		.dc.b ARG_PUSH,((x14147-jmpbase)>>8)&255,(x14147-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1437e-jmpbase)>>8)&255,(x1437e-jmpbase)&255
		.dc.b ARG_PUSH,((x14147-jmpbase)>>8)&255,(x14147-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yRSET_args-jmpbase)>>8)&255,(yRSET_args-jmpbase)&255
		.dc.b ARG_END
		.even

f140d6:
		move.w     #TOK_CMD_ADD_FLOAT*2,d0
		lea.l      yADD_args.l,a2
		bra.s      f140fa_1

f140e2:
		move.w     #TOK_CMD_SUB_FLOAT*2,d0
		lea.l      ySUB_args.l,a2
		bra.s      f140fa_1

f140ee:
		move.w     #TOK_CMD_MUL_FLOAT*2,d0
		lea.l      yMUL_args.l,a2
		bra.s      f140fa_1
f140fa:
		move.w     #TOK_CMD_DIV_FLOAT*2,d0
		lea.l      yDIV_args.l,a2
f140fa_1:
		lea.l      general_buffer(a6),a0
		lea.l      o1364(a6),a1
		move.w     d0,(a1)+
		movem.l    a0-a2,4(a7)
		rts

/* 370: 546f4 */
/* 371: 56690 */
/* 372: 57aa8 */
/* 373: 58898 */
yDELETE_args:
		.dc.b ARG_PUSH,((x1436a-jmpbase)>>8)&255,(x1436a-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yINSERT_args:
		.dc.b ARG_PUSH,((x14372-jmpbase)>>8)&255,(x14372-jmpbase)&255
		.dc.b ARG_PUSH,((x1413e-jmpbase)>>8)&255,(x1413e-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1413e-jmpbase)>>8)&255,(x1413e-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1413e-jmpbase)>>8)&255,(x1413e-jmpbase)&255
x14139:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x1413e:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_BACK
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_ARRAY_ASS
		.dc.b ARG_END

x14147:
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_BACK
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_ARRAY_ASS
		.dc.b ARG_END

	.IFNE GBE
ySTRUCTs_args:
yOB_TEXTs_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_BACK
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_ARRAY_ASS
		.dc.b ARG_PUSH,((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b ARG_END

yUSERBLK_args:
yTEDINFO_args:
yICONBLK_args:
yCICONBLK_args:
yBFOBSPEC_args:
yBITBLK_args:
yOB_RADIO_args:
yOB_dot_FLAGS_args:
yOB_dot_STATE_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
	.ENDC

yWINDTAB_args:
yUB_PARM_args:
yUB_CODE_args:
yTE_INTERIORCOL_args:
yTE_FILLPATTERN_args:
yTE_TEXTMODE_args:
yTE_TEXTCOL_args:
yTE_FRAMECOL_args:
yTE_TMPLEN_args:
yTE_TXTLEN_args:
yTE_THICKNESS_args:
yTE_FONTSIZE_args:
yTE_COLOR_args:
yTE_JUST_args:
yTE_FONTID_args:
yTE_FONT_args:
yTE_PVALID_args:
yTE_PTMPLT_args:
yTE_PTEXT_args:
ySTRUCT_args:
yOB_FL3DBAK_args:
yOB_SUBMENU_args:
yOB_FL3DACT_args:
yOB_FL3DIND_args:
yOB_INDIRECT_args:
yOB_HIDETREE_args:
yOB_TOUCHEXIT_args:
yOB_LASTOB_args:
yOB_RBUTTON_args:
yOB_EDITABLE_args:
yOB_EXIT_args:
yOB_DEFAULT_args:
yOB_SELECTABLE_args:
yOB_WHITEBAK_args:
yOB_SHADOWED_args:
yOB_OUTLINED_args:
yOB_DISABLED_args:
yOB_CHECKED_args:
yOB_CROSSED_args:
yOB_SELECTED_args:
yOB_H_args:
yOB_W_args:
yOB_Y_args:
yOB_X_args:
yOB_SPEC_args:
yOB_STATE_args:
yOB_FLAGS_args:
yOB_TYPE_args:
yOB_TAIL_args:
yOB_HEAD_args:
yOB_NEXT_args:
yIB_LETTER_args:
yIB_BCOLOR_args:
yIB_FCOLOR_args:
yIB_HTEXT_args:
yIB_WTEXT_args:
yIB_YTEXT_args:
yIB_XTEXT_args:
yIB_HICON_args:
yIB_WICON_args:
yIB_YICON_args:
yIB_XICON_args:
yIB_YCHAR_args:
yIB_XCHAR_args:
yIB_CHAR_args:
yIB_PTEXT_args:
yIB_PDATA_args:
yIB_PMASK_args:
yCI_NEXT_RES_args:
yCI_SEL_MASK_args:
yCI_SEL_DATA_args:
yCI_COL_MASK_args:
yCI_COL_DATA_args:
yCI_NUM_PLANES_args:
yCI_MAINLIST_args:
yBI_COLOR_args:
yBI_Y_args:
yBI_X_args:
yBI_HL_args:
yBI_WB_args:
yBI_PDATA_args:
yBF_INTERIORCOL_args:
yBF_FILLPATTERN_args:
yBF_TEXTMODE_args:
yBF_TEXTCOL_args:
yBF_FRAMECOL_args:
yBF_FRAMESIZE_args:
yBF_CHARACTER_args:
yBF_OBSPEC_args:
yARRAY_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
yUSERDEF_args:
yPTSOUT_args:
yPTSIN_args:
yINTOUT_args:
yINTIN_args:
yGCONTRL_args:
yGINTOUT_args:
yGINTIN_args:
yCONTRL_args:
yADDROUT_args:
yADDRIN_args:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_BACK
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_ARRAY_ASS
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

yCONT_args:
		.dc.b ARG_PUSH,((ySELECT_args-jmpbase)>>8)&255,(ySELECT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13da6-jmpbase)>>8)&255,(f13da6-jmpbase)&255
		.dc.b ARG_PUSH,((yPTSOUT_args-jmpbase)>>8)&255,(yPTSOUT_args-jmpbase)&255
		.dc.b ARG_END

yWORD_args:
ySBYTE_args:
ySINGLE_args:
yLONG_args:
yINT_args:
yFLOAT_args:
yDOUBLE_args:
yCARD_args:
yBYTE_args:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b 88
		.dc.b ARG_BACK
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_REFEND
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

yCHAR_args:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b 88
		.dc.b ARG_BACK
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_REFEND
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END

yRSET_args:
yLSET_args:
		.dc.b ARG_CALL_FUNC,((expect_string-jmpbase)>>8)&255,(expect_string-jmpbase)&255
		.dc.b ARG_PUSH,((x14196-jmpbase)>>8)&255,(x14196-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_BACK
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_ARRAY_ASS
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END

x14196:
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_ASSIGN
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END

yIF_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_PUSH,((x141b0-jmpbase)>>8)&255,(x141b0-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yWHILE_args:
yUNTIL_args:
yENDREPEAT_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x141b0:
		.dc.b TOK_THEN
		.dc.b ARG_POP
		.dc.b ARG_END

x141b3:
		.dc.b TOK_IF
		.dc.b ARG_BACK
		.dc.b ARG_POP
		.dc.b ARG_END

yWEND_args:
yENDWHILE_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yDO_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d82-jmpbase)>>8)&255,(f13d82-jmpbase)&255
		.dc.b ARG_PUSH,((yWORD_args-jmpbase)>>8)&255,(yWORD_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13b68-jmpbase)>>8)&255,(f13b68-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yLOOP_args:
yENDDO_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13b6c-jmpbase)>>8)&255,(f13b6c-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yELSE_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,32
yEXIT_IF_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b ARG_PUSH,((x141b3-jmpbase)>>8)&255,(x141b3-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yRETURN_args:
yENDSUB_args:
yENDPROC_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,34
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,36
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END
yFOR_args:
		.dc.b ARG_PUSH,((x1438e-jmpbase)>>8)&255,(x1438e-jmpbase)&255
		.dc.b ARG_PUSH,((x14228-jmpbase)>>8)&255,(x14228-jmpbase)&255
		.dc.b ARG_POP
yFORM_INPUT_args:
		.dc.b ARG_CALL_FUNC,((handle_form_input-jmpbase)>>8)&255,(handle_form_input-jmpbase)&255
		.dc.b ARG_PUSH,((x14213-jmpbase)>>8)&255,(x14213-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_PUSH,((x14217-jmpbase)>>8)&255,(x14217-jmpbase)&255

ySPUT_args:
ySGET_args:
yMNAM_args:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14213:
		.dc.b 96
		.dc.b ARG_BACK
		.dc.b ARG_POP
		.dc.b ARG_END
x14217:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b 108
		.dc.b ARG_POP
		.dc.b TOK_SEMI
		.dc.b ARG_REPLACE,33
		.dc.b ARG_END
x1421f:
		.dc.b ARG_PUSH,((x14217-jmpbase)>>8)&255,(x14217-jmpbase)&255
		.dc.b ARG_REPLACE,108
		.dc.b ARG_POP
		.dc.b 249,108
		.dc.b ARG_END
x14228:
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b 71
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14245-jmpbase)>>8)&255,(x14245-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b 73
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15972-jmpbase)>>8)&255,(f15972-jmpbase)&255
		.dc.b ARG_END
x14245:
		.dc.b 72
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15976-jmpbase)>>8)&255,(f15976-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f1596e-jmpbase)>>8)&255,(f1596e-jmpbase)&255
		.dc.b ARG_END

yNEXT_args:
yENDFOR_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b ARG_PUSH,((x1438e-jmpbase)>>8)&255,(x1438e-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yCASE_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b ARG_PUSH,((x14264-jmpbase)>>8)&255,(x14264-jmpbase)&255
		.dc.b ARG_PUSH,((x14286-jmpbase)>>8)&255,(x14286-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x14264:
		.dc.b 71
		.dc.b ARG_PUSH,((x14276-jmpbase)>>8)&255,(x14276-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14276-jmpbase)>>8)&255,(x14276-jmpbase)&255
		.dc.b 71
		.dc.b ARG_PUSH,((x14276-jmpbase)>>8)&255,(x14276-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14276-jmpbase)>>8)&255,(x14276-jmpbase)&255
		.dc.b 71
		.dc.b ARG_POP
x14276:
		.dc.b ARG_CALL_FUNC,((f1595a-jmpbase)>>8)&255,(f1595a-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_int-jmpbase)>>8)&255,(expect_int-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_word-jmpbase)>>8)&255,(expect_word-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_byte-jmpbase)>>8)&255,(expect_byte-jmpbase)&255
		.dc.b ARG_END
x14286:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14264-jmpbase)>>8)&255,(x14264-jmpbase)&255
		.dc.b ARG_PUSH,((x14286-jmpbase)>>8)&255,(x14286-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
ySWITCH_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,88
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END
yDEFAULT_args:
		.dc.b ARG_CALL_FUNC,((f13b62-jmpbase)>>8)&255,(f13b62-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yENDSELECT_args:
yENDSWITCH_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ySUB_args:
		.dc.b ARG_PUSH,((x143cb-jmpbase)>>8)&255,(x143cb-jmpbase)&255
		.dc.b ARG_PUSH,((x14311-jmpbase)>>8)&255,(x14311-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b ARG_PUSH,((x14311-jmpbase)>>8)&255,(x14311-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,0
		.dc.b 249,12
		.dc.b ARG_PUSH,((yPROCEDURE_args-jmpbase)>>8)&255,(yPROCEDURE_args-jmpbase)&255
		.dc.b ARG_END

yADD_args:
		.dc.b ARG_PUSH,((x143cb-jmpbase)>>8)&255,(x143cb-jmpbase)&255
		.dc.b ARG_PUSH,((x14319-jmpbase)>>8)&255,(x14319-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b ARG_PUSH,((x14319-jmpbase)>>8)&255,(x14319-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d8e-jmpbase)>>8)&255,(f13d8e-jmpbase)&255
		.dc.b ARG_PUSH,((yPTSOUT_args-jmpbase)>>8)&255,(yPTSOUT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d9a-jmpbase)>>8)&255,(f13d9a-jmpbase)&255
		.dc.b ARG_PUSH,((yPTSOUT_args-jmpbase)>>8)&255,(yPTSOUT_args-jmpbase)&255
		.dc.b ARG_END

yMUL_args:
		.dc.b ARG_PUSH,((x143cb-jmpbase)>>8)&255,(x143cb-jmpbase)&255
		.dc.b ARG_PUSH,((x14321-jmpbase)>>8)&255,(x14321-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b ARG_PUSH,((x14321-jmpbase)>>8)&255,(x14321-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

yDIV_args:
		.dc.b ARG_PUSH,((x143cb-jmpbase)>>8)&255,(x143cb-jmpbase)&255
		.dc.b ARG_PUSH,((x14329-jmpbase)>>8)&255,(x14329-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b ARG_PUSH,((x14329-jmpbase)>>8)&255,(x14329-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

x14311:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b TOK_SUB
		.dc.b TOK_EQ
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,33
		.dc.b ARG_END

x14319:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b TOK_ADD
		.dc.b TOK_EQ
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,33
		.dc.b ARG_END

x14321:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b 7
		.dc.b TOK_EQ
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,33
		.dc.b ARG_END
x14329:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b 8
		.dc.b TOK_EQ
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,33
		.dc.b ARG_END

yINC_args:
yDEC_args:
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x14336:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_POP
x1433a:
		.dc.b ARG_PUSH,((x143e1-jmpbase)>>8)&255,(x143e1-jmpbase)&255
		.dc.b ARG_POP
x1433e:
		.dc.b ARG_PUSH,((x14402-jmpbase)>>8)&255,(x14402-jmpbase)&255
		.dc.b ARG_POP
x14342:
		.dc.b ARG_PUSH,((x143f7-jmpbase)>>8)&255,(x143f7-jmpbase)&255
		.dc.b ARG_POP
x14346:
		.dc.b ARG_PUSH,((x143d6-jmpbase)>>8)&255,(x143d6-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143cb-jmpbase)>>8)&255,(x143cb-jmpbase)&255
		.dc.b ARG_END

x1434e:
		.dc.b ARG_CALL_FUNC,((expect_byte-jmpbase)>>8)&255,(expect_byte-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_string-jmpbase)>>8)&255,(expect_string-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_int-jmpbase)>>8)&255,(expect_int-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_word-jmpbase)>>8)&255,(expect_word-jmpbase)&255
		.dc.b ARG_POP
x1435e:
		.dc.b ARG_CALL_FUNC,((expect_float-jmpbase)>>8)&255,(expect_float-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_bool-jmpbase)>>8)&255,(expect_bool-jmpbase)&255
		.dc.b ARG_END
x14366:
		.dc.b ARG_CALL_FUNC,((expect_bool_arr-jmpbase)>>8)&255,(expect_bool_arr-jmpbase)&255
		.dc.b ARG_POP
x1436a:
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b ARG_POP
x14372:
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_word_arr-jmpbase)>>8)&255,(expect_word_arr-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_byte_arr-jmpbase)>>8)&255,(expect_byte_arr-jmpbase)&255
		.dc.b ARG_END
x1437e:
		.dc.b ARG_CALL_FUNC,((expect_bool_arr-jmpbase)>>8)&255,(expect_bool_arr-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b ARG_END
x14386:
		.dc.b ARG_CALL_FUNC,((expect_float-jmpbase)>>8)&255,(expect_float-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_int-jmpbase)>>8)&255,(expect_int-jmpbase)&255
		.dc.b ARG_END
x1438e:
		.dc.b ARG_CALL_FUNC,((expect_float-jmpbase)>>8)&255,(expect_float-jmpbase)&255
		.dc.b ARG_POP
x14392:
		.dc.b ARG_CALL_FUNC,((expect_int-jmpbase)>>8)&255,(expect_int-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_word-jmpbase)>>8)&255,(expect_word-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_byte-jmpbase)>>8)&255,(expect_byte-jmpbase)&255
		.dc.b ARG_END

x1439e:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_END
x143a6:
		.dc.b ARG_PUSH,((x14366-jmpbase)>>8)&255,(x14366-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_END
x143ad:
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
x143b2:
		.dc.b ARG_CALL_FUNC,((expect_bool_arr-jmpbase)>>8)&255,(expect_bool_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_byte_arr-jmpbase)>>8)&255,(expect_byte_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
x143bc:
		.dc.b ARG_CALL_FUNC,((expect_word_arr-jmpbase)>>8)&255,(expect_word_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
x143c6:
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x143cb:
		.dc.b ARG_CALL_FUNC,((expect_float-jmpbase)>>8)&255,(expect_float-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_END
x143d6:
		.dc.b ARG_CALL_FUNC,((expect_int-jmpbase)>>8)&255,(expect_int-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_END
x143e1:
		.dc.b ARG_CALL_FUNC,((expect_bool-jmpbase)>>8)&255,(expect_bool-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_bool_arr-jmpbase)>>8)&255,(expect_bool_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_END

x143ec:
		.dc.b ARG_CALL_FUNC,((expect_string-jmpbase)>>8)&255,(expect_string-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_END

x143f7:
		.dc.b ARG_CALL_FUNC,((expect_word-jmpbase)>>8)&255,(expect_word-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_word_arr-jmpbase)>>8)&255,(expect_word_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_END
x14402:
		.dc.b ARG_CALL_FUNC,((expect_byte-jmpbase)>>8)&255,(expect_byte-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_byte_arr-jmpbase)>>8)&255,(expect_byte_arr-jmpbase)&255
		.dc.b ARG_PUSH,((x1519e-jmpbase)>>8)&255,(x1519e-jmpbase)&255
		.dc.b ARG_END
x1440d:
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_COMMA
x14411:
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_COMMA
x14415:
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b ARG_END
yERASE_args:
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b ARG_PUSH,((x14425-jmpbase)>>8)&255,(x14425-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14425:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b ARG_PUSH,((x14425-jmpbase)>>8)&255,(x14425-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x1442e:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_PUSH,((x1442e-jmpbase)>>8)&255,(x1442e-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

yLINE_INPUT_args:
yLINE_args:
		.dc.b ARG_BACK
		.dc.b 249,52
		.dc.b ARG_PUSH,((x14213-jmpbase)>>8)&255,(x14213-jmpbase)&255
		.dc.b ARG_PUSH,((print_channel_args-jmpbase)>>8)&255,(print_channel_args-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_PUSH,((x1442e-jmpbase)>>8)&255,(x1442e-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14213-jmpbase)>>8)&255,(x14213-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f13d22-jmpbase)>>8)&255,(f13d22-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_PUSH,((x1442e-jmpbase)>>8)&255,(x1442e-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_BACK
		.dc.b 249,54

yVPBAR_args:
yVBOX_args:
yVLINE_args:
ySET_SOCKADDR_IN_args:
ySET_DXYWH_args:
ySET_SXYWH_args:
ySET_DXYXY_args:
ySET_SXYXY_args:
yRBAR_args:
yRBOX_args:
yPRBAR_args:
yPBAR_args:
yPRBOX_args:
yPBOX_args:
yMEMREPLACE_args:
yC2P_args:
yBAR_args:
yBREPLACE_args:
yBOX_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255

yTBITBLT_args:
ySNDH_args:
ySETDRAW_args:
yPSET_args:
yMEMFILL_args:
yMEMXOR_args:
yMEMAND_args:
yMEMOR_args:
yMEMEXG_args:
yBFILL_args:
yBEXG_args:
yBMOVE_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255

yVPLOT_args:
ySLPOKE_args:
ySDPOKE_args:
ySPOKE_args:
yPOKE_args:
yPLOT_args:
yMLPOKE_args:
yMDPOKE_args:
yMEMMIRROR3_args:
yMEMMIRROR_args:
yMEMZERO_args:
yMEMSWAP_args:
yMEMBCHG_args:
yMEMBCLR_args:
yMEMBSET_args:
yMW_OUT_args:
yLOCATE_args:
yLPOKE_args:
yDPOKE_args:
yBZERO_args:
yBMIRROR_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255

yCLEARW_args:
yCLOSEW_args:
yOPENW_args:
yspecvar_args:
y_DATA_args:
y_GLOBAL_args:
yVPALSET_args:
yVPALGET_args:
yVSPUT_args:
yVSGET_args:
yV_H_args:
yVTAB_args:
ySCREEN_args:
ySUPER_args:
ySTICK_args:
yPALSET_args:
yPALGET_args:
yPAUSE_args:
yMODE_args:
yLOG_SET_args:
yKEYPRESS_args:
yKEYPAD_args:
yJOYPAD_args:
yIKBD_args:
yHTAB_args:
yGSTICK_args:
yGRAPHMODE_args:
yERROR_args:
yDELAY_args:
yDMACONTROL_args:
yDEFNUM_args:
yDEFLIST_args:
yCOLOR_args:
yBOUNDARY_args:
yAMOUSE_args:
yTMOUSE_args:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255

ySELECT_args:
yFUNCTION_flapped_args:
yPROCEDURE_flapped_args:
yLOOP_UNTIL_args:
yLOOP_WHILE_args:
yDO_UNTIL_args:
yDO_WHILE_args:
yEND_args:
yWARMBOOT_args:
yWAITVBL_args:
yVSYNC_args:
yTROFF_args:
ySTOP_args:
ySHOWM_args:
yREPEAT_args:
yNEW_args:
yLOG_KILL_args:
yHIDEM_args:
yHARDCOPY_args:
yGSHOWM_args:
yGHIDEM_args:
yEDIT_args:
yENDFUNC_args:
yENDIF_args:
yCOLDBOOT_args:
yCPUFLUSH_args:
yBEEP_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yINLINE_args:
		.dc.b ARG_CALL_FUNC,((expect_int-jmpbase)>>8)&255,(expect_int-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((f158f8-jmpbase)>>8)&255,(f158f8-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
iexp_comma:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_END
	.IFNE GBE
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
	.ENDC

yVCURVE_args:
ySET_PXYXY_args:
ySET_RXYWH_args:
yCURVE_args:
yARECT_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
ySET_GCBITMAP_args:
ySFILL_args:
yHLINE_args:
yALINE_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
ySET_PXYWH_args:
ySET_MENU_args:
ySET_MFDB_args:
yCRASTER_args:
yACHAR_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
yVGET_args:
yPIXEL1M_args:
yPIXEL2P_args:
yPIXEL4P_args:
yPIXEL8P_args:
yPIXEL8C_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b ARG_END
yAPOLY_args:
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b ARG_PUSH,((x144ba-jmpbase)>>8)&255,(x144ba-jmpbase)&255
yACLIP_args:
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b ARG_END
yCHDRIVE_args:
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b ARG_END
yFILL_args:
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
		.dc.b ARG_END
ySETMOUSE_args:
		.dc.b ARG_PUSH,((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_END
yVSETCOLOR_args:
		.dc.b ARG_PUSH,((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_END
x144ba:
		.dc.b 71
		.dc.b ARG_POP
		.dc.b TOK_COMMA
		.dc.b ARG_REPLACE,71
		.dc.b ARG_END
star_args:
		.dc.b ARG_PUSH,((x14386-jmpbase)>>8)&255,(x14386-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((x14386-jmpbase)>>8)&255,(x14386-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END
yEXEC_args:
		.dc.b ARG_PUSH,((x144dd-jmpbase)>>8)&255,(x144dd-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x144dd:
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_PUSH,((x144e6-jmpbase)>>8)&255,(x144e6-jmpbase)&255
		.dc.b ARG_PUSH,((x144e6-jmpbase)>>8)&255,(x144e6-jmpbase)&255
x144e6:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_END
x144eb:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b TOK_SEMI
		.dc.b ARG_END
x144ef:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_POP
		.dc.b 249,33
		.dc.b ARG_END
x144f6:
		.dc.b ARG_PUSH,((x144ff-jmpbase)>>8)&255,(x144ff-jmpbase)&255
		.dc.b 249,77
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_END
x144ff:
		.dc.b TOK_CHANNEL
		.dc.b ARG_BACK
		.dc.b ARG_POP
		.dc.b ARG_END

x14503:
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b ARG_END

yFILESELECT_args:
yFILES_args:
		.dc.b ARG_CALL_FUNC,((f13d6a-jmpbase)>>8)&255,(f13d6a-jmpbase)&255
		.dc.b ARG_PUSH,((x14503-jmpbase)>>8)&255,(x14503-jmpbase)&255
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d76-jmpbase)>>8)&255,(f13d76-jmpbase)&255
yDUMP_args:
yDIR_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b ARG_PUSH,((x14532-jmpbase)>>8)&255,(x14532-jmpbase)&255
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14532:
		.dc.b TOK_TO
		.dc.b ARG_POP
		.dc.b TOK_COMMA
		.dc.b ARG_REPLACE,TOK_TO
		.dc.b ARG_POP
		.dc.b TOK_SEMI
		.dc.b ARG_REPLACE,TOK_TO
		.dc.b ARG_POP
		.dc.b 249,TOK_TO
		.dc.b ARG_END

yOPTION_args:
		.dc.b TOK_BASE
		.dc.b TOK_CONST_ZERO
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b TOK_BASE
		.dc.b TOK_CONST_ONE
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yRUN_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
ySAVE_args:
yRMDIR_args:
yPSAVE_args:
yMKDIR_args:
yLOG_FILE_args:
yLOG_MSG_args:
yLOAD_args:
yLLIST_args:
yLIST_args:
yKILL_args:
yCHAIN_args:
yCHDIR_args:
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d1c-jmpbase)>>8)&255,(f13d1c-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yDEFFLT_args:
yDEFDBL_args:
yDEFSNG_args:
yDEFSTR_args:
yDEFBIT_args:
yDEFWRD_args:
yDEFBYT_args:
yDEFINT_args:
		.dc.b ARG_PUSH,((x1455c-jmpbase)>>8)&255,(x1455c-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((execute_defint-jmpbase)>>8)&255,(execute_defint-jmpbase)&255
		.dc.b ARG_END
x1455c:
		.dc.b ARG_CALL_FUNC,((f13d22-jmpbase)>>8)&255,(f13d22-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d1c-jmpbase)>>8)&255,(f13d1c-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yRENAME_args:
yNAME_args:
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b ARG_PUSH,((x1421f-jmpbase)>>8)&255,(x1421f-jmpbase)&255
		.dc.b ARG_PUSH,((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b ARG_END
x14570:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f14578-jmpbase)>>8)&255,(f14578-jmpbase)&255
		.dc.b ARG_END
		.even

/* 370: 54b6c */
/* 371: 56e08 */
/* 372: 57f20 */
/* 373: 58d10 */
f14578:
		movem.l    a0-a1,-(a7)
		bsr        skip_spaces
		move.b     #TOK_STRING_CONST,(a1)+
		movea.l    a1,a3
		clr.b      (a1)+
f14578_1:
		move.b     (a0)+,d0
		cmpi.b     #CR,d0 /* FIXME: handle also LF */
		beq.s      f14578_4
		cmpi.b     #' ',d0
		beq.s      f14578_4
		cmpi.b     #',',d0
		beq.s      f14578_4
		cmpi.b     #'"',d0
		beq.s      f14578_3
f14578_2:
		move.b     -257(a0),(a1)+
		addq.b     #1,(a3)
		bra.s      f14578_1
f14578_3:
		cmp.b      (a0),d0
		bne.s      f14578_5
		addq.l     #1,a0
		bra.s      f14578_2
f14578_4:
		subq.l     #1,a0
f14578_5:
		tst.b      (a3)
		beq.s      f14578_6
		moveq.l    #0,d7
		addq.l     #8,a7
		rts
f14578_6:
		movem.l    (a7)+,a0-a1
		moveq.l    #-1,d7
		rts

/* 370: 54bba */
/* 371: 56e56 */
/* 372: 57f6e */
/* 373: 58d5e */
ySETTIME_args:
		.dc.b ARG_PUSH,((x145ce-jmpbase)>>8)&255,(x145ce-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b ARG_END
x145ce:
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yOPEN_args:
		.dc.b ARG_CALL_FUNC,((f13d5a-jmpbase)>>8)&255,(f13d5a-jmpbase)&255
		.dc.b ARG_PUSH,((x145f0-jmpbase)>>8)&255,(x145f0-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,18
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b ARG_PUSH,((x144ef-jmpbase)>>8)&255,(x144ef-jmpbase)&255
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b ARG_PUSH,((x144ef-jmpbase)>>8)&255,(x144ef-jmpbase)&255
		.dc.b ARG_PUSH,((x14570-jmpbase)>>8)&255,(x14570-jmpbase)&255
		.dc.b ARG_PUSH,((x14b90-jmpbase)>>8)&255,(x14b90-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x145f0:
		.dc.b ARG_REPLACE,20
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,22
		.dc.b ARG_PUSH,((x144ff-jmpbase)>>8)&255,(x144ff-jmpbase)&255
		.dc.b ARG_PUSH,((ySET_PXYWH_args-jmpbase)>>8)&255,(ySET_PXYWH_args-jmpbase)&255
		.dc.b ARG_END
yCLOSE_args:
		.dc.b ARG_CALL_FUNC,((f13d5a-jmpbase)>>8)&255,(f13d5a-jmpbase)&255
		.dc.b ARG_PUSH,((x14628-jmpbase)>>8)&255,(x14628-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,24
yCLS_args:
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
	.IFNE GBE
x57fbe_372:
x58dae_373:
		.dc.b ARG_PUSH,((x57fc3_372-jmpbase)>>8)&255,(x57fc3_372-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x57fc3_372:
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b ARG_END
	.ENDC
yTRON_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14628:
		.dc.b TOK_CHANNEL
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,28
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,26
		.dc.b ARG_END
yCLEAR_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d5a-jmpbase)>>8)&255,(f13d5a-jmpbase)&255
		.dc.b ARG_PUSH,((x1463c-jmpbase)>>8)&255,(x1463c-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

x1463c:
		.dc.b TOK_CHANNEL
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,34
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,32
		.dc.b ARG_END

yFULLW_args:
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

yTOUCH_args:
yTOPW_args:
		.dc.b ARG_PUSH,((x144ff-jmpbase)>>8)&255,(x144ff-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

yTITLEW_args:
ySTRPOKE_args:
yINFOW_args:
		.dc.b ARG_PUSH,((x144ff-jmpbase)>>8)&255,(x144ff-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b ARG_END
REM_args:
yDATA_args:
		.dc.b ARG_CALL_FUNC,((f13bca-jmpbase)>>8)&255,(f13bca-jmpbase)&255
		.dc.b ARG_END
yMIDs_args:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_PUSH,((x14695-jmpbase)>>8)&255,(x14695-jmpbase)&255
		.dc.b ARG_PUSH,((x14b90-jmpbase)>>8)&255,(x14b90-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_PUSH,((x14196-jmpbase)>>8)&255,(x14196-jmpbase)&255
		.dc.b ARG_END
yPELLIPSE_args:
yELLIPSE_args:
		.dc.b ARG_PUSH,((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((ySET_PXYWH_args-jmpbase)>>8)&255,(ySET_PXYWH_args-jmpbase)&255
		.dc.b ARG_END
yPCIRCLE_args:
yCIRCLE_args:
		.dc.b ARG_PUSH,((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b ARG_END
	.IFEQ GBE
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
	.ENDC
x14692:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
x14695:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_END

yDRAW_args:
		.dc.b ARG_PUSH,((x146d3-jmpbase)>>8)&255,(x146d3-jmpbase)&255
		.dc.b ARG_PUSH,((x14692-jmpbase)>>8)&255,(x14692-jmpbase)&255
		.dc.b ARG_PUSH,((x146c9-jmpbase)>>8)&255,(x146c9-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((x146ad-jmpbase)>>8)&255,(x146ad-jmpbase)&255
		.dc.b ARG_END

x146ad:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x146b4-jmpbase)>>8)&255,(x146b4-jmpbase)&255
		.dc.b ARG_END

x146b4:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x146c0-jmpbase)>>8)&255,(x146c0-jmpbase)&255
		.dc.b ARG_PUSH,((x1529b-jmpbase)>>8)&255,(x1529b-jmpbase)&255
		.dc.b ARG_PUSH,((x146b4-jmpbase)>>8)&255,(x146b4-jmpbase)&255
		.dc.b ARG_END

x146c0:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b TOK_SEMI
		.dc.b ARG_POP
		.dc.b 87
		.dc.b ARG_POP
		.dc.b 249,33
		.dc.b ARG_END
x146c9:
		.dc.b 71
		.dc.b ARG_PUSH,((x14692-jmpbase)>>8)&255,(x14692-jmpbase)&255
		.dc.b ARG_PUSH,((x146c9-jmpbase)>>8)&255,(x146c9-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x146d3:
		.dc.b 71
		.dc.b ARG_POP
		.dc.b ARG_END
yBSAVE_args:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x14695-jmpbase)>>8)&255,(x14695-jmpbase)&255
		.dc.b ARG_PUSH,((x14695-jmpbase)>>8)&255,(x14695-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yBLOAD_args:
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x14b90-jmpbase)>>8)&255,(x14b90-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yFIELD_args:
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b ARG_PUSH,((x146f8-jmpbase)>>8)&255,(x146f8-jmpbase)&255
		.dc.b ARG_PUSH,((x1470c-jmpbase)>>8)&255,(x1470c-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x146f8:
		.dc.b ARG_PUSH,((x14695-jmpbase)>>8)&255,(x14695-jmpbase)&255
		.dc.b ARG_PUSH,((x1421f-jmpbase)>>8)&255,(x1421f-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((expect_string-jmpbase)>>8)&255,(expect_string-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14695-jmpbase)>>8)&255,(x14695-jmpbase)&255
		.dc.b 89
		.dc.b ARG_REPLACE,122
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_END
x1470c:
		.dc.b ARG_PUSH,((x146f8-jmpbase)>>8)&255,(x146f8-jmpbase)&255
		.dc.b ARG_PUSH,((x1470c-jmpbase)>>8)&255,(x1470c-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yGET_args:
		.dc.b ARG_PUSH,((x15039-jmpbase)>>8)&255,(x15039-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,4
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,6
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END
yPUT_args:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,10
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,12
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,14
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

	.IFNE GBE
yVPUT_args:
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,218
		.dc.b ARG_PUSH,((x15039-jmpbase)>>8)&255,(x15039-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
	.ENDC

yDEFFILL_args:
		.dc.b ARG_PUSH,((yDEFMARK_args-jmpbase)>>8)&255,(yDEFMARK_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,60
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b ARG_END

yCLIP_args:
		.dc.b TOK_OFF
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14aa3-jmpbase)>>8)&255,(x14aa3-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((x15039-jmpbase)>>8)&255,(x15039-jmpbase)&255
		.dc.b ARG_PUSH,((x14aa3-jmpbase)>>8)&255,(x14aa3-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b 71
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b ARG_PUSH,((x14aa3-jmpbase)>>8)&255,(x14aa3-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_OFFSET
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yDMASOUND_args:
		.dc.b ARG_PUSH,((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
		.dc.b ARG_END
ySOUND_args:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x147b9-jmpbase)>>8)&255,(x147b9-jmpbase)&255
		.dc.b ARG_POP

yWAVE_args:
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yENDIF_args-jmpbase)>>8)&255,(yENDIF_args-jmpbase)&255
		.dc.b ARG_POP
x147b9:
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END

yOUT_args:
		.dc.b ARG_PUSH,((x147d8-jmpbase)>>8)&255,(x147d8-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x147d8-jmpbase)>>8)&255,(x147d8-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13de4-jmpbase)>>8)&255,(f13de4-jmpbase)&255
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x147d8-jmpbase)>>8)&255,(x147d8-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13de4-jmpbase)>>8)&255,(f13de4-jmpbase)&255

x147d8:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b ARG_PUSH,((x147e0-jmpbase)>>8)&255,(x147e0-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x147e0:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x147e0-jmpbase)>>8)&255,(x147e0-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yENDSEEK_args:
ySEEK_args:
yRELSEEK_args:
		.dc.b ARG_PUSH,((x144ff-jmpbase)>>8)&255,(x144ff-jmpbase)&255
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_END

yRECORD_args:
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END
yDIM_args:
		.dc.b ARG_PUSH,((x143a6-jmpbase)>>8)&255,(x143a6-jmpbase)&255
		.dc.b ARG_PUSH,((x14804-jmpbase)>>8)&255,(x14804-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14804:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143a6-jmpbase)>>8)&255,(x143a6-jmpbase)&255
		.dc.b ARG_PUSH,((x14804-jmpbase)>>8)&255,(x14804-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x1480d:
		.dc.b 76
		.dc.b ARG_POP
		.dc.b 159
		.dc.b ARG_REPLACE,76
		.dc.b ARG_POP
		.dc.b 249,76
		.dc.b ARG_END
x14816:
		.dc.b ARG_PUSH,((x1480d-jmpbase)>>8)&255,(x1480d-jmpbase)&255
x14819:
		.dc.b ARG_BACK
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x1481f:
		.dc.b 76
		.dc.b ARG_POP
		.dc.b 159
		.dc.b ARG_REPLACE,76
		.dc.b ARG_END
x14825:
		.dc.b ARG_PUSH,((x1480d-jmpbase)>>8)&255,(x1480d-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yON_MENU_OBOX_args:
yON_MENU_IBOX_args:
yON_MENU_args:
yON_MENU_BUTTON_args:
yON_MENU_KEY_GOSUB_args:
yON_MENU_MESSAGE_GOSUB_args:
yON_MENU_GOSUB_args:
yON_BREAK_GOSUB_args:
yON_BREAK_CONT_args:
yON_BREAK_args:
yON_ERROR_GOSUB_args:
yON_ERROR_args:
yON_args:
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,1
		.dc.b 249,0
		.dc.b 151
		.dc.b ARG_BACK
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,4
		.dc.b 153
		.dc.b ARG_BACK
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,6
		.dc.b 153
		.dc.b ARG_BACK
		.dc.b 154
		.dc.b ARG_BACK
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,2
		.dc.b 151
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x14816-jmpbase)>>8)&255,(x14816-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,8
		.dc.b 153
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x14816-jmpbase)>>8)&255,(x14816-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,10
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x1481f-jmpbase)>>8)&255,(x1481f-jmpbase)&255
		.dc.b ARG_PUSH,((x14819-jmpbase)>>8)&255,(x14819-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,12
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b 174
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x14816-jmpbase)>>8)&255,(x14816-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,14
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b 170
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x14816-jmpbase)>>8)&255,(x14816-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,16
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b 171
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b ARG_PUSH,((x14825-jmpbase)>>8)&255,(x14825-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,220
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b 172
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x15036-jmpbase)>>8)&255,(x15036-jmpbase)&255
		.dc.b ARG_PUSH,((x14825-jmpbase)>>8)&255,(x14825-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,222
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b 173
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x15036-jmpbase)>>8)&255,(x15036-jmpbase)&255
		.dc.b ARG_PUSH,((x14825-jmpbase)>>8)&255,(x14825-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,20
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,18
		.dc.b 167
		.dc.b ARG_BACK
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,0
		.dc.b 249,252
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x1480d-jmpbase)>>8)&255,(x1480d-jmpbase)&255
		.dc.b ARG_PUSH,((x148ca-jmpbase)>>8)&255,(x148ca-jmpbase)&255
		.dc.b ARG_END

yEVERY_args:
yAFTER_args:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14825-jmpbase)>>8)&255,(x14825-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b 152
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b 154
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x148ca:
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x148ca-jmpbase)>>8)&255,(x148ca-jmpbase)&255
		.dc.b ARG_END

yRESUME_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b 168
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15448-jmpbase)>>8)&255,(f15448-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yPROCEDURE_args:
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b ARG_PUSH,((x1491e-jmpbase)>>8)&255,(x1491e-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yFUNCTION_args:
		.dc.b ARG_CALL_FUNC,((f154c4-jmpbase)>>8)&255,(f154c4-jmpbase)&255
		.dc.b ARG_PUSH,((x14917-jmpbase)>>8)&255,(x14917-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f154da-jmpbase)>>8)&255,(f154da-jmpbase)&255
		.dc.b ARG_PUSH,((x14917-jmpbase)>>8)&255,(x14917-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yDEFFN_args:
		.dc.b ARG_CALL_FUNC,((f154c4-jmpbase)>>8)&255,(f154c4-jmpbase)&255
		.dc.b ARG_PUSH,((x14917-jmpbase)>>8)&255,(x14917-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f154da-jmpbase)>>8)&255,(f154da-jmpbase)&255
		.dc.b ARG_PUSH,((x14917-jmpbase)>>8)&255,(x14917-jmpbase)&255
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END

x14917:
		.dc.b 35
		.dc.b ARG_PUSH,((x14926-jmpbase)>>8)&255,(x14926-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_END

x1491e:
		.dc.b 35
		.dc.b ARG_BACK
		.dc.b ARG_PUSH,((x14926-jmpbase)>>8)&255,(x14926-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_END

x14926:
		.dc.b 50
		.dc.b ARG_PUSH,((x14947-jmpbase)>>8)&255,(x14947-jmpbase)&255
		.dc.b ARG_PUSH,((x14951-jmpbase)>>8)&255,(x14951-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b ARG_PUSH,((x14935-jmpbase)>>8)&255,(x14935-jmpbase)&255
		.dc.b ARG_END

x14935:
		.dc.b TOK_COMMA
		.dc.b 50
		.dc.b ARG_PUSH,((x14947-jmpbase)>>8)&255,(x14947-jmpbase)&255
		.dc.b ARG_PUSH,((x14951-jmpbase)>>8)&255,(x14951-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b ARG_PUSH,((x14935-jmpbase)>>8)&255,(x14935-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x14947:
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b ARG_REPLACE,51
		.dc.b ARG_END
x14951:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14947-jmpbase)>>8)&255,(x14947-jmpbase)&255
		.dc.b ARG_PUSH,((x14951-jmpbase)>>8)&255,(x14951-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yGOSUB_args:
		.dc.b ARG_CALL_FUNC,((f15444-jmpbase)>>8)&255,(f15444-jmpbase)&255
		.dc.b ARG_PUSH,((x14962-jmpbase)>>8)&255,(x14962-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14962:
		.dc.b 35
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14982-jmpbase)>>8)&255,(x14982-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b 35
		.dc.b ARG_REPLACE,157
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x14982-jmpbase)>>8)&255,(x14982-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b 35
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b ARG_REPLACE,51
		.dc.b ARG_PUSH,((x14982-jmpbase)>>8)&255,(x14982-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_END
x14982:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14982-jmpbase)>>8)&255,(x14982-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_COMMA
		.dc.b ARG_REPLACE,156
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x14982-jmpbase)>>8)&255,(x14982-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b ARG_REPLACE,51
		.dc.b ARG_PUSH,((x14982-jmpbase)>>8)&255,(x14982-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

LABEL_args:
		.dc.b ARG_CALL_FUNC,((f15448-jmpbase)>>8)&255,(f15448-jmpbase)&255
		.dc.b TOK_LABEL
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yRESTORE_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
yGOTO_args:
		.dc.b ARG_CALL_FUNC,((f15448-jmpbase)>>8)&255,(f15448-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ySWAP_args:
		.dc.b ARG_PUSH,((x143cb-jmpbase)>>8)&255,(x143cb-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x143cb-jmpbase)>>8)&255,(x143cb-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143d6-jmpbase)>>8)&255,(x143d6-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x143d6-jmpbase)>>8)&255,(x143d6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143e1-jmpbase)>>8)&255,(x143e1-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x143e1-jmpbase)>>8)&255,(x143e1-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143f7-jmpbase)>>8)&255,(x143f7-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x143f7-jmpbase)>>8)&255,(x143f7-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14402-jmpbase)>>8)&255,(x14402-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x14402-jmpbase)>>8)&255,(x14402-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_float_arr-jmpbase)>>8)&255,(expect_float_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_bool_arr-jmpbase)>>8)&255,(expect_bool_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_bool_arr-jmpbase)>>8)&255,(expect_bool_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_word_arr-jmpbase)>>8)&255,(expect_word_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_word_arr-jmpbase)>>8)&255,(expect_word_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((expect_byte_arr-jmpbase)>>8)&255,(expect_byte_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_byte_arr-jmpbase)>>8)&255,(expect_byte_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b 7
		.dc.b ARG_PUSH,((x14386-jmpbase)>>8)&255,(x14386-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yMENU_args:
yMENU_KILL_args:
yMENU_OFF_args:
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_OFF
		.dc.b ARG_BACK
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_KILL
		.dc.b ARG_BACK
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b 249,55
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yARRAYFILL_args:
		.dc.b ARG_PUSH,((x143b2-jmpbase)>>8)&255,(x143b2-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yRCALL_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((expect_int_arr-jmpbase)>>8)&255,(expect_int_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yBITBLT_args:
		.dc.b ARG_PUSH,((x143c6-jmpbase)>>8)&255,(x143c6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143c6-jmpbase)>>8)&255,(x143c6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143c6-jmpbase)>>8)&255,(x143c6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((x143c6-jmpbase)>>8)&255,(x143c6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END
yPOLYMARK_args:
yPOLYFILL_args:
yPOLYLINE_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x143bc-jmpbase)>>8)&255,(x143bc-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143bc-jmpbase)>>8)&255,(x143bc-jmpbase)&255
		.dc.b ARG_PUSH,((x14aa3-jmpbase)>>8)&255,(x14aa3-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14aa3:
		.dc.b TOK_OFFSET
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yLOCAL_args:
yCLR_args:
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b ARG_PUSH,((x14ab1-jmpbase)>>8)&255,(x14ab1-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x14ab1:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b ARG_PUSH,((x14ab1-jmpbase)>>8)&255,(x14ab1-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yMOUSE_args:
yGMOUSE_args:
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_COMMA
yKEYLOOK_args:
yKEYGET_args:
yKEYTEST_args:
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

	.IFNE GBE
x58478_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58480_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x58483_372:
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58488_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58497_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x584a3_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x584a6_372:
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC

yALERT_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yKEYDEF_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14139-jmpbase)>>8)&255,(x14139-jmpbase)&255
		.dc.b ARG_END

yDEFTEXT_args:
		.dc.b ARG_PUSH,((yDEFMARK_args-jmpbase)>>8)&255,(yDEFMARK_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yDEFLINE_args-jmpbase)>>8)&255,(yDEFLINE_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
yDEFLINE_args:
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
yDEFMARK_args:
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP

yVCLS_args:
ySLEEP_args:
ySYSTEM_args:
yRANDOMIZE_args:
yQUIT_args:
yMONITOR_args:
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yRESERVE_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,208
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END
yBPUT_args:
yBGET_args:
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_END

	.IFNE GBE
	.IF GBE>=373
yRC_REDRAW_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,74
		.dc.b ARG_PUSH,((yVPBAR_args-jmpbase)>>8)&255,(yVPBAR_args-jmpbase)&255
		.dc.b ARG_END
	.ENDC
ySTRARRAYFILL_args:
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x58524_372:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58531_372:
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58541_372:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58550_372:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x5855f_372:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_END
x58567_372:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.IF GBE>=373
yPIXEL24_args:
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,2
		.dc.b ARG_PUSH,((ySET_GCBITMAP_args-jmpbase)>>8)&255,(ySET_GCBITMAP_args-jmpbase)&255
		.dc.b ARG_END
yPIXEL32_args:
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,6
		.dc.b ARG_PUSH,((ySET_GCBITMAP_args-jmpbase)>>8)&255,(ySET_GCBITMAP_args-jmpbase)&255
		.dc.b ARG_END
yPIXEL16_args:
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,10
		.dc.b ARG_PUSH,((ySET_GCBITMAP_args-jmpbase)>>8)&255,(ySET_GCBITMAP_args-jmpbase)&255
		.dc.b ARG_END
yPIXEL15_args:
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,14
		.dc.b ARG_PUSH,((ySET_GCBITMAP_args-jmpbase)>>8)&255,(ySET_GCBITMAP_args-jmpbase)&255
		.dc.b ARG_END
	.ENDC
	.ENDC

ySTORE_args:
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_PUSH,((x14b49-jmpbase)>>8)&255,(x14b49-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yRECALL_args:
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_CALL_FUNC,((expect_string_arr-jmpbase)>>8)&255,(expect_string_arr-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b4f-jmpbase)>>8)&255,(x14b4f-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x14b49:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b4f-jmpbase)>>8)&255,(x14b4f-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x14b4f:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14b56-jmpbase)>>8)&255,(x14b56-jmpbase)&255
		.dc.b ARG_END

x14b56:
		.dc.b 71
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

yVRC_COPY_args:
yRC_COPY_args:
		.dc.b ARG_PUSH,((x15036-jmpbase)>>8)&255,(x15036-jmpbase)&255
		.dc.b ARG_PUSH,((x14532-jmpbase)>>8)&255,(x14532-jmpbase)&255
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b ARG_PUSH,((x14b90-jmpbase)>>8)&255,(x14b90-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

ySETCOLOR_args:
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,168
		.dc.b ARG_PUSH,((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b ARG_END

yVDISYS_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,174
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,176
		.dc.b ARG_PUSH,((yTBITBLT_args-jmpbase)>>8)&255,(yTBITBLT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,178
		.dc.b ARG_PUSH,((yVBOX_args-jmpbase)>>8)&255,(yVBOX_args-jmpbase)&255
		.dc.b ARG_END

yGEMSYS_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,182
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
	.IFNE GBE
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((yVGET_args-jmpbase)>>8)&255,(yVGET_args-jmpbase)&255
	.ENDC
		.dc.b ARG_END
x14b90:
		.dc.b TOK_COMMA
x14b91:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x14b96:
		.dc.b ARG_CALL_FUNC,((f158f8-jmpbase)>>8)&255,(f158f8-jmpbase)&255
		.dc.b ARG_POP
x14b9a:
x585e8:
		.dc.b ARG_PUSH,((x14ba8-jmpbase)>>8)&255,(x14ba8-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14bb2-jmpbase)>>8)&255,(x14bb2-jmpbase)&255
		.dc.b ARG_PUSH,((x14bc8-jmpbase)>>8)&255,(x14bc8-jmpbase)&255
		.dc.b ARG_END

x14ba8:
		.dc.b TOK_ADD
		.dc.b ARG_REPLACE,29
		.dc.b ARG_POP
		.dc.b TOK_SUB
		.dc.b ARG_REPLACE,30
		.dc.b ARG_POP
		.dc.b 31
		.dc.b ARG_END

x14bb2:
		.dc.b ARG_CALL_FUNC,((f13c9a-jmpbase)>>8)&255,(f13c9a-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14bd0-jmpbase)>>8)&255,(x14bd0-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x1517e-jmpbase)>>8)&255,(x1517e-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b ARG_END

x14bc8:
		.dc.b ARG_CALL_FUNC,((f1369a-jmpbase)>>8)&255,(f1369a-jmpbase)&255
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x14bd0:
		.dc.b ARG_CALL_FUNC,((f14bde-jmpbase)>>8)&255,(f14bde-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x15160-jmpbase)>>8)&255,(x15160-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f154c4-jmpbase)>>8)&255,(f154c4-jmpbase)&255
		.dc.b ARG_PUSH,((x14962-jmpbase)>>8)&255,(x14962-jmpbase)&255
		.dc.b ARG_END
	.even

/* 370: 551fe */
/* 371: 574f4 */
/* 372: 5862c */
/* 373: 5944c */
f14bde:
		bsr        find_function
		lea.l      offset_table_pf(pc),a2
		move.w     d6,d0
		bpl.s      f14bde_1
	.IFNE GBE
		cmpi.w     #(TOK_SUBFUNC_208<<8)+255,d0
		bls.s      f14bde_208
		cmpi.w     #(TOK_SUBFUNC_209<<8)+255,d0
		bls.s      f14bde_209
		cmpi.w     #(TOK_SUBFUNC_210<<8)+255,d0
		bls.s      f14bde_210
		cmpi.w     #(TOK_SUBFUNC_211<<8)+255,d0
		bls.s      f14bde_211
		cmpi.w     #(TOK_SUBFUNC_212<<8)+255,d0
		bls.s      f14bde_212
		cmpi.w     #(TOK_SUBFUNC_213<<8)+255,d0
		bls.s      f14bde_213
		cmpi.w     #(TOK_SUBFUNC_214<<8)+255,d0
		bhi        f13c9a_6
f14bde_214:
		lea.l      offset_table_sf214(pc),a2
		move.b     #TOK_SUBFUNC_214,(a1)+ /* secondary function table */
		bra.s      f14bde_subfunc
f14bde_213:
		lea.l      offset_table_sf213(pc),a2
		move.b     #TOK_SUBFUNC_213,(a1)+ /* secondary function table */
		bra.s      f14bde_subfunc
f14bde_212:
	.IF GBE>=373
		lea.l      offset_table_sf212(pc),a2
	.ELSE
		lea.l      offset_table_sf214(pc),a2
	.ENDC
		move.b     #TOK_SUBFUNC_212,(a1)+ /* secondary function table */
		bra.s      f14bde_subfunc
f14bde_211:
		lea.l      offset_table_sf211(pc),a2
		move.b     #TOK_SUBFUNC_211,(a1)+ /* secondary function table */
		bra.s      f14bde_subfunc
f14bde_210:
		lea.l      offset_table_sf210(pc),a2
		move.b     #TOK_SUBFUNC_210,(a1)+ /* secondary function table */
		bra.s      f14bde_subfunc
f14bde_209:
		lea.l      offset_table_sf209(pc),a2
		move.b     #TOK_SUBFUNC_209,(a1)+ /* secondary function table */
		bra.s      f14bde_subfunc
	.ELSE
		cmpi.w     #(TOK_SUBFUNC_208<<8)+255,d0 /* token in range? */
		bhi        f13c9a_6
	.ENDC
f14bde_208:
		lea.l      offset_table_sf208(pc),a2
		move.b     #TOK_SUBFUNC_208,(a1)+ /* secondary function table */
f14bde_subfunc:
		andi.w     #255,d0
f14bde_1:
		move.b     d0,(a1)+
		move.b     0(a2,d0.w),d0
		beq        f13c9a_6
		lea.l      jmpbase(pc),a2
		adda.w     x14c16(pc,d0.w),a2
		addq.l     #4,a7
		bra        parse_cmd_args0

/* 370: 55256 */
/* 371: 5758c */
/* 372: 586c4 */
/* 373: 594e4 */
x14c16:
		.dc.w 0
		.dc.w x14d00-jmpbase
		.dc.w x14cfd-jmpbase
		.dc.w x14cfa-jmpbase
		.dc.w x14cf7-jmpbase
		.dc.w x14cf4-jmpbase
		.dc.w x14d04-jmpbase
		.dc.w x14d09-jmpbase
		.dc.w x14d03-jmpbase
		.dc.w x14d0e-jmpbase
		.dc.w x14ee8-jmpbase
		.dc.w x14f3c-jmpbase
		.dc.w x14f41-jmpbase
	.IF GBE>=372
		.dc.w x58e08_372-jmpbase
	.ELSE
		.dc.w x14f4a-jmpbase
	.ENDC
		.dc.w x14f55-jmpbase
	.IF GBE>=372
		.dc.w x58e0b_372-jmpbase
	.ELSE
		.dc.w x14f4d-jmpbase
	.ENDC
		.dc.w x14f5d-jmpbase
		.dc.w x14f52-jmpbase
		.dc.w x14cee-jmpbase
		.dc.w x14f6e-jmpbase
		.dc.w x14f76-jmpbase
		.dc.w x14ce8-jmpbase
		.dc.w x14f8a-jmpbase
		.dc.w x14f6a-jmpbase
		.dc.w x14f7a-jmpbase
		.dc.w x14f66-jmpbase
		.dc.w x14cf1-jmpbase
		.dc.w x14ceb-jmpbase
		.dc.w x14f23-jmpbase
		.dc.w x14f87-jmpbase
		.dc.w x14f83-jmpbase
		.dc.w x14f92-jmpbase
		.dc.w x14fae-jmpbase
		.dc.w x14d23-jmpbase
		.dc.w x14fdc-jmpbase
		.dc.w x14fe1-jmpbase
		.dc.w x14fe5-jmpbase
		.dc.w x14ff3-jmpbase
		.dc.w x14fee-jmpbase
		.dc.w x14ffb-jmpbase
		.dc.w x15000-jmpbase
		.dc.w x15005-jmpbase
		.dc.w x15010-jmpbase
		.dc.w x14ca9-jmpbase
		.dc.w x14cb2-jmpbase
		.dc.w x14cbb-jmpbase
		.dc.w x14cc4-jmpbase
		.dc.w x14ccd-jmpbase
		.dc.w x14cd6-jmpbase
		.dc.w x14cdf-jmpbase
		.dc.w x14d13-jmpbase
		.dc.w x14f05-jmpbase
		.dc.w x14f0d-jmpbase
		.dc.w x14fc5-jmpbase
		.dc.w x14f34-jmpbase
		.dc.w x14c97-jmpbase
		.dc.w x14efd-jmpbase
		.dc.w x14ef4-jmpbase
		.dc.w x14c8e-jmpbase
	.IF GBE>=372
		.dc.w x58d52_372-jmpbase
		.dc.w x58d64_372-jmpbase
		.dc.w x58dd0_372-jmpbase
		.dc.w x58d67_372-jmpbase
		.dc.w x58edd_372-jmpbase
		.dc.w x58478_372-jmpbase
		.dc.w x58480_372-jmpbase
		.dc.w x58e05_372-jmpbase
		.dc.w x587a9_372-jmpbase
		.dc.w x58ed8_372-jmpbase
		.dc.w x58d6a_372-jmpbase
		.dc.w x58483_372-jmpbase
		.dc.w x58ea8_372-jmpbase
		.dc.w x58e23_372-jmpbase
		.dc.w x58488_372-jmpbase
		.dc.w x58ea0_372-jmpbase
		.dc.w x57fbe_372-jmpbase
		.dc.w x57fc3_372-jmpbase
		.dc.w x58848_372-jmpbase
		.dc.w y132-jmpbase
		.dc.w x58854_372-jmpbase
		.dc.w x58f03_372-jmpbase
		.dc.w x58efa_372-jmpbase
		.dc.w x58f10_372-jmpbase
		.dc.w x58df3_372-jmpbase
		.dc.w x58d41_372-jmpbase
		.dc.w x58d44_372-jmpbase
		.dc.w x58524_372-jmpbase
		.dc.w x58531_372-jmpbase
		.dc.w x58541_372-jmpbase
		.dc.w x587b6_372-jmpbase
		.dc.w x5855f_372-jmpbase
		.dc.w x58e37_372-jmpbase
		.dc.w x58567_372-jmpbase
		.dc.w x58e48_372-jmpbase
		.dc.w x58550_372-jmpbase
		.dc.w x58860_372-jmpbase
		.dc.w x5886c_372-jmpbase
		.dc.w x58efe_372-jmpbase
		.dc.w x58e70_372-jmpbase
		.dc.w x584a6_372-jmpbase
		.dc.w x584a3_372-jmpbase
		.dc.w x58497_372-jmpbase
		.dc.w x58d4a_372-jmpbase
		.dc.w x58d35_372-jmpbase
		.dc.w x58e60_372-jmpbase
	.ENDC
	.IF GBE>=373
		.dc.w x59d80_373-jmpbase
		.dc.w x59be7_373-jmpbase
		.dc.w x59c1f_373-jmpbase
	.ENDC
		.dc.w 0

/* 370: 552f8 */
/* 371: 5764e */
/* 372: 58798 */
/* 373: 595be */
	.IFNE GBE
y132:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x587a9_372:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x587b6_372:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC
x14c8e:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA

x587c7_372:
x14c92:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x14c97:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14c9f-jmpbase)>>8)&255,(x14c9f-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x14c9f:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15036-jmpbase)>>8)&255,(x15036-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15036-jmpbase)>>8)&255,(x15036-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x14ca9:
		.dc.b ARG_REPLACE,208
		.dc.b 35
		.dc.b ARG_REPLACE,1
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_END
x14cb2:
		.dc.b ARG_REPLACE,208
		.dc.b 35
		.dc.b ARG_REPLACE,4
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_END
x14cbb:
		.dc.b ARG_REPLACE,208
		.dc.b 35
		.dc.b ARG_REPLACE,5
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_END
x14cc4:
		.dc.b ARG_REPLACE,208
		.dc.b 35
		.dc.b ARG_REPLACE,6
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_END
x14ccd:
		.dc.b ARG_REPLACE,208
		.dc.b 35
		.dc.b ARG_REPLACE,7
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_END
x14cd6:
		.dc.b ARG_REPLACE,208
		.dc.b 35
		.dc.b ARG_REPLACE,8
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_END
x14cdf:
		.dc.b ARG_REPLACE,208
		.dc.b 35
		.dc.b ARG_REPLACE,9
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_END

x14ce8:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14ceb:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14cee:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14cf1:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14cf4:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14cf7:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14cfa:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14cfd:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14d00:
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
x14d03:
		.dc.b ARG_END

x14d04:
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x14d09:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x59669_373:
x14d0e:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b 88
		.dc.b ARG_END
	.IFNE GBE
x58848_372:
		.dc.b ARG_PUSH,((x14cf7-jmpbase)>>8)&255,(x14cf7-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_208,239
		.dc.b ARG_REPLACE,240
		.dc.b ARG_PUSH,((x14cf4-jmpbase)>>8)&255,(x14cf4-jmpbase)&255
		.dc.b ARG_END
x58854_372:
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_210,91
		.dc.b ARG_REPLACE,92
		.dc.b ARG_PUSH,((x14cf7-jmpbase)>>8)&255,(x14cf7-jmpbase)&255
		.dc.b ARG_END
x58860_372:
		.dc.b ARG_PUSH,((x14d00-jmpbase)>>8)&255,(x14d00-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_210,254
		.dc.b ARG_REPLACE,255
		.dc.b ARG_PUSH,((x14cfa-jmpbase)>>8)&255,(x14cfa-jmpbase)&255
		.dc.b ARG_END
x5886c_372:
		.dc.b ARG_PUSH,((x14cfd-jmpbase)>>8)&255,(x14cfd-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_211,1
		.dc.b ARG_REPLACE,2
		.dc.b ARG_PUSH,((x14cf7-jmpbase)>>8)&255,(x14cf7-jmpbase)&255
		.dc.b ARG_END
	.ENDC
x14d13:
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b 112
		.dc.b ARG_REPLACE,113
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_END
x14d23:
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_PUSH,((x14d2b-jmpbase)>>8)&255,(x14d2b-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14d2b:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_PUSH,((x14d2b-jmpbase)>>8)&255,(x14d2b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

/* 370: 553d4 */
/* 371: 57751 */
/* 372: 58899 */
/* 373: 596bf */
x14d34:
offset_table_pf:
		.dc.b 0x5a /*   0  AND  */
		.dc.b 0x5c /*   1  OR  */
		.dc.b 0x5e /*   2  XOR  */
		.dc.b 0x62 /*   3  IMP  */
		.dc.b 0x60 /*   4  EQV  */
		.dc.b 0    /*   5 - */
		.dc.b 0    /*   6 + */
		.dc.b 0x4a /*   7 * */
		.dc.b 0    /*   8 / */
		.dc.b 0    /*   9 ^ */
		.dc.b 0x58 /*  10  MOD  */
		.dc.b 0x56 /*  11  DIV  */
		.dc.b 0    /*  12 <> */
		.dc.b 0    /*  13 <= */
		.dc.b 0    /*  14 =< */
		.dc.b 0    /*  15 >= */
		.dc.b 0    /*  16 => */
		.dc.b 0    /*  17 < */
		.dc.b 0    /*  18 > */
		.dc.b 0    /*  19 = */
		.dc.b 0    /*  20 <> */
		.dc.b 0    /*  21 <= */
		.dc.b 0    /*  22 =< */
		.dc.b 0    /*  23 >= */
		.dc.b 0    /*  24 => */
		.dc.b 0    /*  25 < */
		.dc.b 0    /*  26 > */
		.dc.b 0    /*  27 = */
		.dc.b 0    /*  28 + */
		.dc.b 0    /*  29 + */
		.dc.b 0    /*  30 - */
		.dc.b 0    /*  31 NOT  */
		.dc.b 0    /*  32 ) */
		.dc.b 0    /*  33 , */
		.dc.b 0    /*  34 ; */
		.dc.b 0x0c /*  35 ( */
		.dc.b 0    /*  36 ERR$( */
		.dc.b 0x0c /*  37 INT( */
		.dc.b 0x0c /*  38 TRUNC( */
		.dc.b 0x0c /*  39 FRAC( */
		.dc.b 0x0c /*  40 ABS( */
		.dc.b 0x0c /*  41 SIN( */
		.dc.b 0x0c /*  42 COS( */
		.dc.b 0x0c /*  43 TAN( */
		.dc.b 0x0c /*  44 ATN( */
		.dc.b 0    /*  45 == */
		.dc.b 0    /*  46 ( */
		.dc.b 0x0c /*  47 EXP( */
		.dc.b 0x0c /*  48 LOG( */
		.dc.b 0x0c /*  49 LOG10( */
		.dc.b 0    /*  50 VAR  */
		.dc.b 0    /*  51 ) */
		.dc.b 0    /*  52 INPAUX$ */
		.dc.b 0x0e /*  53 VAL( */
		.dc.b 0    /*  54 INPMID$ */
		.dc.b 0    /*  55  */
		.dc.b 0    /*  56 TIME$ */
		.dc.b 0x10 /*  57 )= */
		.dc.b 0    /*  58 LEFT$( */
		.dc.b 0    /*  59 LEFT$( */
		.dc.b 0    /*  60 RIGHT$( */
		.dc.b 0    /*  61 RIGHT$( */
		.dc.b 0    /*  62 MID$( */
		.dc.b 0    /*  63 MID$( */
		.dc.b 0    /*  64 , */
		.dc.b 0x0c /*  65 ASIN( */
		.dc.b 0    /*  66 CHR$( */
		.dc.b 0    /*  67 }= */
		.dc.b 0    /*  68 ]= */
		.dc.b 0    /*  69 = */
		.dc.b 0    /*  70 */
		.dc.b 0    /*  71  TO  */
		.dc.b 0    /*  72  STEP  */
		.dc.b 0    /*  73  DOWNTO  */
		.dc.b 0    /*  74  THEN */
		.dc.b 0    /*  75  GOTO  */
		.dc.b 0    /*  76  GOSUB  */
		.dc.b 0    /*  77 # */
		.dc.b 0x0c /*  78 SQR( */
		.dc.b 0x10 /*  79 PI */
		.dc.b 0    /*  80 [ */
		.dc.b 0    /*  81 ] */
		.dc.b 0x0c /*  82 ACOS( */
		.dc.b 0    /*  83 INKEY$ */
		.dc.b 0x0c /*  84 RND( */
		.dc.b 0x10 /*  85 RND */
		.dc.b 0x0c /*  86 RANDOM( */
		.dc.b 0    /*  87 ' */
		.dc.b 0    /*  88 } */
		.dc.b 0    /*  89 AT( */
		.dc.b 0    /*  90 IF */
		.dc.b 0    /*  91 \\ */
		.dc.b 0x12 /*  92 FLOAT{ */
		.dc.b 0x12 /*  93 DOUBLE{ */
		.dc.b 0    /*  94 INPUT$( */
		.dc.b 0    /*  95 INPUT$( */
		.dc.b 0    /*  96 INPUT */
		.dc.b 0    /*  97 CHAR{ */
		.dc.b 0    /*  98 MKI$( */
		.dc.b 0    /*  99 MKL$( */
		.dc.b 0    /* 100 MKS$( */
		.dc.b 0    /* 101 MKF$( */
		.dc.b 0    /* 102 MKD$( */
		.dc.b 0x0c /* 103 DEG( */
		.dc.b 0x0c /* 104 RAD( */
		.dc.b 0x0e /* 105 CVS( */
		.dc.b 0x0e /* 106 CVF( */
		.dc.b 0x0e /* 107 CVD( */
		.dc.b 0    /* 108  AS  */
		.dc.b 0    /* 109  OFFSET  */
		.dc.b 0x0c /* 110 CFLOAT( */
		.dc.b 0    /* 111 TRACE$ */
		.dc.b 0x64 /* 112 ROUND( */
		.dc.b 0    /* 113 ROUND( */
		.dc.b 0    /* 114  WITH  */
		.dc.b 0    /* 115 BIN$( */
		.dc.b 0    /* 116 BIN$( */
		.dc.b 0x42 /* 117 MIN( */
		.dc.b 0x42 /* 118 MIN( */
		.dc.b 0x42 /* 119 MAX( */
		.dc.b 0x42 /* 120 MAX( */
		.dc.b 0x12 /* 121 SINGLE{ */
		.dc.b 0    /* 122  AT( */
		.dc.b 0x0c /* 123 SINQ( */
		.dc.b 0    /* 124 : */
		.dc.b 0x0c /* 125 COSQ( */
		.dc.b 0    /* 126 DATE$ */
		.dc.b 0    /* 127 UPPER$( */
		.dc.b 0    /* 128 SPACE$( */
		.dc.b 0    /* 129 STRING$( */
		.dc.b 0    /* 130 STRING$( */
		.dc.b 0    /* 131 SUCC( */
		.dc.b 0    /* 132 DIR$( */
		.dc.b 0    /* 133 PRED( */
		.dc.b 0x02 /* 134 DRAW( */
		.dc.b 0    /* 135 TRIM$( */
		.dc.b 0    /* 136 CMDLINE$ */
		.dc.b 0    /* 137 CURDIR$ */
		.dc.b 0    /* 138 L: */
		.dc.b 0    /* 139 W: */
		.dc.b 0x02 /* 140 FACT( */
		.dc.b 0x04 /* 141 COMBIN( */
	.IF GBE>=372
		.dc.b 0    /* 142 ENVIRON$( */
	.ELSE
		.dc.b 0x0c /* 142 ENVIRON$( */
	.ENDC
		.dc.b 0x04 /* 143 VARIAT( */
		.dc.b 0    /* 144 LTRIM$( */
		.dc.b 0    /* 145 RTRIM$( */
		.dc.b 0    /* 146 LCASE$( */
		.dc.b 0    /* 147 UCASE$( */
		.dc.b 0    /* 148 LOWER$( */
		.dc.b 0    /* 149 OB_TEXT$( */
		.dc.b 0    /* 150 ZTRIM$( */
		.dc.b 0    /* 151 ERROR */
		.dc.b 0    /* 152 STOP */
		.dc.b 0    /* 153 BREAK */
		.dc.b 0    /* 154  CONT */
		.dc.b 0x0c /* 155 FIX( */
		.dc.b 0    /* 156 , */
		.dc.b 0    /* 157 ( */
		.dc.b 0    /* 158 FN  */
		.dc.b 0    /* 159 @ */
		.dc.b 0    /* 160 MIRROR$( */
		.dc.b 0    /* 161 TAB( */
		.dc.b 0    /* 162 SPC( */
		.dc.b 0    /* 163 USING  */
		.dc.b 0    /* 164 CHAR$( */
		.dc.b 0    /* 165 TIME$( */
		.dc.b 0    /* 166 TIMESTAMP$( */
		.dc.b 0    /* 167 MENU */
		.dc.b 0    /* 168 NEXT */
	.IF GBE>=372
		.dc.b 0    /* 169 STRPEEK$( */
	.ELSE
		.dc.b 0x10 /* 169 STRPEEK$( */
	.ENDC
		.dc.b 0    /* 170 KEY */
		.dc.b 0    /* 171 BUTTON */
		.dc.b 0    /* 172 IBOX */
		.dc.b 0    /* 173 OBOX */
		.dc.b 0    /* 174 MESSAGE */
		.dc.b 0    /* 175 OFF */
		.dc.b 0    /* 176 KILL */
		.dc.b 0    /* 177 DIGITAL$( */
		.dc.b 0    /* 178 REPLACE$( */
		.dc.b 0    /* 179 CRYPT$( */
		.dc.b 0    /* 180 XLATE$( */
		.dc.b 0    /* 181 STRUCT$( */
		.dc.b 0    /* 182 BASE  */
	.IF GBE>=372
		.dc.b 0x10 /* 183 NULL */
	.ELSE
		.dc.b 0    /* 183 NULL */
	.ENDC
		.dc.b 0    /* 184 0 */
		.dc.b 0    /* 185 1 */
		.dc.b 0    /* 186 2 */
		.dc.b 0    /* 187 3 */
		.dc.b 0x10 /* 188 TRUE */
		.dc.b 0x10 /* 189 FALSE */
		.dc.b 0    /* 190 STR$( */
		.dc.b 0    /* 191 STR$( */
		.dc.b 0    /* 192 STR$( */
		.dc.b 0    /* 193 HEX$( */
	.IF GBE>=372
		.dc.b 0    /* 194 HEX$( */
	.ELSE
		.dc.b 0x10 /* 194 HEX$(*/
	.ENDC
		.dc.b 0    /* 195 OCT$( */
	.IF GBE>=372
		.dc.b 0    /* 196 OCT$(*/
	.ENDC

offset_table_sf208:
		.dc.b 0x04 /*   0 MUL( */
		.dc.b 0x04 /*   1 DIV( */
		.dc.b 0x04 /*   2 ADD( */
		.dc.b 0x04 /*   3 SUB( */
		.dc.b 0x04 /*   4 MOD( */
		.dc.b 0x04 /*   5 AND( */
		.dc.b 0x04 /*   6 OR( */
		.dc.b 0x04 /*   7 XOR( */
		.dc.b 0x04 /*   8 EQV( */
		.dc.b 0x04 /*   9 IMP( */
		.dc.b 0x04 /*  10 SHL( */
		.dc.b 0x04 /*  11 SHR( */
		.dc.b 0x04 /*  12 ROL( */
		.dc.b 0x04 /*  13 ROR( */
		.dc.b 0x02 /*  14 WORD( */
		.dc.b 0x02 /*  15 CARD( */
		.dc.b 0x02 /*  16 BYTE( */
		.dc.b 0x02 /*  17 SWAP( */
		.dc.b 0x02 /*  18 ADDRIN( */
		.dc.b 0x10 /*  19 ADDRIN */
		.dc.b 0x02 /*  20 ADDROUT( */
		.dc.b 0x10 /*  21 ADDROUT */
		.dc.b 0x02 /*  22 CONTRL( */
		.dc.b 0x10 /*  23 CONTRL */
		.dc.b 0x02 /*  24 GCONTRL( */
		.dc.b 0x10 /*  25 GCONTRL */
		.dc.b 0x02 /*  26 GINTIN( */
		.dc.b 0x10 /*  27 GINTIN */
		.dc.b 0x02 /*  28 GINTOUT( */
		.dc.b 0x10 /*  29 GINTOUT */
		.dc.b 0x10 /*  30 HIMEM */
		.dc.b 0x10 /*  31 BASEPAGE */
		.dc.b 0x02 /*  32 INTIN( */
		.dc.b 0x10 /*  33 INTIN */
		.dc.b 0x02 /*  34 INTOUT( */
		.dc.b 0x10 /*  35 INTOUT */
		.dc.b 0x02 /*  36 PTSIN( */
		.dc.b 0x10 /*  37 PTSIN */
		.dc.b 0x02 /*  38 PTSOUT( */
		.dc.b 0x10 /*  39 PTSOUT */
		.dc.b 0x10 /*  40 VDIBASE */
		.dc.b 0x04 /*  41 WINDTAB( */
		.dc.b 0x10 /*  42 WINDTAB */
		.dc.b 0x04 /*  43 PTST( */
		.dc.b 0x04 /*  44 BTST( */
		.dc.b 0x04 /*  45 BSET( */
		.dc.b 0x04 /*  46 BCLR( */
		.dc.b 0x04 /*  47 BCHG( */
		.dc.b 0x04 /*  48 SHL&( */
		.dc.b 0x04 /*  49 SHR&( */
		.dc.b 0x04 /*  50 ROL&( */
		.dc.b 0x04 /*  51 ROR&( */
		.dc.b 0x04 /*  52 SHL|( */
		.dc.b 0x04 /*  53 SHR|( */
		.dc.b 0x04 /*  54 ROL|( */
		.dc.b 0x04 /*  55 ROR|( */
		.dc.b 0x10 /*  56 CRSLIN */
		.dc.b 0x10 /*  57 CRSCOL */
		.dc.b 0x10 /*  58 MOUSEX */
		.dc.b 0x10 /*  59 MOUSEY */
		.dc.b 0x10 /*  60 MOUSEK */
		.dc.b 0x10 /*  61 GB */
		.dc.b 0x10 /*  62 TIMER */
		.dc.b 0x02 /*  63 PEEK( */
		.dc.b 0x02 /*  64 DPEEK( */
		.dc.b 0x02 /*  65 LPEEK( */
		.dc.b 0x0e /*  66 LEN( */
		.dc.b 0x0e /*  67 ASC( */
		.dc.b 0x40 /*  68 INSTR( */
		.dc.b 0x40 /*  69 INSTR( */
		.dc.b 0x40 /*  70 INSTR( */
		.dc.b 0x54 /*  71 FRE( */
		.dc.b 0x04 /*  72 POINT( */
		.dc.b 0x0e /*  73 VAL?( */
		.dc.b 0x02 /*  74 INP( */
		.dc.b 0x0e /*  75 CVI( */
		.dc.b 0x0e /*  76 CVL( */
		.dc.b 0x02 /*  77 INP(# */
		.dc.b 0x02 /*  78 EOF(# */
		.dc.b 0x02 /*  79 LOF(# */
		.dc.b 0x02 /*  80 LOC(# */
		.dc.b 0x4c /*  81 DIM?( */
		.dc.b 0x02 /*  82 RAND( */
		.dc.b 0x02 /*  83 DFREE( */
		.dc.b 0x0e /*  84 EXIST( */
		.dc.b 0x4e /*  85 BIOS( */
		.dc.b 0x4e /*  86 XBIOS( */
		.dc.b 0x4e /*  87 GEMDOS( */
		.dc.b 0x10 /*  88 ERR */
		.dc.b 0x10 /*  89 FATAL */
		.dc.b 0x02 /*  90 POS( */
		.dc.b 0x02 /*  91 LPOS( */
		.dc.b 0x02 /*  92 MENU( */
		.dc.b 0x02 /*  93 INP?( */
		.dc.b 0x02 /*  94 OUT?( */
		.dc.b 0x50 /*  95 EXEC( */
		.dc.b 0x02 /*  96 SUCC( */
		.dc.b 0x02 /*  97 PRED( */
		.dc.b 0x02 /*  98 W_HAND(# */
		.dc.b 0x02 /*  99 W_INDEX(# */
		.dc.b 0x0c /* 100 SGN( */
		.dc.b 0x0c /* 101 EVEN( */
		.dc.b 0x0c /* 102 ODD( */
		.dc.b 0x02 /* 103 CINT( */
		.dc.b 0x10 /* 104 GDOS? */
		.dc.b 0x6e /* 105 V_OPNWK( */
		.dc.b 0x10 /* 106 V_CLSWK() */
		.dc.b 0x6e /* 107 V_OPNVWK( */
		.dc.b 0x10 /* 108 V_CLSVWK() */
		.dc.b 0x10 /* 109 V_UPDWK() */
		.dc.b 0x02 /* 110 VST_LOAD_FONTS( */
		.dc.b 0x02 /* 111 VST_UNLOAD_FONTS( */
		.dc.b 0x12 /* 112 { */
		.dc.b 0x12 /* 113 LONG{ */
		.dc.b 0x12 /* 114 INT{ */
		.dc.b 0x12 /* 115 CARD{ */
		.dc.b 0x12 /* 116 BYTE{ */
		.dc.b 0x52 /* 117 C: */
		.dc.b 0x10 /* 118 EVNT_KEYBD() */
		.dc.b 0x66 /* 119 EVNT_BUTTON( */
		.dc.b 0x68 /* 120 EVNT_MOUSE( */
		.dc.b 0x02 /* 121 EVNT_MESAG( */
		.dc.b 0x02 /* 122 EVNT_TIMER( */
		.dc.b 0x14 /* 123 EVNT_MULTI( */
		.dc.b 0x0e /* 124 RSRC_LOAD( */
		.dc.b 0x10 /* 125 RSRC_FREE() */
		.dc.b 0x3e /* 126 RSRC_GADDR( */
		.dc.b 0x06 /* 127 RSRC_SADDR( */
		.dc.b 0x04 /* 128 RSRC_OBFIX( */
		.dc.b 0x16 /* 129 SHEL_READ( */
		.dc.b 0x18 /* 130 SHEL_WRITE( */
		.dc.b 0x1a /* 131 SHEL_GET( */
		.dc.b 0x1c /* 132 SHEL_PUT( */
		.dc.b 0x1e /* 133 SHEL_FIND( */
		.dc.b 0x20 /* 134 SHEL_ENVRN( */
		.dc.b 0x10 /* 135 APPL_INIT() */
		.dc.b 0x06 /* 136 APPL_READ( */
		.dc.b 0x06 /* 137 APPL_WRITE( */
		.dc.b 0x0e /* 138 APPL_FIND( */
		.dc.b 0x06 /* 139 APPL_TPLAY( */
		.dc.b 0x04 /* 140 APPL_TRECORD( */
		.dc.b 0x10 /* 141 APPL_EXIT() */
		.dc.b 0x04 /* 142 EVNT_DCLICK( */
		.dc.b 0x04 /* 143 MENU_BAR( */
		.dc.b 0x06 /* 144 MENU_ICHECK( */
		.dc.b 0x06 /* 145 MENU_IENABLE( */
		.dc.b 0x06 /* 146 MENU_TNORMAL( */
		.dc.b 0x22 /* 147 MENU_TEXT( */
		.dc.b 0x1c /* 148 MENU_REGISTER( */
		.dc.b 0x06 /* 149 OBJC_ADD( */
		.dc.b 0x04 /* 150 OBJC_DELETE( */
		.dc.b 0x24 /* 151 OBJC_DRAW( */
		.dc.b 0x0a /* 152 OBJC_FIND( */
		.dc.b 0x26 /* 153 OBJC_OFFSET( */
		.dc.b 0x06 /* 154 OBJC_ORDER( */
		.dc.b 0x28 /* 155 OBJC_EDIT( */
		.dc.b 0x2a /* 156 OBJC_CHANGE( */
		.dc.b 0x04 /* 157 FORM_DO( */
		.dc.b 0x2a /* 158 FORM_DIAL( */
		.dc.b 0x1c /* 159 FORM_ALERT( */
		.dc.b 0x02 /* 160 FORM_ERROR( */
		.dc.b 0x2c /* 161 FORM_CENTER( */
		.dc.b 0x2e /* 162 GRAF_RUBBERBOX( */
		.dc.b 0x32 /* 163 GRAF_DRAGBOX( */
		.dc.b 0x34 /* 164 GRAF_MOVEBOX( */
		.dc.b 0x36 /* 165 GRAF_GROWBOX( */
		.dc.b 0x36 /* 166 GRAF_SHRINKBOX( */
		.dc.b 0x08 /* 167 GRAF_WATCHBOX( */
		.dc.b 0x08 /* 168 GRAF_SLIDEBOX( */
		.dc.b 0x38 /* 169 GRAF_HANDLE( */
		.dc.b 0x04 /* 170 GRAF_MOUSE( */
		.dc.b 0x38 /* 171 GRAF_MKSTATE( */
		.dc.b 0x1e /* 172 SCRP_READ( */
		.dc.b 0x0e /* 173 SCRP_WRITE( */
		.dc.b 0x6c /* 174 FSEL_INPUT( */
		.dc.b 0x0a /* 175 WIND_CREATE( */
		.dc.b 0x0a /* 176 WIND_OPEN( */
		.dc.b 0x02 /* 177 WIND_CLOSE( */
		.dc.b 0x02 /* 178 WIND_DELETE( */
		.dc.b 0x3a /* 179 WIND_GET( */
		.dc.b 0x34 /* 180 WIND_SET( */
		.dc.b 0x04 /* 181 WIND_FIND( */
		.dc.b 0x02 /* 182 WIND_UPDATE( */
		.dc.b 0x3c /* 183 WIND_CALC( */
		.dc.b 0x02 /* 184 MALLOC( */
		.dc.b 0x02 /* 185 MFREE( */
		.dc.b 0x04 /* 186 MSHRINK( */
		.dc.b 0x44 /* 187 VARPTR( */
		.dc.b 0x48 /* 188 ARRPTR( */
		.dc.b 0x4a /* 189 * */
		.dc.b 0x02 /* 190 TYPE( */
		.dc.b 0x04 /* 191 OB_ADR( */
		.dc.b 0x04 /* 192 OB_NEXT( */
		.dc.b 0x04 /* 193 OB_HEAD( */
		.dc.b 0x04 /* 194 OB_TAIL( */
		.dc.b 0x04 /* 195 OB_TYPE( */
		.dc.b 0x04 /* 196 OB_FLAGS( */
		.dc.b 0x04 /* 197 OB_STATE( */
		.dc.b 0x04 /* 198 OB_SPEC( */
		.dc.b 0x04 /* 199 OB_X( */
		.dc.b 0x04 /* 200 OB_Y( */
		.dc.b 0x04 /* 201 OB_W( */
		.dc.b 0x04 /* 202 OB_H( */
		.dc.b 0x46 /* 203 V: */
		.dc.b 0x2e /* 204 FORM_KEYBD( */
		.dc.b 0x30 /* 205 FORM_BUTTON( */
		.dc.b 0x02 /* 206 STICK( */
		.dc.b 0x02 /* 207 STRIG( */
		.dc.b 0x02 /* 208 WORK_OUT( */
		.dc.b 0x6a /* 209 RINSTR( */
		.dc.b 0x6a /* 210 RINSTR( */
		.dc.b 0x6a /* 211 RINSTR( */
		.dc.b 0x10 /* 212 L~A */
		.dc.b 0x10 /* 213 V~H */
		.dc.b 0x10 /* 214 V_CLRWK() */
		.dc.b 0x1a /* 215 VQT_NAME( */
		.dc.b 0x70 /* 216 VQT_EXTENT( */
		.dc.b 0x72 /* 217 RC_INTERSECT( */
		.dc.b 0x74 /* 218 FSFIRST( */
		.dc.b 0x10 /* 219 FSNEXT() */
		.dc.b 0x02 /* 220 FSETDTA( */
		.dc.b 0x10 /* 221 FGETDTA() */
		.dc.b 0x12 /* 222 WORD{ */
		.dc.b 0x02 /* 223 INP&( */
		.dc.b 0x02 /* 224 INP&(# */
		.dc.b 0x02 /* 225 INP%( */
		.dc.b 0x02 /* 226 INP%(# */
		.dc.b 0x10 /* 227 _DATA */
		.dc.b 0x02 /* 228 PADX( */
		.dc.b 0x02 /* 229 PADY( */
		.dc.b 0x02 /* 230 PADT( */
		.dc.b 0x10 /* 231 LPENX */
		.dc.b 0x10 /* 232 LPENY */
		.dc.b 0x10 /* 233 STE? */
		.dc.b 0x10 /* 234 TT? */
		.dc.b 0x06 /* 235 SCALE( */
		.dc.b 0x10 /* 236 _X */
		.dc.b 0x10 /* 237 _Y */
		.dc.b 0x10 /* 238 _C */
	.IF GBE<372
		.dc.b 0x08 /* 239 GETSIZE( */
	.ELSE
		.dc.b 0x9a /* 239  GETSIZE( */
		.dc.b 0x9a /* 240  GETSIZE( */
		.dc.b 0x10 /* 241 _B */
		.dc.b 0x10 /* 242 _AES */
		.dc.b 0x10 /* 243 _TOS */
		.dc.b 0x10 /* 244 A~I */
		.dc.b 0x10 /* 245 CPU020() */
		.dc.b 0x10 /* 246 FPU882() */
		.dc.b 0x10 /* 247 GMOUSEK */
		.dc.b 0x10 /* 248 GMOUSEX */
		.dc.b 0x10 /* 249 GMOUSEY */
		.dc.b 0x02 /* 250 GLOBAL( */
		.dc.b 0x10 /* 251 GLOBAL */
		.dc.b 0x76 /* 252 GETCOOKIE( */
		.dc.b 0x08 /* 253 VS_COLOR( */
		.dc.b 0x10 /* 254 EJP? */
		.dc.b 0x10 /* 255 _P */

offset_table_sf209:
		.dc.b 0x78 /*   0 VQ_COLOR( */
		.dc.b 0x10 /*   1 _MINT */
		.dc.b 0x10 /*   2 _SW */
		.dc.b 0x10 /*   3 _SH */
		.dc.b 0x06 /*   4 VRO_CPYFM( */
		.dc.b 0x0a /*   5 VRT_CPYFM( */
		.dc.b 0x04 /*   6 V_OPNBM( */
		.dc.b 0x10 /*   7 V_CLSBM( */
		.dc.b 0x02 /*   8 DOSOUND( */
		.dc.b 0x04 /*   9 MXALLOC( */
		.dc.b 0x02 /*  10 KBSHIFT( */
		.dc.b 0x10 /*  11 DGETDRV( */
		.dc.b 0x02 /*  12 SYSCONF( */
		.dc.b 0x06 /*  13 SSYSTEM( */
		.dc.b 0x10 /*  14 VQ_VGDOS() */
		.dc.b 0x26 /*  15 VST_ALIGNMENT( */
		.dc.b 0x08 /*  16 PEXEC( */
		.dc.b 0x02 /*  17 PDOMAIN( */
		.dc.b 0x10 /*  18 _GEMDOS */
		.dc.b 0x10 /*  19 TGETDATE() */
		.dc.b 0x10 /*  20 TGETTIME() */
		.dc.b 0x2c /*  21 VST_POINT( */
		.dc.b 0x2c /*  22 APPL_GETINFO( */
		.dc.b 0x3e /*  23 APPL_CONTROL( */
		.dc.b 0x2e /*  24 OBJC_SYSVAR( */
		.dc.b 0x7a /*  25 FSEL_EXINPUT( */
		.dc.b 0x06 /*  26 KEYTBL( */
		.dc.b 0x10 /*  27 LOCKSND() */
		.dc.b 0x10 /*  28 UNLOCKSND() */
		.dc.b 0x04 /*  29 SOUNDCMD( */
		.dc.b 0x06 /*  30 SETBUFFER( */
		.dc.b 0x02 /*  31 SETMODE( */
		.dc.b 0x04 /*  32 SETTRACKS( */
		.dc.b 0x02 /*  33 SETMONTRACKS( */
		.dc.b 0x04 /*  34 SETINTERRUPT( */
		.dc.b 0x02 /*  35 BUFFOPER( */
		.dc.b 0x04 /*  36 DSPTRISTATE( */
		.dc.b 0x04 /*  37 GPIO( */
		.dc.b 0x0a /*  38 DEVCONNECT( */
		.dc.b 0x02 /*  39 SNDSTATUS( */
		.dc.b 0x02 /*  40 BUFFPTR( */
		.dc.b 0x7c /*  41 VQT_WIDTH( */
		.dc.b 0x8a /*  42 VQT_FONTINFO( */
		.dc.b 0x74 /*  43 FOPEN( */
		.dc.b 0x02 /*  44 FCLOSE( */
		.dc.b 0x06 /*  45 FREAD( */
		.dc.b 0x06 /*  46 FWRITE( */
		.dc.b 0x74 /*  47 FCREATE( */
		.dc.b 0x06 /*  48 FSEEK( */
		.dc.b 0x0e /*  49 FDELETE( */
		.dc.b 0x02 /*  50 SUPER( */
		.dc.b 0x06 /*  51 F_BGET( */
		.dc.b 0x06 /*  52 F_BPUT( */
		.dc.b 0x02 /*  53 F_EOF( */
		.dc.b 0x02 /*  54 F_LOC( */
		.dc.b 0x02 /*  55 F_LOF( */
		.dc.b 0x10 /*  56 DTA */
		.dc.b 0x10 /*  57 _CPU */
		.dc.b 0x10 /*  58 SND? */
		.dc.b 0x7e /*  59 F_OPEN( */
		.dc.b 0x04 /*  60 F_OUT( */
		.dc.b 0x04 /*  61 F_OUT&( */
		.dc.b 0x04 /*  62 F_OUT%( */
		.dc.b 0x80 /*  63 F_INP( */
		.dc.b 0x82 /*  64 F_INP&( */
		.dc.b 0xcc /*  65 F_INP%( */
		.dc.b 0x06 /*  66 ALLOC( */
		.dc.b 0x1c /*  67 F_LINE_OUTPUT( */
		.dc.b 0x1a /*  68 F_LINE_INPUT( */
		.dc.b 0x74 /*  69 F_BLOAD( */
		.dc.b 0x86 /*  70 F_BSAVE( */
		.dc.b 0x04 /*  71 F_SEEK( */
		.dc.b 0x04 /*  72 F_RELSEEK( */
		.dc.b 0x26 /*  73 V_GET_PIXEL( */
		.dc.b 0x10 /*  74 GSTICK() */
		.dc.b 0x10 /*  75 GSTRIG() */
		.dc.b 0x02 /*  76 BLITMODE( */
		.dc.b 0x04 /*  77 CACHECTRL( */
		.dc.b 0x02 /*  78 CT60_CACHE( */
		.dc.b 0x10 /*  79 CT60_FLUSH_CACHE() */
		.dc.b 0x02 /*  80 CT60_READ_CORE_TEMPERATURE( */
		.dc.b 0x06 /*  81 CT60_RW_PARAMETER( */
		.dc.b 0x04 /*  82 CT60_VMALLOC( */
		.dc.b 0x04 /*  83 FGETCHAR( */
		.dc.b 0x06 /*  84 FPUTCHAR( */
		.dc.b 0x10 /*  85 WIND_NEW() */
		.dc.b 0x10 /*  86 APPL_YIELD() */
		.dc.b 0x10 /*  87 V_SHOW_C() */
		.dc.b 0x10 /*  88 V_HIDE_C() */
		.dc.b 0x1c /*  89 F_INPUT( */
		.dc.b 0x84 /*  90 F_OUTPUT( */
		.dc.b 0x1c /*  91 PREAD( */
		.dc.b 0x1a /*  92 PWRITE( */
		.dc.b 0x02 /*  93 JOYPAD( */
		.dc.b 0x04 /*  94 UNPACK( */
		.dc.b 0x22 /*  95 BINSTR( */
		.dc.b 0x06 /*  96 BFIND( */
		.dc.b 0x06 /*  97 BCOUNT( */
		.dc.b 0x0e /*  98 ISASCII( */
		.dc.b 0x02 /*  99 BSWAP&( */
		.dc.b 0x02 /* 100 BSWAP( */
		.dc.b 0x0e /* 101 CCONWS( */
		.dc.b 0x02 /* 102 DSETDRV( */
		.dc.b 0x0e /* 103 DCREATE( */
		.dc.b 0x0e /* 104 DDELETE( */
		.dc.b 0x02 /* 105 TSETDATE( */
		.dc.b 0x02 /* 106 TSETTIME( */
		.dc.b 0xb4 /* 107 DGETPATH( */
		.dc.b 0x0e /* 108 DSETPATH( */
		.dc.b 0x10 /* 109 GETTIME() */
		.dc.b 0x02 /* 110 SETTIME( */
		.dc.b 0x88 /* 111 FRENAME( */
		.dc.b 0x10 /* 112 DRVMAP() */
		.dc.b 0x06 /* 113 FDATIME( */
		.dc.b 0x74 /* 114 DPATHCONF( */
		.dc.b 0x86 /* 115 FATTRIB( */
		.dc.b 0x04 /* 116 DFREE%( */
		.dc.b 0x10 /* 117 RANDOM%() */
		.dc.b 0x10 /* 118 GETREZ() */
		.dc.b 0x10 /* 119 LOGBASE() */
		.dc.b 0x10 /* 120 PHYSBASE() */
		.dc.b 0x0e /* 121 V_CURTEXT( */
		.dc.b 0x02 /* 122 VST_COLOR( */
		.dc.b 0x02 /* 123 VST_EFFECTS( */
		.dc.b 0x02 /* 124 VST_ROTATION( */
		.dc.b 0x2c /* 125 VST_HEIGHT( */
		.dc.b 0x02 /* 126 VST_FONT( */
		.dc.b 0x10 /* 127 VQF_ATTRIBUTES() */
		.dc.b 0x10 /* 128 VQL_ATTRIBUTES() */
		.dc.b 0x10 /* 129 VQM_ATTRIBUTES() */
		.dc.b 0x10 /* 130 VQT_ATTRIBUTES() */
		.dc.b 0x04 /* 131 VR_TRNFM( */
		.dc.b 0x02 /* 132 VQ_EXTND( */
		.dc.b 0x02 /* 133 VQ_SCRNINFO( */
		.dc.b 0x94 /* 134 V_BEZ( */
		.dc.b 0x82 /* 135 V_BEZ_QUAL( */
		.dc.b 0x8a /* 136 VQ_MOUSE( */
		.dc.b 0x02 /* 137 VSL_TYPE( */
		.dc.b 0x02 /* 138 VSL_WIDTH( */
		.dc.b 0x04 /* 139 VSL_ENDS( */
		.dc.b 0x02 /* 140 VSL_UDSTY( */
		.dc.b 0x02 /* 141 VSL_COLOR( */
		.dc.b 0x02 /* 142 VSM_COLOR( */
		.dc.b 0x02 /* 143 VSM_HEIGHT( */
		.dc.b 0x02 /* 144 VSM_TYPE( */
		.dc.b 0x02 /* 145 VSWR_MODE( */
		.dc.b 0x02 /* 146 VSF_COLOR( */
		.dc.b 0x02 /* 147 VSF_INTERIOR( */
		.dc.b 0x02 /* 148 VSF_PERIMETER( */
		.dc.b 0x02 /* 149 VSF_STYLE( */
		.dc.b 0x02 /* 150 VSF_UDPAT( */
		.dc.b 0x02 /* 151 BCONIN( */
		.dc.b 0x04 /* 152 BCONOUT( */
		.dc.b 0x02 /* 153 BCOSTAT( */
		.dc.b 0x02 /* 154 BCONSTAT( */
		.dc.b 0x04 /* 155 SETEXC( */
		.dc.b 0x10 /* 156 TICKCAL( */
		.dc.b 0x02 /* 157 MEDIACH( */
		.dc.b 0x02 /* 158 GETBPB( */
		.dc.b 0x0a /* 159 RWABS( */
		.dc.b 0x06 /* 160 FORM_POPUP( */
		.dc.b 0x08 /* 161 MENU_ATTACH( */
		.dc.b 0x08 /* 162 MENU_ISTART( */
		.dc.b 0x08 /* 163 MENU_POPUP( */
		.dc.b 0x04 /* 164 MENU_SETTINGS( */
		.dc.b 0x0a /* 165 OBJC_XFIND( */
		.dc.b 0x02 /* 166 RSRC_RCFIX( */
		.dc.b 0x8e /* 167 APPL_SEARCH( */
		.dc.b 0x32 /* 168 GRAF_MULTIRUBBER( */
		.dc.b 0x0a /* 169 VS_CLIP( */
		.dc.b 0x10 /* 170 VSC_FORM() */
		.dc.b 0x02 /* 171 FDUP( */
		.dc.b 0x04 /* 172 FFORCE( */
		.dc.b 0x08 /* 173 FLOCK( */
		.dc.b 0x10 /* 174 SYIELD() */
		.dc.b 0x02 /* 175 FINSTAT( */
		.dc.b 0x02 /* 176 FOUTSTAT( */
		.dc.b 0x06 /* 177 FCNTL( */
		.dc.b 0x08 /* 178 FSELECT( */
		.dc.b 0x02 /* 179 SHUTDOWN( */
		.dc.b 0x34 /* 180 PSYSCTL( */
		.dc.b 0x08 /* 181 V_BAR( */
		.dc.b 0x08 /* 182 V_RBOX( */
		.dc.b 0x08 /* 183 V_RFBOX( */
		.dc.b 0x08 /* 184 VR_RECFL( */
		.dc.b 0x0a /* 185 V_ARC( */
		.dc.b 0x06 /* 186 V_CIRCLE( */
		.dc.b 0x34 /* 187 V_ELLARC( */
		.dc.b 0x34 /* 188 V_ELLPIE( */
		.dc.b 0x08 /* 189 V_ELLIPSE( */
		.dc.b 0x0a /* 190 V_PIESLICE( */
		.dc.b 0x06 /* 191 V_CONTOURFILL( */
		.dc.b 0x22 /* 192 V_GTEXT( */
		.dc.b 0x02 /* 193 V_PLINE( */
		.dc.b 0x02 /* 194 V_PMARKER( */
		.dc.b 0x02 /* 195 V_FILLAREA( */
		.dc.b 0x90 /* 196 V_JUSTIFIED( */
		.dc.b 0x8c /* 197 VQ_KEY_S( */
		.dc.b 0x94 /* 198 V_BEZ_FILL( */
		.dc.b 0x04 /* 199 SETCOLOR( */
		.dc.b 0x06 /* 200 SETSCREEN( */
		.dc.b 0x02 /* 201 SETPALETTE( */
		.dc.b 0x02 /* 202 SUPEXEC( */
		.dc.b 0x04 /* 203 KBRATE( */
		.dc.b 0x34 /* 204 RSCONF( */
		.dc.b 0x04 /* 205 CURSCONF( */
		.dc.b 0x02 /* 206 BCONMAP( */
		.dc.b 0x10 /* 207 KBDVBASE() */
		.dc.b 0x08 /* 208 NVMACCESS( */
		.dc.b 0x02 /* 209 IOREC( */
		.dc.b 0x04 /* 210 IKBDWS( */
		.dc.b 0x04 /* 211 MIDIWS( */
		.dc.b 0x04 /* 212 GIACCESS( */
		.dc.b 0x24 /* 213 FLOPRD( */
		.dc.b 0x24 /* 214 FLOPWR( */
		.dc.b 0x2a /* 215 FLOPFMT( */
		.dc.b 0x24 /* 216 FLOPVER( */
		.dc.b 0x04 /* 217 FLOPRATE( */
		.dc.b 0x08 /* 218 DMAREAD( */
		.dc.b 0x08 /* 219 DMAWRITE( */
		.dc.b 0x02 /* 220 ONGIBIT( */
		.dc.b 0x02 /* 221 OFFGIBIT( */
		.dc.b 0x10 /* 222 BIOSKEYS() */
		.dc.b 0x02 /* 223 SETPRT( */
		.dc.b 0x02 /* 224 JDISINT( */
		.dc.b 0x02 /* 225 JENABINT( */
		.dc.b 0x08 /* 226 PROTOBT( */
		.dc.b 0x02 /* 227 WAKETIME( */
		.dc.b 0x02 /* 228 PRTBLK( */
		.dc.b 0x10 /* 229 VGETMONITOR() */
		.dc.b 0x02 /* 230 VGETSIZE( */
		.dc.b 0x02 /* 231 VSETMODE( */
		.dc.b 0x02 /* 232 VCHECKMODE( */
		.dc.b 0x08 /* 233 VSETSCREEN( */
		.dc.b 0x06 /* 234 VGETRGB( */
		.dc.b 0x06 /* 235 VSETRGB( */
		.dc.b 0x06 /* 236 VSETMASK( */
		.dc.b 0x02 /* 237 VSETSYNC( */
		.dc.b 0x10 /* 238 EGETSHIFT() */
		.dc.b 0x02 /* 239 ESETSHIFT( */
		.dc.b 0x02 /* 240 ESETBANK( */
		.dc.b 0x04 /* 241 ESETCOLOR( */
		.dc.b 0x02 /* 242 ESETGRAY( */
		.dc.b 0x02 /* 243 ESETSMEAR( */
		.dc.b 0x06 /* 244 EGETPALETTE( */
		.dc.b 0x06 /* 245 ESETPALETTE( */
		.dc.b 0x04 /* 246 CRC16( */
		.dc.b 0x04 /* 247 CRC32( */
		.dc.b 0x22 /* 248 WF_NAME( */
		.dc.b 0x22 /* 249 WF_INFO( */
		.dc.b 0x92 /* 250 ALERT( */
		.dc.b 0x34 /* 251 LRWABS( */
		.dc.b 0x24 /* 252 AP_SEND( */
		.dc.b 0x0e /* 253 SALERT( */
		.dc.b 0x74 /* 254 FCHMOD( */
		.dc.b 0x04 /* 255 PTERMRES( */

offset_table_sf210:
		.dc.b 0x96 /*   0 SUBPTR( */
		.dc.b 0x98 /*   1 S: */
		.dc.b 0x10 /*   2 ERL */
		.dc.b 0x02 /*   3 SYSTAB( */
		.dc.b 0x10 /*   4 SYSTAB */
		.dc.b 0x10 /*   5 FREEFILE() */
		.dc.b 0x06 /*   6 MENU.TEXT( */
		.dc.b 0x0a /*   7 SHEL.WRITE( */
		.dc.b 0x10 /*   8 SYSTAB? */
		.dc.b 0x04 /*   9 MROUND( */
		.dc.b 0x02 /*  10 BSWAP3( */
		.dc.b 0x02 /*  11 MIRROR|( */
		.dc.b 0x02 /*  12 MIRROR&( */
		.dc.b 0x02 /*  13 MIRROR( */
		.dc.b 0x02 /*  14 MIRROR3( */
		.dc.b 0x10 /*  15 PCR? */
		.dc.b 0x02 /*  16 CONTERM( */
		.dc.b 0x02 /*  17 _PCR */
		.dc.b 0x0e /*  18 LOADMEM( */
		.dc.b 0x06 /*  19 OB.STATE( */
		.dc.b 0x06 /*  20 OB.FLAGS( */
		.dc.b 0xbc /*  21 SETSTR( */
		.dc.b 0xba /*  22 INPUTBOX( */
		.dc.b 0x06 /*  23 BCOUNT&( */
		.dc.b 0x06 /*  24 BCOUNT(% */
		.dc.b 0x04 /*  25 C_VDI(# */
		.dc.b 0x04 /*  26 C_XBIOS(# */
		.dc.b 0x10 /*  27 NETWORK? */
		.dc.b 0x02 /*  28 SBYTE( */
		.dc.b 0x12 /*  29 SBYTE{ */
		.dc.b 0x4c /*  30 INDEXCOUNT( */
		.dc.b 0x04 /*  31 CALLOC( */
		.dc.b 0x4c /*  32 ARRAYSIZE( */
		.dc.b 0x06 /*  33 OB_RADIO( */
		.dc.b 0x04 /*  34 CHECKSUM( */
		.dc.b 0x06 /*  35 FSOCKET( */
		.dc.b 0x08 /*  36 FSOCKETPAIR( */
		.dc.b 0x06 /*  37 FACCEPT( */
		.dc.b 0x06 /*  38 FCONNECT( */
		.dc.b 0x06 /*  39 FBIND( */
		.dc.b 0x04 /*  40 FRECVMSG( */
		.dc.b 0x06 /*  41 FSENDMSG( */
		.dc.b 0x06 /*  42 FLISTEN( */
		.dc.b 0x34 /*  43 FRECVFROM( */
		.dc.b 0x34 /*  44 FSENDTO( */
		.dc.b 0x0a /*  45 FSETSOCKOPT( */
		.dc.b 0x0a /*  46 FGETSOCKOPT( */
		.dc.b 0x06 /*  47 FGETPEERNAME( */
		.dc.b 0x06 /*  48 FGETSOCKNAME( */
		.dc.b 0x04 /*  49 FSHUTDOWN( */
		.dc.b 0x10 /*  50 LDG_INIT() */
		.dc.b 0x0e /*  51 LDG_OPEN( */
		.dc.b 0x74 /*  52 LDG_FIND( */
		.dc.b 0x02 /*  53 LDG_CLOSE( */
		.dc.b 0x1e /*  54 LDG_LIBPATH( */
		.dc.b 0x10 /*  55 LDG_ERROR() */
		.dc.b 0xa2 /*  56 STIK_INIT( */
		.dc.b 0    /*  57 */
		.dc.b 0x02 /*  58 STIK_KRFREE( */
		.dc.b 0x02 /*  59 STIK_KRGETFREE( */
		.dc.b 0    /*  60 */
		.dc.b 0x02 /*  61 STIK_GET_ERR_TEXT( */
		.dc.b 0x0e /*  62 STIK_GETVSTR( */
		.dc.b 0    /*  63 STIK_GETVSTR( */
		.dc.b 0x08 /*  64 STIK_TCP_OPEN( */
		.dc.b 0x04 /*  65 STIK_TCP_CLOSE( */
		.dc.b 0x06 /*  66 STIK_TCP_SEND( */
		.dc.b 0x06 /*  67 STIK_TCP_WAIT_STATE( */
		.dc.b 0    /*  68 STIK_TCP_WAIT_STATE( */
		.dc.b 0    /*  69 STIK_TCP_WAIT_STATE( */
		.dc.b 0    /*  70 STIK_TCP_WAIT_STATE( */
		.dc.b 0    /*  71 STIK_TCP_WAIT_STATE( */
		.dc.b 0x02 /*  72 STIK_CNKICK( */
		.dc.b 0x02 /*  73 STIK_CNBYTE_COUNT( */
		.dc.b 0x02 /*  74 STIK_CNGET_CHAR( */
		.dc.b 0    /*  75 */
		.dc.b 0x06 /*  76 STIK_CNGET_BLOCK( */
		.dc.b 0    /*  77 */
		.dc.b 0x9c /*  78 STIK_RESOLVE( */
		.dc.b 0    /*  79 */
		.dc.b 0    /*  80 */
		.dc.b 0    /*  81 */
		.dc.b 0    /*  82 */
		.dc.b 0x02 /*  83 STIK_CNGETINFO( */
		.dc.b 0    /*  84 */
		.dc.b 0    /*  85 */
		.dc.b 0    /*  86 */
		.dc.b 0    /*  87 */
		.dc.b 0    /*  88 */
		.dc.b 0x10 /*  89 FONT_INIT() */
		.dc.b 0x0a /*  90 FONT_SELECT( */
		.dc.b 0x9e /*  91 WEEKDAY( */
		.dc.b 0x9e /*  92 */
		.dc.b 0x10 /*  93 AV_INIT() */
		.dc.b 0x1c /*  94 AV_PROTOKOLL( */
		.dc.b 0    /*  95 */
		.dc.b 0    /*  96 */
		.dc.b 0x04 /*  97 AV_SENDKEY( */
		.dc.b 0    /*  98 */
		.dc.b 0    /*  99 */
	.IF GBE>=373
		.dc.b 0x7e /* 100 AV_OPENWIND( */
	.ELSE
		.dc.b 0    /* 100 */
	.ENDC
		.dc.b 0xa4 /* 101 AV_STARTPROG( */
		.dc.b 0x02 /* 102 AV_ACCWINDOPEN( */
		.dc.b 0x02 /* 103 AV_ACCWINDCLOSED( */
		.dc.b 0    /* 104 */
		.dc.b 0x0e /* 105 AV_PATH_UPDATE( */
		.dc.b 0x04 /* 106 AV_WHAT_IZIT( */
		.dc.b 0    /* 107 AV_WHAT_IZIT( */
		.dc.b 0x10 /* 108 AV_EXIT() */
		.dc.b 0x02 /* 109 AV_STARTED( */
		.dc.b 0xa4 /* 110 AV_XWIND( */
		.dc.b 0    /* 111 */
	.IF GBE>=373
		.dc.b 0x0e /* 112 AV_FILEINFO( */
		.dc.b 0xa4 /* 113 AV_COPYFILE( */
		.dc.b 0x0e /* 114 AV_DELFILE( */
	.ELSE
		.dc.b 0    /* 112 */
		.dc.b 0    /* 113 */
		.dc.b 0    /* 114 */
	.ENDC
		.dc.b 0x0e /* 115 VA_START( */
		.dc.b 0x04 /* 116 MAKE&( */
		.dc.b 0x04 /* 117 MAKE%( */
		.dc.b 0x04 /* 118 MAKE|( */
		.dc.b 0x02 /* 119 F_CLOSE( */
		.dc.b 0x02 /* 120 APPL.FIND( */
		.dc.b 0x10 /* 121 ENVIRON */
		.dc.b 0xa0 /* 122 SLBOPEN( */
		.dc.b 0x02 /* 123 SLBCLOSE( */
		.dc.b 0x04 /* 124 F_ENDSEEK( */
		.dc.b 0x9c /* 125 POPUP( */
		.dc.b 0x06 /* 126 FPOLL( */
		.dc.b 0x0e /* 127 FILELEN( */
		.dc.b 0x10 /* 128 PGETPID() */
		.dc.b 0x10 /* 129 P~I */
		.dc.b 0x02 /* 130 SWAP|( */
		.dc.b 0x06 /* 131 BROUND( */
		.dc.b 0x06 /* 132 BCOMPARE( */
		.dc.b 0x10 /* 133 SCRDMP() */
		.dc.b 0x02 /* 134 FPIPE( */
		.dc.b 0x02 /* 135 PRUSAGE( */
		.dc.b 0x04 /* 136 SUPTIME( */
		.dc.b 0x06 /* 137 FMIDIPIPE( */
		.dc.b 0x06 /* 138 CONSTRAIN( */
		.dc.b 0x02 /* 139 NYBLE( */
		.dc.b 0x04 /* 140 MAKE( */
		.dc.b 0x04 /* 141 MEMBTST|( */
		.dc.b 0x04 /* 142 MEMBTST&( */
		.dc.b 0x04 /* 143 MEMBTST%( */
		.dc.b 0x86 /* 144 FCHOWN( */
		.dc.b 0x02 /* 145 PNICE( */
		.dc.b 0x04 /* 146 PRENICE( */
		.dc.b 0x10 /* 147 PGETPPID() */
		.dc.b 0x04 /* 148 DLOCK( */
		.dc.b 0x04 /* 149 PGETPRIORITY( */
		.dc.b 0x06 /* 150 PSETPRIORITY( */
		.dc.b 0x10 /* 151 VSYNC() */
		.dc.b 0x7e /* 152 FILECOPY( */
		.dc.b 0x0e /* 153 ISBLANK( */
		.dc.b 0x0e /* 154 ISCNTRL( */
		.dc.b 0x0e /* 155 ISPRINT( */
		.dc.b 0x0e /* 156 ISSPACE( */
		.dc.b 0x08 /* 157 RGB( */
		.dc.b 0x04 /* 158 RGB256( */
		.dc.b 0x04 /* 159 RGB1000( */
		.dc.b 0x02 /* 160 WF_TOP( */
		.dc.b 0x02 /* 161 PUSRVAL( */
		.dc.b 0x04 /* 162 PSETLIMIT( */
		.dc.b 0x7e /* 163 DWRITELABEL( */
		.dc.b 0xa6 /* 164 DREADLABEL( */
		.dc.b 0x1a /* 165 DGETCWD( */
		.dc.b 0x02 /* 166 DCLOSEDIR( */
		.dc.b 0x02 /* 167 DREWINDDIR( */
		.dc.b 0x74 /* 168 DOPENDIR( */
		.dc.b 0x06 /* 169 DREADDIR( */
		.dc.b 0xa8 /* 170 DXREADDIR( */
		.dc.b 0xb2 /* 171 FXATTR( */
		.dc.b 0x06 /* 172 MACCESS( */
		.dc.b 0xaa /* 173 MVALIDATE( */
		.dc.b 0x06 /* 174 BFIND& */
		.dc.b 0x06 /* 175 BFIND% */
		.dc.b 0x0e /* 176 FEXIST( */
		.dc.b 0xac /* 177 SPLIT( */
		.dc.b 0xae /* 178 JOIN( */
		.dc.b 0xb0 /* 179 GETSTR( */
		.dc.b 0x06 /* 180 BCOMPARE&( */
		.dc.b 0x06 /* 181 BCOMPARE%( */
		.dc.b 0x84 /* 182 WIND_SGET( */
		.dc.b 0x88 /* 183 SHEL_HELP( */
		.dc.b 0x7e /* 184 SHEL_WDEF( */
		.dc.b 0x16 /* 185 SHEL_RDEF( */
		.dc.b 0x04 /* 186 PKILL( */
		.dc.b 0x10 /* 187 DHST_INIT() */
		.dc.b 0xb6 /* 188 DHST_ADD( */
		.dc.b 0    /* 189 */
		.dc.b 0x04 /* 190 PSIGNAL( */
		.dc.b 0xa6 /* 191 LOADSTR( */
		.dc.b 0xb8 /* 192 FILES( */
		.dc.b 0x02 /* 193 MSG( */
		.dc.b 0x10 /* 194 MSG */
		.dc.b 0x02 /* 195 HINYBLE( */
		.dc.b 0x02 /* 196 HIBYTE( */
		.dc.b 0x02 /* 197 HIWORD( */
		.dc.b 0x02 /* 198 HICARD( */
		.dc.b 0    /* 199 */
		.dc.b 0    /* 200 */
		.dc.b 0    /* 201 */
		.dc.b 0    /* 202 */
		.dc.b 0x04 /* 203 SETCOOKIE( */
		.dc.b 0x02 /* 204 DELCOOKIE( */
		.dc.b 0x2e /* 205 FORM.KEYBD( */
		.dc.b 0x02 /* 206 V_CTAB_VDI2IDX( */
		.dc.b 0x02 /* 207 V_CTAB_IDX2VALUE( */
		.dc.b 0x04 /* 208 VQ_DFLT_CTAB( */
		.dc.b 0xca /* 209 V_COLOR2NEAREST( */
		.dc.b 0xc8 /* 210 V_VALUE2COLOR( */
		.dc.b 0x0a /* 211 V_COLOR2VALUE( */
		.dc.b 0x0a /* 212 NEAREST_RGB( */
		.dc.b 0x08 /* 213 GRAYSCALE( */
		.dc.b 0x06 /* 214 DATE( */
		.dc.b 0x02 /* 215 YEAR( */
		.dc.b 0x02 /* 216 MONTH( */
		.dc.b 0x02 /* 217 DAY( */
		.dc.b 0x02 /* 218 HOUR24( */
		.dc.b 0x02 /* 219 MINUTE( */
		.dc.b 0x02 /* 220 SECOND( */
		.dc.b 0x06 /* 221 TIME( */
		.dc.b 0x10 /* 222 _FPU */
		.dc.b 0x10 /* 223 _MCH */
		.dc.b 0x10 /* 224 _CPUID */
		.dc.b 0x10 /* 225 COMPILED? */
		.dc.b 0x10 /* 226 M68K? */
		.dc.b 0x10 /* 227 _VERSION */
		.dc.b 0x10 /* 228 _CW */
		.dc.b 0x10 /* 229 _CH */
		.dc.b 0x10 /* 230 _0 */
		.dc.b 0x10 /* 231 _1 */
		.dc.b 0x10 /* 232 _2 */
		.dc.b 0x10 /* 233 _3 */
		.dc.b 0x10 /* 234 _4 */
		.dc.b 0x10 /* 235 _5 */
		.dc.b 0x10 /* 236 _6 */
		.dc.b 0x10 /* 237 _7 */
		.dc.b 0x10 /* 238 _8 */
		.dc.b 0x10 /* 239 _9 */
		.dc.b 0x10 /* 240 _BUILDINFO */
		.dc.b 0x10 /* 241 _CF_ */
		.dc.b 0x10 /* 242 G~H */
		.dc.b 0x10 /* 243 G~R */
		.dc.b 0x06 /* 244 BMPSIZE( */
		.dc.b 0x10 /* 245 _DX */
		.dc.b 0x10 /* 246 _DY */
		.dc.b 0x10 /* 247 _DW */
		.dc.b 0x10 /* 248 _DH */
		.dc.b 0x10 /* 249 ACC? */
		.dc.b 0x10 /* 250 AUTO? */
		.dc.b 0x10 /* 251 FPU? */
		.dc.b 0x10 /* 252 CPU020? */
		.dc.b 0x10 /* 253 DMASND? */
		.dc.b 0xbe /* 254 DAYNO( */
		.dc.b 0xbe /* 255 */

offset_table_sf211:
		.dc.b 0x02 /*   0 LEAP( */
		.dc.b 0xc0 /*   1 WEEK( */
		.dc.b 0xc0 /*   2 */
		.dc.b 0x02 /*   3 HOUR12( */
		.dc.b 0x02 /*   4 MERIDIEM( */
		.dc.b 0x10 /*   5 JPEGD_INIT() */
		.dc.b 0x02 /*   6 JPEGD_OPENDRIVER( */
		.dc.b 0x02 /*   7 JPEGD_CLOSEDRIVER( */
		.dc.b 0x10 /*   8 JPEGD_GETSTRUCTSIZE() */
		.dc.b 0x02 /*   9 JPEGD_GETIMAGEINFO( */
		.dc.b 0x02 /*  10 JPEGD_GETIMAGESIZE( */
		.dc.b 0x02 /*  11 JPEGD_DECODEIMAGE( */
		.dc.b 0x08 /*  12 DSP_DOBLOCK( */
		.dc.b 0x08 /*  13 DSP_BLKHANDSHAKE( */
		.dc.b 0x08 /*  14 DSP_BLKUNPACKED( */
		.dc.b 0x08 /*  15 DSP_INSTREAM( */
		.dc.b 0x08 /*  16 DSP_OUTSTREAM( */
		.dc.b 0x34 /*  17 DSP_IOSTREAM( */
		.dc.b 0x02 /*  18 DSP_REMOVEINTERRUPTS( */
		.dc.b 0x10 /*  19 DSP_GETWORDSIZE() */
		.dc.b 0x10 /*  20 DSP_LOCK() */
		.dc.b 0x10 /*  21 DSP_UNLOCK() */
		.dc.b 0xa2 /*  22 DSP_AVAILABLE( */
		.dc.b 0x04 /*  23 DSP_RESERVE( */
		.dc.b 0x86 /*  24 DSP_LOADPROG( */
		.dc.b 0x06 /*  25 DSP_EXECPROG( */
		.dc.b 0x06 /*  26 DSP_EXECBOOT( */
		.dc.b 0x74 /*  27 DSP_LODTOBINARY( */
		.dc.b 0x02 /*  28 DSP_TRIGGERHC( */
		.dc.b 0x10 /*  29 DSP_REQUESTUNIQUEABILITY() */
		.dc.b 0x10 /*  30 DSP_GETPROGABILITY() */
		.dc.b 0x10 /*  31 DSP_FLUSHSUBROUTINES() */
		.dc.b 0x06 /*  32 DSP_LOADSUBROUTINE( */
		.dc.b 0x02 /*  33 DSP_INQSUBRABILITY( */
		.dc.b 0x02 /*  34 DSP_RUNSUBROUTINE( */
		.dc.b 0x02 /*  35 DSP_HF0( */
		.dc.b 0x02 /*  36 DSP_HF1( */
		.dc.b 0x10 /*  37 DSP_HF2() */
		.dc.b 0x10 /*  38 DSP_HF3() */
		.dc.b 0x08 /*  39 DSP_BLKWORDS( */
		.dc.b 0x08 /*  40 DSP_BLKBYTES( */
		.dc.b 0x10 /*  41 DSP_HSTAT() */
		.dc.b 0x04 /*  42 DSP_SETVECTORS( */
		.dc.b 0x08 /*  43 DSP_MULTBLOCKS( */
		.dc.b 0x06 /*  44 VR_TRANSFER_BITS( */
		.dc.b 0x04 /*  45 V_CREATE_CTAB( */
		.dc.b 0x02 /*  46 V_DELETE_CTAB( */
		.dc.b 0x04 /*  47 V_CREATE_ITAB( */
		.dc.b 0x02 /*  48 V_DELETE_ITAB( */
		.dc.b 0xc2 /*  49 VQ_PX_FORMAT( */
		.dc.b 0x10 /*  50 V_GET_CTAB_ID() */
		.dc.b 0x8e /*  51 VQT_EXT_NAME( */
		.dc.b 0x34 /*  52 V_OPEN_BM( */
		.dc.b 0x08 /*  53 V_RESIZE_BM( */
		.dc.b 0x10 /*  54 V_HARDCOPY() */
		.dc.b 0xc4 /*  55 VST_NAME( */
		.dc.b 0xc4 /*  56 VQT_NAME_AND_ID( */
		.dc.b 0x0a /*  57 VST_FG_COLOR( */
		.dc.b 0x0a /*  58 VSF_FG_COLOR( */
		.dc.b 0x0a /*  59 VSL_FG_COLOR( */
		.dc.b 0x0a /*  60 VSM_FG_COLOR( */
		.dc.b 0x0a /*  61 VSR_FG_COLOR( */
		.dc.b 0xc6 /*  62 VQT_FG_COLOR( */
		.dc.b 0xc6 /*  63 VQF_FG_COLOR( */
		.dc.b 0xc6 /*  64 VQL_FG_COLOR( */
		.dc.b 0xc6 /*  65 VQM_FG_COLOR( */
		.dc.b 0xc6 /*  66 VQR_FG_COLOR( */
		.dc.b 0x0a /*  67 VST_BG_COLOR( */
		.dc.b 0x0a /*  68 VSF_BG_COLOR( */
		.dc.b 0x0a /*  69 VSL_BG_COLOR( */
		.dc.b 0x0a /*  70 VSM_BG_COLOR( */
		.dc.b 0x0a /*  71 VSR_BG_COLOR( */
		.dc.b 0xc6 /*  72 VQT_BG_COLOR( */
		.dc.b 0xc6 /*  73 VQF_BG_COLOR( */
		.dc.b 0xc6 /*  74 VQL_BG_COLOR( */
		.dc.b 0xc6 /*  75 VQM_BG_COLOR( */
		.dc.b 0xc6 /*  76 VQR_BG_COLOR( */
		.dc.b 0x0a /*  77 VS_HILITE_COLOR( */
		.dc.b 0x0a /*  78 VS_MIN_COLOR( */
		.dc.b 0x0a /*  79 VS_MAX_COLOR( */
		.dc.b 0x0a /*  80 VS_WEIGHT_COLOR( */
		.dc.b 0xc6 /*  81 VQ_HILITE_COLOR( */
		.dc.b 0xc6 /*  82 VQ_MIN_COLOR( */
		.dc.b 0xc6 /*  83 VQ_MAX_COLOR( */
		.dc.b 0xc6 /*  84 VQ_WEIGHT_COLOR( */
		.dc.b 0x08 /*  85 V_SETRGB( */
		.dc.b 0x02 /*  86 SUPERSCALAR( */
		.dc.b 0x08 /*  87 VQT_XFNTINFO( */
		.dc.b 0x04 /*  88 OB_SELECTED( */
		.dc.b 0x04 /*  89 OB_CROSSED( */
		.dc.b 0x04 /*  90 OB_CHECKED( */
		.dc.b 0x04 /*  91 OB_DISABLED( */
		.dc.b 0x04 /*  92 OB_OUTLINED( */
		.dc.b 0x04 /*  93 OB_SHADOWED( */
		.dc.b 0x04 /*  94 OB_WHITEBAK( */
		.dc.b 0    /*  95 */
		.dc.b 0x04 /*  96 OB_SELECTABLE( */
		.dc.b 0x04 /*  97 OB_DEFAULT( */
		.dc.b 0x04 /*  98 OB_EXIT( */
		.dc.b 0x04 /*  99 OB_EDITABLE( */
		.dc.b 0x04 /* 100 OB_RBUTTON( */
		.dc.b 0x04 /* 101 OB_LASTOB( */
		.dc.b 0x04 /* 102 OB_TOUCHEXIT( */
		.dc.b 0x04 /* 103 OB_HIDETREE( */
		.dc.b 0x04 /* 104 OB_INDIRECT( */
		.dc.b 0x04 /* 105 OB_FL3DIND( */
		.dc.b 0x04 /* 106 OB_FL3DACT( */
		.dc.b 0x04 /* 107 OB_SUBMENU( */
		.dc.b 0    /* 108 */
		.dc.b 0x04 /* 109 OB_FL3DBAK( */
		.dc.b 0x04 /* 110 BF_OBSPEC( */
		.dc.b 0x04 /* 111 BF_CHARACTER( */
		.dc.b 0x04 /* 112 BF_FRAMESIZE( */
		.dc.b 0x04 /* 113 BF_FRAMECOL( */
		.dc.b 0x04 /* 114 BF_TEXTCOL( */
		.dc.b 0x04 /* 115 BF_TEXTMODE( */
		.dc.b 0x04 /* 116 BF_FILLPATTERN( */
		.dc.b 0x04 /* 117 BF_INTERIORCOL( */
		.dc.b 0x04 /* 118 BI_PDATA( */
		.dc.b 0x04 /* 119 BI_WB( */
		.dc.b 0x04 /* 120 BI_HL( */
		.dc.b 0x04 /* 121 BI_X( */
		.dc.b 0x04 /* 122 BI_Y( */
		.dc.b 0x04 /* 123 BI_COLOR( */
		.dc.b 0x04 /* 124 UB_CODE( */
		.dc.b 0x04 /* 125 UB_PARM( */
		.dc.b 0x04 /* 126 TE_PTEXT( */
		.dc.b 0x04 /* 127 TE_PTMPLT( */
		.dc.b 0x04 /* 128 TE_PVALID( */
		.dc.b 0x04 /* 129 TE_FONT( */
		.dc.b 0x04 /* 130 TE_FONTID( */
		.dc.b 0x04 /* 131 TE_JUST( */
		.dc.b 0x04 /* 132 TE_COLOR( */
		.dc.b 0x04 /* 133 TE_FONTSIZE( */
		.dc.b 0x04 /* 134 TE_THICKNESS( */
		.dc.b 0x04 /* 135 TE_TXTLEN( */
		.dc.b 0x04 /* 136 TE_TMPLEN( */
		.dc.b 0x04 /* 137 TE_FRAMECOL( */
		.dc.b 0x04 /* 138 TE_TEXTCOL( */
		.dc.b 0x04 /* 139 TE_TEXTMODE( */
		.dc.b 0x04 /* 140 TE_FILLPATTERN( */
		.dc.b 0x04 /* 141 TE_INTERIORCOL( */
		.dc.b 0x04 /* 142 IB_PMASK( */
		.dc.b 0x04 /* 143 IB_PDATA( */
		.dc.b 0x04 /* 144 IB_PTEXT( */
		.dc.b 0x04 /* 145 IB_CHAR( */
		.dc.b 0x04 /* 146 IB_XCHAR( */
		.dc.b 0x04 /* 147 IB_YCHAR( */
		.dc.b 0x04 /* 148 IB_XICON( */
		.dc.b 0x04 /* 149 IB_YICON( */
		.dc.b 0x04 /* 150 IB_WICON( */
		.dc.b 0x04 /* 151 IB_HICON( */
		.dc.b 0x04 /* 152 IB_XTEXT( */
		.dc.b 0x04 /* 153 IB_YTEXT( */
		.dc.b 0x04 /* 154 IB_WTEXT( */
		.dc.b 0x04 /* 155 IB_HTEXT( */
		.dc.b 0x04 /* 156 IB_FCOLOR( */
		.dc.b 0x04 /* 157 IB_BCOLOR( */
		.dc.b 0x04 /* 158 IB_LETTER( */
		.dc.b 0x04 /* 159 CI_MAINLIST( */
		.dc.b 0x04 /* 160 CI_NUM_PLANES( */
		.dc.b 0x04 /* 161 CI_COL_DATA( */
		.dc.b 0x04 /* 162 CI_COL_MASK( */
		.dc.b 0x04 /* 163 CI_SEL_DATA( */
		.dc.b 0x04 /* 164 CI_SEL_MASK( */
		.dc.b 0x04 /* 165 CI_NEXT_RES( */
		.dc.b 0x02 /* 166 V_CTAB_IDX2VDI( */
		.dc.b 0x10 /* 167 VQ_CTAB_ID() */
		.dc.b 0xc8 /* 168 VQ_CTAB_ENTRY( */
		.dc.b 0x04 /* 169 VQ_CTAB( */
		.dc.b 0x10 /* 170 VS_DFLT_CTAB() */
		.dc.b 0x34 /* 171 VS_CTAB_ENTRY( */
		.dc.b 0x02 /* 172 VS_CTAB( */
		.dc.b 0x10 /* 173 VR_CLIP_RECTS_BY_DST() */
		.dc.b 0x10 /* 174 VR_CLIP_RECTS_BY_SRC() */
		.dc.b 0x1a /* 175 VQT_FONTHEADER( */
		.dc.b 0x2c /* 176 VST_WIDTH( */
		.dc.b 0x10 /* 177 V_CLEAR_DISP_LIST() */
		.dc.b 0xce /* 178 VEX_TIMV( */
		.dc.b 0xcc /* 179 VEX_BUTV( */
		.dc.b 0xcc /* 180 VEX_MOTV( */
		.dc.b 0xcc /* 181 VEX_CURV( */
		.dc.b 0x06 /* 182 INITMOUS( */
		.dc.b 0xa6 /* 183 FREADLINK( */
		.dc.b 0xd0 /* 184 INPUTRADIO( */
	.IF GBE>=373
		.dc.b 0xd2 /* 185 PIXEL24( */
		.dc.b 0x1c /* 186 CWRITE( */
		.dc.b 0x1a /* 187 CREAD( */
		.dc.b 0x10 /* 188 SUPER? */
		.dc.b 0xd2 /* 189 PIXEL32( */
		.dc.b 0xd2 /* 190 PIXEL16( */
		.dc.b 0x10 /* 191 V_BEZ_ON() */
		.dc.b 0x10 /* 192 V_BEZ_OFF() */
		.dc.b 0xd4 /* 193 VQ_CHCELLS( */
		.dc.b 0x36 /* 194 RC_EQUAL( */
		.dc.b 0x3a /* 195 OB_XYWH( */
		.dc.b 0xd2 /* 196 PIXEL15( */
		.dc.b 0x02 /* 197 PUMASK( */
		.dc.b 0x7e /* 198 FLINK( */
		.dc.b 0x7e /* 199 FSYMLINK( */
		.dc.b 0x10 /* 200 _BOOTDEV */
		.dc.b 0x04 /* 201 STRUCT!( */
		.dc.b 0x04 /* 202 STRUCT|( */
		.dc.b 0x04 /* 203 STRUCT&( */
		.dc.b 0x04 /* 204 STRUCT%( */
		.dc.b 0x04 /* 205 STRUCT( */
		.dc.b 0x08 /* 206 PIXEL8C( */
		.dc.b 0x08 /* 207 PIXEL1M( */
		.dc.b 0x08 /* 208 PIXEL8P( */
		.dc.b 0x08 /* 209 PIXEL4P( */
		.dc.b 0x08 /* 210 PIXEL2P( */
		.dc.b 0x02 /* 211 MDPEEK( */
		.dc.b 0x02 /* 212 MLPEEK( */
		.dc.b 0x10 /* 213 _GLOBAL */
		.dc.b 0x10 /* 214 MULTITASK? */
		.dc.b 0x02 /* 215 USERDEF|( */
		.dc.b 0x10 /* 216 USERDEFBYT */
		.dc.b 0x02 /* 217 USERDEF&( */
		.dc.b 0x10 /* 218 USERDEFWRD */
		.dc.b 0x02 /* 219 USERDEF%( */
		.dc.b 0x10 /* 220 USERDEFLNG */
		.dc.b 0x02 /* 221 USERDEF!( */
		.dc.b 0x10 /* 222 USERDEFBIT */
		.dc.b 0x10 /* 223 _BMPSIZE */
		.dc.b 0x02 /* 224 PSIGBLOCK( */
		.dc.b 0x02 /* 225 PSIGSETMASK( */
		.dc.b 0x02 /* 226 TALARM( */
		.dc.b 0x02 /* 227 TMALARM( */
		.dc.b 0x10 /* 228 PAUSE() */
		.dc.b 0x10 /* 229 PSIGPENDING() */
		.dc.b 0x02 /* 230 PSIGPAUSE( */
		.dc.b 0x06 /* 231 PSIGACTION( */
		.dc.b 0x08 /* 232 PTRACE( */
		.dc.b 0x10 /* 233 SYNC() */
		.dc.b 0x02 /* 234 FSYNC( */
		.dc.b 0x02 /* 235 SREALLOC( */
		.dc.b 0x06 /* 236 PMSG( */
		.dc.b 0x10 /* 237 PFORK() */
		.dc.b 0x10 /* 238 PVFORK() */
		.dc.b 0x10 /* 239 PWAIT() */
		.dc.b 0x04 /* 240 PWAIT3( */
		.dc.b 0x06 /* 241 PWAITPID( */
		.dc.b 0x10 /* 242 PGETGID() */
		.dc.b 0x02 /* 243 PSETGID( */
		.dc.b 0x10 /* 244 PGETUID() */
		.dc.b 0x02 /* 245 PSETUID( */
		.dc.b 0x04 /* 246 ARRAY!( */
		.dc.b 0x04 /* 247 ARRAY|( */
		.dc.b 0x04 /* 248 ARRAY&( */
		.dc.b 0x04 /* 249 ARRAY%( */
		.dc.b 0x04 /* 250 ARRAY( */
		.dc.b 0x10 /* 251 _A3 */
		.dc.b 0x10 /* 252 _A4 */
		.dc.b 0x10 /* 253 _A5 */
		.dc.b 0x10 /* 254 _A6 */
		.dc.b 0x10 /* 255 _A7 */

offset_table_sf212:
		.dc.b 0x02 /*   0 GETMPB( */
		.dc.b 0x04 /*   1 MADDALT( */
		.dc.b 0x04 /*   2 MFPINT( */
		.dc.b 0x08 /*   3 XBTIMER( */
		.dc.b 0x10 /*   4 PUNTAES() */
		.dc.b 0x02 /*   5 SSBRK( */
		.dc.b 0x22 /*   6 DBMSG( */
		.dc.b 0x04 /*   7 FFCHMOD( */
		.dc.b 0x06 /*   8 FFCHOWN( */
		.dc.b 0x10 /*   9 SVERSION() */
		.dc.b 0xb2 /*  10 DCNTL( */
		.dc.b 0x10 /*  11 CCONIN() */
		.dc.b 0x02 /*  12 CCONOUT( */
		.dc.b 0x10 /*  13 CAUXIN() */
		.dc.b 0x02 /*  14 CAUXOUT( */
		.dc.b 0x02 /*  15 CPRNOUT( */
		.dc.b 0x02 /*  16 CRAWIO( */
		.dc.b 0x10 /*  17 CRAWCIN() */
		.dc.b 0x10 /*  18 CNECIN() */
		.dc.b 0x10 /*  19 CCONIS() */
		.dc.b 0x10 /*  20 CCONOS() */
		.dc.b 0x10 /*  21 CAUXIS() */
		.dc.b 0x10 /*  22 CAUXOS() */
		.dc.b 0x10 /*  23 CPRNOS() */
		.dc.b 0x1e /*  24 CCONRS( */
		.dc.b 0x10 /*  25 PGETPGRP() */
		.dc.b 0x04 /*  26 PSETPGRP( */
		.dc.b 0x04 /*  27 PGETGROUPS( */
		.dc.b 0x04 /*  28 PSETGROUPS( */
		.dc.b 0x10 /*  29 PGETAUID() */
		.dc.b 0x02 /*  30 PSETAUID( */
		.dc.b 0x10 /*  31 PGETEUID() */
		.dc.b 0x02 /*  32 PSETEUID( */
		.dc.b 0x10 /*  33 PGETEGID() */
		.dc.b 0x02 /*  34 PSETEGID( */
		.dc.b 0x04 /*  35 PSETREUID( */
		.dc.b 0x04 /*  36 PSETREGID( */
		.dc.b 0x06 /*  37 PSEMAPHORE( */
		.dc.b 0xd6 /*  38 TSETITIMER( */
		.dc.b 0x04 /*  39 TADJTIME( */
		.dc.b 0x04 /*  40 TGETTIMEOFDAY( */
		.dc.b 0x04 /*  41 TSETTIMEOFDAY( */
		.dc.b 0x10 /*  42 PTERM0() */
		.dc.b 0x02 /*  43 PTERM( */
		.dc.b 0x06 /*  44 FREADV( */
		.dc.b 0x06 /*  45 FWRITEV( */
		.dc.b 0x0e /*  46 DCHROOT( */
		.dc.b 0xb2 /*  47 FSTAT64( */
		.dc.b 0x04 /*  48 FFSTAT64( */
		.dc.b 0x9c /*  49 FCHOWN16( */
		.dc.b 0x02 /*  50 FCHDIR( */
		.dc.b 0x02 /*  51 FFDOPENDIR( */
		.dc.b 0x02 /*  52 FDIRFD( */
		.dc.b 0x06 /*  53 REALLOC( */
		.dc.b 0xd4 /*  54 VQ_CURADDRESS( */
		.dc.b 0x04 /*  55 V_CURADDRESS( */
		.dc.b 0x10 /*  56 V_RVON() */
		.dc.b 0x10 /*  57 V_RVOFF() */
		.dc.b 0x10 /*  58 V_EXIT_CUR() */
		.dc.b 0x10 /*  59 V_ENTER_CUR() */
		.dc.b 0x10 /*  60 V_CURUP() */
		.dc.b 0x10 /*  61 V_CURDOWN() */
		.dc.b 0x10 /*  62 V_CURRIGHT() */
		.dc.b 0x10 /*  63 V_CURLEFT() */
		.dc.b 0x10 /*  64 V_CURHOME() */
		.dc.b 0x10 /*  65 VQ_TABSTATUS() */
		.dc.b 0x10 /*  66 V_EEOL() */
		.dc.b 0x10 /*  67 V_EEOS() */
		.dc.b 0x10 /*  68 V_RMCUR() */
		.dc.b 0x04 /*  69 V_DSPCUR( */
	.ENDC

	.ENDC

	.IF GBE<372
offset_table_sf209:
offset_table_sf210:
offset_table_sf211:
offset_table_sf212:
	.ENDC

offset_table_sf213:
offset_table_sf214:
		.even

/* 370: 55714 */
/* 371: 57b1c */
/* 372: 58d18 */
/* 373: 59bca */
x14ee8:
		.dc.b ARG_PUSH,((x1502d-jmpbase)>>8)&255,(x1502d-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1502d-jmpbase)>>8)&255,(x1502d-jmpbase)&255
		.dc.b ARG_PUSH,((x14f19-jmpbase)>>8)&255,(x14f19-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14ef4:
		.dc.b ARG_PUSH,((x15039-jmpbase)>>8)&255,(x15039-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1440d-jmpbase)>>8)&255,(x1440d-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14efd:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x14f15-jmpbase)>>8)&255,(x14f15-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

	.IFNE GBE
	.IF GBE>=373
x59be7_373:
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC
x58d35_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58d41_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x58d44_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x58d4a_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58d52_372:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x58d5a_372-jmpbase)>>8)&255,(x58d5a_372-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58d5a_372:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x58d60_372-jmpbase)>>8)&255,(x58d60_372-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x58d60_372:
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b ARG_END
	.IF GBE>=373
x59c1f_373:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC
x58d64_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x58d67_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x58d6a_372:
		.dc.b ARG_PUSH,((x14411-jmpbase)>>8)&255,(x14411-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
yRGB_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yAVERAGE_RGB_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433a-jmpbase)>>8)&255,(x1433a-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
	.ENDC

x14f05:
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b ARG_PUSH,((x14f1d-jmpbase)>>8)&255,(x14f1d-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f0d:
		.dc.b ARG_PUSH,((x15036-jmpbase)>>8)&255,(x15036-jmpbase)&255
		.dc.b ARG_PUSH,((x14f1d-jmpbase)>>8)&255,(x14f1d-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f15:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14415-jmpbase)>>8)&255,(x14415-jmpbase)&255
x14f19:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14415-jmpbase)>>8)&255,(x14415-jmpbase)&255
x14f1d:
		.dc.b TOK_COMMA
x14f1e:
		.dc.b ARG_PUSH,((x1440d-jmpbase)>>8)&255,(x1440d-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x14f23:
		.dc.b ARG_PUSH,((x14f1e-jmpbase)>>8)&255,(x14f1e-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x14f28:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14415-jmpbase)>>8)&255,(x14415-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x14f2e:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

	.IFNE GBE
x58dd0_372:
		.dc.b ARG_PUSH,((x1439e-jmpbase)>>8)&255,(x1439e-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC

x14f34:
		.dc.b ARG_PUSH,((x1439e-jmpbase)>>8)&255,(x1439e-jmpbase)&255
		.dc.b ARG_PUSH,((x14f2e-jmpbase)>>8)&255,(x14f2e-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f3c:
		.dc.b ARG_PUSH,((x1439e-jmpbase)>>8)&255,(x1439e-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f41:
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.IF GBE>=372
x58df3_372:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
	.ELSE
x14f4a:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
	.ENDC
x14f4d:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

	.IFNE GBE

yTPUT_args:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x58e05_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x58e08_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x58e0b_372:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
yVER2STR_args:
yENVIRON_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
yBXLATE_args:
yBCRYPT_args:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x58e23_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_END
x58e37_372:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58e48_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58e60_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1433e-jmpbase)>>8)&255,(x1433e-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58e70_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC

x14f52:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14f55:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f5d:
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f66:
		.dc.b ARG_PUSH,((x15039-jmpbase)>>8)&255,(x15039-jmpbase)&255
		.dc.b TOK_COMMA
x14f6a:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_COMMA
x14f6e:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b ARG_PUSH,((x14f28-jmpbase)>>8)&255,(x14f28-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.IFNE GBE
x58ea0_372:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14f28-jmpbase)>>8)&255,(x14f28-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58ea8_372:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_PUSH,((x14f28-jmpbase)>>8)&255,(x14f28-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC
	.IF GBE>=373
x59d80_373:
		.dc.b ARG_PUSH,((x15039-jmpbase)>>8)&255,(x15039-jmpbase)&255
		.dc.b ARG_PUSH,((x59d88_373-jmpbase)>>8)&255,(x59d88_373-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x59d88_373:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14411-jmpbase)>>8)&255,(x14411-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
	.ENDC
x14f76:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_COMMA
x14f7a:
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14342-jmpbase)>>8)&255,(x14342-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f83:
		.dc.b ARG_PUSH,((x15039-jmpbase)>>8)&255,(x15039-jmpbase)&255
		.dc.b TOK_COMMA
x14f87:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x14f8a:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x14f1d-jmpbase)>>8)&255,(x14f1d-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14f92:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.IFNE GBE
x58ed8_372:
		.dc.b ARG_PUSH,((x14fa3-jmpbase)>>8)&255,(x14fa3-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58edd_372:
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC

x14f9b:
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_END

x14fa3:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255

x14fa6:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_END

	.IFNE GBE
ySCALL_args:
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x58efa_372:
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_COMMA
x58efe_372:
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58f03_372:
		.dc.b ARG_PUSH,((x14f9b-jmpbase)>>8)&255,(x14f9b-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14346-jmpbase)>>8)&255,(x14346-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x58f10_372:
		.dc.b ARG_PUSH,((x14f9b-jmpbase)>>8)&255,(x14f9b-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
	.ENDC

x14fae:
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_208,68
		.dc.b ARG_REPLACE,69
		.dc.b ARG_PUSH,((x14fa3-jmpbase)>>8)&255,(x14fa3-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_208,68
		.dc.b ARG_REPLACE,70
		.dc.b ARG_PUSH,((x14f9b-jmpbase)>>8)&255,(x14f9b-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END

x14fc5:
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_208,209
		.dc.b ARG_REPLACE,210
		.dc.b ARG_PUSH,((x14fa3-jmpbase)>>8)&255,(x14fa3-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_208,209
		.dc.b ARG_REPLACE,211
		.dc.b ARG_PUSH,((x14f9b-jmpbase)>>8)&255,(x14f9b-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14fdc:
		.dc.b ARG_PUSH,((x14fe1-jmpbase)>>8)&255,(x14fe1-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14fe1:
		.dc.b ARG_PUSH,((x14336-jmpbase)>>8)&255,(x14336-jmpbase)&255
		.dc.b ARG_END
x14fe5:
		.dc.b ARG_PUSH,((x14fe9-jmpbase)>>8)&255,(x14fe9-jmpbase)&255
		.dc.b ARG_END
x14fe9:
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
x14fee:
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x14ff3:
		.dc.b ARG_REPLACE,208
		.dc.b 249,189
		.dc.b ARG_PUSH,((x1501f-jmpbase)>>8)&255,(x1501f-jmpbase)&255
		.dc.b ARG_END
x14ffb:
		.dc.b ARG_PUSH,((x15046-jmpbase)>>8)&255,(x15046-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x15000:
		.dc.b ARG_PUSH,((x144dd-jmpbase)>>8)&255,(x144dd-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x15005:
		.dc.b ARG_CALL_FUNC,((f154aa-jmpbase)>>8)&255,(f154aa-jmpbase)&255
		.dc.b 35
		.dc.b ARG_REPLACE,157
		.dc.b ARG_PUSH,((x15050-jmpbase)>>8)&255,(x15050-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x15010:
		.dc.b ARG_PUSH,((x14b91-jmpbase)>>8)&255,(x14b91-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
yABSOLUTE_args:
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b ARG_PUSH,((x15027-jmpbase)>>8)&255,(x15027-jmpbase)&255
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_END
x1501f:
		.dc.b ARG_PUSH,((x143ad-jmpbase)>>8)&255,(x143ad-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1434e-jmpbase)>>8)&255,(x1434e-jmpbase)&255
		.dc.b ARG_END
x15027:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,33
		.dc.b ARG_END
x1502d:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x15036:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x15039:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x1503c:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
x1503f:
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_END
x15046:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x1504d-jmpbase)>>8)&255,(x1504d-jmpbase)&255
		.dc.b ARG_END
x1504d:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
x15050:
		.dc.b ARG_PUSH,((x1505b-jmpbase)>>8)&255,(x1505b-jmpbase)&255
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x1504d-jmpbase)>>8)&255,(x1504d-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x1505b:
		.dc.b 138
		.dc.b ARG_POP
		.dc.b 139
		.dc.b ARG_POP
		.dc.b ARG_END
x15060:
		.dc.b 117
		.dc.b ARG_REPLACE,118
		.dc.b ARG_POP
		.dc.b 119
		.dc.b ARG_REPLACE,120
		.dc.b ARG_END
x15068:
		.dc.b ARG_PUSH,((x1506f-jmpbase)>>8)&255,(x1506f-jmpbase)&255
		.dc.b ARG_PUSH,((x15176-jmpbase)>>8)&255,(x15176-jmpbase)&255
		.dc.b ARG_END
x1506f:
		.dc.b ARG_CALL_FUNC,((f13d22-jmpbase)>>8)&255,(f13d22-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13696-jmpbase)>>8)&255,(f13696-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_TRIM
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_LEFT1
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_LEFT1
		.dc.b ARG_REPLACE,59
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_RIGHT1
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_RIGHT1
		.dc.b ARG_REPLACE,61
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_MID2
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_MID2
		.dc.b ARG_REPLACE,63
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f1369e-jmpbase)>>8)&255,(f1369e-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_INPUT1
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_INPUT1
		.dc.b ARG_REPLACE,95
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x15060-jmpbase)>>8)&255,(x15060-jmpbase)&255
		.dc.b ARG_PUSH,((x15164-jmpbase)>>8)&255,(x15164-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_UPPER
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
.IFNE GBE
		.dc.b TOK_LOWER
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_MIRROR
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_LTRIM
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_RTRIM
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_ZTRIM
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_LCASE
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_RCASE
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_ENVIRON
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_DIGITAL
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_TIMESTAMP
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_DATE1
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_TIME1
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_OB_TEXT
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
	.IF GBE>=373
		.dc.b TOK_STRUCTSTR
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
	.ENDC
		.dc.b TOK_CHAR
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_REPLACE
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_CRYPT
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_XLATE
		.dc.b ARG_PUSH,((x14fa6-jmpbase)>>8)&255,(x14fa6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
.ENDC
x150de:
		.dc.b TOK_STRING_CODE
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_STRING_CODE
		.dc.b ARG_REPLACE,130
		.dc.b ARG_PUSH,((iexp_comma-jmpbase)>>8)&255,(iexp_comma-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x15160-jmpbase)>>8)&255,(x15160-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f154da-jmpbase)>>8)&255,(f154da-jmpbase)&255
		.dc.b ARG_PUSH,((x14962-jmpbase)>>8)&255,(x14962-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_208,96 /* SUCC( */
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,131
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_SUBFUNC_208,97 /* PRED( */
		.dc.b ARG_BACK
		.dc.b ARG_REPLACE,133
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b TOK_STR1
		.dc.b ARG_PUSH,((x1512d-jmpbase)>>8)&255,(x1512d-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_HEX1
		.dc.b ARG_PUSH,((x1513f-jmpbase)>>8)&255,(x1513f-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_OCT1
		.dc.b ARG_PUSH,((x1514a-jmpbase)>>8)&255,(x1514a-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_BIN1
		.dc.b ARG_PUSH,((x15155-jmpbase)>>8)&255,(x15155-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_CHAR_REF
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b TOK_RBRACE
		.dc.b ARG_END

x1512d:
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,191
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,192
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x1513f:
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,194
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x1514a:
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,196
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x15155:
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,116
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x15160:
		.dc.b 158
		.dc.b ARG_POP
		.dc.b 159
		.dc.b ARG_END
x15164:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x1516b-jmpbase)>>8)&255,(x1516b-jmpbase)&255
		.dc.b ARG_END
x1516b:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x1516b-jmpbase)>>8)&255,(x1516b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
x15176:
		.dc.b TOK_ADD
		.dc.b ARG_REPLACE,28
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x1517e:
		.dc.b TOK_NE
		.dc.b ARG_REPLACE,TOK_NE_STR
		.dc.b ARG_POP
		.dc.b TOK_LE
		.dc.b ARG_REPLACE,TOK_LE_STR
		.dc.b ARG_POP
		.dc.b TOK_LE2
		.dc.b ARG_REPLACE,TOK_LE2_STR
		.dc.b ARG_POP
		.dc.b TOK_GE
		.dc.b ARG_REPLACE,TOK_GE_STR
		.dc.b ARG_POP
		.dc.b TOK_GE2
		.dc.b ARG_REPLACE,TOK_GE2_STR
		.dc.b ARG_POP
		.dc.b TOK_LT
		.dc.b ARG_REPLACE,TOK_LT_STR
		.dc.b ARG_POP
		.dc.b TOK_GT
		.dc.b ARG_REPLACE,TOK_GT_STR
		.dc.b ARG_POP
		.dc.b TOK_EQ
		.dc.b ARG_REPLACE,TOK_EQ_STR
		.dc.b ARG_END
x1519e:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x151a6-jmpbase)>>8)&255,(x151a6-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_END
x151a6:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x151a6-jmpbase)>>8)&255,(x151a6-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yTEXT_args:
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1529b-jmpbase)>>8)&255,(x1529b-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
yATEXT_args:
		.dc.b ARG_PUSH,((x1503c-jmpbase)>>8)&255,(x1503c-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x1529b-jmpbase)>>8)&255,(x1529b-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
	.IFEQ GBE
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x151cf-jmpbase)>>8)&255,(x151cf-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x14b9a-jmpbase)>>8)&255,(x14b9a-jmpbase)&255
		.dc.b ARG_END
x151cf:
		.dc.b ARG_PUSH,((x1517e-jmpbase)>>8)&255,(x1517e-jmpbase)&255
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_PUSH,((x14bc8-jmpbase)>>8)&255,(x14bc8-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
	.ENDC
yINPUT_args:
		.dc.b ARG_CALL_FUNC,((f13d22-jmpbase)>>8)&255,(f13d22-jmpbase)&255
		.dc.b ARG_PUSH,((x151eb-jmpbase)>>8)&255,(x151eb-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x151ee-jmpbase)>>8)&255,(x151ee-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b ARG_PUSH,((x144f6-jmpbase)>>8)&255,(x144f6-jmpbase)&255
x151eb:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
x151ee:
		.dc.b ARG_PUSH,((x14336-jmpbase)>>8)&255,(x14336-jmpbase)&255
		.dc.b ARG_PUSH,((x151f6-jmpbase)>>8)&255,(x151f6-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x151f6:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x14336-jmpbase)>>8)&255,(x14336-jmpbase)&255
		.dc.b ARG_PUSH,((x151f6-jmpbase)>>8)&255,(x151f6-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END
yREAD_args:
		.dc.b ARG_PUSH,((x151ee-jmpbase)>>8)&255,(x151ee-jmpbase)&255
		.dc.b ARG_END
yWRITE_args:
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((write_channel_args-jmpbase)>>8)&255,(write_channel_args-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((print_channel_args-jmpbase)>>8)&255,(print_channel_args-jmpbase)&255
		.dc.b ARG_PUSH,((x15214-jmpbase)>>8)&255,(x15214-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END
x15214:
		.dc.b ARG_PUSH,((x1529b-jmpbase)>>8)&255,(x1529b-jmpbase)&255
		.dc.b ARG_PUSH,((x1521b-jmpbase)>>8)&255,(x1521b-jmpbase)&255
		.dc.b ARG_END
x1521b:
		.dc.b ARG_PUSH,((x15228-jmpbase)>>8)&255,(x15228-jmpbase)&255
		.dc.b ARG_PUSH,((x1529b-jmpbase)>>8)&255,(x1529b-jmpbase)&255
		.dc.b ARG_PUSH,((x1521b-jmpbase)>>8)&255,(x1521b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_SEMI
		.dc.b ARG_POP
		.dc.b ARG_END

x15228:
		.dc.b TOK_COMMA
		.dc.b ARG_POP
		.dc.b TOK_SEMI
		.dc.b ARG_REPLACE,TOK_COMMA
		.dc.b ARG_END

yPRINT_args:
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_POP
		.dc.b ARG_CALL_FUNC,((f13d64-jmpbase)>>8)&255,(f13d64-jmpbase)&255
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x1523f-jmpbase)>>8)&255,(x1523f-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x1523f:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

yLPRINT_args:
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

write_channel_args:
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

print_channel_args:
		.dc.b TOK_CHANNEL
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x1525b:
		.dc.b ARG_PUSH,((x144eb-jmpbase)>>8)&255,(x144eb-jmpbase)&255
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_PRINTSPACE
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b TOK_AT
		.dc.b ARG_PUSH,((x1503f-jmpbase)>>8)&255,(x1503f-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_CALL_FUNC,((f15306-jmpbase)>>8)&255,(f15306-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15310-jmpbase)>>8)&255,(f15310-jmpbase)&255
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x15297-jmpbase)>>8)&255,(x15297-jmpbase)&255
		.dc.b ARG_PUSH,((x14c92-jmpbase)>>8)&255,(x14c92-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15310-jmpbase)>>8)&255,(f15310-jmpbase)&255
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b 163
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x15214-jmpbase)>>8)&255,(x15214-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x1529b-jmpbase)>>8)&255,(x1529b-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f15310-jmpbase)>>8)&255,(f15310-jmpbase)&255
		.dc.b ARG_PUSH,((x1525b-jmpbase)>>8)&255,(x1525b-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x15297:
		.dc.b TOK_TAB
		.dc.b ARG_POP
		.dc.b TOK_SPC
		.dc.b ARG_END

x1529b:
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_CALL_FUNC,((f152e6-jmpbase)>>8)&255,(f152e6-jmpbase)&255
		.dc.b ARG_POP
		.dc.b 249,55
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_END

yDEFMOUSE_args:
		.dc.b ARG_PUSH,((yCLEARW_args-jmpbase)>>8)&255,(yCLEARW_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_REPLACE,48
		.dc.b ARG_PUSH,((yCHDIR_args-jmpbase)>>8)&255,(yCHDIR_args-jmpbase)&255
		.dc.b ARG_END

ySPRITE_args:
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((yVPLOT_args-jmpbase)>>8)&255,(yVPLOT_args-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_PUSH,((x143ec-jmpbase)>>8)&255,(x143ec-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

yCALL_args:
		.dc.b ARG_CALL_FUNC,((f154aa-jmpbase)>>8)&255,(f154aa-jmpbase)&255
		.dc.b ARG_PUSH,((x152c7-jmpbase)>>8)&255,(x152c7-jmpbase)&255
		.dc.b TOK_LINE_COMMENT
		.dc.b ARG_END

x152c7:
		.dc.b 35
		.dc.b ARG_REPLACE,157
		.dc.b ARG_PUSH,((x152dc-jmpbase)>>8)&255,(x152dc-jmpbase)&255
		.dc.b ARG_PUSH,((x152d3-jmpbase)>>8)&255,(x152d3-jmpbase)&255
		.dc.b TOK_RPAREN
		.dc.b ARG_POP
		.dc.b ARG_END

x152d3:
		.dc.b TOK_COMMA
		.dc.b ARG_PUSH,((x152dc-jmpbase)>>8)&255,(x152dc-jmpbase)&255
		.dc.b ARG_PUSH,((x152d3-jmpbase)>>8)&255,(x152d3-jmpbase)&255
		.dc.b ARG_POP
		.dc.b ARG_END

x152dc:
		.dc.b ARG_PUSH,((x14b96-jmpbase)>>8)&255,(x14b96-jmpbase)&255
		.dc.b ARG_POP
		.dc.b 249,55
		.dc.b ARG_PUSH,((x15068-jmpbase)>>8)&255,(x15068-jmpbase)&255
		.dc.b ARG_END
	.even

/* 370: 55b86 */
/* 371: 5807e */
/* 372: 592a8 */
/* 373: 5a18e */
f152e6:
		pea.l      (a0)
f152e6_1:
		cmpi.b     #' ',(a0)+
		beq.s      f152e6_1
		subq.l     #1,a0
		cmpi.b     #'=',(a0)
		beq.s      f152e6_2
		cmpi.b     #'<',(a0)
		beq.s      f152e6_2
		cmpi.b     #'>',(a0)
f152e6_2:
		seq        d7
		movea.l    (a7)+,a0
		rts

f15306:
		cmpi.w     #TOK_CMD_PRINT*2,o1364(a6)
		sne        d7
		rts

f15310:
		bsr        skip_spaces
		move.b     (a0),d0
		cmpi.b     #'!',d0
		beq.s      f15310_2
		cmpi.b     #'/',d0
		beq.s      f15310_3
		cmpi.b     #',',d0
		beq.s      f15310_2
		cmpi.b     #';',d0
		beq.s      f15310_2
		cmpi.b     #CR,d0 /* FIXME: handle also LF */
		beq.s      f15310_2
		cmpi.b     #0x27,d0
f15310_1:
		beq.s      f15310_2
		move.b     #'"',(a1)+
f15310_2:
		moveq.l    #0,d7
		rts
f15310_3:
		move.b     1(a0),d0
		cmpi.b     #'/',d0
		beq.s      f15310_2
		cmpi.b     #'*',d0
		bra.s      f15310_1

x15352:
		bsr        skip_spaces
		move.l     a0,d1
		subi.l     #general_buffer,d1 /* ??? */
		sub.l      a6,d1
		move.b     (a0)+,d0
		move.b     d0,8401(a6)
		cmpi.b     #'A',d0
		bcs        x15352_12
		cmpi.b     #'Z',d0
		bhi        x15352_12
x15352_0:
		moveq.l    #0,d3
x15352_1:
		addq.w     #1,d3
		beq        x15352_12
		move.b     (a0)+,d0
		cmpi.b     #'_',d0
		beq.s      x15352_1
		cmpi.b     #'.',d0
		beq.s      x15352_1
		cmpi.b     #'A',d0
		bcs.s      x15352_2
		cmpi.b     #'Z',d0
		bls.s      x15352_1
		bra.s      x15352_3
x15352_2:
		cmpi.b     #'0',d0
		bcs.s      x15352_3
		cmpi.b     #'9',d0
		bls.s      x15352_1
x15352_3:
		moveq.l    #TYPE_FLOAT,d2
		cmpi.b     #'{',d0
		beq.s      x15352_12
		cmpi.b     #'%',d0
		beq.s      x15352_7
		cmpi.b     #'$',d0
		beq.s      x15352_8
		cmpi.b     #'&',d0
		beq.s      x15352_5
		cmpi.b     #'|',d0
		beq.s      x15352_6
		cmpi.b     #'!',d0
		beq.s      x15352_4
		cmpi.b     #'#',d0
		beq.s      x15352_9
		cmpi.l     #x15492_1,(a7) /* WTF; compares PC to caller */
		bne.s      x15352_10
		move.b     8401(a6),d2
		move.b     deftype-'A'(pc,d2.w),d2
		bra.s      x15352_10

deftype:
		.dc.b       TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT
		.dc.b       TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT
		.dc.b       TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT
		.dc.b       TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT
		.dc.b       TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT
		.dc.b       TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT,TYPE_FLOAT
		.dc.b       TYPE_FLOAT,TYPE_FLOAT

x15352_4:
		moveq.l    #TYPE_BOOL,d2
		bra.s      x15352_9
x15352_5:
		moveq.l    #TYPE_WORD,d2
		bra.s      x15352_9
x15352_6:
		moveq.l    #TYPE_BYTE,d2
		bra.s      x15352_9
x15352_7:
		moveq.l    #TYPE_INT,d2
		bra.s      x15352_9
x15352_8:
		moveq.l    #TYPE_STRING,d2
x15352_9:
		move.b     (a0)+,d0
x15352_10:
		cmpi.b     #'(',d0
		bne.s      x15352_11
		addq.b     #TYPE_FLOAT_ARR-TYPE_FLOAT,d2
		rts
x15352_11:
		subq.l     #1,a0
		rts
x15352_12:
		moveq.l    #-1,d2
		rts

x15424:
		bsr        skip_spaces
		move.l     a0,d1
		subi.l     #general_buffer,d1
		sub.l      a6,d1
		cmpi.b     #'9',(a0)
		bhi        x15352
		cmpi.b     #'0',(a0)+
		bcc        x15352_0
		bra.s      x15352_12

f15444:
		moveq.l    #TOK_REF_PROCEDURE-256,d7
		bra.s      f15448_1

f15448:
		moveq.l    #TOK_REF_LABEL-256,d7
f15448_1:
		bsr.s      x15424
		bclr       #2,d2
		beq.s      f15448_2
		subq.l     #1,a0
f15448_2:
		tst.b      d2
		bne        f13c9a_6
		move.b     d7,(a1)+
		move.b     d1,(a1)+
		move.b     d3,(a1)+
		moveq.l    #0,d7
		rts

expect_float:
		moveq.l    #TYPE_FLOAT,d7
		bra.s      x15492
expect_string:
		moveq.l    #TYPE_STRING,d7
		bra.s      x15492
expect_int:
		moveq.l    #TYPE_INT,d7
		bra.s      x15492
expect_bool:
		moveq.l    #TYPE_BOOL,d7
		bra.s      x15492
expect_float_arr:
		moveq.l    #TYPE_FLOAT_ARR,d7
		bra.s      x15492
expect_string_arr:
		moveq.l    #TYPE_STRING_ARR,d7
		bra.s      x15492
expect_int_arr:
		moveq.l    #TYPE_INT_ARR,d7
		bra.s      x15492
expect_bool_arr:
		moveq.l    #TYPE_BOOL_ARR,d7
		bra.s      x15492
expect_word:
		moveq.l    #TYPE_WORD,d7
		bra.s      x15492
expect_byte:
		moveq.l    #TYPE_BYTE,d7
		bra.s      x15492
expect_word_arr:
		moveq.l    #TYPE_WORD_ARR,d7
		bra.s      x15492
expect_byte_arr:
		moveq.l    #TYPE_BYTE_ARR,d7

x15492:
		bsr        x15352
x15492_1:
		cmp.b      d7,d2
		bne        f13c9a_6
x15492_2:
		addi.b     #TOK_REF_FLOAT,d2
		move.b     d2,(a1)+
		move.b     d1,(a1)+
		move.b     d3,(a1)+
		moveq.l    #0,d7
		rts

f154aa:
		bsr        x15352
		bclr       #2,d2   /* array ref? */
		beq.s      f154aa_1
		subq.l     #1,a0
f154aa_1:
		tst.b      d2      /* TYPE_FLOAT? */
		beq.s      x15492_2
		cmpi.b     #TYPE_INT,d2
		beq.s      x15492_2
		bra        f13c9a_6

f154c4:
		bsr        x15352
		bclr       #2,d2   /* array ref? */
		beq.s      f154c4_1
		subq.l     #1,a0
f154c4_1:
		tst.b      d2      /* TYPE_FLOAT? */
		bne        f13c9a_6
		moveq.l    #TYPE_FUNCTION,d2
		bra.s      x15492_2

f154da:
		bsr        x15352
		bclr       #2,d2   /* array ref? */
		beq.s      f154da_1
		subq.l     #1,a0
f154da_1:
		subq.b     #TYPE_STRING,d2
		bne        f13c9a_6
		moveq.l    #TYPE_FUNCTION_STR,d2
		bra.s      x15492_2

/* 371: 58288 */
/* 372: 594b4 */
/* 373: 5a398 */
x154f0:
		lea.l      o1364(a6),a0
		move.w     (a0)+,d0
		cmpi.w     #TOK_CMD_REM*2,d0
		beq.s      x154f0_1
		cmpi.w     #TOK_CMD_COMMENT*2,d0
		beq.s      x154f0_1
		cmpi.w     #TOK_CMD_SYNERR*2,d0
		beq.s      x154f0_1
		cmpi.w     #TOK_CMD_DOT*2,d0
		beq.s      x154f0_1
		cmpi.w     #TOK_CMD_DOLLAR*2,d0
		beq.s      x154f0_1
		cmpi.w     #TOK_CMD_DATA*2,d0
		bne.s      x154f0_3
x154f0_1:
		rts
x154f0_2:
		st         x137b2
x154f0_3:
		move.b     (a0)+,d0
		cmpi.b     #TOK_CHAR_CONST,d0
		bcc.s      x154f0_4
		cmpi.b     #TOK_FNCALL,d0
		beq.s      x154f0_2
		cmpi.b     #TOK_GOSUB,d0
		beq.s      x154f0_2
		cmpi.b     #TOK_LINE_COMMENT,d0
		bne.s      x154f0_3
		movea.l    a0,a1
		rts
x154f0_4:
		cmpi.b     #TOK_SUBFUNC_214,d0
	.IFNE GBE
		bhi.s      x154f0_11
	.ELSE
		bcc.s      x154f0_11
	.ENDC
		cmpi.b     #TOK_SUBFUNC_208,d0
		bcc.s      x154f0_6
		lsr.b      #1,d0
		bcc.s      x154f0_7
		move.l     a0,d0
		lsr.b      #1,d0
		bcc.s      x154f0_9
		addq.l     #1,a0
x154f0_5:
		addq.l     #3,a0
x154f0_6:
		addq.l     #1,a0
		bra.s      x154f0_3
x154f0_7:
		move.l     a0,d0
		lsr.w      #1,d0
		bcc.s      x154f0_5
		bsr        x1577c
		bchg       #0,-(a0)
x154f0_8:
		addq.l     #6,a0
		bra.s      x154f0_3
x154f0_9:
		bsr        x1576c
		bchg       #0,-(a0)
		addq.l     #5,a0
x154f0_10:
		bra.s      x154f0_3
x154f0_11:
		cmpi.b     #TOK_STRING_CONST,d0
		beq.s      x154f0_15
		cmpi.b     #TOK_DEC_DBL_CONST,d0
		beq.s      x154f0_12
		bhi.s      x154f0_16
		cmpi.b     #TOK_DEC_DBL_CONST_PAD,d0
		bne        x1578c
		move.l     a0,d0
		btst       #0,d0
		beq.s      x154f0_13
		adda.w     #9,a0
		bra.s      x154f0_10
x154f0_12:
		move.l     a0,d0
		btst       #0,d0
		bne.s      x154f0_14
		addq.l     #8,a0
		bra.s      x154f0_10
x154f0_13:
		bsr        x1576c
		move.b     #TOK_DEC_DBL_CONST,-(a0)
		adda.w     #9,a0
		bra.s      x154f0_10
x154f0_14:
		bsr        x1577c
		move.b     #TOK_DEC_DBL_CONST_PAD,-(a0)
		adda.w     #10,a0
		bra.s      x154f0_10
x154f0_15:
		moveq.l    #0,d0
		move.b     (a0)+,d0
		adda.w     d0,a0
		bra.s      x154f0_10
x154f0_16:
		moveq.l    #0,d1
		move.b     (a0)+,d1
		lea.l      general_buffer(a6),a2
		adda.w     d1,a2
		move.b     (a0)+,d1
		andi.w     #15,d0
		add.w      d0,d0
		add.w      d0,d0
		lea.l      ptr_table(a6),a3
		movea.l    0(a3,d0.w),a4
		movea.l    4(a3,d0.w),a5
		moveq.l    #-1,d7
		moveq.l    #1,d2
x154f0_17:
		addq.w     #1,d7
		cmpa.l     a5,a4
		bcc.s      x154f0_23
		moveq.l    #0,d2
		move.b     (a4)+,d2
		beq.s      x154f0_23
		cmp.b      d2,d1
		beq.s      x154f0_19
x154f0_18:
		lea.l      0(a4,d2.w),a4
		bra.s      x154f0_17
x154f0_19:
		move.w     d2,d3
		subq.w     #1,d3
x154f0_20:
		move.b     0(a2,d3.w),d4
		cmp.b      0(a4,d3.w),d4
		dbne       d3,x154f0_20
		bne.s      x154f0_18
x154f0_21:
		cmpi.w     #255,d7
		bhi.s      x154f0_22
		subq.l     #3,a0
		subi.b     #16,(a0)+
		move.b     d7,(a0)+
		bsr        x1576c
		bra        x154f0_3
x154f0_22:
		move.b     d7,-1(a0)
		rol.w      #8,d7
		move.b     d7,-2(a0)
		bra        x154f0_3
x154f0_23:
		movem.l    d0-d2/d7/a0-a2,-(a7)
		tst.w      x15c42
		beq        x154f0_32
		moveq.l    #15,d0
		and.b      -3(a0),d0
		add.w      d0,d0
		lea.l      5360(a6),a0
		move.l     #0x5B325D5B,(a0)+ /* '[2][' */
	.IF GBE>=372
		move.l     #0x4E657720,(a0)+ /* 'New ' */
	.ENDC
		lea.l      newvar_msg,a1
		cmpi.w     #28,d0
		bcs.s      x154f0_24
		lea.l      newfunc_msg,a1
x154f0_24:
		cmpi.w     #20,d0
		bne.s      x154f0_25
		lea.l      newlab_msg,a1
x154f0_25:
		cmpi.w     #22,d0
		bne.s      x154f0_26
		lea.l      newproc_msg,a1
x154f0_26:
		move.b     (a1)+,(a0)+
		bne.s      x154f0_26
	.IF GBE>=372
		move.b     #'?',-1(a0)
		move.b     #' ',(a0)+
	.ELSE
		move.b     #' ',-1(a0)
		move.b     #'?',(a0)+
	.ENDC
x154f0_27:
		move.b     #'|',(a0)+
		moveq.l    #30-1,d2
		bra.s      x154f0_29
x154f0_28:
		move.b     (a2)+,(a0)+
x154f0_29:
		subq.w     #1,d2
		dbmi       d1,x154f0_28
		bmi.s      x154f0_27
		lea.l      x156bc(pc,d0.w),a2
		move.b     (a2)+,(a0)+
		move.b     (a2)+,(a0)+
		lea.l      x156dc(pc),a2
x154f0_30:
		move.b     (a2)+,(a0)+
		bne.s      x154f0_30
		bra.s      x154f0_31

x156bc:
		.ascii "# "
		.ascii "$ "
		.ascii "% "
		.ascii "! "
		.ascii "#("
		.ascii "$("
		.ascii "%("
		.ascii "!("
		.ascii "& "
		.dc.b 0x5c,' ' /* BUG: should be '|' */
		.ascii ": "
		.ascii "  "
		.ascii "&("
		.dc.b 0x5c,'(' /* BUG: should be '|' */
		.ascii "  "
		.ascii "$ "
x156dc: .ascii "][Ok|Error]"
		.dc.b 0
		.even

x154f0_31:
		moveq.l    #1,d0
		lea.l      5360(a6),a0
		jsr        ERROR.l
		subq.w     #1,d0
		bne        x13886
		movem.l    (a7),d0-d2/d7/a0-a2
x154f0_32:
		tst.b      d2
		bne.s      x154f0_33
		subq.w     #1,d1
x154f0_33:
		addq.w     #2,d1
		andi.w     #254,d1
	.IF GBE<372
		tst.b      MergeFlg+1
		bne.s      x154f0_34
		jsr        x1194e.l
	.ENDC
x154f0_34:
		lea.l      20(a6),a0
		adda.w     d0,a0
		movea.w    d0,a4
		moveq.l    #0,d0
		move.w     d1,d0
		jsr        ALLOT.l
		clr.b      -1(a0,d0.w)
		movea.l    a0,a3
		movem.l    (a7),d0-d2/d7/a0-a2
		tst.b      d2
		bne.s      x154f0_35
		subq.l     #1,a3
x154f0_35:
		move.b     d1,(a3)+
		subq.w     #1,d1
x154f0_36:
		move.b     0(a2,d1.w),0(a3,d1.w)
		dbf        d1,x154f0_36
		lea.l      96(a6),a0
		adda.w     a4,a0
		moveq.l    #4,d0
		jsr        ALLOT.l
	.IF GBE<372
		tst.b      MergeFlg+1
		bne.s      x154f0_37
		jsr        x118e2.l
	.ENDC
x154f0_37:
		movem.l    (a7)+,d0-d2/d7/a0-a2
		bra        x154f0_21

x1576c:
		movea.l    a0,a4
		lea.l      1(a4),a5
x1576c_1:
		move.b     (a5)+,(a4)+
		cmpa.l     a4,a1
		bhi.s      x1576c_1
		subq.l     #1,a1
		rts

x1577c:
		movea.l    a1,a4
		lea.l      1(a4),a5
x1577c_1:
		move.b     -(a4),-(a5)
		cmpa.l     a4,a0
		bcs.s      x1577c_1
		addq.l     #1,a1
		rts

x1578c:
		btst       #0,d0
		beq.s      x1578c_1
		move.l     a0,d0
		btst       #0,d0
		beq.s      x1578c_2
		adda.w     #9,a0
		bra        x154f0_3
x1578c_1:
		move.l     a0,d0
		btst       #0,d0
		bne.s      x1578c_3
		addq.l     #8,a0
		bra        x154f0_3
x1578c_2:
		bsr.s      x1576c
		addq.b     #1,-(a0)
		adda.w     #9,a0
		bra        x154f0_3
x1578c_3:
		bsr.s      x1577c
		subq.b     #1,-(a0)
		adda.w     #10,a0
		bra        x154f0_3

skip_arg_spaces:
		move.b     (a0)+,d0
skip_arg_spaces_1:
		cmpi.b     #' ',d0
		beq.s      skip_arg_spaces
		rts

x157d2:
		clr.b      x1585a
		moveq.l    #0,d2
		cmpi.b     #'"',d0
		beq        x157d2_14
x157d2_1:
		cmpi.b     #'+',d0
		beq.s      x157d2_2
		cmpi.b     #'-',d0
		bne.s      x157d2_3
		not.b      x1585a
x157d2_2:
		bsr.s      skip_arg_spaces
		bra.s      x157d2_1
x157d2_3:
		cmpi.b     #'&',d0
		beq.s      x157d2_8
		moveq.l    #(TOK_BIN_CONST-TOK_DEC_CONST)/2,d1
		cmpi.b     #'%',d0
		beq        x157d2_13
		moveq.l    #(TOK_HEX_CONST-TOK_DEC_CONST)/2,d1
		cmpi.b     #'$',d0
		beq.s      x157d2_9
		subi.b     #'0',d0
		cmpi.b     #9,d0
		bhi.s      x157d2_5
		moveq.l    #0,d1
		moveq.l    #15,d2
		and.w      d0,d2
x157d2_4:
		moveq.l    #0,d0
		move.b     (a0)+,d0
		cmpi.b     #'0',d0
		bcs.s      x157d2_6
		cmpi.b     #'9',d0
		bhi.s      x157d2_6
		andi.b     #15,d0
		add.l      d2,d2
		bvs.s      x157d2_5
		add.l      d2,d0
		bvs.s      x157d2_5
		add.l      d2,d2
		bvs.s      x157d2_5
		add.l      d2,d2
		bvs.s      x157d2_5
		add.l      d0,d2
		bvc.s      x157d2_4
x157d2_5:
		moveq.l    #'?',d0
		rts
x157d2_6:
		tst.b      x1585a
		beq.s      x157d2_7
		neg.l      d2
x157d2_7:
		bra        skip_arg_spaces_1

x1585a: .dc.b 0
		.even

x157d2_8:
		move.b     (a0)+,d0
		moveq.l    #(TOK_BIN_CONST-TOK_DEC_CONST)/2,d1
		cmpi.b     #'X',d0
		beq.s      x157d2_13
		moveq.l    #(TOK_OCT_CONST-TOK_DEC_CONST)/2,d1
		cmpi.b     #'O',d0
		beq.s      x157d2_12
		moveq.l    #(TOK_HEX_CONST-TOK_DEC_CONST)/2,d1
		cmpi.b     #'H',d0
		bne.s      x157d2_10
x157d2_9:
		move.b     (a0)+,d0
x157d2_10:
		cmpi.b     #'F',d0
		bhi.s      x157d2_6
		cmpi.b     #'0',d0
		bcs.s      x157d2_6
		cmpi.b     #'9',d0
		bls.s      x157d2_11
		cmpi.b     #'A',d0
		bcs.s      x157d2_5
		subq.b     #7,d0
x157d2_11:
		andi.b     #15,d0
		asl.l      #4,d2
		bcs.s      x157d2_5
		or.b       d0,d2
		bra.s      x157d2_9
x157d2_12:
		move.b     (a0)+,d0
		cmpi.b     #'0',d0
		bcs.s      x157d2_6
		cmpi.b     #'9',d0
		bhi.s      x157d2_6
		andi.b     #7,d0
		asl.l      #3,d2
		bcs.s      x157d2_5
		or.b       d0,d2
		bra.s      x157d2_12
x157d2_13:
		move.b     (a0)+,d0
		cmpi.b     #'0',d0
		bcs.s      x157d2_6
		cmpi.b     #'1',d0
		bhi.s      x157d2_6
		lsr.b      #1,d0
		roxl.l     #1,d2
		bcs        x157d2_5
		bra.s      x157d2_13
x157d2_14:
		moveq.l    #4,d1 /* string constant */
x157d2_15:
		move.b     (a0)+,d0
		cmpi.b     #CR,d0 /* FIXME: handle also LF */
		beq        x157d2_6
		cmpi.b     #'"',d0
		bne.s      x157d2_16
		move.b     (a0)+,d0
		cmpi.b     #'"',d0
		bne        x157d2_6
x157d2_16:
		asl.l      #8,d2
		bcs        x157d2_5
		move.b     -257(a0),d2
		bra.s      x157d2_15

f158f8:
		pea.l      (a0)
		bsr        skip_arg_spaces
		bsr        x157d2
		cmpi.b     #4,d1 /* string constant? */
		beq.s      f158f8_4
f158f8_0:
		cmpi.b     #',',d0
		beq.s      f158f8_2
		cmpi.b     #')',d0
		beq.s      f158f8_2
		cmpi.b     #'T',d0
		beq.s      f158f8_2
		cmpi.b     #'!',d0
		beq.s      f158f8_2
		cmpi.b     #'/',d0
		bne.s      f158f8_1
		cmp.b      (a0),d0
		beq.s      f158f8_2
		cmpi.b     #'*',(a0)
		beq.s      f158f8_2
f158f8_1:
		cmpi.b     #CR,d0
		bne.s      f158f8_4
f158f8_2:
		moveq.l    #TOK_DEC_CONST-256,d3
		subq.l     #1,a0
		add.w      d1,d1
		add.b      d3,d1
		move.b     d1,(a1)+
		move.l     a1,d3
		lsr.l      #1,d3
		bcc.s      f158f8_3 /* odd address? */
		addq.b     #1,-1(a1) /* change into padding token */
		clr.b      (a1)+
f158f8_3:
		move.l     d2,(a1)+ /* write the value */
		moveq.l    #0,d7 /* OK */
		addq.l     #4,a7 /* leave a0 at new src */
		rts
f158f8_4:
		moveq.l    #-1,d7 /* failure */
		movea.l    (a7)+,a0 /* restore src address */
		rts

f1595a:
		pea.l      (a0)
		bsr        skip_arg_spaces
		bsr        x157d2
		cmpi.b     #4,d1 /* string constant? */
		bne.s      f158f8_0
		moveq.l    #-1,d1
		bra.s      f158f8_0

f1596e:
		moveq.l    #0,d0
		bra.s      f15976_0

f15972:
		moveq.l    #2,d0
		bra.s      f15976_0

f15976:
		moveq.l    #4,d0
f15976_0:
		move.b     d0,x15980
		rts

x15980: .dc.b 0
		.even

x15982:
		lea.l      o1364(a6),a0
		move.w     (a0)+,d0
		cmpi.w     #TOK_CMD_GOSUB_IMP*2,d0
		beq.s      x15982_1
		cmpi.w     #TOK_CMD_GOSUB*2,d0
		beq.s      x15982_1
		cmpi.w     #TOK_CMD_GOSUB_EXP*2,d0
		beq.s      x15982_1
		cmpi.w     #TOK_CMD_PROCEDURE*2,d0
x15982_1:
		beq        x15982_33
		cmpi.w     #TOK_CMD_INC_FLOAT*2,d0
		bcs.s      x15982_2
		cmpi.w     #TOK_CMD_DIV_FLOAT*2,d0
		bls        x15982_29
		rts
x15982_2:
		cmpi.w     #TOK_CMD_LET_FLOAT*2,d0
		beq        x15982_8
		cmpi.w     #TOK_CMD_ASSIGN_FLOAT*2,d0
		beq.s      x15982_8
		cmpi.w     #TOK_CMD_FOR_FLOAT*2,d0
		beq.s      x15982_3
		cmpi.w     #TOK_CMD_NEXT_FLOAT*2,d0
		beq.s      x15982_5
		rts
x15982_3:
		moveq.l    #15,d1
		and.b      (a0),d1
		moveq.l    #38,d0
		add.b      x15a04(pc,d1.w),d0
		add.b      x15980.l,d0
		move.b     d0,-1(a0)
		btst       #4,(a0)
		beq.s      x15982_4
		move.b     1(a0),(a0)+
		move.b     1(a0),(a0)+
		lea.l      2(a0),a1
		bra        x15982_16
x15982_4:
		clr.b      (a0)+
		addq.l     #1,a0
		lea.l      1(a0),a1
		bra        x15982_16

x15a04: .dc.b 0,0,6,0,0,0,0,0,12,18

x15982_5:
		addq.l     #4,a0
		moveq.l    #15,d1
		and.b      (a0),d1
		moveq.l    #62,d0
		add.b      x15a04(pc,d1.w),d0
		move.b     d0,-5(a0)
		btst       #4,(a0)
		beq.s      x15982_7
		move.b     1(a0),(a0)+
		move.b     1(a0),(a0)+
x15982_6:
		move.b     #70,(a0)+
		movea.l    a0,a1
		rts
x15982_7:
		clr.b      (a0)+
		addq.l     #1,a0
		bra.s      x15982_6
x15982_8:
		moveq.l    #15,d1
		and.b      (a0),d1
		move.b     x15a76(pc,d1.w),d2
		add.b      d2,-1(a0)
		btst       #4,(a0)
		beq.s      x15982_9
		move.b     1(a0),(a0)+
		move.b     1(a0),(a0)+
		lea.l      1(a0),a1
		cmpi.b     #69,(a1)
		bne.s      x15982_16
		addq.l     #1,a1
		bra.s      x15982_16
x15982_9:
		clr.b      (a0)+
		cmpi.b     #69,1(a0)
		bne.s      x15982_10
		addq.l     #1,a0
		lea.l      1(a0),a1
		bra.s      x15982_16
x15982_10:
		rts

x15a76: dc.b 0,2,4,6,12,14,16,18,8,10,0,0,20,22,0,0

x15982_11:
		moveq.l    #0,d0
		move.b     (a1)+,d0
		move.b     d0,(a0)+
		bra.s      x15982_13
x15982_12:
		move.b     (a1)+,(a0)+
x15982_13:
		dbf        d0,x15982_12
		bra.s      x15982_16
x15982_14:
		cmpi.b     #TOK_REF_FLOAT,d0
		bcs.s      x15982_15
		move.b     (a1)+,(a0)+
x15982_15:
		move.b     (a1)+,(a0)+
x15982_16:
		move.b     (a1)+,d0
		move.b     d0,(a0)+
		cmpi.b     #TOK_LINE_COMMENT,d0
		beq.s      x15982_25
		cmpi.b     #TOK_CHAR_CONST,d0
		bcs.s      x15982_16
		cmpi.b     #TOK_SUBFUNC_214,d0
		bcc.s      x15982_21
		cmpi.b     #TOK_SUBFUNC_208,d0
		bcc.s      x15982_20
		lsr.b      #1,d0
		bcc.s      x15982_17
		move.l     a0,d1
		lsr.b      #1,d1
		bcs.s      x15982_18
		bchg       #0,-1(a0)
		addq.l     #1,a1
		bra.s      x15982_19
x15982_17:
		move.l     a0,d1
		lsr.b      #1,d1
		bcc.s      x15982_19
		bchg       #0,-(a0)
		addq.l     #2,a0
		bra.s      x15982_19
x15982_18:
		move.b     (a1)+,(a0)+
x15982_19:
		move.l     (a1)+,(a0)+
		bra.s      x15982_16
x15982_20:
		move.b     (a1)+,(a0)+
		bra.s      x15982_16
x15982_21:
		cmpi.b     #TOK_DEC_DBL_CONST,d0
		beq.s      x15982_26
		bhi.s      x15982_14
		cmpi.b     #TOK_DEC_DBL_CONST_PAD,d0
		beq.s      x15982_27
		bhi.s      x15982_11
		lsr.b      #1,d0
		bcc.s      x15982_22
		move.l     a0,d1
		lsr.b      #1,d1
		bcs.s      x15982_23
		addq.b     #1,-1(a0)
		addq.l     #1,a1
		bra.s      x15982_24
x15982_22:
		move.l     a0,d1
		lsr.b      #1,d1
		bcc.s      x15982_24
		subq.b     #1,-(a0)
		addq.l     #2,a0
		bra.s      x15982_24
x15982_23:
		move.b     (a1)+,(a0)+
x15982_24:
		move.l     (a1)+,(a0)+
		move.l     (a1)+,(a0)+
		bra.s      x15982_16
x15982_25:
		movea.l    a0,a1
		rts
x15982_26:
		move.l     a0,d1
		lsr.b      #1,d1
		bcc.s      x15982_24
		move.b     #TOK_DEC_DBL_CONST_PAD,-1(a0)
		clr.b      (a0)+
		bra.s      x15982_24
x15982_27:
		move.l     a0,d1
		lsr.b      #1,d1
		bcs.s      x15982_28
		move.b     #TOK_DEC_DBL_CONST,-1(a0)
		addq.l     #1,a1
		bra.s      x15982_24
x15982_28:
		move.b     (a1)+,(a0)+
		bra.s      x15982_24
x15982_29:
		moveq.l    #15,d1
		and.b      (a0),d1
		move.b     x15b9a(pc,d1.w),d2
		add.b      d2,-1(a0)
		btst       #4,(a0)
		beq.s      x15982_30
		move.b     1(a0),(a0)+
		move.b     1(a0),(a0)+
		lea.l      1(a0),a1
		cmpi.b     #TOK_LINE_COMMENT,(a1)
		beq.s      x15982_31
		cmpi.b     #'!',(a1)
		bne        x15982_16
		addq.l     #1,a1
		bra        x15982_16
x15982_30:
		clr.b      (a0)+
		cmpi.b     #TOK_LINE_COMMENT,1(a0)
		beq.s      x15982_32
		cmpi.b     #'!',1(a0)
		bne.s      x15982_32
		addq.l     #1,a0
		lea.l      1(a0),a1
		bra        x15982_16
x15982_31:
		move.b     #TOK_LINE_COMMENT,(a0)+
x15982_32:
		rts

x15b9a: .dc.b 0,0,2,0,8,0,10,0,4,6,0,0,12,14,0,0

x15982_33:
		cmpi.b     #240,(a0)
		bcs.s      x15982_34
		move.b     1(a0),(a0)+
		move.b     1(a0),(a0)+
		lea.l      1(a0),a1
		bra        x15982_16
x15982_34:
		clr.b      (a0)
		rts

x15bc4: .dc.b TYPE_INT,TYPE_FLOAT,TYPE_BYTE,TYPE_WORD,TYPE_BOOL,TYPE_STRING

execute_defint:
		movem.l    a0-a1,-(a7)
		lea.l      deftype(pc),a1
		lea.l      o1364(a6),a0
		move.w     (a0)+,d0
		subi.w     #TOK_CMD_DEFINT*2,d0
		lsr.w      #1,d0
		move.b     x15bc4(pc,d0.w),d0
		addq.l     #1,a0
		move.b     (a0)+,d1
execute_defint_1:
		subq.b     #1,d1
		bpl.s      execute_defint_3
execute_defint_2:
		movem.l    (a7)+,a0-a1
		rts
execute_defint_3:
		move.b     (a0)+,d2
		cmpi.b     #',',d2
		beq.s      execute_defint_1
		cmpi.b     #' ',d2
		beq.s      execute_defint_1
		andi.w     #0x00DF,d2 /* make it uppercase */
		cmpi.b     #'A',d2
		bcs.s      execute_defint_2
		cmpi.b     #'Z',d2
		bhi.s      execute_defint_2
		move.b     d0,-65(a1,d2.w)
		cmpi.b     #'-',(a0)
		bne.s      execute_defint_1
		addq.l     #1,a0
		move.b     (a0)+,d3
		andi.w     #0x00DF,d3 /* make it uppercase */
		subq.b     #2,d1
		bmi.s      execute_defint_2
		cmpi.w     #'A',d3
		bcs.s      execute_defint_2
		cmpi.w     #'Z',d3
		bhi.s      execute_defint_2
		cmp.w      d2,d3
		bhi.s      execute_defint_4
		exg        d3,d2
execute_defint_4:
		move.b     d0,-65(a1,d2.w)
		addq.b     #1,d2
		cmp.w      d3,d2
		bls.s      execute_defint_4
		bra.s      execute_defint_1

x15c42: .dc.w 0

x15c44:
		rts

x15c46:
		.dc.b 0xf0,0xf1,0xf2,0xf3,0xf8,0xf9,0xf4,0xf5,0xf6,0xf7,0xfc,0xfd

x15c52:
		tst.b      x1181a
		bne.s      x15c44
		move.w     (a1)+,d7
		moveq.l    #0,d0
		move.w     (a1)+,d0
		move.w     d0,-(a7)
		pea.l      -4(a1,d7.w) /* start of next line */
		lea.l      o850(a6),a0
		lsr.w      #1,d0
		move.w     d0,d6
		lea.l      cmd_table_offsets(a6),a3
		move.w     0(a3,d0.w),d1
		beq        x15c52_8
		lea.l      jmpbase(pc),a3
		adda.w     d1,a3
		moveq.l    #0,d1
		move.b     (a3)+,d1
		move.b     (a3)+,(a0)+
		bra.s      x15c52_3
x15c52_1:
		move.b     (a3)+,d0
		cmpi.b     #'A',d0
		bcs.s      x15c52_2
		cmpi.b     #'Z',d0
		bhi.s      x15c52_2
		add.b      8398(a6),d0
x15c52_2:
		move.b     d0,(a0)+
x15c52_3:
		dbf        d1,x15c52_1
		move.w     d6,d0
		lsr.w      #1,d0
		move.w     d0,d1
		lsr.w      #3,d1
		lea.l      x1634c(pc),a2
		btst       d0,0(a2,d1.w)
		bne.s      x15c52_4
		move.b     #' ',(a0)+
x15c52_4:
		cmpi.w     #TOK_CMD_REM*2,d6
		beq.s      x15c52_5
		cmpi.w     #TOK_CMD_COMMENT*2,d6
		beq.s      x15c52_5
		cmpi.w     #TOK_CMD_SYNERR*2,d6
		beq.s      x15c52_5
		cmpi.w     #TOK_CMD_DATA*2,d6
		beq.s      x15c52_5
		cmpi.w     #TOK_CMD_DOT*2,d6
		beq.s      x15c52_5
		cmpi.w     #TOK_CMD_DOLLAR*2,d6
x15c52_5:
		beq        x15c52_27
		cmpi.w     #TOK_CMD_LET_FLOAT*2,d6
		bcc.s      x15c52_8
		cmpi.w     #TOK_CMD_DO_WHILE*2,d6
		bcs.s      x15c52_6
		cmpi.w     #TOK_CMD_LOOP_UNTIL*2,d6
		bls.s      x15c52_7
x15c52_6:
		cmpi.w     #TOK_CMD_LOOP*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_UNTIL*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_WHILE*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_WEND*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_IF*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_SELECT*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_SELECT_STR*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_ELSE*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_DEFAULT*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_ELSEIF*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_EXITIF2*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_CASE*2,d6
		beq.s      x15c52_7
		cmpi.w     #TOK_CMD_NEXT_FLOAT*2,d6
		bcs.s      x15c52_8
		cmpi.w     #TOK_CMD_EXITIF*2,d6
		bhi.s      x15c52_8
x15c52_7:
		addq.l     #4,a1
x15c52_8:
		cmpi.w     #TOK_CMD_PROCEDURE*2,d6
		beq        x16338
		cmpi.w     #TOK_CMD_FLAPPED_PROCEDURE*2,d6
		beq        x16338
		cmpi.w     #TOK_CMD_FOR_FLOAT*2,d6
		bcs.s      x15c52_13
		cmpi.w     #TOK_CMD_GOSUB_IMP*2,d6
		beq.s      x15c52_9
		cmpi.w     #TOK_CMD_GOSUB*2,d6
		beq.s      x15c52_9
		cmpi.w     #TOK_CMD_GOSUB_EXP*2,d6
		bne.s      x15c52_10
x15c52_9:
		bra        x16338_1
x15c52_10:
		cmpi.w     #TOK_CMD_NEXT_FLOAT*2,d6
		bcs        x162f2
		cmpi.w     #TOK_CMD_EXITIF*2,d6
		bcs        x162fc
		cmpi.w     #TOK_CMD_INC_FLOAT*2,d6
		bcs.s      x15c52_11
		cmpi.w     #TOK_CMD_DIV_BYTE_ARR*2,d6
		bls        x16318
x15c52_11:
		cmpi.w     #TOK_CMD_LET_FLOAT*2,d6
		bcs.s      x15c52_13
		cmpi.w     #TOK_CMD_ASSIGN_BYTE_ARR*2,d6
		bhi.s      x15c52_13
		move.w     d6,d1
		subi.w     #TOK_CMD_ASSIGN_FLOAT*2,d1
		bpl.s      x15c52_12
		addi.w     #24,d1
x15c52_12:
		lsr.w      #1,d1
		cmpi.w     #6,d1
		bcc.s      x15c52_46
		move.b     #'=',8400(a6)
x15c52_46:
		lea.l      x15c46(pc),a3
		moveq.l    #0,d0
		move.b     0(a3,d1.w),d0
		bra.s      x15c52_14
x15c52_13:
		moveq.l    #0,d0
		move.b     (a1)+,d0
x15c52_14:
		cmpi.b     #TOK_LINE_COMMENT,d0
		beq.s      x15c52_19
		cmpi.b     #55,d0
		beq.s      x15c52_13
		cmpi.b     #TOK_SUBFUNC_214,d0
	.IFNE GBE
		bhi        x15c52_28
	.ELSE
		bcc        x15c52_28
	.ENDC
		cmpi.b     #TOK_CHAR_CONST,d0
		bcc        x162ac
		lea.l      x15fe8(pc),a3
		move.w     d0,d1
		lsr.w      #3,d1
		btst       d0,0(a3,d1.w)
		beq.s      x15c52_15
		move.b     #' ',(a0)+
x15c52_15:
		add.w      d0,d0
		lea.l      func_table_offsets(a6),a3
		move.w     0(a3,d0.w),d1
		beq.s      x15c52_19
		lea.l      jmpbase(pc),a3
		adda.w     d1,a3
		moveq.l    #0,d1
		move.b     (a3)+,d1
		move.b     (a3)+,(a0)+
		bra.s      x15c52_18
x15c52_16:
		move.b     (a3)+,d0
		cmpi.b     #'A',d0
		bcs.s      x15c52_17
		cmpi.b     #'Z',d0
		bhi.s      x15c52_17
		add.b      8398(a6),d0
x15c52_17:
		move.b     d0,(a0)+
x15c52_18:
		dbf        d1,x15c52_16
		lea.l      x16008(pc),a3
		moveq.l    #0,d0
		move.b     -1(a1),d0
		move.w     d0,d1
		lsr.w      #3,d1
		btst       d0,0(a3,d1.w)
		beq.s      x15c52_13
		move.b     #' ',(a0)+
		bra.s      x15c52_13
x15c52_19:
		cmpi.b     #' ',-(a0)
		beq.s      x15c52_20
		addq.l     #1,a0
x15c52_20:
		cmpi.w     #TOK_CMD_INLINE*4,4(a7)
		beq.s      x15c52_25
		move.l     a1,d0
		addq.l     #1,d0
		bclr       #0,d0 /* make next address even */
		movea.l    d0,a1
		cmpa.l     (a7),a1
		bcc.s      x15c52_25
		moveq.l    #0,d0
		move.b     (a1)+,d0
		bra.s      x15c52_21
x15c52_44:
		move.b     #' ',(a0)+
x15c52_21:
		dbf        d0,x15c52_44
		btst       #3,8399(a6)
		beq.s      x15c52_22
		move.b     #'/',(a0)+
		move.b     #'*',(a0)+
		bra.s      x15c52_24
x15c52_22:
		btst       #2,8399(a6)
		beq.s      x15c52_23
		move.b     #'/',(a0)+
		move.b     #'/',(a0)+
		bra.s      x15c52_24
x15c52_23:
		move.b     #'!',(a0)+
x15c52_24:
		cmpi.b     #EOL,(a1)
		beq.s      x15c52_25
		move.b     (a1)+,(a0)+
		bra.s      x15c52_24
x15c52_25:
		move.b     #CR,(a0)+
		move.b     #NL,(a0)+
		clr.b      (a0)
		movea.l    (a7)+,a1
		addq.l     #2,a7
		rts
x15c52_26:
		move.b     d0,(a0)+
x15c52_27:
		move.b     (a1)+,d0
		cmpi.b     #EOL,d0
		bne.s      x15c52_26
		bra.s      x15c52_19
x15c52_28:
		cmpi.b     #TOK_DEC_DBL_CONST_PAD,d0
		beq.s      x15c52_32
		cmpi.b     #TOK_STRING_CONST,d0
		beq.s      x15c52_29
		cmpi.b     #TOK_DEC_DBL_CONST,d0
		beq.s      x15c52_33
		bhi.s      x15c52_34
		bra        x16028
x15c52_29:
		move.b     #'"',(a0)+
		moveq.l    #0,d0
		move.b     (a1)+,d0
		beq.s      x15c52_31
		subq.w     #1,d0
x15c52_30:
		move.b     (a1)+,d1
		move.b     d1,(a0)+
		cmpi.b     #'"',d1
		dbeq       d0,x15c52_30
		bne.s      x15c52_31
		move.b     d1,(a0)+
		dbf        d0,x15c52_30
x15c52_31:
		move.b     #'"',(a0)+
		bra        x15c52_13
x15c52_32:
		addq.l     #1,a1
x15c52_33:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		bsr        print_float
		bra        x15c52_13
x15c52_34:
		moveq.l    #0,d1
		cmpi.b     #TOK_REF_FLOAT,d0
		bcs.s      x15c52_35
		move.b     (a1)+,-(a7)
		move.w     (a7)+,d1
x15c52_35:
		move.b     (a1)+,d1
		andi.w     #15,d0
		add.w      d0,d0
		add.w      d0,d0
		lea.l      ptr_table(a6),a2
		movea.l    0(a2,d0.w),a2
		moveq.l    #0,d2
		lsr.w      #1,d1
		bcc.s      x15c52_36
		move.b     (a2)+,d2
		adda.l     d2,a2
x15c52_36:
		lsr.w      #1,d1
		bcc.s      x15c52_38
		move.b     (a2)+,d2
		adda.l     d2,a2
		move.b     (a2)+,d2
		adda.l     d2,a2
		bra.s      x15c52_38
x15c52_37:
		move.b     (a2)+,d2
		adda.l     d2,a2
		move.b     (a2)+,d2
		adda.l     d2,a2
		move.b     (a2)+,d2
		adda.l     d2,a2
		move.b     (a2)+,d2
		adda.l     d2,a2
x15c52_38:
		dbf        d1,x15c52_37
		move.b     (a2)+,d2
		subq.w     #1,d2
		move.b     (a2),8401(a6)
		tst.b      8398(a6)
		beq.s      x15c52_39
		move.b     (a2)+,(a0)+
		subq.w     #1,d2
		bmi.s      x15c52_40
x15c52_39:
		move.b     (a2)+,d1
		cmpi.b     #'A',d1
		bcs.s      x15c52_45
		cmpi.b     #'Z',d1
		bhi.s      x15c52_45
		addi.b     #' ',d1
x15c52_45:
		move.b     d1,(a0)+
		dbf        d2,x15c52_39
x15c52_40:
		lsr.w      #1,d0
		btst       #1,8399(a6)
		bne.s      x15c52_41
		moveq.l    #0,d2
		move.b     8401(a6),d2
		pea.l      (a0)
		lea.l      deftype(pc),a0
		move.b     -65(a0,d2.w),d2
		movea.l    (a7)+,a0
		add.b      d2,d2
		cmp.b      d0,d2
		beq.s      x15c52_42
		addq.b     #8,d2
		cmp.b      d0,d2
		beq.s      x15c52_42
x15c52_41:
		move.b     x15fc8(pc,d0.w),d2
		beq.s      x15c52_42
		move.b     d2,(a0)+
x15c52_42:
		move.b     x15fc8+1(pc,d0.w),d2
		beq.s      x15c52_43
		move.b     d2,(a0)+
x15c52_43:
		move.b     8400(a6),d0
		beq        x15c52_13
		clr.b      8400(a6)
		move.b     d0,(a0)+
		bra        x15c52_13

x15fc8:
		.dc.b '#',0
		.dc.b '$',0
		.dc.b '%',0
		.dc.b '!',0
		.dc.b '#','('
		.dc.b '$','('
		.dc.b '%','('
		.dc.b '!','('
		.dc.b '&',0
		.dc.b '|',0
		.dc.b 0,0
		.dc.b 0,0
		.dc.b '&','('
		.dc.b '|','('
		.dc.b 0,0
		.dc.b 0,'$'

x15fe8:
		.dc.b 0x1f,0x0c,0x00,0x00,0x00,0x00,0x00,0x00
		.dc.b 0x80,0x1f,0x00,0x00,0x00,0x30,0x04,0x00
		.dc.b 0x00,0x00,0x00,0x04,0x00,0x00,0x00,0x00
		.dc.b 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

x16008:
		.dc.b 0x1f,0x0c,0x00,0x80,0x00,0x00,0x04,0x00
		.dc.b 0x80,0x1f,0x00,0x04,0x01,0x30,0x04,0x00
		.dc.b 0x00,0x00,0x00,0x44,0x88,0x38,0x40,0x00
		.dc.b 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

x16028:
		move.b     #'&',(a0)+
		subi.b     #TOK_OCT_DBL_CONST,d0
		bmi.s      x16028_2
		beq.s      x16028_3
		subq.b     #2,d0
		bmi.s      x16028_4
		beq.s      x16028_5
		subq.b     #2,d0
		beq.s      x16028_1
		addq.l     #1,a1
x16028_1:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		.IFNE GBE
		jsr FFTOI.l
		.ELSE
		jsr        extjmp_table+19*6(a6) /* -> FFTOI */
		.ENDC
		bsr        print_hex
		bra        x15c52_13
x16028_2:
		addq.l     #1,a1
x16028_3:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		.IFNE GBE
		jsr FFTOI.l
		.ELSE
		jsr        extjmp_table+19*6(a6) /* -> FFTOI */
		.ENDC
		bsr        print_oct
		bra        x15c52_13
x16028_4:
		addq.l     #1,a1
x16028_5:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		.IFNE GBE
		jsr FFTOI.l
		.ELSE
		jsr        extjmp_table+19*6(a6) /* -> FFTOI */
		.ENDC
		bsr        print_bin
		bra        x15c52_13

x1607a:
		lea.l      func_table_offsets(a6),a0
	.IFNE GBE
		move.w     #(5384/2)-1,d0
	.ELSE
		move.w     #(1952/2)-1,d0
	.ENDC
x1607a_1:
		clr.w      (a0)+
		dbf        d0,x1607a_1
		lea.l      func_table_offsets(a6),a0
		lea.l      func_misc_table(pc),a1
		moveq.l    #0,d0
x1607a_2:
		move.b     (a1),d0
		bmi.s      x1607a_4
		moveq.l    #0,d1
		move.b     3(a1,d0.w),d1
		move.b     2(a1,d0.w),d2
		beq.s      x1607a_3
	.IFNE GBE
		addi.w     #256,d1
		cmp.b      #TOK_SUBFUNC_208,d2
		beq.s      x1607a_3
		addi.w     #256,d1
		cmp.b      #TOK_SUBFUNC_209,d2
		beq.s      x1607a_3
		addi.w     #256,d1
		cmp.b      #TOK_SUBFUNC_210,d2
		beq.s      x1607a_3
		addi.w     #256,d1
		cmp.b      #TOK_SUBFUNC_211,d2
		beq.s      x1607a_3
		addi.w     #256,d1
		cmp.b      #TOK_SUBFUNC_212,d2
		beq.s      x1607a_3
		addi.w     #256,d1
		cmp.b      #TOK_SUBFUNC_213,d2
		beq.s      x1607a_3
		addi.w     #256,d1
	.ELSE
		addi.w     #TOK_REF_FLOAT_SHORT,d1
	.ENDC
x1607a_3:
		add.w      d1,d1
		move.l     a1,d2
		subi.l     #jmpbase,d2
		move.w     d2,0(a0,d1.w)
		lea.l      4(a1,d0.w),a1
		bra.s      x1607a_2
x1607a_4:
		lea.l      cmd_table_offsets(a6),a0
	.IF GBE>=373
		lea.l      cmd_table,a1
	.ELSE
		lea.l      cmd_table(pc),a1
	.ENDIF
		moveq.l    #0,d0
x1607a_5:
		move.b     (a1),d0
		bmi.s      x1607a_6
		moveq.l    #0,d1
		move.b     2(a1,d0.w),d1
		asl.w      #8,d1
		move.b     3(a1,d0.w),d1
		move.l     a1,d2
		subi.l     #jmpbase,d2
		move.w     d2,0(a0,d1.w)
		lea.l      6(a1,d0.w),a1
		bra.s      x1607a_5
x1607a_6:
		lea.l      func_table_offsets(a6),a0
		move.w     #MAX_FUNCS-1,d0
x1607a_7:
		move.w     (a0)+,d1
		bne.s      x1607a_8
		move.w     -4(a0),-2(a0)
x1607a_8:
		dbf        d0,x1607a_7
		lea.l      cmd_table_offsets(a6),a0
		move.w     #MAX_CMDS-1,d0
x1607a_9:
		move.w     (a0)+,d1
		bne.s      x1607a_10
		move.w     -4(a0),-2(a0)
x1607a_10:
		dbf        d0,x1607a_9
		lea.l      cmd_table_offsets(a6),a0
		clr.w      TOK_CMD_LABEL*2(a0)
		clr.w      TOK_CMD_GOSUB_IMP*2(a0)
		adda.w     #TOK_CMD_ASSIGN_FLOAT*2,a0
		moveq.l    #12-1,d0
x1607a_11:
		clr.w      (a0)+
		dbf        d0,x1607a_11
		rts

x1612c:
		subq.b     #1,d1
		bmi.s      x1612c_4
		beq.s      x1612c_7
		subq.b     #2,d1
		bmi.s      x1612c_5
		beq.s      x1612c_6
		move.b     #'"',(a0)+
		moveq.l    #3,d0
x1612c_1:
		rol.l      #8,d2
		move.b     d2,(a0)
		beq.s      x1612c_3
		cmpi.b     #'"',d2
		bne.s      x1612c_2
	.IFNE GBE
		addq.l     #1,a0
		move.b     d2,(a0)
	.ELSE
		move.b     d2,(a0)+
	.ENDC
x1612c_2:
		addq.l     #1,a0
x1612c_3:
		dbf        d0,x1612c_1
		move.b     #'"',(a0)+
		rts
x1612c_4:
		move.l     d2,d0
		bra        print_dec
x1612c_5:
		move.b     #'&',(a0)+
		move.l     d2,d0
		bra.s      print_oct
x1612c_6:
		move.b     #'&',(a0)+
		move.l     d2,d0
		bra.s      print_bin
x1612c_7:
		move.b     #'&',(a0)+
		move.l     d2,d0

print_hex:
		move.b     #'H',(a0)+
		tst.l      d0
		beq.s      print_hex_4
		moveq.l    #7,d1
print_hex_1:
		cmpi.l     #0x10000000,d0
		bcc.s      print_hex_2
		asl.l      #4,d0
		dbf        d1,print_hex_1
print_hex_2:
		rol.l      #4,d0
		move.b     d0,d2
		andi.b     #15,d2
		ori.b      #'0',d2
		cmpi.b     #'9',d2
		bls.s      print_hex_3
		addq.b     #7,d2
print_hex_3:
		move.b     d2,(a0)+
		dbf        d1,print_hex_2
		rts
print_hex_4:
		move.b     #'0',(a0)+
		rts

print_oct:
		move.b     #'O',(a0)+
		tst.l      d0
		beq.s      print_hex_4
		moveq.l    #9,d1
		rol.l      #2,d0
		move.b     d0,d2
		andi.b     #3,d2
		beq.s      print_oct_1
		addq.w     #1,d1
		bra.s      print_oct_2
print_oct_1:
		rol.l      #3,d0
		move.b     d0,d2
		andi.b     #7,d2
		bne.s      print_oct_2
		dbf        d1,print_oct_1
print_oct_2:
		andi.b     #7,d2
		ori.b      #'0',d2
		move.b     d2,(a0)+
		rol.l      #3,d0
		move.b     d0,d2
		dbf        d1,print_oct_2
		rts

print_bin:
		move.b     #'X',(a0)+
		moveq.l    #31,d1
		tst.l      d0
		beq.s      print_hex_4
		bra.s      print_bin_2
print_bin_1:
		add.l      d0,d0
print_bin_2:
		dbmi       d1,print_bin_1
print_bin_3:
		add.l      d0,d0
		moveq.l    #'0'/2,d2
		addx.b     d2,d2
		move.b     d2,(a0)+
		dbf        d1,print_bin_3
		rts

print_dec:
		cmpi.l     #10000,d0
		bcc.s      print_int
		divu.w     #100,d0
		move.w     d0,d1
		swap       d0
		ext.l      d0
		ext.l      d1
		divu.w     #10,d0
		divu.w     #10,d1
		tst.w      d1
		beq.s      print_dec_1
		ori.l      #0x20302030,d1 /* ' 0 0' */
		bra.s      print_dec_3
print_dec_1:
		tst.l      d1
		beq.s      print_dec_2
		ori.l      #0x30300000,d1
		bra.s      print_dec_3
print_dec_2:
		tst.w      d0
		beq.s      print_dec_4
print_dec_3:
		ori.l      #0x20302030,d0 /* ' 0 0' */
print_dec_4:
		ori.l      #0x30300000,d0
		move.b     d1,(a0)
		beq.s      print_dec_5
		addq.l     #1,a0
print_dec_5:
		swap       d1
		move.b     d1,(a0)
		beq.s      print_dec_6
		addq.l     #1,a0
print_dec_6:
		move.b     d0,(a0)
		beq.s      print_dec_7
		addq.l     #1,a0
print_dec_7:
		swap       d0
		move.b     d0,(a0)+
		rts

print_int:
		jsr        FITOF.l
print_float:
		movem.l    a0-a1,-(a7)
		st         decimal_digits(a6)
		jsr        Fstr.l
		sf         decimal_digits(a6)
		movea.l    a0,a2
		movem.l    (a7)+,a0-a1
		cmpi.b     #' ',(a2)
		bne.s      print_float_1
		addq.l     #1,a2
print_float_1:
		move.b     (a2)+,(a0)+
		bne.s      print_float_1
		subq.l     #1,a0
		rts

x16294:
		lsr.b      #1,d0
		bcc.s      x16294_1
		addq.l     #1,a1
x16294_1:
		move.l     (a1)+,d2
		moveq.l    #-100,d1
		add.b      d0,d1
		bpl.s      x16294_2
		moveq.l    #4,d1
x16294_2:
		bsr        x1612c
		bra        x15c52_13

x162ac:
	.IFNE GBE
		cmp.b      #TOK_SUBFUNC_208,d0
		beq.s      x162ac_208
		cmp.b      #TOK_SUBFUNC_209,d0
		beq.s      x162ac_209
		cmp.b      #TOK_SUBFUNC_210,d0
		beq.s      x162ac_210
		cmp.b      #TOK_SUBFUNC_211,d0
		beq.s      x162ac_211
		cmp.b      #TOK_SUBFUNC_212,d0
		beq.s      x162ac_212
		cmp.b      #TOK_SUBFUNC_213,d0
		beq.s      x162ac_213
		cmp.b      #TOK_SUBFUNC_214,d0
		bne.s      x16294
		move.w     #7*256,d0
		bra.s      x162ac_cont
x162ac_213:
		move.w     #6*256,d0
		bra.s      x162ac_cont
x162ac_212:
		move.w     #5*256,d0
		bra.s      x162ac_cont
x162ac_211:
		move.w     #4*256,d0
		bra.s      x162ac_cont
x162ac_210:
		move.w     #3*256,d0
		bra.s      x162ac_cont
x162ac_209:
		move.w     #2*256,d0
		bra.s      x162ac_cont
x162ac_208:
		move.w     #1*256,d0
x162ac_cont:
		move.b     (a1)+,d0
	.ELSE
		cmpi.b     #TOK_SUBFUNC_208,d0
		bne.s      x16294
		moveq.l    #0,d0
		move.b     (a1)+,d0
		addi.w     #224,d0
	.ENDIF
		add.w      d0,d0
		lea.l      func_table_offsets(a6),a3
		move.w     0(a3,d0.w),d1
		beq        x15c52_19
		lea.l      jmpbase(pc),a3
		adda.w     d1,a3
		moveq.l    #0,d1
		move.b     (a3)+,d1
		move.b     (a3)+,(a0)+
		bra.s      x162ac_3
x162ac_1:
		move.b     (a3)+,d0
		cmpi.b     #'A',d0
		bcs.s      x162ac_2
		cmpi.b     #'Z',d0
		bhi.s      x162ac_2
		add.b      8398(a6),d0
x162ac_2:
		move.b     d0,(a0)+
x162ac_3:
		dbf        d1,x162ac_1
		bra        x15c52_13

x162f2:
		move.b     #'=',8400(a6)
		moveq.l    #-38,d1
		bra.s      x162fc_1

x162fc:
		moveq.l    #-62,d1
x162fc_1:
		add.w      d6,d1
		ext.l      d1
		divu.w     #6,d1
		moveq.l    #0,d0
		move.b     x16310(pc,d1.w),d0
		bra        x15c52_14

x16310:
		.dc.b 0xf0,0xf2,0xf8,0xf9,0xf4,0xf6,0xfc,0xfd

x16318:
		moveq.l    #14,d1
		and.w      d6,d1
		lsr.w      #1,d1
		moveq.l    #0,d0
		move.b     x16310(pc,d1.w),d0
		subq.w     #4,d1
		bge.s      x16318_1
		cmpi.w     #350,d6
		bls.s      x16318_1
		move.b     #',',8400(a6)
x16318_1:
		bra        x15c52_14

x16338:
		cmpi.b     #TOK_LINE_COMMENT,2(a1)
		beq.s      x16338_1
		move.b     #'(',8400(a6)
x16338_1:
		moveq.l    #-5,d0
		bra        x15c52_14

x1634c:
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x50
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x0e
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x03,0xf0
		.dc.b 0xff,0x3f
		.dc.b 0xfe,0x5f
		.dc.b 0x00,0x48
		.dc.b 0x1e,0x00
		.dc.b 0x00,0x00
		.dc.b 0x02,0x00
		.dc.b 0x40,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0xc0,0x19
		.dc.b 0x04,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00

/* subfunction of FSINQ; seems to be unused */
fsin: /* 1638c */
		move.l     d1,d2
		lsr.l      #1,d2
		cmp.l      d2,d0
		bcs.s      fsin_1
		sub.l      d0,d1
		move.l     d1,d0
fsin_1:
		moveq.l    #15,d3
		and.w      d0,d3
		sub.w      d3,d0
		lsr.l      #2,d0
		moveq.l    #0,d1
		move.w     #1024-1,d2
		movem.l    sintable(pc,d0.w),d0/d4
		sub.l      d0,d4
		lsr.l      #4,d4
		bra.s      fsin_3
fsin_2:
		add.l      d4,d0
fsin_3:
		dbf        d3,fsin_2
		tst.l      d0
		bne.s      fsin_5
		moveq.l    #0,d2
		rts
fsin_4:
		subq.w     #1,d2
		add.l      d0,d0
fsin_5:
		bpl.s      fsin_4
		rts

sintable:
		.dc.l 0x00000000,0x023be165
		.dc.l 0x04779632,0x06b2f1d2
		.dc.l 0x08edc7b6,0x0b27eb5c
		.dc.l 0x0d61304d,0x0f996a26
		.dc.l 0x11d06c96,0x14060b67
		.dc.l 0x163a1a7e,0x186c6ddd
		.dc.l 0x1a9cd9ac,0x1ccb3236
		.dc.l 0x1ef74bf2,0x2120fb83
		.dc.l 0x234815ba,0x256c6f9f
		.dc.l 0x278dde6e,0x29ac37a0
		.dc.l 0x2bc750e9,0x2ddf003f
		.dc.l 0x2ff31bde,0x32037a45
		.dc.l 0x340ff242,0x36185aee
		.dc.l 0x381c8bb5,0x3a1c5c56
		.dc.l 0x3c17a4e8,0x3e0e3ddc
		.dc.l 0x40000000,0x41ecc484
		.dc.l 0x43d464fb,0x45b6bb5e
		.dc.l 0x4793a210,0x496af3e2
		.dc.l 0x4b3c8c12,0x4d084651
		.dc.l 0x4ecdfec7,0x508d9211
		.dc.l 0x5246dd49,0x53f9be05
		.dc.l 0x55a6125b,0x574bb8e6
		.dc.l 0x58ea90c3,0x5a82799a
		.dc.l 0x5c13539b,0x5d9cff83
		.dc.l 0x5f1f5ea1,0x609a52d2
		.dc.l 0x620dbe8b,0x637984d4
		.dc.l 0x64dd8950,0x6639b03a
		.dc.l 0x678dde6e,0x68d9f964
		.dc.l 0x6a1de737,0x6b598ea3
		.dc.l 0x6c8cd70b,0x6db7a87a
		.dc.l 0x6ed9eba1,0x6ff389df
		.dc.l 0x71046d3e,0x720c8075
		.dc.l 0x730baeed,0x7401e4c1
		.dc.l 0x74ef0ebc,0x75d31a61
		.dc.l 0x76adf5e6,0x777f903c
		.dc.l 0x7847d909,0x7906c0b0
		.dc.l 0x79bc384d,0x7a6831ba
		.dc.l 0x7b0a9f8e,0x7ba3751d
		.dc.l 0x7c32a67e,0x7cb82885
		.dc.l 0x7d33f0ca,0x7da5f5a5
		.dc.l 0x7e0e2e32,0x7e6c9251
		.dc.l 0x7ec11aa5,0x7f0bc097
		.dc.l 0x7f4c7e54,0x7f834ed0
		.dc.l 0x7fb02dc6,0x7fd317b4
		.dc.l 0x7fec09e3,0x7ffb0260
		.dc.l 0x80000000

x16534:
		move.l     #0x00008000,d1
		move.l     d1,-(a7)
		move.w     #72,-(a7) /* Malloc */
		trap       #1
		addq.l     #2,a7
		move.l     d0,d1
		ble.s      x16534_2
		andi.b     #1,d1
		bne.s      x16534_2
		move.l     (a7)+,d1
	.IFNE GBE /* zzz */
		lea.l      x16782,a0
	.ELSE
		lea.l      x16782(pc),a0
	.ENDC
		move.l     d0,(a0)
		move.l     d1,-(a7)
		move.l     d0,-(a7)
		clr.w      -(a7)
		move.w     #74,-(a7) /* Mshrink */
		trap       #1
		lea.l      12(a7),a7
		tst.l      d0
		bmi.s      x16534_3
	.IFNE GBE /* zzz */
		movea.l    x16782,a0
	.ELSE
		movea.l    x16782(pc),a0
	.ENDC
		move.w     #0x1FFF,d0
x16534_1:
		clr.l      (a0)+
		dbf        d0,x16534_1
		rts
x16534_2:
		addq.l     #4,a7
x16534_3:
	.IFNE GBE /* zzz */
		lea.l      x16782,a0
	.ELSE
		lea.l      x16782(pc),a0
	.ENDC
		clr.l      (a0)
		rts

find_mtask:
		moveq.l    #0,d1
		movea.l    (0x000005A0).w,a0
		move.l     a0,d0
		beq.s      find_mtask2
find_mtask1:
		move.l     (a0)+,d1
		move.l     (a0)+,d0
		cmpi.l     #0x4D616758,d1 /* 'MagX' */
		beq.s      find_mtask3
		cmpi.l     #0x4D694E54,d1 /* 'MiNT' */
		beq.s      find_mtask3
		tst.l      d1
		bne.s      find_mtask1
find_mtask2:
		moveq.l    #0,d0
find_mtask3:
	.IFNE GBE /* zzz */
		lea.l      mtask,a0
	.ELSE
		lea.l      mtask(pc),a0
	.ENDC
		move.w     d0,(a0)
		rts

	.data

newvar_msg:
		.ascii "Neue Variable"
		.dc.b 0
newproc_msg:
		.ascii "Neue Procedure"
		.dc.b 0
newfunc_msg:
		.ascii "Neue Function"
		.dc.b 0
newlab_msg:
		.ascii "Neues Label"
		.dc.b 0
error_str:
		.ascii "Error"
		.dc.b 0
stack_overflow_msg:
		.ascii "Stack overflow"
		.dc.b 0
notalst_msg:
		.ascii "This is not LST file"
		.dc.b 0
open_err_msg:
		.ascii "Open error"
		.dc.b 0
save_err_msg:
		.ascii "Save error"
		.dc.b 0
load_err_msg:
		.ascii "Load error"
		.dc.b 0
usage_msg:
		.ascii "Usage: LST2GFA.TTP filename.LST"
		.dc.b 0
att_msg:
		.dc.b ' ','!',13,10,0
version_msg:
		.ascii "LST to GFA version 1.02"
crnl:
		.dc.b 13,10,0
bytes_msg:
		.ascii " bytes -> "
		.dc.b 0
exitcode_msg:
		.ascii " bytes. Exit code: "
		.dc.b 0
file_msg:
		.ascii "File "
		.dc.b 0
already_exists_msg:
		.ascii " already exist !"
		.dc.b 13,10,0
deleted_file_msg:
		.ascii "Deleted file "
		.dc.b 0
renamed_file_msg:
		.ascii "Renamed file "
		.dc.b 0
to_msg:
		.ascii " to "
		.dc.b 0
lines_msg:
		.ascii " lines "
		.dc.b 0
reading_msg:
		.ascii " Reading "
		.dc.b 0
inline_msg:
		.ascii "INLINE "
		.dc.b 0
bytes_read_msg:
		.ascii " bytes read."
		.dc.b 13,10,0
cannot_open_msg:
		.ascii " cannot be open."
		.dc.b 13,10,0
cannot_read_msg:
		.ascii " cannot be read."
		.dc.b 13,10,0
cannot_close_msg:
		.ascii " cannot be closed,"
		.dc.b 0
not_inline_msg:
		.ascii " This is not INLINE command:"
		.dc.b 13,10,' ',0
waitkey_msg:
		.ascii " Press any key to exit..."
		.dc.b 13,10,0

/* ph_blen = 0x00001034 */

	.bss

x16768:   .ds.b 16
x16778:   .ds.l 1
columns:  .ds.w 1  /* 1677c */
mtask:    .ds.w 1  /* 1677e */
x16780:   .ds.w 1
x16782:   .ds.l 1
x16786:   .ds.b 4096
          .ds.b 22

bss_end: /* 1779c */

/* a6:
0: error_jmp
8: file_buffer
12: file_buffer_size
16: variable table
490: tmpbuf for Fstr
512: outbuf for FTstr
542: decimal_digits
850: linebuffer
1106: general buffer
1364: token buffer
2314: 
2772: filetable, xx*6
3372: offsets to func_table
4300: offsets to cmd table
7664: intout
7920: ptsout
8398: offset to add to variable names
8399: deflist style
8401: first char of identifier
8438: function_find_start
8698: workout
9708: workin
*/
