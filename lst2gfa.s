FOR_LIB = 0
STRANGE_CHECK = 1


EOL = 13
CR  = 13
NL  = 10

TOK_CMD_DO              =   0
TOK_CMD_LOOP            =   1
TOK_CMD_REPEAT          =   2
TOK_CMD_UNTIL           =   3
TOK_CMD_WHILE           =   4
TOK_CMD_WEND            =   5
TOK_CMD_PROCEDURE       =   6
TOK_CMD_ENDPROC         =   7
TOK_CMD_IF              =   8
TOK_CMD_ENDIF           =   9
TOK_CMD_FUNCTION        =  10
TOK_CMD_ENDFUNC         =  11
TOK_CMD_SELECT          =  12
TOK_CMD_ENDSELECT       =  13
TOK_CMD_ELSE            =  14
TOK_CMD_DEFAULT         =  15
TOK_CMD_ELSEIF          =  16
TOK_CMD_RETURN          =  17
TOK_CMD_RETURN_STR      =  18
TOK_CMD_FOR_FLOAT       =  19
TOK_CMD_NEXT_FLOAT      =  31
TOK_CMD_EXITIF          =  43
TOK_CMD_SELECT_STR      =  44
TOK_CMD_EOF             =  45
TOK_CMD_DO_WHILE        =  49
TOK_CMD_LOOP_UNTIL      =  52
TOK_CMD_PROCEDURE2      =  54
TOK_CMD_EXITIF2         =  55
TOK_CMD_CASE            =  56
TOK_CMD_GOSUB_IMP       =  60
TOK_CMD_GOSUB           =  61
TOK_CMD_GOSUB_EXP       =  62
TOK_CMD_LABEL           =  63
TOK_CMD_LET_FLOAT       =  64
TOK_CMD_ASSIGN_FLOAT    =  76
TOK_CMD_ASSIGN_BYTE_ARR =  87
TOK_CMD_REM             = 114
TOK_CMD_COMMENT         = 115
TOK_CMD_SYNERR          = 116
TOK_CMD_DATA            = 117
TOK_CMD_END             = 124
TOK_CMD_INC_FLOAT       = 160
TOK_CMD_OFF             = 175
TOK_CMD_DIV_FLOAT       = 200
TOK_CMD_DIV_BYTE_ARR    = 207
TOK_CMD_ADDRIN          = 224
TOK_CMD_ADDROUT         = 225
TOK_CMD_CONTRL          = 228
TOK_CMD_DOUBLE_REF      = 237
TOK_CMD_DOT             = 254
TOK_CMD_FILES           = 325
TOK_CMD_FILESELECT      = 329
TOK_CMD_DEFINT          = 381
TOK_CMD_DEFFLT          = 382
TOK_CMD_DEFBYT          = 383
TOK_CMD_DEFWRD          = 384
TOK_CMD_DEFBIT          = 385
TOK_CMD_DEFSTR          = 386
TOK_CMD_DOLLAR          = 411
TOK_CMD_INLINE          = 417


TOK_AND                 =   0
TOK_OR                  =   1
TOK_XOR                 =   2
TOK_IMP                 =   3
TOK_EQV                 =   4
TOK_SUB                 =   5
TOK_ADD                 =   6
TOK_MUL                 =   7
TOK_DIVIDE              =   8
TOK_POWER               =   9
TOK_MOD                 =  10
TOK_DIV                 =  11
TOK_NE                  =  12
TOK_LE                  =  13
TOK_LE2                 =  14
TOK_GE                  =  15
TOK_GE2                 =  16
TOK_LT                  =  17
TOK_GT                  =  18
TOK_EQ                  =  19
TOK_NE_STR              =  20
TOK_LE_STR              =  21
TOK_LE2_STR             =  22
TOK_GE_STR              =  23
TOK_GE2_STR             =  24
TOK_LT_STR              =  25
TOK_GT_STR              =  26
TOK_EQ_STR              =  27
TOK_PLUS_STR            =  28
TOK_UPLUS               =  29
TOK_UMINUS              =  30
TOK_UNOT                =  31
TOK_RPAREN              =  32
TOK_COMMA               =  33
TOK_SEMI                =  34
TOK_LPAREN              =  35
TOK_ERRSTR              =  36
TOK_INT                 =  37
TOK_TRUNC               =  38
TOK_FRAC                =  39
TOK_ABS                 =  40
TOK_SIN                 =  41
TOK_COS                 =  42
TOK_TAN                 =  43
TOK_ATAN                =  44
TOK_APPROX_EQ           =  45
TOK_RES_46              =  46
TOK_EXP                 =  47
TOK_LOG                 =  48
TOK_LOG10               =  49
TOK_VAR                 =  50
TOK_RPAREN2             =  51
TOK_INPAUX              =  52
TOK_VAL                 =  53
TOK_INPMID              =  54
TOK_PRINTNUM            =  55
TOK_TIME                =  56
TOK_ARRAY_ASS           =  57
TOK_LEFT1               =  58
TOK_LEFT2               =  59
TOK_RIGHT1              =  60
TOK_RIGHT2              =  61
TOK_MID2                =  62
TOK_MID3                =  63
TOK_RES_64              =  64
TOK_ASIN                =  65
TOK_CHR                 =  66
TOK_REFEND              =  67
TOK_RES_68              =  68
TOK_ASSIGN              =  69
TOK_LINE_COMMENT        =  70
TOK_TO                  =  71
TOK_STEP                =  72
TOK_DOWNTO              =  73
TOK_THEN                =  74
TOK_GOTO_FUNC           =  75
TOK_GOSUB_FUNC          =  76
TOK_CHANNEL             =  77
TOK_SQR                 =  78
TOK_PI                  =  79
TOK_LBRACKET            =  80
TOK_RBRACKET            =  81
TOK_ACOS                =  82
TOK_INKEY               =  83
TOK_RND1                =  84
TOK_RND                 =  85
TOK_RANDOM              =  86
TOK_PRINTSPACE          =  87
TOK_RBRACE              =  88
TOK_AT                  =  89
TOK_IF                  =  90
TOK_INTDIV              =  91
TOK_FLOAT_REF           =  92
TOK_DOUBLE_REF          =  93
TOK_INPUT1              =  94
TOK_INPUT2              =  95
TOK_INPUT3              =  96
TOK_CHAR_REF            =  97
TOK_MKI                 =  98
TOK_MKL                 =  99
TOK_MKS                 = 100
TOK_MKF                 = 101
TOK_MKD                 = 102
TOK_DEG                 = 103
TOK_RAD                 = 104
TOK_CVS                 = 105
TOK_CVF                 = 106
TOK_CVD                 = 107
TOK_AS                  = 108
TOK_OFFSET              = 109
TOK_CFLOAT              = 110
TOK_TRACE               = 111
TOK_ROUND1              = 112
TOK_ROUND2              = 113
TOK_WITH                = 114
TOK_BIN1                = 115
TOK_BIN2                = 116
TOK_MIN                 = 117
TOK_MIN_STR             = 118
TOK_MAX                 = 119
TOK_MAX_STR             = 120
TOK_SINGLE_REF          = 121
TOK_AT2                 = 122
TOK_SINQ                = 123
TOK_LABEL               = 124
TOK_COSQ                = 125
TOK_DATE                = 126
TOK_UPPER               = 127
TOK_SPACE               = 128
TOK_STRING_CODE         = 129
TOK_STRING              = 130
TOK_SUCC                = 131
TOK_DIR                 = 132
TOK_PRED                = 133
TOK_DRAW                = 134
TOK_TRIM                = 135
TOK_CMDLINE             = 136
TOK_CMDLINE2            = 137
TOK_LONGARG             = 138
TOK_WORDARG             = 139
TOK_FACT                = 140
TOK_COMBIN              = 141
TOK_COMBIN2             = 142
TOK_VARIAT              = 143
TOK_LTRIM               = 144
TOK_RTRIM               = 145
TOK_LCASE               = 146
TOK_RCASE               = 147
TOK_LOWER               = 148
TOK_OB_TEXT             = 149
TOK_ZTRIM               = 150
TOK_ERROR               = 151
TOK_STOP                = 152
TOK_BREAK               = 153
TOK_CONT                = 154
TOK_FIX                 = 155
TOK_COMMA2              = 156
TOK_LPAREN2             = 157
TOK_FNCALL              = 158
TOK_GOSUB               = 159
TOK_MIRROR              = 160
TOK_TAB                 = 161
TOK_SPC                 = 162
TOK_USING               = 163
TOK_DATE1               = 164
TOK_TIME1               = 165
TOK_TIMESTAMP           = 166
TOK_MENU                = 167
TOK_NEXT                = 168
TOK_CHAR                = 169
TOK_KEY                 = 170
TOK_BUTTON              = 171
TOK_IBOX                = 172
TOK_OBOX                = 173
TOK_MESSAGE             = 174
TOK_OFF                 = 175
TOK_CONST_ZERO          = 184
TOK_CONST_ONE           = 185
TOK_CONST_TWO           = 186
TOK_CONST_THREE         = 187
TOK_CHAR_CONST          = 198
TOK_CHAR_CONST_PAD      = 199
TOK_DEC_CONST           = 200
TOK_DEC_CONST_PAD       = 201
TOK_HEX_CONST           = 202
TOK_HEX_CONST_PAD       = 203
TOK_OCT_CONST           = 204
TOK_OCT_CONST_PAD       = 205
TOK_BIN_CONST           = 206
TOK_BIN_CONST_PAD       = 207
TOK_SUBFUNC_208         = 208
TOK_SUBFUNC_209         = 209
TOK_SUBFUNC_210         = 210
TOK_SUBFUNC_210         = 210
TOK_SUBFUNC_211         = 211
TOK_SUBFUNC_212         = 212
TOK_SUBFUNC_213         = 213
TOK_SUBFUNC_214         = 214
TOK_OCT_DBL_CONST_PAD   = 215
TOK_OCT_DBL_CONST       = 216
TOK_BIN_DBL_CONST_PAD   = 217
TOK_BIN_DBL_CONST       = 218
TOK_HEX_DBL_CONST_PAD   = 219
TOK_HEX_DBL_CONST       = 220
TOK_DEC_DBL_CONST_PAD   = 221
TOK_STRING_CONST        = 222
TOK_DEC_DBL_CONST       = 223
TOK_REF_FLOAT_SHORT     = 224
TOK_REF_FLOAT           = 240


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


_entry:
		bra        _main_entry

x10004:
		movea.l    a6,a0
		move.l     #x1007a,4(a6)
		movea.l    204(a6),a0
		lea.l      128(a0),a0
x10004_1:
		tst.b      (a0)+
		bne.s      x10004_1
		movea.l    a0,a1
		subq.l     #5,a0
		bsr        copy32b
		andi.l     #0xFF5F5F5F,d0
		cmp.l      #0x2E4C5354,d0 /* '.LST' */
		bne        x10194
		subq.l     #1,a1
		moveq.l    #0,d1
x10004_2:
		move.b     -(a1),d0
		beq.s      x10004_3
		cmp.b      #0x5c,d0
		beq.s      x10004_3
		cmp.b      #':',d0
		beq.s      x10004_3
		cmp.b      #'a',d0
		blt.s      x10004_2
		cmp.b      #'z',d0
		bgt.s      x10004_2
		moveq.l    #-1,d1
		bra.s      x10004_2
x10004_3:
		lea.l      lowercase_filenames(pc),a0
		move.w     d1,(a0)
		lea.l      reading_msg(pc),a0
		bsr        printstr
		movea.l    204(a6),a0
		lea.l      129(a0),a0
		bsr        printstr
		bsr        printnl
		bsr        x1160e
		nop

x1007a:
		bsr        x1022c
		bsr        x11ae8
		move.l     #x1018e,4(a6)
		lea.l      1106(a6),a0
		movea.l    204(a6),a1
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
		lea.l      lines_msg(pc),a0
		bsr        printstr
		move.l     x16786+6(pc),d0
		bsr        print_decimal
		lea.l      bytes_msg(pc),a0
		bsr        printstr
		move.w     d6,d0
		cmp.w      #6,d0
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
		movea.l    172(a6),a0
x1007a_3:
		move.l     6(a0),d0
		bsr        print_decimal
		lea.l      exitcode_msg(pc),a0
		bsr        printstr
		move.l     x10306(pc),d0
		bne.s      x1007a_5
		move.l     (a7),d0
		bpl.s      x1007a_4
		moveq.l    #45,d0
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
		lea.l      x16780(pc),a0
		move.w     #0x0200,(a0)
		moveq.l    #0,d1
x1007a_6:
		lea.l      x10306(pc),a1
		subq.l     #1,(a1)
		bmi.s      x1007a_10
		movea.l    x16782(pc),a1
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
		lea.l      x16780(pc),a0
		move.w     (a0),d2
		add.w      d3,d2
		cmp.w      columns(pc),d2
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
		cmp.w      #0x2000,d1
		blt.s      x1007a_6
x1007a_10:
		bra.s      x101d0

x1018e:
		lea.l      error_str(pc),a0
		bra.s      failure

x10194:
		lea.l      usage_msg(pc),a0
		bra.s      failure_1
stackoverflow:
		lea.l      stack_overflow_msg(pc),a0
		bra.s      failure
x10194_1:
		bsr        x1022c
		bra.s      failure
x10194_2:
		lea.l      notalst_msg(pc),a0
x101aa:
		lea.l      open_err_msg(pc),a0
		bra.s      failure
x10194_3:
		lea.l      save_err_msg(pc),a0
		bra.s      failure
x10194_4:
		lea.l      load_err_msg(pc),a0

failure:
		pea.l      att_msg(pc)
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
		move.w     mtask(pc),d0
		bne.s      x101d0_1
		lea.l      waitkey_msg(pc),a0
		bsr.w      printstr
		move.w     #7,-(a7) /* Crawcin */
		trap       #1
		addq.l     #2,a7
x101d0_1:
		moveq.l    #-1,d0
		bra        exit

x101f0:
		lea.l      1106(a6),a0
		clr.w      -(a7)
		move.l     a0,-(a7)
		move.w     #61,-(a7) /* Fopen */
		trap       #1
		addq.l     #8,a7
		tst.w      d0
		bmi.s      x101aa
		lea.l      x16786(pc),a1
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
		lea.l      crnl(pc),a0
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
		cmp.w      #10,d2
		bmi.s      print_decimal_7
		clr.l      -(a7)
print_decimal_4:
		ext.l      d2
		divu.w     #10,d2
		move.l     d2,-(a7)
		cmp.w      #9,d2
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
		cmp.w      #10,d4
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
		lea.l      x16778(pc),a1
		move.l     (a1),d1
		clr.l      (a1)
		cmp.l      d1,d0
		blt.s      x1030a_1
		move.l     d1,d0
x1030a_1:
		movem.l    d0/a0,-(a7)
		lea.l      8(a7),a2
		lea.l      1106(a6),a0
		bsr        copy32b
		cmp.l      #0x494E4C49,d0 /* 'INLI' */
		bne        x1030a_12
		moveq.l    #1,d1
		bsr        copy16b
		cmp.w      #0x4E45,d0 /* 'NE' */
		bne        x1030a_12
x1030a_2:
		move.b     (a0)+,d0
		cmp.b      #' ',d0
		beq.s      x1030a_2
		subq.l     #1,a0
		movea.l    a0,a1
		moveq.l    #0,d1
x1030a_3:
		move.b     (a0)+,d0
		addq.w     #1,d1
		cmp.b      #'0',d0
		bcc.s      x1030a_3
		subq.w     #1,d1
		ble        x1030a_12
		subq.w     #1,d1
		bmi        x1030a_12
		cmp.w      #':',d1
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
		lea.l      inline_msg(pc),a0
		bsr        printstr
		lea.l      (a7),a0
x1030a_5:
		bsr        printstr
		moveq.l    #32,d0
		bsr        cconout
		move.l     d3,d0
		bsr        print_decimal
		lea.l      bytes_read_msg(pc),a0
x1030a_6:
		bsr        printstr
x1030a_7:
		lea.l      64(a7),a7
		movem.l    (a7)+,d1-d3/a1-a2
		rts
x1030a_8:
		lea.l      inline_msg(pc),a0
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
		lea.l      cannot_open_msg(pc),a0
x1030a_9:
		bra.s      x1030a_6
x1030a_10:
		lea.l      inline_msg(pc),a0
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
		lea.l      cannot_read_msg(pc),a0
		bsr        printstr
		move.w     d3,-(a7)
		move.w     #62,-(a7) /* Fclose */
		trap       #1
		addq.l     #4,a7
		bra.s      x1030a_7
x1030a_11:
		lea.l      inline_msg(pc),a0
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
		lea.l      cannot_close_msg(pc),a0
		bra.s      x1030a_5
x1030a_12:
		addq.l     #8,a7
		lea.l      not_inline_msg(pc),a0
		bsr        printstr
		lea.l      1106(a6),a0
x1030a_13:
		move.b     (a0)+,d0
		cmp.b      #EOL,d0
		bne.s      x1030a_13
		move.b     (a0),d0
		movem.l    d0/a0,-(a7)
		clr.b      (a0)
		bsr        printstr
		movem.l    (a7)+,d0/a0
		move.b     d0,(a0)
		lea.l      crnl(pc),a0
		bra.s      x1030a_9

lowercase_filenames: .dc.w 0

_main_entry:
		bra.s main

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

main:
		pea.l      find_mtask(pc)
		move.w     #38,-(a7) /* Supexec */
		trap       #14
		addq.l     #6,a7
		move.w     mtask(pc),d0
		beq.s      main_5
		lea.l      _entry-212(pc),a0 /* get environment ptr from basepage */
		move.l     (a0),d0
		beq.s      main_5
		movea.l    d0,a0
		tst.b      (a0)
		beq.s      main_5
main_1:
		cmpi.b     #'C',(a0)
		bne.s      main_3
		cmpi.b     #'O',1(a0)
		bne.s      main_3
		cmpi.b     #'L',2(a0)
		bne.s      main_3
		cmpi.b     #'U',3(a0)
		bne.s      main_3
		cmpi.b     #'M',4(a0)
		bne.s      main_3
		cmpi.b     #'N',5(a0)
		bne.s      main_3
		cmpi.b     #'S',6(a0)
		bne.s      main_3
		cmpi.b     #'=',7(a0)
		bne.s      main_3
		addq.l     #8,a0
		moveq.l    #0,d0
		moveq.l    #0,d1
main_2:
		move.b     (a0)+,d0
		beq.s      main_4
		subi.w     #'0',d0
		bmi.s      main_2
		cmp.b      #9,d0
		bgt.s      main_2
		lsl.l      #1,d1
		move.l     d1,-(a7)
		lsl.l      #2,d1
		add.l      (a7)+,d1
		add.l      d0,d1
		bra.s      main_2
main_3:
		tst.b      (a0)+
		bne.s      main_3
		tst.b      (a0)
		beq.s      main_5
		bra.s      main_1
main_4:
		move.l     d1,d0
		bne.s      main_6
main_5:
		.dc.w 0xa000 /* ALINE      #0 */
		movea.l    d0,a0
		move.w     -44(a0),d0
		addq.w     #1,d0
main_6:
		cmp.w      #256,d0
		bgt.s      main_7
		cmp.w      #40,d0
		bge.s      main_8
		moveq.l    #40,d0
		bra.s      main_8
main_7:
		moveq.l    #80,d0
main_8:
		lea.l      columns(pc),a0
		move.w     d0,(a0)
		lea.l      x16768(pc),a0
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
		lea.l      x16768(pc),a0
		bsr        printstr
		lea.l      version_msg(pc),a0
		bsr        printstr
		jmp        x10d1a

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
		jmp        (a6) /* ERROR */
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
		jmp        (a6) /* ERROR */
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
		st         488(a6)
		sf         489(a6)
Fval_1:
		move.b     (a0)+,d4
		cmp.b      #' ',d4
		beq.s      Fval_1
		cmp.b      #'+',d4
		beq.s      Fval_2
		cmp.b      #'-',d4
		bne.s      Fval_3
		bset       #30,d6
Fval_2:
		move.b     (a0)+,d4
Fval_3:
		cmp.b      #'.',d4
		beq.s      Fval_7
		subi.b     #'0',d4
		cmp.b      #9,d4
		bhi        Fval_23
		move.b     d4,d1
Fval_4:
		move.b     (a0)+,d4
		cmp.b      #'0',d4
		bcs.s      Fval_6
		cmp.b      #'9',d4
		bhi.s      Fval_6
		cmp.l      #0x0FFFFFFF,d0
		bcc.s      Fval_5
		bsr.s      Fvm10
		bra.s      Fval_4
Fval_5:
		addq.w     #1,d6
		bra.s      Fval_4
Fval_6:
		cmp.b      #'.',d4
		bne.s      Fval_9
Fval_7:
		move.b     (a0)+,d4
		cmp.b      #'0',d4
		bcs.s      Fval_9
		cmp.b      #'9',d4
		bhi.s      Fval_9
		cmp.l      #0x0FFFFFFF,d0
		bcc.s      Fval_8
		bsr        Fvm10
		subq.w     #1,d6
Fval_8:
		bra.s      Fval_7
Fval_9:
		cmp.b      #'E',d4
		beq.s      Fval_10
		cmp.b      #'e',d4
		bne.s      Fval_17
Fval_10:
		move.b     (a0)+,d4
		cmp.b      #'+',d4
		beq.s      Fval_11
		cmp.b      #'-',d4
		bne.s      Fval_13
		bset       #31,d6
Fval_11:
		move.b     (a0)+,d4
		cmp.b      #'0',d4
		bcs.s      Fval_12
		cmp.b      #'9',d4
		ble.s      Fval_13
Fval_12:
		subq.w     #1,a0
		bclr       #31,d6
		bra.s      Fval_17
Fval_13:
		subi.b     #'0',d4
		cmp.b      #9,d4
		bhi.s      Fval_17
		ext.w      d4
Fval_14:
		moveq.l    #0,d5
		move.b     (a0)+,d5
		subi.b     #'0',d5
		cmp.b      #9,d5
		bhi.s      Fval_15
		mulu.w     #10,d4
		add.w      d5,d4
		cmp.w      #1000,d4
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
		tst.b      489(a6)
		beq.s      Fval_24
Fval_23:
		moveq.l    #-1,d2
Fval_24:
		clr.w      488(a6)
		rts

constone:
	.dc.l 0x80000000,0,0x000003ff

ftstr_restart:
		cmp.w      #0x3FFE,d2
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
		lea.l      490(a6),a0
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
		cmp.w      #0x1FFF,d2
		bhi.s      ftstr_restart
		cmp.w      #0x03FF,d2
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
		cmp.w      #0x03FF,d2
		bcs.s      FTstr_4
FTstr_5:
		cmp.w      #0x0402,d2
		beq.s      FTstr_6
		lsr.l      #1,d0
		roxr.w     #1,d1
		addq.w     #1,d2
		bra.s      FTstr_5
FTstr_6:
		addq.w     #1,d1
		bcc.s      FTstr_8
		addq.l     #1,d0
		cmp.l      #0x9FFFFFFF,d0
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
		lea.l      505(a6),a1
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
		lea.l      490(a6),a0
		rts
FTstr_12:
		moveq.l    #0,d0
		moveq.l    #0,d1
		moveq.l    #0,d2
		moveq.l    #0,d6
		bra.s      FTstr_8

roundup:
		pea.l      (a1)
		move.w     542(a6),d1
		cmp.w      #14,d1
		bcs.s      roundup_1
		beq.s      roundup_6
		moveq.l    #13,d1
roundup_1:
		lea.l      1(a0,d1.w),a1
		move.b     (a1),d2
		cmp.b      #'5',d2
		bcs.s      roundup_5
roundup_2:
		move.b     -(a1),d2
		addq.b     #1,d2
		cmp.b      #'0',d2
		bls.s      roundup_3
		cmp.b      #'9',d2
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
		lea.l      512(a6),a1
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
		cmp.w      #13,d0
		bgt.s      Fstr_9
		cmp.w      #-5,d0
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
		lea.l      512(a6),a0
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
		lea.l      505(a6),a0
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		move.b     (a0)+,d0
		cmp.b      #'0',d0
		beq.s      Fstr_12
		move.b     d0,(a1)+
Fstr_12:
		move.b     (a0)+,(a1)+
		move.b     (a0)+,(a1)+
		bra.s      Fstr_8

DEFNUM:
		cmp.w      #3,d0
		bcs.s      DEFNUM_1
		move.w     d0,542(a6)
DEFNUM_1:
		rts

FITOF:
		moveq.l    #0,d1
		move.l     d0,d2
		ble.w      FITOF_5
		cmp.l      #0x0000FFFF,d0
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
		cmp.l      #0x0000FFFF,d0
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
		rts

mem_end: .dc.l 0
x10cae: .dc.l 0

x10cb2:
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l Screat
		.dc.l dummy_rts
		.dc.l GarColl
		.dc.l FADD
		.dc.l FSUB
		.dc.l dummy_rts
		.dc.l FDIV
		.dc.l FITOF
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts
		.dc.l dummy_rts

x10d1a:
		movea.l    4(a7),a5
		lea.l      bss_end,a6
		move.l     a6,d0
		addq.l     #3,d0
		andi.b     #0xFC,d0
		movea.l    d0,a6
		movea.l    a6,a0
		moveq.l    #0,d0
		move.w     #0x0900-1,d1
x10d1a_1:
		move.l     d0,(a0)+
		move.l     d0,(a0)+
		move.l     d0,(a0)+
		move.l     d0,(a0)+
		dbf        d1,x10d1a_1
		movea.l    a6,a0
		adda.l     #36820,a0
		move.l     a6,mem_end
		lea.l      x10cb2(pc),a1
		lea.l      214(a6),a2
		moveq.l    #25,d0
x10d1a_2:
		move.w     #0x4EF9,(a2)+ /* jmp.l opcode */
		move.l     (a1)+,(a2)+
		dbf        d0,x10d1a_2
		move.w     #13,542(a6)
		move.b     612(a6),d0
		ori.b      #'.',d0
		bclr       #4,d0
		move.b     d0,612(a6)
		move.w     x10590(pc),d0
		bsr        x10ee0
		lea.l      25856(a6),a7
		move.l     #0x4E714EF9,(a6)
		move.l     a5,204(a6)
		suba.l     a5,a0
		pea.l      (a0)
		pea.l      (a5)
		move.l     a0,208(a6)
		clr.w      -(a7)
		move.w     #74,-(a7) /* Mshrink */
		trap       #1
		bsr        x16534
		jsr        x11a44
		.dc.w 0xa000 /* ALINE      #0 */
		move.l     a1,200(a6)
		lea.l      196(a6),a1
		move.l     a0,(a1)+
		jsr        x11ab0
		pea.l      (-1).w
		move.w     #72,-(a7) /* Malloc */
		trap       #1
		subi.l     #0x00004000,d0
		move.l     d0,12(a6)
		move.l     d0,-(a7)
		move.w     #72,-(a7) /* Malloc */
		trap       #1
		move.l     d0,8(a6)
		lea.l      25856(a6),a7
		move.w     x10ede,x1185a
		jsr        x1185c
		jsr        x1607a
		movea.l    204(a6),a0
		cmpi.b     #127,128(a0)
		bne        x10d1a_10
		move.l     44(a0),d0
		beq.w      x10d1a_10
		movea.l    d0,a1
		move.b     (a1),d0
		beq.w      x10d1a_10
		bra.s      x10d1a_4
x10d1a_3:
		tst.b      (a1)+
		bne.s      x10d1a_3
		tst.b      (a1)
		beq.s      x10d1a_10
x10d1a_4:
		cmpi.b     #'A',(a1)
		bne.w      x10d1a_3
		cmpi.b     #'R',1(a1)
		bne.w      x10d1a_3
		cmpi.b     #'G',2(a1)
		bne.w      x10d1a_3
		cmpi.b     #'V',3(a1)
		bne.w      x10d1a_3
		cmpi.b     #'=',4(a1)
		bne.w      x10d1a_3
		addq.l     #5,a1
x10d1a_5:
		movea.l    a1,a0
x10d1a_6:
		move.b     (a1)+,d1
		bne.s      x10d1a_6
		move.b     (a1),d1
		bne.s      x10d1a_5
		movea.l    a0,a1
		move.b     (a0),d0
		cmp.b      #'"',d0
		beq.s      x10d1a_7
		cmp.b      #0x27,d0
		bne.s      x10d1a_8
x10d1a_7:
		tst.b      (a0)+
		bne.s      x10d1a_7
		subq.l     #1,a0
		cmp.b      -(a0),d0
		bne.s      x10d1a_8
		clr.b      (a0)
		clr.b      (a1)+
x10d1a_8:
		movea.l    204(a6),a0
		lea.l      128(a0),a0
		move.b     #0x7F,(a0)+
x10d1a_9:
		move.b     (a1)+,(a0)+
		bne.s      x10d1a_9
x10d1a_10:
		movea.l    204(a6),a0
		adda.w     #128,a0
		moveq.l    #0,d7
		move.b     (a0),d7
		ble        x10194
		clr.b      1(a0,d7.w)
		cmpi.b     #13,0(a0,d7.w)
		bne.s      x10d1a_11
		clr.b      0(a0,d7.w)
x10d1a_11:
		tst.b      (a0)+
		beq        x10194
		moveq.l    #0,d7
		lea.l      1106(a6),a1
x10d1a_12:
		cmpi.b     #' ',(a0)+
		beq.s      x10d1a_12
		cmpi.b     #'-',-(a0)
		seq        d7
		bne.s      x10d1a_14
		addq.l     #1,a0
x10d1a_13:
		cmpi.b     #' ',(a0)+
		beq.s      x10d1a_13
		subq.l     #1,a0
x10d1a_14:
		move.b     (a0)+,(a1)+
		bne.s      x10d1a_14
		move.b     d7,-(a7)
		jsr        x11838
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
		cmpa.l     172(a6),a1
		bcs.s      ALLOT_1
		bsr        GarColl
		cmpa.l     172(a6),a1
		bcc.s      ALLOT_2
ALLOT_1:
		move.l     a0,d0
		sub.l      d2,d0
		bsr.s      Lddre
		lea.l      172(a6),a0
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
		jmp        (a6) /* ERROR */
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
		movea.l    172(a6),a1
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
		move.l     a1,172(a6)
Screat_2:
		rts
Screat_3:
		move.w     d0,4(a0)
		rts

STcreat:
		bsr.s      GarColl
		movea.l    172(a6),a1
		suba.l     d1,a1
		cmpa.l     168(a6),a1
		bcc.s      STcreat_4
		moveq.l    #8,d0
		.IFNE FOR_LIB
		bra        ERROR
		.ELSE
		jmp        (a6) /* ERROR */
		.ENDC

GarColl:
		movem.l    d0/a0-a3,-(a7)
		movea.l    176(a6),a0
		movea.l    172(a6),a2
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
		move.l     a1,172(a6)
GarColl_1:
		movem.l    (a7)+,d0/a0-a3
		rts

/* gfa: 00014e66 */
x1111c:
		movea.l    80(a6),a0
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
		jmp        (a6) /* ERROR */
		.ENDC

/* gfa: 000157be */
putcstdout:
		lea.l      1106(a6),a1
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
		lea.l      1106(a6),a1
		moveq.l    #1,d0
		bsr.s      readstdin
		move.b     1106(a6),d0
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
		cmp.w      #1,d6
		beq.s      putcstdout_1
		bsr.s      GetFBuf
		btst       #1,d2
		beq.w      eaccdn
		tst.w      d1
		beq.s      FWrite_1
		bsr        x1124e
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
		cmp.w      #4096,d3
		bcs.s      FWrite_3
		bra        x11328

/* gfa: 00015872 */
FGetc:
		cmp.w      #1,d6
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
		jmp        (a6) /* ERROR */
		.ENDC

x1121a:
		cmp.w      #1,d6
		beq        putcstdout
		move.w     d0,d3
		bsr        GetFBuf
		btst       #1,d2
		beq.s      eaccdn
		tst.w      d1
		beq.s      x1121a_1
		bsr.w      x1124e
x1121a_1:
		cmpi.w     #4096,d0
		bcs.s      x1121a_2
		bsr.w      FlushBuf
x1121a_2:
		addq.w     #1,(a0)
		move.b     d3,10(a0,d0.w)
		bset       #7,4(a0)
		rts

x1124e:
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
		jmp        (a6) /* ERROR */
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
		jmp        (a6) /* ERROR */
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
		beq        x1018e
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
		jmp        (a6) /* ERROR */
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
		lea.l      2314(a6),a1
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
		lea.l      x16768-8196(pc),a0
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
		lea.l      file_msg(pc),a0
		bsr        printstr
		movea.l    (a7),a0
		bsr        printstr
		lea.l      already_exists_msg(pc),a0
		bsr        printstr
		movea.l    (a7),a1
		lea.l      850(a6),a0
x11480_1:
		move.b     (a1)+,(a0)+
		bne.s      x11480_1
		subq.l     #1,a0
		moveq.l    #3,d0
x11480_2:
		move.b     -(a0),d1
		beq.s      x11480_3
		cmp.b      #0x5c,d1
		beq.s      x11480_3
		cmp.b      #'.',d1
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
		pea.l      850(a6)
		move.w     #65,-(a7) /* Fdelete */
		trap       #1
		addq.l     #2,a7
		tst.l      d0
		bmi.s      x11480_7
		lea.l      deleted_file_msg(pc),a0
		bsr        printstr
		lea.l      850(a6),a0
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
		lea.l      renamed_file_msg(pc),a0
		bsr        printstr
		movea.l    (a7),a0
		bsr        printstr
		lea.l      to_msg(pc),a0
		bsr        printstr
		lea.l      850(a6),a0
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
		lea.l      16(a6),a0
		lea.l      168(a6),a1
		lea.l      1106(a6),a2
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
		lea.l      1106(a6),a1
		move.l     #152,d0 /* write the offsets */
		bsr        x1134c
		movea.l    16(a6),a1
		tst.b      x1156c
		beq.s      x11578_3
		clr.b      x1156c
		movea.l    80(a6),a1
x11578_3:
		move.l     92(a6),d0
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
		cmp.w      #6,d0
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
		lea.l      850(a6),a1
		bsr        x1181c
		move.b     850(a6),d0
		cmp.b      #CR,d0
		beq.s      x1160e_1
		cmp.b      #NL,d0
		beq.s      x1160e_1
		cmp.b      #' ',d0
		bcs        x10194_1
		bsr        x118e2
		lea.l      850(a6),a3
		bra.s      x1160e_4
x1160e_2:
		lea.l      850(a6),a3
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
		lea.l      850(a6),a2
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
		lea.l      850(a6),a0
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
		cmpi.b     #'>',850(a6)
		bne.s      x1160e_12
		move.b     #' ',850(a6)
		jsr        x137d2
		cmpi.w     #40,1364(a6)
		bne.s      x1160e_11
		move.w     #1796,1364(a6)
		bra.s      x1160e_13
x1160e_11:
		cmpi.w     #24,1364(a6)
		bne.s      x1160e_13
		move.w     #216,1364(a6)
		bra.s      x1160e_13
x1160e_12:
		jsr        x137d2
x1160e_13:
		move.l     a1,d1
		beq.s      x1160e_14
		bpl.s      x1160e_17
x1160e_14:
		lea.l      x10306(pc),a0
		move.l     (a0),d1
		cmp.l      #8192-1,d1
		bgt.s      x1160e_15
		lsl.w      #2,d1
		lea.l      x16782(pc),a1
		tst.l      (a1)
		beq.s      x1160e_15
		movea.l    (a1),a1
		tst.l      0(a1,d1.w)
		bne.s      x1160e_15
		move.l     x10302(pc),d0
		move.l     d0,0(a1,d1.w)
x1160e_15:
		addq.l     #1,(a0)
		lea.l      1362(a6),a1
		move.l     #464,(a1)+
		lea.l      850(a6),a0
x1160e_16:
		move.b     (a0),(a1)+
		cmpi.b     #13,(a0)+
		bne.s      x1160e_16
		move.l     a1,d0
		sub.l      a6,d0
		subi.w     #1362,d0
		addq.w     #1,d0
		bclr       #0,d0
		move.w     d0,1362(a6)
x1160e_17:
		moveq.l    #0,d0
		lea.l      88(a6),a0
		lea.l      1362(a6),a1
		move.w     (a1)+,d0
		cmpi.w     #1668,(a1)+
		bne.s      x1160e_21
		cmpi.b     #240,(a1)+
		bcs.s      x1160e_18
		addq.l     #2,a1
x1160e_18:
		addq.l     #3,a1
		move.l     (a1)+,d1
		lea.l      x16778(pc),a2
		move.l     d1,(a2)
		add.l      d0,d1
		addq.l     #1,d1
		andi.w     #-2,d1
		cmp.l      #0x00007FF8,d1
		bhi        x1160e_14
		move.w     d1,1362(a6)
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
		lea.l      1362(a6),a1
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
		cmp.b      #'a',d1
		blt.s      x117bc_4
		cmp.b      #'z',d1
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
		lea.l      1106(a6),a1
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
		move.w     x1185a,x10ede
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
		move.l     12(a6),d1
		sub.l      d0,d1
		movea.l    8(a6),a0
		add.l      a0,d1
		lea.l      16(a6),a1
		moveq.l    #18,d0
x1185c_2:
		move.l     a0,(a1)+
		dbf        d0,x1185c_2
		move.l     #0x000400B4,(a0)+
		moveq.l    #20-1,d0
x1185c_3:
		move.l     a0,(a1)+
		dbf        d0,x1185c_3
		move.l     d1,(a1)+
		move.l     d1,(a1)+
		move.l     d1,x10cae
		move.l     d1,(a1)+
		clr.l      (a1)+
		clr.l      (a1)+
		lea.l      410(a6),a0
		moveq.l    #9,d0
x1185c_4:
		clr.l      (a0)+
		dbf        d0,x1185c_4
		lea.l      x1047e,a1
		lea.l      deftype,a0
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
		move.l     176(a6),172(a6)
		movea.l    156(a6),a0
		move.l     160(a6),d0
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
		lea.l      156(a6),a0
		move.l     (a0)+,(a0)
		move.l     (a0)+,(a0)
		move.l     (a0)+,(a0)+
		move.l     4(a0),(a0)
		rts

x1195e:
		movem.l    (a1),a0/a2
		cmpa.l     a0,a2
		beq.s      x1195e_2
x1195e_1:
		move.l     d1,(a0)+
		add.l      d0,d1
		cmpa.l     a0,a2
		bne.s      x1195e_1
x1195e_2:
		addq.l     #4,a1
		rts

x11972:
		move.l     156(a6),d1
		lea.l      92(a6),a1
		moveq.l    #8,d0
		bsr.s      x1195e
		moveq.l    #6,d0
		bsr.s      x1195e
		moveq.l    #4,d0
		bsr.s      x1195e
		moveq.l    #1,d0
		bsr.s      x1195e
		addq.l     #1,d1
		andi.w     #-2,d1
		moveq.l    #6,d0
		bsr.s      x1195e
		bsr.s      x1195e
		bsr.s      x1195e
		bsr.s      x1195e
		moveq.l    #2,d0
		bsr.s      x1195e
		moveq.l    #1,d0
		bsr.s      x1195e
		addq.l     #1,d1
		andi.w     #-2,d1
		lea.l      140(a6),a1
		moveq.l    #6,d0
		bsr.s      x1195e
		bsr.s      x1195e
		lea.l      160(a6),a0
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		move.l     d1,(a0)+
		rts

x119be:
		bsr.s      x11972
		movea.l    80(a6),a1
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
		movea.l    x10cae,a1
		suba.l     d1,a1
		subq.l     #8,a1
		move.l     a1,176(a6)
		move.l     a1,172(a6)
		lsr.l      #1,d1
		movea.l    80(a6),a0
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
		cmp.w      #44,d3
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
		movea.l    84(a6),a1
		movea.l    176(a6),a2
		move.l     a1,88(a6)
		rts

x11af6: .dc.l 0

/* gfa: 0002111e */
cmd_table:
		.dc.b 0
		.ascii "!"
		.dc.b ((115*2)/256),((115*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 1
		.ascii "//"
		.dc.b ((115*2)/256),((115*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 1
		.ascii "/*"
		.dc.b ((115*2)/256),((115*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 0
		.ascii "'"
		.dc.b ((115*2)/256),((115*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 0
		.ascii "*"
		.dc.b ((121*2)/256),((121*2)&255),(x144c0-x13696)/256,(x144c0-x13696)&255
		.dc.b 0
		.ascii "."
		.dc.b ((254*2)/256),((254*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 2
		.ascii "==>"
		.dc.b ((116*2)/256),((116*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 0
		.ascii "?"
		.dc.b ((147*2)/256),((147*2)&255),(x1522e-x13696)/256,(x1522e-x13696)&255
		.dc.b 0
		.ascii "$"
		.dc.b ((411*2)/256),((411*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 0
		.ascii "@"
		.dc.b ((62*2)/256),((62*2)&255),(x1495a-x13696)/256,(x1495a-x13696)&255
cmd_a_table: /* 11b3a */
		.dc.b 4
		.ascii "ALERT"
		.dc.b ((256*2)/256),((256*2)&255),(x14ac7-x13696)/256,(x14ac7-x13696)&255
		.dc.b 2
		.ascii "ADD"
		.dc.b ((176*2)/256),((176*2)&255),(x142c4-x13696)/256,(x142c4-x13696)&255
		.dc.b 4
		.ascii "ALINE"
		.dc.b ((90*2)/256),((90*2)&255),(x1447d-x13696)/256,(x1447d-x13696)&255
		.dc.b 4
		.ascii "ARECT"
		.dc.b ((92*2)/256),((92*2)&255),(x1447a-x13696)/256,(x1447a-x13696)&255
		.dc.b 4
		.ascii "APOLY"
		.dc.b ((93*2)/256),((93*2)&255),(x1448a-x13696)/256,(x1448a-x13696)&255
		.dc.b 4
		.ascii "ACHAR"
		.dc.b ((94*2)/256),((94*2)&255),(x14480-x13696)/256,(x14480-x13696)&255
		.dc.b 4
		.ascii "ACLIP"
		.dc.b ((95*2)/256),((95*2)&255),(x14490-x13696)/256,(x14490-x13696)&255
cmd_addrin:
		.dc.b 6
		.ascii "ADDRIN("
		.dc.b ((224*2)/256),((224*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
cmd_addrout:
		.dc.b 7
		.ascii "ADDROUT("
		.dc.b ((225*2)/256),((225*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 7
		.ascii "ABSOLUTE"
		.dc.b ((253*2)/256),((253*2)&255),(x15015-x13696)/256,(x15015-x13696)&255
		.dc.b 4
		.ascii "AFTER"
		.dc.b ((365*2)/256),((365*2)&255),(x148b7-x13696)/256,(x148b7-x13696)&255
		.dc.b 4
		.ascii "ATEXT"
		.dc.b ((113*2)/256),((113*2)&255),(x151bb-x13696)/256,(x151bb-x13696)&255
		.dc.b 8
		.ascii "ARRAYFILL"
		.dc.b ((397*2)/256),((397*2)&255),(x14a66-x13696)/256,(x14a66-x13696)&255
cmd_b_table: /* 11bc6 */
		.dc.b 4
		.ascii "BMOVE"
		.dc.b ((213*2)/256),((213*2)&255),(x14461-x13696)/256,(x14461-x13696)&255
		.dc.b 4
		.ascii "BYTE{"
		.dc.b ((234*2)/256),((234*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 2
		.ascii "BOX"
		.dc.b ((287*2)/256),((287*2)&255),(x1445e-x13696)/256,(x1445e-x13696)&255
		.dc.b 3
		.ascii "BGET"
		.dc.b ((111*2)/256),((111*2)&255),(x14b22-x13696)/256,(x14b22-x13696)&255
		.dc.b 3
		.ascii "BPUT"
		.dc.b ((112*2)/256),((112*2)&255),(x14b22-x13696)/256,(x14b22-x13696)&255
		.dc.b 7
		.ascii "BOUNDARY"
		.dc.b ((387*2)/256),((387*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 5
		.ascii "BITBLT"
		.dc.b ((399*2)/256),((399*2)&255),(x14a78-x13696)/256,(x14a78-x13696)&255
		.dc.b 4
		.ascii "BSAVE"
		.dc.b ((404*2)/256),((404*2)&255),(x146d6-x13696)/256,(x146d6-x13696)&255
		.dc.b 4
		.ascii "BLOAD"
		.dc.b ((405*2)/256),((405*2)&255),(x146e1-x13696)/256,(x146e1-x13696)&255
cmd_c_table: /* 11c20 */
		.dc.b 4
		.ascii "COLOR"
		.dc.b ((96*2)/256),((96*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 3
		.ascii "CASE"
		.dc.b ((56*2)/256),((56*2)&255),(x14259-x13696)/256,(x14259-x13696)&255
		.dc.b 3
		.ascii "CONT"
		.dc.b ((317*2)/256),((317*2)&255),(x1415e-x13696)/256,(x1415e-x13696)&255
cmd_contrl:
		.dc.b 6
		.ascii "CONTRL("
		.dc.b ((228*2)/256),((228*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 4
		.ascii "CARD{"
		.dc.b ((233*2)/256),((233*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 4
		.ascii "CHAR{"
		.dc.b ((235*2)/256),((235*2)&255),(x14175-x13696)/256,(x14175-x13696)&255
		.dc.b 4
		.ascii "CLOSE"
		.dc.b ((268*2)/256),((268*2)&255),(x14603-x13696)/256,(x14603-x13696)&255
		.dc.b 4
		.ascii "CLEAR"
		.dc.b ((271*2)/256),((271*2)&255),(x14630-x13696)/256,(x14630-x13696)&255
		.dc.b 5
		.ascii "CIRCLE"
		.dc.b ((291*2)/256),((291*2)&255),(x1467b-x13696)/256,(x1467b-x13696)&255
		.dc.b 4
		.ascii "CHDIR"
		.dc.b ((311*2)/256),((311*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
		.dc.b 6
		.ascii "CHDRIVE"
		.dc.b ((312*2)/256),((312*2)&255),(x14494-x13696)/256,(x14494-x13696)&255
		.dc.b 2
		.ascii "CLR"
		.dc.b ((314*2)/256),((314*2)&255),(x14aa9-x13696)/256,(x14aa9-x13696)&255
		.dc.b 2
		.ascii "CLS"
		.dc.b ((315*2)/256),((315*2)&255),(x1460f-x13696)/256,(x1460f-x13696)&255
		.dc.b 3
		.ascii "CLIP"
		.dc.b ((356*2)/256),((356*2)&255),(x14764-x13696)/256,(x14764-x13696)&255
		.dc.b 4
		.ascii "CHAIN"
		.dc.b ((392*2)/256),((392*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
		.dc.b 3
		.ascii "CALL"
		.dc.b ((152*2)/256),((152*2)&255),(x152bf-x13696)/256,(x152bf-x13696)&255
		.dc.b 4
		.ascii "CURVE"
		.dc.b ((422*2)/256),((422*2)&255),(x1447a-x13696)/256,(x1447a-x13696)&255
cmd_d_table: /* 11cc7 */
		.dc.b 3
		.ascii "DATA"
		.dc.b ((117*2)/256),((117*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 1
		.ascii "DO"
		.dc.b ((0*2)/256),((0*2)&255),(x141bc-x13696)/256,(x141bc-x13696)&255
		.dc.b 6
		.ascii "DEFLINE"
		.dc.b ((277*2)/256),((277*2)&255),(x14aed-x13696)/256,(x14aed-x13696)&255
		.dc.b 7
		.ascii "DEFMOUSE"
		.dc.b ((279*2)/256),((279*2)&255),(x152a8-x13696)/256,(x152a8-x13696)&255
		.dc.b 6
		.ascii "DEFLIST"
		.dc.b ((281*2)/256),((281*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 6
		.ascii "DEFMARK"
		.dc.b ((282*2)/256),((282*2)&255),(x14afe-x13696)/256,(x14afe-x13696)&255
		.dc.b 5
		.ascii "DEFNUM"
		.dc.b ((283*2)/256),((283*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 6
		.ascii "DEFTEXT"
		.dc.b ((284*2)/256),((284*2)&255),(x14ae1-x13696)/256,(x14ae1-x13696)&255
		.dc.b 6
		.ascii "DEFFILL"
		.dc.b ((285*2)/256),((285*2)&255),(x14756-x13696)/256,(x14756-x13696)&255
		.dc.b 4
		.ascii "DEFFN"
		.dc.b ((57*2)/256),((57*2)&255),(x148fc-x13696)/256,(x148fc-x13696)&255
		.dc.b 6
		.ascii "DEFAULT"
		.dc.b ((15*2)/256),((15*2)&255),(x1429f-x13696)/256,(x1429f-x13696)&255
		.dc.b 2
		.ascii "DEC"
		.dc.b ((168*2)/256),((168*2)&255),(x14331-x13696)/256,(x14331-x13696)&255
		.dc.b 2
		.ascii "DIV"
		.dc.b ((200*2)/256),((200*2)&255),(x142fc-x13696)/256,(x142fc-x13696)&255
		.dc.b 4
		.ascii "DPOKE"
		.dc.b ((98*2)/256),((98*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 2
		.ascii "DIM"
		.dc.b ((210*2)/256),((210*2)&255),(x147fc-x13696)/256,(x147fc-x13696)&255
		.dc.b 7
		.ascii "DMASOUND"
		.dc.b ((450*2)/256),((450*2)&255),(x14796-x13696)/256,(x14796-x13696)&255
		.dc.b 9
		.ascii "DMACONTROL"
		.dc.b ((451*2)/256),((451*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
cmd_double_ref:
		.dc.b 6
		.ascii "DOUBLE{"
		.dc.b ((237*2)/256),((237*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 2
		.ascii "DIR"
		.dc.b ((319*2)/256),((319*2)&255),(x14520-x13696)/256,(x14520-x13696)&255
		.dc.b 5
		.ascii "DELETE"
		.dc.b ((351*2)/256),((351*2)&255),(x14116-x13696)/256,(x14116-x13696)&255
		.dc.b 3
		.ascii "DRAW"
		.dc.b ((370*2)/256),((370*2)&255),(x1469c-x13696)/256,(x1469c-x13696)&255
		.dc.b 4
		.ascii "DELAY"
		.dc.b ((110*2)/256),((110*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 5
		.ascii "DEFINT"
		.dc.b ((381*2)/256),((381*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 5
		.ascii "DEFBYT"
		.dc.b ((383*2)/256),((383*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 5
		.ascii "DEFWRD"
		.dc.b ((384*2)/256),((384*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 5
		.ascii "DEFBIT"
		.dc.b ((385*2)/256),((385*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 5
		.ascii "DEFSTR"
		.dc.b ((386*2)/256),((386*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 5
		.ascii "DEFSNG"
		.dc.b ((382*2)/256),((382*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 5
		.ascii "DEFDBL"
		.dc.b ((382*2)/256),((382*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 5
		.ascii "DEFFLT"
		.dc.b ((382*2)/256),((382*2)&255),(x14555-x13696)/256,(x14555-x13696)&255
		.dc.b 3
		.ascii "DUMP"
		.dc.b ((398*2)/256),((398*2)&255),(x14520-x13696)/256,(x14520-x13696)&255
		.dc.b 5
		.ascii "DATE$="
		.dc.b ((408*2)/256),((408*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
cmd_e_table: /* 11e1d */
		.dc.b 3
		.ascii "ELSE"
		.dc.b ((14*2)/256),((14*2)&255),(x141da-x13696)/256,(x141da-x13696)&255
		.dc.b 4
		.ascii "ENDIF"
		.dc.b ((9*2)/256),((9*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 6
		.ascii "ENDFUNC"
		.dc.b ((11*2)/256),((11*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 8
		.ascii "ENDSWITCH"
		.dc.b ((13*2)/256),((13*2)&255),(x142a4-x13696)/256,(x142a4-x13696)&255
		.dc.b 8
		.ascii "ENDSELECT"
		.dc.b ((13*2)/256),((13*2)&255),(x142a4-x13696)/256,(x142a4-x13696)&255
		.dc.b 7
		.ascii "ENDWHILE"
		.dc.b ((5*2)/256),((5*2)&255),(x141b7-x13696)/256,(x141b7-x13696)&255
		.dc.b 4
		.ascii "ENDDO"
		.dc.b ((1*2)/256),((1*2)&255),(x141cd-x13696)/256,(x141cd-x13696)&255
		.dc.b 8
		.ascii "ENDREPEAT"
		.dc.b ((3*2)/256),((3*2)&255),(x141a8-x13696)/256,(x141a8-x13696)&255
		.dc.b 5
		.ascii "ENDFOR"
		.dc.b ((31*2)/256),((31*2)&255),(x14251-x13696)/256,(x14251-x13696)&255
		.dc.b 6
		.ascii "ENDPROC"
		.dc.b ((7*2)/256),((7*2)&255),(x141ec-x13696)/256,(x141ec-x13696)&255
		.dc.b 5
		.ascii "ENDSUB"
		.dc.b ((7*2)/256),((7*2)&255),(x141ec-x13696)/256,(x141ec-x13696)&255
		.dc.b 6
		.ascii "EXIT IF"
		.dc.b ((43*2)/256),((43*2)&255),(x141e1-x13696)/256,(x141e1-x13696)&255
		.dc.b 6
		.ascii "EXIT IF"
		.dc.b ((55*2)/256),((55*2)&255),(x141e1-x13696)/256,(x141e1-x13696)&255
		.dc.b 6
		.ascii "ELLIPSE"
		.dc.b ((295*2)/256),((295*2)&255),(x14670-x13696)/256,(x14670-x13696)&255
		.dc.b 4
		.ascii "ERROR"
		.dc.b ((299*2)/256),((299*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 3
		.ascii "EDIT"
		.dc.b ((328*2)/256),((328*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 4
		.ascii "ERASE"
		.dc.b ((322*2)/256),((322*2)&255),(x1441d-x13696)/256,(x1441d-x13696)&255
		.dc.b 3
		.ascii "EXEC"
		.dc.b ((323*2)/256),((323*2)&255),(x144d8-x13696)/256,(x144d8-x13696)&255
		.dc.b 4
		.ascii "EVERY"
		.dc.b ((362*2)/256),((362*2)&255),(x148b7-x13696)/256,(x148b7-x13696)&255
cmd_f_table: /* 11ef3 */
		.dc.b 2
		.ascii "FOR"
		.dc.b ((19*2)/256),((19*2)&255),(x141fb-x13696)/256,(x141fb-x13696)&255
		.dc.b 7
		.ascii "FUNCTION"
		.dc.b ((10*2)/256),((10*2)&255),(x148ec-x13696)/256,(x148ec-x13696)&255
		.dc.b 5
		.ascii "FLOAT{"
		.dc.b ((236*2)/256),((236*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 3
		.ascii "FILL"
		.dc.b ((300*2)/256),((300*2)&255),(x1449f-x13696)/256,(x1449f-x13696)&255
		.dc.b 4
		.ascii "FIELD"
		.dc.b ((324*2)/256),((324*2)&255),(x146ed-x13696)/256,(x146ed-x13696)&255
cmd_files:
		.dc.b 4
		.ascii "FILES"
		.dc.b ((325*2)/256),((325*2)&255),(x1450a-x13696)/256,(x1450a-x13696)&255
cmd_fileselect:
		.dc.b 9
		.ascii "FILESELECT"
		.dc.b ((329*2)/256),((329*2)&255),(x1450a-x13696)/256,(x1450a-x13696)&255
		.dc.b 4
		.ascii "FULLW"
		.dc.b ((361*2)/256),((361*2)&255),(x14644-x13696)/256,(x14644-x13696)&255
cmd_g_table: /* 11f49 */
		.dc.b 4
		.ascii "GOSUB"
		.dc.b ((61*2)/256),((61*2)&255),(x1495a-x13696)/256,(x1495a-x13696)&255
		.dc.b 3
		.ascii "GOTO"
		.dc.b ((58*2)/256),((58*2)&255),(x149a7-x13696)/256,(x149a7-x13696)&255
		.dc.b 5
		.ascii "GEMSYS"
		.dc.b ((218*2)/256),((218*2)&255),(x14b88-x13696)/256,(x14b88-x13696)&255
		.dc.b 6
		.ascii "GINTIN("
		.dc.b ((226*2)/256),((226*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 7
		.ascii "GINTOUT("
		.dc.b ((227*2)/256),((227*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 7
		.ascii "GCONTRL("
		.dc.b ((229*2)/256),((229*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 2
		.ascii "GET"
		.dc.b ((257*2)/256),((257*2)&255),(x14714-x13696)/256,(x14714-x13696)&255
		.dc.b 8
		.ascii "GRAPHMODE"
		.dc.b ((278*2)/256),((278*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
cmd_h_table: /* 11fa3 */
		.dc.b 7
		.ascii "HARDCOPY"
		.dc.b ((343*2)/256),((343*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 4
		.ascii "HIDEM"
		.dc.b ((302*2)/256),((302*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 4
		.ascii "HLINE"
		.dc.b ((91*2)/256),((91*2)&255),(x1447d-x13696)/256,(x1447d-x13696)&255
		.dc.b 3
		.ascii "HTAB"
		.dc.b ((320*2)/256),((320*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
cmd_i_table: /* 11fcd */
		.dc.b 1
		.ascii "IF"
		.dc.b ((8*2)/256),((8*2)&255),(x1419d-x13696)/256,(x1419d-x13696)&255
		.dc.b 2
		.ascii "INC"
		.dc.b ((160*2)/256),((160*2)&255),(x14331-x13696)/256,(x14331-x13696)&255
		.dc.b 5
		.ascii "INTIN("
		.dc.b ((222*2)/256),((222*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 6
		.ascii "INTOUT("
		.dc.b ((223*2)/256),((223*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 3
		.ascii "INT{"
		.dc.b ((232*2)/256),((232*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 4
		.ascii "INFOW"
		.dc.b ((276*2)/256),((276*2)&255),(x14654-x13696)/256,(x14654-x13696)&255
		.dc.b 6
		.ascii "INFOW #"
		.dc.b ((276*2)/256),((276*2)&255),(x14654-x13696)/256,(x14654-x13696)&255
		.dc.b 5
		.ascii "INSERT"
		.dc.b ((350*2)/256),((350*2)&255),(x1411e-x13696)/256,(x1411e-x13696)&255
		.dc.b 4
		.ascii "INPUT"
		.dc.b ((368*2)/256),((368*2)&255),(x151da-x13696)/256,(x151da-x13696)&255
		.dc.b 5
		.ascii "INLINE"
		.dc.b ((417*2)/256),((417*2)&255),(x1446c-x13696)/256,(x1446c-x13696)&255
cmd_k_table: /* 12032 */
		.dc.b 5
		.ascii "KEYPAD"
		.dc.b ((375*2)/256),((375*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 6
		.ascii "KEYTEST"
		.dc.b ((376*2)/256),((376*2)&255),(x14ac2-x13696)/256,(x14ac2-x13696)&255
		.dc.b 5
		.ascii "KEYGET"
		.dc.b ((377*2)/256),((377*2)&255),(x14ac2-x13696)/256,(x14ac2-x13696)&255
		.dc.b 6
		.ascii "KEYLOOK"
		.dc.b ((378*2)/256),((378*2)&255),(x14ac2-x13696)/256,(x14ac2-x13696)&255
		.dc.b 7
		.ascii "KEYPRESS"
		.dc.b ((379*2)/256),((379*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 5
		.ascii "KEYDEF"
		.dc.b ((380*2)/256),((380*2)&255),(x14ada-x13696)/256,(x14ada-x13696)&255
		.dc.b 3
		.ascii "KILL"
		.dc.b ((333*2)/256),((333*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
cmd_l_table: /* 12081 */
		.dc.b 3
		.ascii "LOOP"
		.dc.b ((1*2)/256),((1*2)&255),(x141cd-x13696)/256,(x141cd-x13696)&255
		.dc.b 2
		.ascii "LET"
		.dc.b ((64*2)/256),((64*2)&255),(x14083-x13696)/256,(x14083-x13696)&255
		.dc.b 3
		.ascii "LINE"
		.dc.b ((155*2)/256),((155*2)&255),(x14439-x13696)/256,(x14439-x13696)&255
		.dc.b 4
		.ascii "LPOKE"
		.dc.b ((99*2)/256),((99*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 4
		.ascii "LONG{"
		.dc.b ((231*2)/256),((231*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 4
		.ascii "LOCAL"
		.dc.b ((53*2)/256),((53*2)&255),(x14aa9-x13696)/256,(x14aa9-x13696)&255
		.dc.b 5
		.ascii "LPRINT"
		.dc.b ((303*2)/256),((303*2)&255),(x15247-x13696)/256,(x15247-x13696)&255
		.dc.b 3
		.ascii "LSET"
		.dc.b ((304*2)/256),((304*2)&255),(x14181-x13696)/256,(x14181-x13696)&255
		.dc.b 5
		.ascii "LOCATE"
		.dc.b ((125*2)/256),((125*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 3
		.ascii "LIST"
		.dc.b ((388*2)/256),((388*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
		.dc.b 4
		.ascii "LLIST"
		.dc.b ((389*2)/256),((389*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
		.dc.b 3
		.ascii "LOAD"
		.dc.b ((395*2)/256),((395*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
cmd_m_table: /* 120f4 */
		.dc.b 2
		.ascii "MAT"
		.dc.b ((424*2)/256),((424*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MONITOR"
		.dc.b ((48*2)/256),((48*2)&255),(x14b14-x13696)/256,(x14b14-x13696)&255
		.dc.b 2
		.ascii "MUL"
		.dc.b ((192*2)/256),((192*2)&255),(x142e7-x13696)/256,(x142e7-x13696)&255
		.dc.b 3
		.ascii "MENU"
		.dc.b ((139*2)/256),((139*2)&255),(x14a40-x13696)/256,(x14a40-x13696)&255
		.dc.b 4
		.ascii "MID$("
		.dc.b ((305*2)/256),((305*2)&255),(x14662-x13696)/256,(x14662-x13696)&255
		.dc.b 4
		.ascii "MKDIR"
		.dc.b ((331*2)/256),((331*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
		.dc.b 4
		.ascii "MOUSE"
		.dc.b ((332*2)/256),((332*2)&255),(x14aba-x13696)/256,(x14aba-x13696)&255
		.dc.b 3
		.ascii "MODE"
		.dc.b ((414*2)/256),((414*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 5
		.ascii "MW_OUT"
		.dc.b ((452*2)/256),((452*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
cmd_n_table: /* 1214b */
		.dc.b 3
		.ascii "NEXT"
		.dc.b ((31*2)/256),((31*2)&255),(x14251-x13696)/256,(x14251-x13696)&255
		.dc.b 3
		.ascii "NAME"
		.dc.b ((330*2)/256),((330*2)&255),(x14566-x13696)/256,(x14566-x13696)&255
		.dc.b 2
		.ascii "NEW"
		.dc.b ((306*2)/256),((306*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
cmd_o_table: /* 12165 */
		.dc.b 3
		.ascii "OPEN"
		.dc.b ((265*2)/256),((265*2)&255),(x145d3-x13696)/256,(x145d3-x13696)&255
		.dc.b 1
		.ascii "ON"
		.dc.b ((126*2)/256),((126*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 7
		.ascii "OB_NEXT("
		.dc.b ((242*2)/256),((242*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 7
		.ascii "OB_HEAD("
		.dc.b ((243*2)/256),((243*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 7
		.ascii "OB_TAIL("
		.dc.b ((244*2)/256),((244*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 7
		.ascii "OB_TYPE("
		.dc.b ((245*2)/256),((245*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 8
		.ascii "OB_FLAGS("
		.dc.b ((246*2)/256),((246*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 8
		.ascii "OB_STATE("
		.dc.b ((247*2)/256),((247*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 7
		.ascii "OB_SPEC("
		.dc.b ((248*2)/256),((248*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 4
		.ascii "OB_X("
		.dc.b ((249*2)/256),((249*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 4
		.ascii "OB_Y("
		.dc.b ((250*2)/256),((250*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 4
		.ascii "OB_W("
		.dc.b ((251*2)/256),((251*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 4
		.ascii "OB_H("
		.dc.b ((252*2)/256),((252*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 2
		.ascii "OUT"
		.dc.b ((307*2)/256),((307*2)&255),(x147c1-x13696)/256,(x147c1-x13696)&255
		.dc.b 3
		.ascii "OUT%"
		.dc.b ((421*2)/256),((421*2)&255),(x147c1-x13696)/256,(x147c1-x13696)&255
		.dc.b 3
		.ascii "OUT&"
		.dc.b ((420*2)/256),((420*2)&255),(x147c1-x13696)/256,(x147c1-x13696)&255
		.dc.b 8
		.ascii "OTHERWISE"
		.dc.b ((15*2)/256),((15*2)&255),(x1429f-x13696)/256,(x1429f-x13696)&255
		.dc.b 5
		.ascii "OPTION"
		.dc.b ((410*2)/256),((410*2)&255),(x1453f-x13696)/256,(x1453f-x13696)&255
cmd_p_table: /* 1222d */
		.dc.b 4
		.ascii "PRINT"
		.dc.b ((147*2)/256),((147*2)&255),(x1522e-x13696)/256,(x1522e-x13696)&255
		.dc.b 3
		.ascii "PLOT"
		.dc.b ((88*2)/256),((88*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 3
		.ascii "PSET"
		.dc.b ((89*2)/256),((89*2)&255),(x14461-x13696)/256,(x14461-x13696)&255
		.dc.b 3
		.ascii "POKE"
		.dc.b ((97*2)/256),((97*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 5
		.ascii "PTSIN("
		.dc.b ((220*2)/256),((220*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 6
		.ascii "PTSOUT("
		.dc.b ((221*2)/256),((221*2)&255),(x14152-x13696)/256,(x14152-x13696)&255
		.dc.b 8
		.ascii "PROCEDURE"
		.dc.b ((6*2)/256),((6*2)&255),(x148e4-x13696)/256,(x148e4-x13696)&255
		.dc.b 2
		.ascii "PUT"
		.dc.b ((260*2)/256),((260*2)&255),(x1472e-x13696)/256,(x1472e-x13696)&255
		.dc.b 3
		.ascii "PBOX"
		.dc.b ((288*2)/256),((288*2)&255),(x1445e-x13696)/256,(x1445e-x13696)&255
		.dc.b 4
		.ascii "PRBOX"
		.dc.b ((290*2)/256),((290*2)&255),(x1445e-x13696)/256,(x1445e-x13696)&255
		.dc.b 6
		.ascii "PCIRCLE"
		.dc.b ((293*2)/256),((293*2)&255),(x1467b-x13696)/256,(x1467b-x13696)&255
		.dc.b 7
		.ascii "PELLIPSE"
		.dc.b ((297*2)/256),((297*2)&255),(x14670-x13696)/256,(x14670-x13696)&255
		.dc.b 4
		.ascii "PAUSE"
		.dc.b ((344*2)/256),((344*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 7
		.ascii "POLYLINE"
		.dc.b ((347*2)/256),((347*2)&255),(x14a94-x13696)/256,(x14a94-x13696)&255
		.dc.b 7
		.ascii "POLYFILL"
		.dc.b ((348*2)/256),((348*2)&255),(x14a94-x13696)/256,(x14a94-x13696)&255
		.dc.b 7
		.ascii "POLYMARK"
		.dc.b ((349*2)/256),((349*2)&255),(x14a94-x13696)/256,(x14a94-x13696)&255
		.dc.b 4
		.ascii "PSAVE"
		.dc.b ((391*2)/256),((391*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
cmd_q_table: /* 122e6 */
		.dc.b 3
		.ascii "QUIT"
		.dc.b ((309*2)/256),((309*2)&255),(x14b14-x13696)/256,(x14b14-x13696)&255
		.dc.b 4
		.ascii "QSORT"
		.dc.b ((345*2)/256),((345*2)&255),(x14031-x13696)/256,(x14031-x13696)&255
cmd_r_table: /* 122f9 */
		.dc.b 2
		.ascii "REM"
		.dc.b ((114*2)/256),((114*2)&255),(x1465e-x13696)/256,(x1465e-x13696)&255
		.dc.b 5
		.ascii "REPEAT"
		.dc.b ((2*2)/256),((2*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 6
		.ascii "RESTORE"
		.dc.b ((59*2)/256),((59*2)&255),(x149a5-x13696)/256,(x149a5-x13696)&255
		.dc.b 5
		.ascii "RETURN"
		.dc.b ((7*2)/256),((7*2)&255),(x141ec-x13696)/256,(x141ec-x13696)&255
		.dc.b 5
		.ascii "RETURN"
		.dc.b ((17*2)/256),((17*2)&255),(x141ec-x13696)/256,(x141ec-x13696)&255
		.dc.b 6
		.ascii "RELSEEK"
		.dc.b ((209*2)/256),((209*2)&255),(x147eb-x13696)/256,(x147eb-x13696)&255
		.dc.b 6
		.ascii "RESERVE"
		.dc.b ((103*2)/256),((103*2)&255),(x14b1a-x13696)/256,(x14b1a-x13696)&255
		.dc.b 8
		.ascii "RANDOMIZE"
		.dc.b ((255*2)/256),((255*2)&255),(x14b14-x13696)/256,(x14b14-x13696)&255
		.dc.b 3
		.ascii "RBOX"
		.dc.b ((289*2)/256),((289*2)&255),(x1445e-x13696)/256,(x1445e-x13696)&255
		.dc.b 4
		.ascii "RMDIR"
		.dc.b ((334*2)/256),((334*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
		.dc.b 3
		.ascii "RSET"
		.dc.b ((335*2)/256),((335*2)&255),(x14181-x13696)/256,(x14181-x13696)&255
		.dc.b 5
		.ascii "RENAME"
		.dc.b ((352*2)/256),((352*2)&255),(x14566-x13696)/256,(x14566-x13696)&255
		.dc.b 4
		.ascii "RCALL"
		.dc.b ((151*2)/256),((151*2)&255),(x14a6f-x13696)/256,(x14a6f-x13696)&255
		.dc.b 5
		.ascii "RESUME"
		.dc.b ((105*2)/256),((105*2)&255),(x148d7-x13696)/256,(x148d7-x13696)&255
		.dc.b 3
		.ascii "READ"
		.dc.b ((372*2)/256),((372*2)&255),(x15201-x13696)/256,(x15201-x13696)&255
		.dc.b 5
		.ascii "RECORD"
		.dc.b ((109*2)/256),((109*2)&255),(x147f2-x13696)/256,(x147f2-x13696)&255
		.dc.b 2
		.ascii "RUN"
		.dc.b ((393*2)/256),((393*2)&255),(x14547-x13696)/256,(x14547-x13696)&255
		.dc.b 5
		.ascii "RECALL"
		.dc.b ((403*2)/256),((403*2)&255),(x14b37-x13696)/256,(x14b37-x13696)&255
		.dc.b 6
		.ascii "RC_COPY"
		.dc.b ((413*2)/256),((413*2)&255),(x14b5c-x13696)/256,(x14b5c-x13696)&255
cmd_s_table: /* 123c3 */
		.dc.b 5
		.ascii "SWITCH"
		.dc.b ((12*2)/256),((12*2)&255),(x1428f-x13696)/256,(x1428f-x13696)&255
		.dc.b 5
		.ascii "SELECT"
		.dc.b ((12*2)/256),((12*2)&255),(x1428f-x13696)/256,(x1428f-x13696)&255
		.dc.b 3
		.ascii "SWAP"
		.dc.b ((118*2)/256),((118*2)&255),(x149ac-x13696)/256,(x149ac-x13696)&255
		.dc.b 2
		.ascii "SUB"
		.dc.b ((184*2)/256),((184*2)&255),(x142a6-x13696)/256,(x142a6-x13696)&255
		.dc.b 4
		.ascii "SPOKE"
		.dc.b ((100*2)/256),((100*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 5
		.ascii "SDPOKE"
		.dc.b ((101*2)/256),((101*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 5
		.ascii "SLPOKE"
		.dc.b ((102*2)/256),((102*2)&255),(x14464-x13696)/256,(x14464-x13696)&255
		.dc.b 7
		.ascii "SETCOLOR"
		.dc.b ((211*2)/256),((211*2)&255),(x14b6a-x13696)/256,(x14b6a-x13696)&255
		.dc.b 3
		.ascii "SEEK"
		.dc.b ((208*2)/256),((208*2)&255),(x147eb-x13696)/256,(x147eb-x13696)&255
		.dc.b 6
		.ascii "SETTIME"
		.dc.b ((336*2)/256),((336*2)&255),(x145c6-x13696)/256,(x145c6-x13696)&255
		.dc.b 3
		.ascii "SGET"
		.dc.b ((337*2)/256),((337*2)&255),(x1420e-x13696)/256,(x1420e-x13696)&255
		.dc.b 3
		.ascii "SPUT"
		.dc.b ((339*2)/256),((339*2)&255),(x1420e-x13696)/256,(x1420e-x13696)&255
		.dc.b 4
		.ascii "SHOWM"
		.dc.b ((338*2)/256),((338*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 3
		.ascii "STOP"
		.dc.b ((340*2)/256),((340*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 5
		.ascii "SYSTEM"
		.dc.b ((341*2)/256),((341*2)&255),(x14b14-x13696)/256,(x14b14-x13696)&255
		.dc.b 4
		.ascii "SSORT"
		.dc.b ((346*2)/256),((346*2)&255),(x14031-x13696)/256,(x14031-x13696)&255
		.dc.b 4
		.ascii "STICK"
		.dc.b ((353*2)/256),((353*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 4
		.ascii "SOUND"
		.dc.b ((354*2)/256),((354*2)&255),(x1479e-x13696)/256,(x1479e-x13696)&255
		.dc.b 6
		.ascii "SINGLE{"
		.dc.b ((123*2)/256),((123*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 7
		.ascii "SETMOUSE"
		.dc.b ((374*2)/256),((374*2)&255),(x144aa-x13696)/256,(x144aa-x13696)&255
		.dc.b 3
		.ascii "SAVE"
		.dc.b ((390*2)/256),((390*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
		.dc.b 6
		.ascii "SETDRAW"
		.dc.b ((396*2)/256),((396*2)&255),(x14461-x13696)/256,(x14461-x13696)&255
		.dc.b 4
		.ascii "STORE"
		.dc.b ((402*2)/256),((402*2)&255),(x14b2a-x13696)/256,(x14b2a-x13696)&255
		.dc.b 5
		.ascii "SPRITE"
		.dc.b ((409*2)/256),((409*2)&255),(x152b2-x13696)/256,(x152b2-x13696)&255
cmd_t_table: /* 124bd */
		.dc.b 3
		.ascii "TEXT"
		.dc.b ((149*2)/256),((149*2)&255),(x151af-x13696)/256,(x151af-x13696)&255
		.dc.b 3
		.ascii "TRON"
		.dc.b ((143*2)/256),((143*2)&255),(x14616-x13696)/256,(x14616-x13696)&255
		.dc.b 4
		.ascii "TROFF"
		.dc.b ((146*2)/256),((146*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 3
		.ascii "TOPW"
		.dc.b ((274*2)/256),((274*2)&255),(x1464d-x13696)/256,(x1464d-x13696)&255
		.dc.b 5
		.ascii "TITLEW"
		.dc.b ((275*2)/256),((275*2)&255),(x14654-x13696)/256,(x14654-x13696)&255
		.dc.b 4
		.ascii "TOUCH"
		.dc.b ((326*2)/256),((326*2)&255),(x1464d-x13696)/256,(x1464d-x13696)&255
		.dc.b 5
		.ascii "TIME$="
		.dc.b ((407*2)/256),((407*2)&255),(x1454c-x13696)/256,(x1454c-x13696)&255
cmd_u_table: /* 12502 */
		.dc.b 4
		.ascii "UNTIL"
		.dc.b ((3*2)/256),((3*2)&255),(x141a8-x13696)/256,(x141a8-x13696)&255
cmd_v_table: /* 1250c */
		.dc.b 5
		.ascii "VDISYS"
		.dc.b ((214*2)/256),((214*2)&255),(x14b74-x13696)/256,(x14b74-x13696)&255
		.dc.b 3
		.ascii "VOID"
		.dc.b ((240*2)/256),((240*2)&255),(x1407e-x13696)/256,(x1407e-x13696)&255
		.dc.b 4
		.ascii "VSYNC"
		.dc.b ((342*2)/256),((342*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 3
		.ascii "VTAB"
		.dc.b ((321*2)/256),((321*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 3
		.ascii "V~H="
		.dc.b ((406*2)/256),((406*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 8
		.ascii "VSETCOLOR"
		.dc.b ((419*2)/256),((419*2)&255),(x144b2-x13696)/256,(x144b2-x13696)&255
cmd_w_table: /* 1254a */
		.dc.b 4
		.ascii "WHILE"
		.dc.b ((4*2)/256),((4*2)&255),(x141a8-x13696)/256,(x141a8-x13696)&255
		.dc.b 3
		.ascii "WEND"
		.dc.b ((5*2)/256),((5*2)&255),(x141b7-x13696)/256,(x141b7-x13696)&255
		.dc.b 3
		.ascii "WAVE"
		.dc.b ((355*2)/256),((355*2)&255),(x147a9-x13696)/256,(x147a9-x13696)&255
		.dc.b 7
		.ascii "WINDTAB("
		.dc.b ((412*2)/256),((412*2)&255),(x1414f-x13696)/256,(x1414f-x13696)&255
		.dc.b 4
		.ascii "WRITE"
		.dc.b ((416*2)/256),((416*2)&255),(x15205-x13696)/256,(x15205-x13696)&255
		.dc.b 4
		.ascii "WORD{"
		.dc.b ((418*2)/256),((418*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
cmd_other_table:
		.dc.b 5
		.ascii "_DATA="
		.dc.b ((423*2)/256),((423*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 0
		.ascii "{"
		.dc.b ((230*2)/256),((230*2)&255),(x14169-x13696)/256,(x14169-x13696)&255
		.dc.b 0
		.ascii "~"
		.dc.b ((241*2)/256),((241*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 9
		.ascii "FORM INPUT"
		.dc.b ((153*2)/256),((153*2)&255),(x14202-x13696)/256,(x14202-x13696)&255
		.dc.b 9
		.ascii "LINE INPUT"
		.dc.b ((154*2)/256),((154*2)&255),(x14439-x13696)/256,(x14439-x13696)&255
		.dc.b 6
		.ascii "ELSE IF"
		.dc.b ((16*2)/256),((16*2)&255),(x141da-x13696)/256,(x141da-x13696)&255
		.dc.b 2
		.ascii "END"
		.dc.b ((124*2)/256),((124*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 7
		.ascii "DO WHILE"
		.dc.b ((49*2)/256),((49*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 7
		.ascii "DO UNTIL"
		.dc.b ((50*2)/256),((50*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 9
		.ascii "LOOP WHILE"
		.dc.b ((51*2)/256),((51*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 9
		.ascii "LOOP UNTIL"
		.dc.b ((52*2)/256),((52*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 7
		.ascii "ON ERROR"
		.dc.b ((128*2)/256),((128*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 13
		.ascii "ON ERROR GOSUB"
		.dc.b ((129*2)/256),((129*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 7
		.ascii "ON BREAK"
		.dc.b ((130*2)/256),((130*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 12
		.ascii "ON BREAK CONT"
		.dc.b ((131*2)/256),((131*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 13
		.ascii "ON BREAK GOSUB"
		.dc.b ((132*2)/256),((132*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 12
		.ascii "ON MENU GOSUB"
		.dc.b ((133*2)/256),((133*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 20
		.ascii "ON MENU MESSAGE GOSUB"
		.dc.b ((134*2)/256),((134*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 16
		.ascii "ON MENU KEY GOSUB"
		.dc.b ((135*2)/256),((135*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 13
		.ascii "ON MENU BUTTON"
		.dc.b ((136*2)/256),((136*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 6
		.ascii "ON MENU"
		.dc.b ((137*2)/256),((137*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 11
		.ascii "ON MENU IBOX"
		.dc.b ((238*2)/256),((238*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 11
		.ascii "ON MENU OBOX"
		.dc.b ((239*2)/256),((239*2)&255),(x1482d-x13696)/256,(x1482d-x13696)&255
		.dc.b 7
		.ascii "MENU OFF"
		.dc.b ((140*2)/256),((140*2)&255),(x14a40-x13696)/256,(x14a40-x13696)&255
		.dc.b 8
		.ascii "MENU KILL"
		.dc.b ((141*2)/256),((141*2)&255),(x14a40-x13696)/256,(x14a40-x13696)&255
		.dc.b 3
		.ascii "MENU"
		.dc.b ((142*2)/256),((142*2)&255),(x14a40-x13696)/256,(x14a40-x13696)&255
		.dc.b 4
		.ascii "OPENW"
		.dc.b ((266*2)/256),((266*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 6
		.ascii "OPENW #"
		.dc.b ((267*2)/256),((267*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 5
		.ascii "CLOSEW"
		.dc.b ((269*2)/256),((269*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 7
		.ascii "CLOSEW #"
		.dc.b ((270*2)/256),((270*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 5
		.ascii "CLEARW"
		.dc.b ((272*2)/256),((272*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 7
		.ascii "CLEARW #"
		.dc.b ((273*2)/256),((273*2)&255),(x14467-x13696)/256,(x14467-x13696)&255
		.dc.b 10
		.ascii "> PROCEDURE"
		.dc.b ((54*2)/256),((54*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 9
		.ascii "> FUNCTION"
		.dc.b ((449*2)/256),((449*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 8
		.ascii "RELSEEK #"
		.dc.b ((209*2)/256),((209*2)&255),(x147eb-x13696)/256,(x147eb-x13696)&255
		.dc.b 5
		.ascii "SEEK #"
		.dc.b ((208*2)/256),((208*2)&255),(x147eb-x13696)/256,(x147eb-x13696)&255
		.dc.b 5
		.ascii "TOPW #"
		.dc.b ((274*2)/256),((274*2)&255),(x1464d-x13696)/256,(x1464d-x13696)&255
		.dc.b 7
		.ascii "TITLEW #"
		.dc.b ((275*2)/256),((275*2)&255),(x14654-x13696)/256,(x14654-x13696)&255
		.dc.b 6
		.ascii "TOUCH #"
		.dc.b ((326*2)/256),((326*2)&255),(x1464d-x13696)/256,(x1464d-x13696)&255
		.dc.b 6
		.ascii "DEFAULT"
		.dc.b ((15*2)/256),((15*2)&255),(x1429f-x13696)/256,(x1429f-x13696)&255
		.dc.b 5
		.ascii "SELECT"
		.dc.b ((44*2)/256),((44*2)&255),(x1446a-x13696)/256,(x1446a-x13696)&255
		.dc.b 6
		.ascii "MAT ADD"
		.dc.b ((424*2)/256),((424*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT SUB"
		.dc.b ((426*2)/256),((426*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT CPY"
		.dc.b ((428*2)/256),((428*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 7
		.ascii "MAT XCPY"
		.dc.b ((429*2)/256),((429*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT DET"
		.dc.b ((430*2)/256),((430*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT NEG"
		.dc.b ((431*2)/256),((431*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT ABS"
		.dc.b ((432*2)/256),((432*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 7
		.ascii "MAT NORM"
		.dc.b ((433*2)/256),((433*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 7
		.ascii "MAT READ"
		.dc.b ((434*2)/256),((434*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 8
		.ascii "MAT PRINT"
		.dc.b ((435*2)/256),((435*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 8
		.ascii "MAT TRANS"
		.dc.b ((436*2)/256),((436*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT CLR"
		.dc.b ((437*2)/256),((437*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT SET"
		.dc.b ((438*2)/256),((438*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT ONE"
		.dc.b ((439*2)/256),((439*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 7
		.ascii "MAT BASE"
		.dc.b ((440*2)/256),((440*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 7
		.ascii "MAT QDET"
		.dc.b ((441*2)/256),((441*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 8
		.ascii "MAT INPUT"
		.dc.b ((442*2)/256),((442*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 7
		.ascii "MAT RANG"
		.dc.b ((443*2)/256),((443*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT MUL"
		.dc.b ((444*2)/256),((444*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b 6
		.ascii "MAT INV"
		.dc.b ((448*2)/256),((448*2)&255),(x13ed2-x13696)/256,(x13ed2-x13696)&255
		.dc.b -1
/* gfa: 21edb */
/* gbe: 00051c8a */

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

func_table:
func_a_table: /* 1297e */
		.dc.b 2
		.ascii "AND"
		.dc.b 0,0
		.dc.b 3
		.ascii "AND("
		.dc.b TOK_SUBFUNC_208,5
		.dc.b 3
		.ascii "ABS("
		.dc.b 0,40
		.dc.b 3
		.ascii "ATN("
		.dc.b 0,44
		.dc.b 3
		.ascii "ASC("
		.dc.b TOK_SUBFUNC_208,67
		.dc.b 2
		.ascii "AT("
		.dc.b 0,89
		.dc.b 4
		.ascii "ASIN("
		.dc.b 0,65
		.dc.b 4
		.ascii "ACOS("
		.dc.b 0,82
		.dc.b 1
		.ascii "AS"
		.dc.b 0,108
		.dc.b 6
		.ascii "ARRPTR("
		.dc.b TOK_SUBFUNC_208,188
		.dc.b 3
		.ascii "ADD("
		.dc.b TOK_SUBFUNC_208,2
		.dc.b 6
		.ascii "ADDRIN("
		.dc.b TOK_SUBFUNC_208,18
		.dc.b 5
		.ascii "ADDRIN"
		.dc.b TOK_SUBFUNC_208,19
		.dc.b 7
		.ascii "ADDROUT("
		.dc.b TOK_SUBFUNC_208,20
		.dc.b 6
		.ascii "ADDROUT"
		.dc.b TOK_SUBFUNC_208,21
		.dc.b 10
		.ascii "APPL_INIT()"
		.dc.b TOK_SUBFUNC_208,135
		.dc.b 9
		.ascii "APPL_READ("
		.dc.b TOK_SUBFUNC_208,136
		.dc.b 10
		.ascii "APPL_WRITE("
		.dc.b TOK_SUBFUNC_208,137
		.dc.b 9
		.ascii "APPL_FIND("
		.dc.b TOK_SUBFUNC_208,138
		.dc.b 10
		.ascii "APPL_TPLAY("
		.dc.b TOK_SUBFUNC_208,139
		.dc.b 12
		.ascii "APPL_TRECORD("
		.dc.b TOK_SUBFUNC_208,140
		.dc.b 10
		.ascii "APPL_EXIT()"
		.dc.b TOK_SUBFUNC_208,141
func_b_table: /* 12a82 */
		.dc.b 4
		.ascii "BIN$("
		.dc.b 0,115
		.dc.b 7
		.ascii "BASEPAGE"
		.dc.b TOK_SUBFUNC_208,31
		.dc.b 4
		.ascii "BIOS("
		.dc.b TOK_SUBFUNC_208,85
		.dc.b 4
		.ascii "BREAK"
		.dc.b 0,153
		.dc.b 5
		.ascii "BUTTON"
		.dc.b 0,171
		.dc.b 3
		.ascii "BASE"
		.dc.b 0,182
		.dc.b 4
		.ascii "BYTE("
		.dc.b TOK_SUBFUNC_208,16
		.dc.b 4
		.ascii "BTST("
		.dc.b TOK_SUBFUNC_208,44
		.dc.b 4
		.ascii "BSET("
		.dc.b TOK_SUBFUNC_208,45
		.dc.b 4
		.ascii "BCLR("
		.dc.b TOK_SUBFUNC_208,46
		.dc.b 4
		.ascii "BCHG("
		.dc.b TOK_SUBFUNC_208,47
		.dc.b 4
		.ascii "BYTE{"
		.dc.b TOK_SUBFUNC_208,116
func_c_table: /* 12afd */
		.dc.b 3
		.ascii "COS("
		.dc.b 0,42
		.dc.b 4
		.ascii "COSQ("
		.dc.b 0,125
		.dc.b 4
		.ascii "CHR$("
		.dc.b 0,66
		.dc.b 3
		.ascii "CVI("
		.dc.b TOK_SUBFUNC_208,75
		.dc.b 3
		.ascii "CVL("
		.dc.b TOK_SUBFUNC_208,76
		.dc.b 3
		.ascii "CVS("
		.dc.b 0,105
		.dc.b 3
		.ascii "CVF("
		.dc.b 0,106
		.dc.b 3
		.ascii "CVD("
		.dc.b 0,107
		.dc.b 6
		.ascii "CONTRL("
		.dc.b TOK_SUBFUNC_208,22
		.dc.b 5
		.ascii "CONTRL"
		.dc.b TOK_SUBFUNC_208,23
		.dc.b 3
		.ascii "CONT"
		.dc.b 0,154
		.dc.b 1
		.ascii "C:"
		.dc.b TOK_SUBFUNC_208,117
		.dc.b 5
		.ascii "CRSLIN"
		.dc.b TOK_SUBFUNC_208,56
		.dc.b 5
		.ascii "CRSCOL"
		.dc.b TOK_SUBFUNC_208,57
		.dc.b 4
		.ascii "CARD("
		.dc.b TOK_SUBFUNC_208,15
		.dc.b 4
		.ascii "CARD{"
		.dc.b TOK_SUBFUNC_208,115
		.dc.b 4
		.ascii "CHAR{"
		.dc.b 0,97
		.dc.b 4
		.ascii "CINT("
		.dc.b TOK_SUBFUNC_208,103
		.dc.b 6
		.ascii "CFLOAT("
		.dc.b 0,110
		.dc.b 6
		.ascii "COMBIN("
		.dc.b 0,141
func_d_table: /* 12bc4 */
		.dc.b 2
		.ascii "DIV"
		.dc.b 0,11
		.dc.b 3
		.ascii "DIV("
		.dc.b TOK_SUBFUNC_208,1
		.dc.b 5
		.ascii "DOWNTO"
		.dc.b 0,73
		.dc.b 5
		.ascii "DPEEK("
		.dc.b TOK_SUBFUNC_208,64
		.dc.b 4
		.ascii "DIM?("
		.dc.b TOK_SUBFUNC_208,81
		.dc.b 4
		.ascii "DATE$"
		.dc.b 0,126
		.dc.b 4
		.ascii "DIR$("
		.dc.b 0,132
		.dc.b 5
		.ascii "DFREE("
		.dc.b TOK_SUBFUNC_208,83
		.dc.b 6
		.ascii "DOUBLE{"
		.dc.b 0,93
		.dc.b 3
		.ascii "DEG("
		.dc.b 0,103
		.dc.b 4
		.ascii "DRAW("
		.dc.b 0,134
func_e_table: /* 12c33 */
		.dc.b 4
		.ascii "EOF(#"
		.dc.b TOK_SUBFUNC_208,78
		.dc.b 3
		.ascii "EOF("
		.dc.b TOK_SUBFUNC_208,78
		.dc.b 2
		.ascii "EQV"
		.dc.b 0,4
		.dc.b 3
		.ascii "EQV("
		.dc.b TOK_SUBFUNC_208,8
		.dc.b 4
		.ascii "ERROR"
		.dc.b 0,151
		.dc.b 4
		.ascii "ERR$("
		.dc.b 0,36
		.dc.b 2
		.ascii "ERR"
		.dc.b TOK_SUBFUNC_208,88
		.dc.b 4
		.ascii "EVEN("
		.dc.b TOK_SUBFUNC_208,101
		.dc.b 4
		.ascii "EXEC("
		.dc.b TOK_SUBFUNC_208,95
		.dc.b 5
		.ascii "EXIST("
		.dc.b TOK_SUBFUNC_208,84
		.dc.b 3
		.ascii "EXP("
		.dc.b 0,47
		.dc.b 11
		.ascii "EVNT_KEYBD()"
		.dc.b TOK_SUBFUNC_208,118
		.dc.b 11
		.ascii "EVNT_BUTTON("
		.dc.b TOK_SUBFUNC_208,119
		.dc.b 10
		.ascii "EVNT_MOUSE("
		.dc.b TOK_SUBFUNC_208,120
		.dc.b 10
		.ascii "EVNT_MESAG("
		.dc.b TOK_SUBFUNC_208,121
		.dc.b 10
		.ascii "EVNT_TIMER("
		.dc.b TOK_SUBFUNC_208,122
		.dc.b 10
		.ascii "EVNT_MULTI("
		.dc.b TOK_SUBFUNC_208,123
		.dc.b 11
		.ascii "EVNT_DCLICK("
		.dc.b TOK_SUBFUNC_208,142
func_f_table: /* 12d0e */
		.dc.b 4
		.ascii "FRAC("
		.dc.b 0,39
		.dc.b 3
		.ascii "FRE("
		.dc.b TOK_SUBFUNC_208,71
		.dc.b 4
		.ascii "FALSE"
		.dc.b 0,189
		.dc.b 4
		.ascii "FATAL"
		.dc.b TOK_SUBFUNC_208,89
		.dc.b 3
		.ascii "FIX("
		.dc.b 0,155
		.dc.b 1
		.ascii "FN"
		.dc.b 0,158
		.dc.b 5
		.ascii "FLOAT{"
		.dc.b 0,92
		.dc.b 7
		.ascii "FORM_DO("
		.dc.b TOK_SUBFUNC_208,157
		.dc.b 9
		.ascii "FORM_DIAL("
		.dc.b TOK_SUBFUNC_208,158
		.dc.b 10
		.ascii "FORM_ALERT("
		.dc.b TOK_SUBFUNC_208,159
		.dc.b 10
		.ascii "FORM_ERROR("
		.dc.b TOK_SUBFUNC_208,160
		.dc.b 11
		.ascii "FORM_CENTER("
		.dc.b TOK_SUBFUNC_208,161
		.dc.b 10
		.ascii "FORM_KEYBD("
		.dc.b TOK_SUBFUNC_208,204
		.dc.b 11
		.ascii "FORM_BUTTON("
		.dc.b TOK_SUBFUNC_208,205
		.dc.b 10
		.ascii "FSEL_INPUT("
		.dc.b TOK_SUBFUNC_208,174
		.dc.b 7
		.ascii "FSFIRST("
		.dc.b TOK_SUBFUNC_208,218
		.dc.b 7
		.ascii "FSNEXT()"
		.dc.b TOK_SUBFUNC_208,219
		.dc.b 7
		.ascii "FSETDTA("
		.dc.b TOK_SUBFUNC_208,220
		.dc.b 8
		.ascii "FGETDTA()"
		.dc.b TOK_SUBFUNC_208,221
		.dc.b 4
		.ascii "FACT("
		.dc.b 0,140
func_g_table: /* 12e0d */
		.dc.b 4
		.ascii "GOSUB"
		.dc.b 0,76
		.dc.b 3
		.ascii "GOTO"
		.dc.b 0,75
		.dc.b 1
		.ascii "GB"
		.dc.b TOK_SUBFUNC_208,61
		.dc.b 7
		.ascii "GCONTRL("
		.dc.b TOK_SUBFUNC_208,24
		.dc.b 6
		.ascii "GCONTRL"
		.dc.b TOK_SUBFUNC_208,25
		.dc.b 6
		.ascii "GEMDOS("
		.dc.b TOK_SUBFUNC_208,87
		.dc.b 6
		.ascii "GINTIN("
		.dc.b TOK_SUBFUNC_208,26
		.dc.b 5
		.ascii "GINTIN"
		.dc.b TOK_SUBFUNC_208,27
		.dc.b 7
		.ascii "GINTOUT("
		.dc.b TOK_SUBFUNC_208,28
		.dc.b 6
		.ascii "GINTOUT"
		.dc.b TOK_SUBFUNC_208,29
		.dc.b 14
		.ascii "GRAF_RUBBERBOX("
		.dc.b TOK_SUBFUNC_208,162
		.dc.b 12
		.ascii "GRAF_DRAGBOX("
		.dc.b TOK_SUBFUNC_208,163
		.dc.b 12
		.ascii "GRAF_MOVEBOX("
		.dc.b TOK_SUBFUNC_208,164
		.dc.b 12
		.ascii "GRAF_GROWBOX("
		.dc.b TOK_SUBFUNC_208,165
		.dc.b 14
		.ascii "GRAF_SHRINKBOX("
		.dc.b TOK_SUBFUNC_208,166
		.dc.b 13
		.ascii "GRAF_WATCHBOX("
		.dc.b TOK_SUBFUNC_208,167
		.dc.b 13
		.ascii "GRAF_SLIDEBOX("
		.dc.b TOK_SUBFUNC_208,168
		.dc.b 11
		.ascii "GRAF_HANDLE("
		.dc.b TOK_SUBFUNC_208,169
		.dc.b 10
		.ascii "GRAF_MOUSE("
		.dc.b TOK_SUBFUNC_208,170
		.dc.b 12
		.ascii "GRAF_MKSTATE("
		.dc.b TOK_SUBFUNC_208,171
		.dc.b 4
		.ascii "GDOS?"
		.dc.b TOK_SUBFUNC_208,104
		.dc.b 7
		.ascii "GETSIZE("
		.dc.b TOK_SUBFUNC_208,239
func_h_table: /* 12f4a */
		.dc.b 4
		.ascii "HEX$("
		.dc.b 0,193
		.dc.b 4
		.ascii "HIMEM"
		.dc.b TOK_SUBFUNC_208,30
func_i_table: /* 12f5e */
		.dc.b 1
		.ascii "IF"
		.dc.b 0,90
		.dc.b 2
		.ascii "IMP"
		.dc.b 0,3
		.dc.b 3
		.ascii "IMP("
		.dc.b TOK_SUBFUNC_208,9
		.dc.b 5
		.ascii "INKEY$"
		.dc.b 0,83
		.dc.b 6
		.ascii "INPUT$("
		.dc.b 0,94
		.dc.b 4
		.ascii "INP(#"
		.dc.b TOK_SUBFUNC_208,77
		.dc.b 3
		.ascii "INP("
		.dc.b TOK_SUBFUNC_208,74
		.dc.b 5
		.ascii "INP&(#"
		.dc.b TOK_SUBFUNC_208,224
		.dc.b 4
		.ascii "INP&("
		.dc.b TOK_SUBFUNC_208,223
		.dc.b 5
		.ascii "INP%(#"
		.dc.b TOK_SUBFUNC_208,226
		.dc.b 4
		.ascii "INP%("
		.dc.b TOK_SUBFUNC_208,225
		.dc.b 4
		.ascii "INP?("
		.dc.b TOK_SUBFUNC_208,93
		.dc.b 4
		.ascii "INPUT"
		.dc.b 0,96
		.dc.b 5
		.ascii "INSTR("
		.dc.b TOK_SUBFUNC_208,68
		.dc.b 3
		.ascii "INT("
		.dc.b 0,37
		.dc.b 3
		.ascii "IBOX"
		.dc.b 0,172
		.dc.b 5
		.ascii "INTIN("
		.dc.b TOK_SUBFUNC_208,32
		.dc.b 4
		.ascii "INTIN"
		.dc.b TOK_SUBFUNC_208,33
		.dc.b 6
		.ascii "INTOUT("
		.dc.b TOK_SUBFUNC_208,34
		.dc.b 5
		.ascii "INTOUT"
		.dc.b TOK_SUBFUNC_208,35
		.dc.b 3
		.ascii "INT{"
		.dc.b TOK_SUBFUNC_208,114
		.dc.b 6
		.ascii "INPAUX$"
		.dc.b 0,52
		.dc.b 6
		.ascii "INPMID$"
		.dc.b 0,54
func_j_table: /* 13048 */
func_k_table: /* 13048 */
		.dc.b 2
		.ascii "KEY"
		.dc.b 0,170
		.dc.b 3
		.ascii "KILL"
		.dc.b 0,176
func_l_table: /* 13059 */
		.dc.b 5
		.ascii "LEFT$("
		.dc.b 0,58
		.dc.b 3
		.ascii "LEN("
		.dc.b TOK_SUBFUNC_208,66
		.dc.b 4
		.ascii "LOC(#"
		.dc.b TOK_SUBFUNC_208,80
		.dc.b 3
		.ascii "LOC("
		.dc.b TOK_SUBFUNC_208,80
		.dc.b 4
		.ascii "LOF(#"
		.dc.b TOK_SUBFUNC_208,79
		.dc.b 3
		.ascii "LOF("
		.dc.b TOK_SUBFUNC_208,79
		.dc.b 3
		.ascii "LOG("
		.dc.b 0,48
		.dc.b 5
		.ascii "LOG10("
		.dc.b 0,49
		.dc.b 5
		.ascii "LPEEK("
		.dc.b TOK_SUBFUNC_208,65
		.dc.b 1
		.ascii "L:"
		.dc.b 0,138
		.dc.b 4
		.ascii "LPOS("
		.dc.b TOK_SUBFUNC_208,91
		.dc.b 4
		.ascii "LONG{"
		.dc.b TOK_SUBFUNC_208,113
		.dc.b 2
		.ascii "L~A"
		.dc.b TOK_SUBFUNC_208,212
		.dc.b 4
		.ascii "LPENX"
		.dc.b TOK_SUBFUNC_208,231
		.dc.b 4
		.ascii "LPENY"
		.dc.b TOK_SUBFUNC_208,232
func_m_table: /* 130e9 */
		.dc.b 3
		.ascii "MAX("
		.dc.b 0,119
		.dc.b 4
		.ascii "MID$("
		.dc.b 0,62
		.dc.b 3
		.ascii "MIN("
		.dc.b 0,117
		.dc.b 4
		.ascii "MKD$("
		.dc.b 0,102
		.dc.b 4
		.ascii "MKF$("
		.dc.b 0,101
		.dc.b 4
		.ascii "MKI$("
		.dc.b 0,98
		.dc.b 4
		.ascii "MKL$("
		.dc.b 0,99
		.dc.b 4
		.ascii "MKS$("
		.dc.b 0,100
		.dc.b 2
		.ascii "MOD"
		.dc.b 0,10
		.dc.b 3
		.ascii "MOD("
		.dc.b TOK_SUBFUNC_208,4
		.dc.b 8
		.ascii "MENU_BAR("
		.dc.b TOK_SUBFUNC_208,143
		.dc.b 11
		.ascii "MENU_ICHECK("
		.dc.b TOK_SUBFUNC_208,144
		.dc.b 12
		.ascii "MENU_IENABLE("
		.dc.b TOK_SUBFUNC_208,145
		.dc.b 12
		.ascii "MENU_TNORMAL("
		.dc.b TOK_SUBFUNC_208,146
		.dc.b 9
		.ascii "MENU_TEXT("
		.dc.b TOK_SUBFUNC_208,147
		.dc.b 13
		.ascii "MENU_REGISTER("
		.dc.b TOK_SUBFUNC_208,148
		.dc.b 5
		.ascii "MOUSEK"
		.dc.b TOK_SUBFUNC_208,60
		.dc.b 5
		.ascii "MOUSEX"
		.dc.b TOK_SUBFUNC_208,58
		.dc.b 5
		.ascii "MOUSEY"
		.dc.b TOK_SUBFUNC_208,59
		.dc.b 4
		.ascii "MENU("
		.dc.b TOK_SUBFUNC_208,92
		.dc.b 3
		.ascii "MENU"
		.dc.b 0,167
		.dc.b 6
		.ascii "MESSAGE"
		.dc.b 0,174
		.dc.b 3
		.ascii "MUL("
		.dc.b TOK_SUBFUNC_208,0
		.dc.b 6
		.ascii "MALLOC("
		.dc.b TOK_SUBFUNC_208,184
		.dc.b 5
		.ascii "MFREE("
		.dc.b TOK_SUBFUNC_208,185
		.dc.b 7
		.ascii "MSHRINK("
		.dc.b TOK_SUBFUNC_208,186
func_n_table: /* 1321a */
		.dc.b 3
		.ascii "NEXT"
		.dc.b 0,168
		.dc.b 2
		.ascii "NOT"
		.dc.b 0,31
func_o_table: /* 1322b */
		.dc.b 3
		.ascii "OBOX"
		.dc.b 0,173
		.dc.b 4
		.ascii "OCT$("
		.dc.b 0,195
		.dc.b 3
		.ascii "ODD("
		.dc.b TOK_SUBFUNC_208,102
		.dc.b 5
		.ascii "OFFSET"
		.dc.b 0,109
		.dc.b 2
		.ascii "OFF"
		.dc.b 0,175
		.dc.b 1
		.ascii "OR"
		.dc.b 0,1
		.dc.b 2
		.ascii "OR("
		.dc.b TOK_SUBFUNC_208,6
		.dc.b 4
		.ascii "OUT?("
		.dc.b TOK_SUBFUNC_208,94
		.dc.b 8
		.ascii "OBJC_ADD("
		.dc.b TOK_SUBFUNC_208,149
		.dc.b 11
		.ascii "OBJC_DELETE("
		.dc.b TOK_SUBFUNC_208,150
		.dc.b 9
		.ascii "OBJC_DRAW("
		.dc.b TOK_SUBFUNC_208,151
		.dc.b 9
		.ascii "OBJC_FIND("
		.dc.b TOK_SUBFUNC_208,152
		.dc.b 11
		.ascii "OBJC_OFFSET("
		.dc.b TOK_SUBFUNC_208,153
		.dc.b 10
		.ascii "OBJC_ORDER("
		.dc.b TOK_SUBFUNC_208,154
		.dc.b 9
		.ascii "OBJC_EDIT("
		.dc.b TOK_SUBFUNC_208,155
		.dc.b 11
		.ascii "OBJC_CHANGE("
		.dc.b TOK_SUBFUNC_208,156
		.dc.b 6
		.ascii "OB_ADR("
		.dc.b TOK_SUBFUNC_208,191
		.dc.b 7
		.ascii "OB_NEXT("
		.dc.b TOK_SUBFUNC_208,192
		.dc.b 7
		.ascii "OB_HEAD("
		.dc.b TOK_SUBFUNC_208,193
		.dc.b 7
		.ascii "OB_TAIL("
		.dc.b TOK_SUBFUNC_208,194
		.dc.b 7
		.ascii "OB_TYPE("
		.dc.b TOK_SUBFUNC_208,195
		.dc.b 8
		.ascii "OB_FLAGS("
		.dc.b TOK_SUBFUNC_208,196
		.dc.b 8
		.ascii "OB_STATE("
		.dc.b TOK_SUBFUNC_208,197
		.dc.b 7
		.ascii "OB_SPEC("
		.dc.b TOK_SUBFUNC_208,198
		.dc.b 4
		.ascii "OB_X("
		.dc.b TOK_SUBFUNC_208,199
		.dc.b 4
		.ascii "OB_Y("
		.dc.b TOK_SUBFUNC_208,200
		.dc.b 4
		.ascii "OB_W("
		.dc.b TOK_SUBFUNC_208,201
		.dc.b 4
		.ascii "OB_H("
		.dc.b TOK_SUBFUNC_208,202
func_p_table: /* 13382 */
		.dc.b 4
		.ascii "PEEK("
		.dc.b TOK_SUBFUNC_208,63
		.dc.b 1
		.ascii "PI"
		.dc.b 0,79
		.dc.b 5
		.ascii "POINT("
		.dc.b TOK_SUBFUNC_208,72
		.dc.b 3
		.ascii "POS("
		.dc.b TOK_SUBFUNC_208,90
		.dc.b 5
		.ascii "PTSIN("
		.dc.b TOK_SUBFUNC_208,36
		.dc.b 4
		.ascii "PTSIN"
		.dc.b TOK_SUBFUNC_208,37
		.dc.b 6
		.ascii "PTSOUT("
		.dc.b TOK_SUBFUNC_208,38
		.dc.b 5
		.ascii "PTSOUT"
		.dc.b TOK_SUBFUNC_208,39
		.dc.b 4
		.ascii "PTST("
		.dc.b TOK_SUBFUNC_208,43
		.dc.b 4
		.ascii "PRED("
		.dc.b TOK_SUBFUNC_208,97
		.dc.b 4
		.ascii "PADX("
		.dc.b TOK_SUBFUNC_208,228
		.dc.b 4
		.ascii "PADY("
		.dc.b TOK_SUBFUNC_208,229
		.dc.b 4
		.ascii "PADT("
		.dc.b TOK_SUBFUNC_208,230
func_q_table: /* 13405 */
func_r_table: /* 13405 */
		.dc.b 6
		.ascii "RANDOM("
		.dc.b 0,86
		.dc.b 4
		.ascii "RAND("
		.dc.b TOK_SUBFUNC_208,82
		.dc.b 6
		.ascii "RIGHT$("
		.dc.b 0,60
		.dc.b 3
		.ascii "RND("
		.dc.b 0,84
		.dc.b 2
		.ascii "RND"
		.dc.b 0,85
		.dc.b 3
		.ascii "ROL("
		.dc.b TOK_SUBFUNC_208,12
		.dc.b 3
		.ascii "ROR("
		.dc.b TOK_SUBFUNC_208,13
		.dc.b 4
		.ascii "ROL&("
		.dc.b TOK_SUBFUNC_208,50
		.dc.b 4
		.ascii "ROR&("
		.dc.b TOK_SUBFUNC_208,51
		.dc.b 4
		.ascii "ROL|("
		.dc.b TOK_SUBFUNC_208,54
		.dc.b 4
		.ascii "ROR|("
		.dc.b TOK_SUBFUNC_208,55
		.dc.b 9
		.ascii "RSRC_LOAD("
		.dc.b TOK_SUBFUNC_208,124
		.dc.b 10
		.ascii "RSRC_FREE()"
		.dc.b TOK_SUBFUNC_208,125
		.dc.b 10
		.ascii "RSRC_GADDR("
		.dc.b TOK_SUBFUNC_208,126
		.dc.b 10
		.ascii "RSRC_SADDR("
		.dc.b TOK_SUBFUNC_208,127
		.dc.b 10
		.ascii "RSRC_OBFIX("
		.dc.b TOK_SUBFUNC_208,128
		.dc.b 3
		.ascii "RAD("
		.dc.b 0,104
		.dc.b 5
		.ascii "ROUND("
		.dc.b 0,112
		.dc.b 6
		.ascii "RINSTR("
		.dc.b TOK_SUBFUNC_208,209
		.dc.b 12
		.ascii "RC_INTERSECT("
		.dc.b TOK_SUBFUNC_208,217
func_s_table: /* 134f3 */
		.dc.b 3
		.ascii "SGN("
		.dc.b TOK_SUBFUNC_208,100
		.dc.b 3
		.ascii "SIN("
		.dc.b 0,41
		.dc.b 4
		.ascii "SINQ("
		.dc.b 0,123
		.dc.b 6
		.ascii "SPACE$("
		.dc.b 0,128
		.dc.b 3
		.ascii "SPC("
		.dc.b 0,162
		.dc.b 3
		.ascii "SQR("
		.dc.b 0,78
		.dc.b 3
		.ascii "STEP"
		.dc.b 0,72
		.dc.b 4
		.ascii "STR$("
		.dc.b 0,190
		.dc.b 7
		.ascii "STRING$("
		.dc.b 0,129
		.dc.b 3
		.ascii "SHL("
		.dc.b TOK_SUBFUNC_208,10
		.dc.b 3
		.ascii "SHR("
		.dc.b TOK_SUBFUNC_208,11
		.dc.b 4
		.ascii "SHL&("
		.dc.b TOK_SUBFUNC_208,48
		.dc.b 4
		.ascii "SHR&("
		.dc.b TOK_SUBFUNC_208,49
		.dc.b 4
		.ascii "SHL|("
		.dc.b TOK_SUBFUNC_208,52
		.dc.b 4
		.ascii "SHR|("
		.dc.b TOK_SUBFUNC_208,53
		.dc.b 4
		.ascii "SWAP("
		.dc.b TOK_SUBFUNC_208,17
		.dc.b 9
		.ascii "SHEL_READ("
		.dc.b TOK_SUBFUNC_208,129
		.dc.b 10
		.ascii "SHEL_WRITE("
		.dc.b TOK_SUBFUNC_208,130
		.dc.b 8
		.ascii "SHEL_GET("
		.dc.b TOK_SUBFUNC_208,131
		.dc.b 8
		.ascii "SHEL_PUT("
		.dc.b TOK_SUBFUNC_208,132
		.dc.b 9
		.ascii "SHEL_FIND("
		.dc.b TOK_SUBFUNC_208,133
		.dc.b 10
		.ascii "SHEL_ENVRN("
		.dc.b TOK_SUBFUNC_208,134
		.dc.b 9
		.ascii "SCRP_READ("
		.dc.b TOK_SUBFUNC_208,172
		.dc.b 10
		.ascii "SCRP_WRITE("
		.dc.b TOK_SUBFUNC_208,173
		.dc.b 4
		.ascii "SUCC("
		.dc.b TOK_SUBFUNC_208,96
		.dc.b 3
		.ascii "SUB("
		.dc.b TOK_SUBFUNC_208,3
		.dc.b 5
		.ascii "STICK("
		.dc.b TOK_SUBFUNC_208,206
		.dc.b 5
		.ascii "STRIG("
		.dc.b TOK_SUBFUNC_208,207
		.dc.b 3
		.ascii "STOP"
		.dc.b 0,152
		.dc.b 6
		.ascii "SINGLE{"
		.dc.b 0,121
		.dc.b 3
		.ascii "STE?"
		.dc.b TOK_SUBFUNC_208,233
		.dc.b 5
		.ascii "SCALE("
		.dc.b TOK_SUBFUNC_208,235
func_t_table: /* 1365c */
		.dc.b 3
		.ascii "TAB("
		.dc.b 0,161
		.dc.b 3
		.ascii "TAN("
		.dc.b 0,43
		.dc.b 3
		.ascii "THEN"
		.dc.b 0,74
		.dc.b 4
		.ascii "TIME$"
		.dc.b 0,56
		.dc.b 4
		.ascii "TIMER"
		.dc.b TOK_SUBFUNC_208,62
		.dc.b 1
		.ascii "TO"
		.dc.b 0,71
		.dc.b 3
		.ascii "TRUE"
		.dc.b 0,188
		.dc.b 5
		.ascii "TRUNC("
		.dc.b 0,38
		.dc.b 4
		.ascii "TYPE("
		.dc.b TOK_SUBFUNC_208,190
		.dc.b 5
		.ascii "TRACE$"
		.dc.b 0,111
		.dc.b 5
		.ascii "TRIM$("
		.dc.b 0,135
		.dc.b 2
		.ascii "TT?"
		.dc.b TOK_SUBFUNC_208,234
func_u_table: /* 136ce */
		.dc.b 6
		.ascii "UPPER$("
		.dc.b 0,127
		.dc.b 4
		.ascii "USING"
		.dc.b 0,163
func_v_table: /* 136e4 */
		.dc.b 3
		.ascii "VAL("
		.dc.b 0,53
		.dc.b 4
		.ascii "VAL?("
		.dc.b TOK_SUBFUNC_208,73
		.dc.b 6
		.ascii "VARPTR("
		.dc.b TOK_SUBFUNC_208,187
		.dc.b 6
		.ascii "VARIAT("
		.dc.b 0,143
		.dc.b 2
		.ascii "VAR"
		.dc.b 0,50
		.dc.b 6
		.ascii "VDIBASE"
		.dc.b TOK_SUBFUNC_208,40
		.dc.b 1
		.ascii "V:"
		.dc.b TOK_SUBFUNC_208,203
		.dc.b 2
		.ascii "V~H"
		.dc.b TOK_SUBFUNC_208,213
		.dc.b 7
		.ascii "V_OPNWK("
		.dc.b TOK_SUBFUNC_208,105
		.dc.b 8
		.ascii "V_CLSWK()"
		.dc.b TOK_SUBFUNC_208,106
		.dc.b 8
		.ascii "V_OPNVWK("
		.dc.b TOK_SUBFUNC_208,107
		.dc.b 9
		.ascii "V_CLSVWK()"
		.dc.b TOK_SUBFUNC_208,108
		.dc.b 8
		.ascii "V_UPDWK()"
		.dc.b TOK_SUBFUNC_208,109
		.dc.b 14
		.ascii "VST_LOAD_FONTS("
		.dc.b TOK_SUBFUNC_208,110
		.dc.b 16
		.ascii "VST_UNLOAD_FONTS("
		.dc.b TOK_SUBFUNC_208,111
		.dc.b 8
		.ascii "V_CLRWK()"
		.dc.b TOK_SUBFUNC_208,214
		.dc.b 8
		.ascii "VQT_NAME("
		.dc.b TOK_SUBFUNC_208,215
		.dc.b 10
		.ascii "VQT_EXTENT("
		.dc.b TOK_SUBFUNC_208,216
func_w_table: /* 137ce */
		.dc.b 1
		.ascii "W:"
		.dc.b 0,139
		.dc.b 7
		.ascii "WINDTAB("
		.dc.b TOK_SUBFUNC_208,41
		.dc.b 6
		.ascii "WINDTAB"
		.dc.b TOK_SUBFUNC_208,42
		.dc.b 4
		.ascii "WORD("
		.dc.b TOK_SUBFUNC_208,14
		.dc.b 11
		.ascii "WIND_CREATE("
		.dc.b TOK_SUBFUNC_208,175
		.dc.b 9
		.ascii "WIND_OPEN("
		.dc.b TOK_SUBFUNC_208,176
		.dc.b 10
		.ascii "WIND_CLOSE("
		.dc.b TOK_SUBFUNC_208,177
		.dc.b 11
		.ascii "WIND_DELETE("
		.dc.b TOK_SUBFUNC_208,178
		.dc.b 8
		.ascii "WIND_GET("
		.dc.b TOK_SUBFUNC_208,179
		.dc.b 8
		.ascii "WIND_SET("
		.dc.b TOK_SUBFUNC_208,180
		.dc.b 9
		.ascii "WIND_FIND("
		.dc.b TOK_SUBFUNC_208,181
		.dc.b 11
		.ascii "WIND_UPDATE("
		.dc.b TOK_SUBFUNC_208,182
		.dc.b 9
		.ascii "WIND_CALC("
		.dc.b TOK_SUBFUNC_208,183
		.dc.b 7
		.ascii "W_HAND(#"
		.dc.b TOK_SUBFUNC_208,98
		.dc.b 8
		.ascii "W_INDEX(#"
		.dc.b TOK_SUBFUNC_208,99
		.dc.b 8
		.ascii "WORK_OUT("
		.dc.b TOK_SUBFUNC_208,208
		.dc.b 3
		.ascii "WITH"
		.dc.b 0,114
		.dc.b 4
		.ascii "WORD{"
		.dc.b TOK_SUBFUNC_208,222
func_x_table: /* 138c0 */
		.dc.b 5
		.ascii "XBIOS("
		.dc.b TOK_SUBFUNC_208,86
		.dc.b 2
		.ascii "XOR"
		.dc.b 0,2
		.dc.b 3
		.ascii "XOR("
		.dc.b TOK_SUBFUNC_208,7
func_y_table:
func_z_table:

func_other_table:
		.dc.b 0
		.dc.b 0x5c
		.dc.b 0,TOK_INTDIV
		.dc.b 0
		.ascii "["
		.dc.b 0,TOK_LBRACKET
		.dc.b 0
		.ascii "]"
		.dc.b 0,TOK_RBRACKET
		.dc.b 4
		.ascii "_DATA"
		.dc.b TOK_SUBFUNC_208,227
		.dc.b 1
		.ascii "_X"
		.dc.b TOK_SUBFUNC_208,236
		.dc.b 1
		.ascii "_Y"
		.dc.b TOK_SUBFUNC_208,237
		.dc.b 1
		.ascii "_C"
		.dc.b TOK_SUBFUNC_208,238
		.dc.b 0
		.ascii "^"
		.dc.b 0,TOK_POWER
		.dc.b 0
		.ascii "{"
		.dc.b TOK_SUBFUNC_208,112
		.dc.b 0
		.ascii "}"
		.dc.b 0,TOK_RBRACE
		.dc.b 4
		.ascii "EOF(#"
		.dc.b TOK_SUBFUNC_208,78
		.dc.b 4
		.ascii "LOF(#"
		.dc.b TOK_SUBFUNC_208,79
		.dc.b 4
		.ascii "LOC(#"
		.dc.b TOK_SUBFUNC_208,80
		.dc.b 3
		.ascii " AT("
		.dc.b 0,122
		.dc.b 4
		.ascii "SUCC("
		.dc.b 0,131
		.dc.b 4
		.ascii "PRED("
		.dc.b 0,133
		.dc.b 0
		.ascii "/"
		.dc.b 0,TOK_DIVIDE
		.dc.b -1
		.even

jmpbase:
x13696:
f13696:
		moveq.l    #9,d0
		bra.s      f136a0

f1369a:
		moveq.l    #3,d0
		bra.s      f136a0

f1369e:
		moveq.l    #2,d0

f136a0:
		bsr        x13abe
		cmp.w      #136,d6
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
		.dc.b 0x33,0x33
		.dc.b 0x33,0x33
		.dc.b 0x33,0x33
		.dc.b 0x33,0x33
		.dc.b 0x33,0x33
		.dc.b 0x55,0x55
		.dc.b 0x55,0x55
		.dc.b 0x54,0x44
		.dc.b 0x77,0x70
		.dc.b 0x20,0x00
		.dc.b 0x00,0x00
		.dc.b 0x03,0x00
		.dc.b 0x00,0x00
		.dc.b 0x91,0x90
		.dc.b 0x90,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x20
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x09
		.dc.b 0x00,0x00
		.dc.b 0x00,0x03
		.dc.b 0xcc,0x00
		.dc.b 0x00,0x22
		.dc.b 0x22,0x21
		.dc.b 0x11,0x11
		.dc.b 0x00,0x09
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x90
		.dc.b 0x20,0x00
		.dc.b 0x20,0x10

cmd_index_table:
		.dc.w cmd_a_table-x13696
		.dc.w cmd_b_table-x13696
		.dc.w cmd_c_table-x13696
		.dc.w cmd_d_table-x13696
		.dc.w cmd_e_table-x13696
		.dc.w cmd_f_table-x13696
		.dc.w cmd_g_table-x13696
		.dc.w cmd_h_table-x13696
		.dc.w cmd_i_table-x13696
		.dc.w cmd_k_table-x13696
		.dc.w cmd_k_table-x13696
		.dc.w cmd_l_table-x13696
		.dc.w cmd_m_table-x13696
		.dc.w cmd_n_table-x13696
		.dc.w cmd_o_table-x13696
		.dc.w cmd_p_table-x13696
		.dc.w cmd_q_table-x13696
		.dc.w cmd_r_table-x13696
		.dc.w cmd_s_table-x13696
		.dc.w cmd_t_table-x13696
		.dc.w cmd_u_table-x13696
		.dc.w cmd_v_table-x13696
		.dc.w cmd_w_table-x13696
		.dc.w cmd_other_table-x13696
		.dc.w cmd_other_table-x13696
		.dc.w cmd_other_table-x13696

func_index_table:
		.dc.w func_a_table-x13696
		.dc.w func_b_table-x13696
		.dc.w func_c_table-x13696
		.dc.w func_d_table-x13696
		.dc.w func_e_table-x13696
		.dc.w func_f_table-x13696
		.dc.w func_g_table-x13696
		.dc.w func_h_table-x13696
		.dc.w func_i_table-x13696
		.dc.w func_j_table-x13696
		.dc.w func_k_table-x13696
		.dc.w func_l_table-x13696
		.dc.w func_m_table-x13696
		.dc.w func_n_table-x13696
		.dc.w func_o_table-x13696
		.dc.w func_p_table-x13696
		.dc.w func_q_table-x13696
		.dc.w func_r_table-x13696
		.dc.w func_s_table-x13696
		.dc.w func_t_table-x13696
		.dc.w func_u_table-x13696
		.dc.w func_v_table-x13696
		.dc.w func_w_table-x13696
		.dc.w func_x_table-x13696
		.dc.w func_y_table-x13696
		.dc.w func_z_table-x13696

x1377c:
		lea.l      850(a6),a4
		lea.l      1106(a6),a5
x1377c_1:
		move.b     (a4)+,d0
		bne.s      x1377c_2
		moveq.l    #13,d0
x1377c_2:
		cmp.b      #'z',d0
		bhi.s      x1377c_3
		cmp.b      #'a',d0
		bcs.s      x1377c_3
		subi.b     #' ',d0
x1377c_3:
		move.b     d0,(a5)+
		cmp.b      #13,d0
		bne.s      x1377c_1
		lea.l      1106(a6),a0
		rts

skip_spaces_0:
		addq.l     #1,a0
skip_spaces:
		cmpi.b     #' ',(a0)
		beq.s      skip_spaces_0
		rts

x137b2: .dc.w 0
x137b4: .dc.l 0
x137b8: .dc.l 0
x137bc: .dc.l 0

/*
 * a2 = x14083/x1499f/x1495a
 */
x137c0:
		lea.l      1364(a6),a1
		move.w     d0,(a1)+
		movea.l    x137bc(pc),a0
		bsr        x1395a
		move.l     a1,d0
		rts

x137d2:
		sf         x137b2
		move.l     a7,x13898
		move.l     a0,x137b8
		lea.l      1364(a6),a1
		clr.l      (a1)
		bsr.s      x1377c
		bsr.s      skip_spaces
		move.l     a0,x137bc
		bsr        x1389c
		bsr        x1395a
		move.l     a1,d0
		bne.s      x137d2_1
		lea.l      x14083(pc),a2
		move.w     #152,d0
		bsr.s      x137c0
		bne.s      x137d2_1
		lea.l      x1499f(pc),a2
		move.w     #126,d0
		bsr.s      x137c0
		bne.s      x137d2_1
		lea.l      x1495a(pc),a2
		move.w     #120,d0
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
		cmp.b      #13,d0
		bne.s      x137d2_3
x137d2_4:
		movea.l    (a7)+,a0
		move.l     a1,d0
		lea.l      1362(a6),a1
		sub.l      a1,d0
		addq.w     #1,d0
		andi.w     #0xFFFE,d0
		cmp.w      #0x10FE,d0
		bhi.s      x137d2_6
		move.w     d0,(a1)
		asl.w      2(a1)
		rts
x13886:
		movea.l    x13898(pc),a7
		suba.l     a1,a1
x137d2_5:
		movea.l    x137b8(pc),a0
		rts
x137d2_6:
		lea.l      (-1).w,a1
		rts

x13898: .dc.l 0

x1389c:
		moveq.l    #0,d2
		move.b     (a0),d2
		cmp.b      #'E',d2
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
		move.w     #248,(a1)+ /* TOK_CMD_END*2 */
		lea.l      x1446a(pc),a2
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
		cmp.w      #25,d3
		bhi.s      x1389c_3
		add.w      d3,d3
		move.w     0(a2,d3.w),d3
		lea.l      x13696(pc),a2
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
		lea.l      x13696(pc),a2
		adda.w     d0,a2
		rts
x1389c_10:
		move.w     #152,(a1)+ /* TOK_CMD_ASSIGN_FLOAT*2 */
		lea.l      x14083,a2
		rts

x1395a:
		clr.l      x137b4
		pea.l      (0).w
		pea.l      (a1)
		pea.l      (a0)
		clr.l      8438(a6)
x1395a_1:
		moveq.l    #0,d7
		moveq.l    #0,d0
		move.b     (a2)+,d0
		cmpi.b     #240,d0
		bhi.s      x1395a_5
		cmp.b      #208,d0 /* secondary function table? */
		bne.s      x1395a_2
		asl.w      #8,d0
		move.b     (a2)+,d0
x1395a_2:
		bsr        handle_function
		tst.b      d7
		beq.s      x1395a_1
		bra.s      x1395a_11
/* handle 0xfc & 0xfd */
x1395a_3:
		addq.l     #8,a7
		movea.l    (a7)+,a2
		move.l     a2,d0
		bne.s      x1395a_1
		move.l     a1,d0
		sub.l      a6,d0
		cmp.l      #1842,d0
		bcs.s      x1395a_4
		lea.l      (-1).w,a1
x1395a_4:
		rts

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
		bra.s      x1395a_1
/* handle 0xfa */
x1395a_6:
		subq.l     #1,a1
		bra.s      x1395a_1
/* handle 0xfb */
x1395a_7:
		move.b     (a2)+,-1(a1)
		bra.s      x1395a_1

/* handle 0xff */
x1395a_8:
		move.b     (a2)+,-(a7)
		move.w     (a7)+,d0
		move.b     (a2)+,d0 /* d0.w = *((short *)a2++) now */
		pea.l      (a2)
		pea.l      (a1)
		pea.l      (a0)
		lea.l      x13696(pc),a2
		adda.w     d0,a2
		bra.s      x1395a_1

/* handle 0xfe */
x1395a_9:
		move.b     (a2)+,-(a7)
		move.w     (a7)+,d0
		move.b     (a2)+,d0 /* d0.w = *((short *)a2++) now */
		pea.l      (a2)
		pea.l      (a1)
		pea.l      (a0)
		lea.l      x13696(pc),a2
		jsr        0(a2,d0.w)
		tst.b      d7
		beq.s      x1395a_3
/* error */
x1395a_10:
		addq.l     #8,a7
		movea.l    (a7)+,a2
		move.l     a2,d0
		beq.s      x1395a_14
x1395a_11:
		move.b     (a2)+,d0
		cmp.b      #249,d0
		beq.s      x1395a_12
		cmpi.b     #252,d0
		beq.s      x1395a_10
		cmpi.b     #253,d0
		beq.s      x1395a_13
		bcs.s      x1395a_11
		addq.l     #1,a2
x1395a_12:
		addq.l     #1,a2
		bra.s      x1395a_11
x1395a_13:
		movea.l    (a7),a0
		movea.l    4(a7),a1
		bra        x1395a_1
x1395a_14:
		suba.l     a1,a1
		rts

/*
 * function code in d0.w
 * bit 7-8: secondary table code
 */
/* gbe: 00054000 */
handle_function:
		bsr        x13abe
handle_function_1:
		cmp.w      d0,d6
		sne        d7
		beq.s      handle_function_2
		cmp.b      #TOK_LINE_COMMENT,d0
		beq.s      handle_function_6
		cmpa.l     x137b8(pc),a0
		bcs.s      handle_function_5
		move.l     a0,x137b8
		rts
handle_function_2:
		cmp.w      #255,d0
		bls.s      handle_function_3
		rol.w      #8,d0
		move.b     d0,(a1)+
		rol.w      #8,d0
handle_function_3:
		move.b     d0,(a1)+
handle_function_4:
		cmpa.l     x137b8(pc),a0
		bcs.s      handle_function_5
		move.l     a0,x137b8
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
		cmpi.w     #834,1364(a6) /* TOK_CMD_INLINE*2 */
		beq.s      handle_function_4
		move.w     d0,d6
		move.l     a0,x137b4
		bra.s      handle_function_1
handle_function_9:
		lea.l      func_misc_table(pc),a3
		cmp.b      #238,d6
		beq.s      handle_function_10
		moveq.l    #64,d6
		bra.s      x13abe_1
handle_function_10:
		cmpi.b     #'/',1(a0)
		beq.s      handle_function_11
		cmpi.b     #'*',1(a0)
		beq.s      handle_function_11
		moveq.l    #8,d6
		addq.l     #1,a0
		bra.w      x13abe_7
handle_function_11:
		movea.l    a0,a5
		moveq.l    #-1,d6
		rts
handle_function_12:
		lea.l      func_other_table(pc),a3
		moveq.l    #127,d6
		bra.s      x13abe_1

x13abe:
		cmpa.l     8438(a6),a0
		beq.s      x13abe_5
		move.l     a0,8438(a6)
		bsr        skip_spaces
		moveq.l    #0,d6
		move.b     (a0),d6
		subi.w     #'A',d6
		bmi.s      handle_function_9
		cmp.w      #25,d6
		bcc.s      handle_function_12
		lea.l      func_index_table(pc),a3
		add.w      d6,d6
		move.w     0(a3,d6.w),d6
		lea.l      x13696(pc),a3
		adda.w     d6,a3
		move.b     (a0),d6
x13abe_1:
		movea.l    a0,a4
x13abe_2:
		moveq.l    #0,d1
		move.b     (a3)+,d1
		bmi.s      x13abe_4
		lea.l      3(a3,d1.w),a5
		cmp.b      (a3),d6
		bcs.s      x13abe_4
x13abe_3:
		cmpm.b     (a0)+,(a3)+
		dbne       d1,x13abe_3
		beq.s      x13abe_6
		movea.l    a5,a3
		movea.l    a4,a0
		bra.s      x13abe_2
x13abe_4:
		moveq.l    #-1,d6
		movea.l    a0,a5
		rts
x13abe_5:
		movea.l    a5,a0
		rts
x13abe_6:
		move.b     -2(a5),-(a7)
		move.w     (a7)+,d6
		move.b     -1(a5),d6
x13abe_7:
		movea.l    a0,a5
		cmpi.b     #'A',-1(a0)
		bcs.s      x13abe_9
		cmpi.b     #'Z',-1(a0)
		bhi.s      x13abe_9
		cmp.b      #24,d6 /* wtf? why .b? */
		bls.s      x13abe_9
		move.b     (a0),d1
		cmp.b      #'_',d1
		beq.s      x13abe_8
		cmp.b      #'.',d1
		beq.s      x13abe_8
		cmp.b      #'0',d1
		bcs.s      x13abe_9
		cmp.b      #'9',d1
		bls.s      x13abe_8
		cmp.b      #'A',d1
		bcs.s      x13abe_9
		cmp.b      #'Z',d1
		bhi.s      x13abe_9
x13abe_8:
		moveq.l    #-1,d6
x13abe_9:
		rts

f13b62:
		moveq.l    #0,d7
		move.l     d7,(a1)+
		rts

f13b68:
		moveq.l    #98,d0
		bra.s      f13b6c_1
f13b6c:
		moveq.l    #102,d0
f13b6c_1:
		move.w     d0,1364(a6)
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
		addq.w     #2,1364(a6)
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
		cmp.l      #0x20000000,d0
		bcs.s      x13c10_1
		addq.l     #1,a0
x13c10_2:
		move.b     #TOK_OCT_DBL_CONST,(a1)+
		bra.s      x13c36_5

x13c36:
		addq.l     #1,a0
		move.b     (a0)+,d0
		cmp.b      #'X',d0
		beq.s      x13bec_3
		cmp.b      #'O',d0
		beq.s      x13c10
		cmp.b      #'H',d0
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
		cmp.l      #0x10000000,d0
		bcs.s      x13c36_6
		addq.l     #1,a0
x13c36_4:
		move.b     #TOK_HEX_DBL_CONST,(a1)+
x13c36_5:
		subq.l     #1,a0
		tst.w      d2
		bmi.s      f13c9a_6
		jsr        322(a6)
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
		jsr        Fval
		move.w     (a7)+,d6
		tst.w      d2
		bmi.s      f13c9a_6
		beq.s      f13c9a_7
		tst.w      d1
		bne.s      f13c9a_2
		cmp.w      #512,d2
		bne.s      f13c9a_1
		cmp.l      #0x80000000,d0
		beq.s      f13c9a_8
f13c9a_1:
		cmp.w      #513,d2
		bne.s      f13c9a_2
		cmp.l      #0x80000000,d0
		beq.s      f13c9a_9
		cmp.l      #0xC0000000,d0
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
		addq.w     #2,1364(a6)
		rts

f13d6a:
		move.w     #658,1364(a6) /* TOK_CMD_FILESELECT*2 */
		lea.l      cmd_fileselect(pc),a2
		bra.s      f13da6_1
f13d76:
		move.w     #650,1364(a6) /* TOK_CMD_FILES*2 */
		lea.l      cmd_files(pc),a2
		bra.s      f13da6_1
f13d82:
		move.w     #474,1364(a6) /* TOK_CMD_DOUBLE_REF*2 */
		lea.l      cmd_double_ref(pc),a2
		bra.s      f13da6_1
f13d8e:
		move.w     #448,1364(a6) /* TOK_CMD_ADDRIN*2 */
		lea.l      cmd_addrin(pc),a2
		bra.s      f13da6_1
f13d9a:
		move.w     #450,1364(a6) /* TOK_CMD_ADDROUT*2 */
		lea.l      cmd_addrout(pc),a2
		bra.s      f13da6_1
f13da6:
		move.w     #456,1364(a6) /* TOK_CMD_CONTRL*2 */
		lea.l      cmd_contrl(pc),a2
f13da6_1:
		lea.l      1106(a6),a0
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

f13dd2:
		move.w     #306,-2(a1)
		cmpi.b     #'M',(a0)+
		beq.s      f13dd2_1
		subq.l     #1,a0
f13dd2_1:
		moveq.l    #0,d7
		rts

f13de4:
		move.w     #840,1364(a6)
		moveq.l    #0,d7
		move.b     (a0)+,d0
		cmp.b      #'&',d0
		beq.s      f13de4_2
		cmp.b      #'%',d0
		beq.s      f13de4_1
		moveq.l    #-1,d7
f13de4_1:
		addq.w     #2,1364(a6)
f13de4_2:
		rts

x13e02:
		.ascii "ADD"
		.dc.b 0
		.dc.b (x13ee2-x13696)/256,(x13ee2-x13696)&255
		.ascii "ABS"
		.dc.b 0
		.dc.b (x14008-x13696)/256,(x14008-x13696)&255
		.ascii "BASE"
		.dc.b 0
		.dc.b (x14025-x13696)/256,(x14025-x13696)&255
		.ascii "CPY"
		.dc.b 0
		.dc.b (x13f94-x13696)/256,(x13f94-x13696)&255
		.ascii "CLR"
		.dc.b 0
		.dc.b (x13ff6-x13696)/256,(x13ff6-x13696)&255
		.ascii "DET"
		.dc.b 0
		.dc.b (x13f69-x13696)/256,(x13f69-x13696)&255
		.ascii "QDET"
		.dc.b 0
		.dc.b (x13f82-x13696)/256,(x13f82-x13696)&255
		.ascii "INV"
		.dc.b 0
		.dc.b (x13feb-x13696)/256,(x13feb-x13696)&255
		.ascii "INPUT"
		.dc.b 0
		.dc.b (x13fc8-x13696)/256,(x13fc8-x13696)&255
		.ascii "MUL"
		.dc.b 0
		.dc.b (x13f26-x13696)/256,(x13f26-x13696)&255
		.ascii "NORM"
		.dc.b 0
		.dc.b (x1400e-x13696)/256,(x1400e-x13696)&255
		.ascii "NEG"
		.dc.b 0
		.dc.b (x14002-x13696)/256,(x14002-x13696)&255
		.ascii "ONE"
		.dc.b 0
		.dc.b (x13ffc-x13696)/256,(x13ffc-x13696)&255
		.ascii "PRINT"
		.dc.b 0
		.dc.b (x13fb0-x13696)/256,(x13fb0-x13696)&255
		.ascii "?"
		.dc.b 0
		.dc.b (x13fb0-x13696)/256,(x13fb0-x13696)&255
		.ascii "READ"
		.dc.b 0
		.dc.b (x13fd1-x13696)/256,(x13fd1-x13696)&255
		.ascii "RANG"
		.dc.b 0
		.dc.b (x13f88-x13696)/256,(x13f88-x13696)&255
		.ascii "SUB"
		.dc.b 0
		.dc.b (x13f04-x13696)/256,(x13f04-x13696)&255
		.ascii "SET"
		.dc.b 0
		.dc.b (x14019-x13696)/256,(x14019-x13696)&255
		.ascii "TRANS"
		.dc.b 0
		.dc.b (x13fd9-x13696)/256,(x13fd9-x13696)&255
		.ascii "XCPY"
		.dc.b 0
		.dc.b (x13f8e-x13696)/256,(x13f8e-x13696)&255
		.dc.b 0
		.even

f13e8c:
		bsr        skip_spaces
		move.l     a0,d0
		move.l     a1,d1
		lea.l      x13e02(pc),a1
f13e8c_1:
		move.b     (a0)+,d2
		move.b     (a1)+,d3
		beq.s      f13e8c_4
		cmp.b      d2,d3
		beq.s      f13e8c_1
		cmp.b      #' ',d2
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
		lea.l      x13696(pc),a2
		adda.w     d2,a2
		move.l     a2,12(a7)
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
x13ed2:
	.dc.b -2,(f13e8c-x13696)/256,(f13e8c-x13696)&255
x13ed5:
	.dc.b -3
x13ed6:
	.dc.b -1,(x13ee2-x13696)/256,(x13ee2-x13696)&255
x13ed9:
	.dc.b -3
x13eda:
	.dc.b -1,(x13f04-x13696)/256,(x13f04-x13696)&255
x13edd:
	.dc.b -3
x13ede:
	.dc.b -1,(x13f26-x13696)/256,(x13f26-x13696)&255
x13ee1:
	.dc.b -4
x13ee2:
	.dc.b -5,80
x13ee4:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13ee7:
	.dc.b 32
x13ee8:
	.dc.b -1,(x13eec-x13696)/256,(x13eec-x13696)&255
x13eeb:
	.dc.b -4
x13eec:
	.dc.b 19
x13eed:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13ef0:
	.dc.b 32
x13ef1:
	.dc.b 6
x13ef2:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13ef5:
	.dc.b -3
x13ef6:
	.dc.b 33
x13ef7:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13efa:
	.dc.b -3
x13efb:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x13efe:
	.dc.b 33
x13eff:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x13f02:
	.dc.b 70
x13f03:
	.dc.b -4
x13f04:
	.dc.b -5,84
x13f06:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f09:
	.dc.b 32
x13f0a:
	.dc.b -1,(x13f0e-x13696)/256,(x13f0e-x13696)&255
x13f0d:
	.dc.b -4
x13f0e:
	.dc.b 19
x13f0f:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f12:
	.dc.b 32
x13f13:
	.dc.b 5
x13f14:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13f17:
	.dc.b -3
x13f18:
	.dc.b 33
x13f19:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13f1c:
	.dc.b -3
x13f1d:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x13f20:
	.dc.b 33
x13f21:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x13f24:
	.dc.b 70
x13f25:
	.dc.b -4
x13f26:
	.dc.b -1,(x13f2a-x13696)/256,(x13f2a-x13696)&255
x13f29:
	.dc.b -4
x13f2a:
	.dc.b -5,120
x13f2c:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f2f:
	.dc.b 32
x13f30:
	.dc.b 19
x13f31:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f34:
	.dc.b 32
x13f35:
	.dc.b 7
x13f36:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13f39:
	.dc.b -3
x13f3a:
	.dc.b -5,122
x13f3c:
	.dc.b -2,(f15464-x13696)/256,(f15464-x13696)&255
x13f3f:
	.dc.b 19
x13f40:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f43:
	.dc.b 32
x13f44:
	.dc.b 7
x13f45:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13f48:
	.dc.b -3
x13f49:
	.dc.b -5,124
x13f4b:
	.dc.b -2,(f15464-x13696)/256,(f15464-x13696)&255
x13f4e:
	.dc.b 19
x13f4f:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f52:
	.dc.b 32
x13f53:
	.dc.b 7
x13f54:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f57:
	.dc.b 32
x13f58:
	.dc.b 7
x13f59:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13f5c:
	.dc.b -3
x13f5d:
	.dc.b -5,126
x13f5f:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f62:
	.dc.b 32
x13f63:
	.dc.b 33
x13f64:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x13f67:
	.dc.b 70
x13f68:
	.dc.b -4
x13f69:
	.dc.b -5,92
x13f6b:
	.dc.b -2,(f15464-x13696)/256,(f15464-x13696)&255
x13f6e:
	.dc.b 19
x13f6f:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f72:
	.dc.b -1,(x13f77-x13696)/256,(x13f77-x13696)&255
x13f75:
	.dc.b 70
x13f76:
	.dc.b -4
x13f77:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x13f7a:
	.dc.b 32
x13f7b:
	.dc.b 33
x13f7c:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x13f7f:
	.dc.b -3
x13f80:
	.dc.b 32
x13f81:
	.dc.b -4
x13f82:
	.dc.b -5,114
x13f84:
	.dc.b -1,(x13f6b-x13696)/256,(x13f6b-x13696)&255
x13f87:
	.dc.b -4
x13f88:
	.dc.b -5,118
x13f8a:
	.dc.b -1,(x13f6b-x13696)/256,(x13f6b-x13696)&255
x13f8d:
	.dc.b -4
x13f8e:
	.dc.b -5,90
x13f90:
	.dc.b -1,(x13f96-x13696)/256,(x13f96-x13696)&255
x13f93:
	.dc.b -4
x13f94:
	.dc.b -5,88
x13f96:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13f99:
	.dc.b -1,(x13fab-x13696)/256,(x13fab-x13696)&255
x13f9c:
	.dc.b 32
x13f9d:
	.dc.b 19
x13f9e:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13fa1:
	.dc.b -1,(x13fab-x13696)/256,(x13fab-x13696)&255
x13fa4:
	.dc.b 32
x13fa5:
	.dc.b -1,(x13faa-x13696)/256,(x13faa-x13696)&255
x13fa8:
	.dc.b 70
x13fa9:
	.dc.b -4
x13faa:
	.dc.b 33
x13fab:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x13fae:
	.dc.b -3
x13faf:
	.dc.b -4
x13fb0:
	.dc.b -5,102
x13fb2:
	.dc.b -1,(x15252-x13696)/256,(x15252-x13696)&255
x13fb5:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13fb8:
	.dc.b 32
x13fb9:
	.dc.b -1,(x13fbe-x13696)/256,(x13fbe-x13696)&255
x13fbc:
	.dc.b 70
x13fbd:
	.dc.b -4
x13fbe:
	.dc.b 33
x13fbf:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x13fc2:
	.dc.b 33
x13fc3:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x13fc6:
	.dc.b -3
x13fc7:
	.dc.b -4
x13fc8:
	.dc.b -5,116
x13fca:
	.dc.b -1,(x15252-x13696)/256,(x15252-x13696)&255
x13fcd:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13fd0:
	.dc.b -4
x13fd1:
	.dc.b -5,100
x13fd3:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13fd6:
	.dc.b 32
x13fd7:
	.dc.b 70
x13fd8:
	.dc.b -4
x13fd9:
	.dc.b -5,104
x13fdb:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13fde:
	.dc.b 32
x13fdf:
	.dc.b -1,(x13fe4-x13696)/256,(x13fe4-x13696)&255
x13fe2:
	.dc.b 70
x13fe3:
	.dc.b -4
x13fe4:
	.dc.b 19
x13fe5:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13fe8:
	.dc.b 32
x13fe9:
	.dc.b -3
x13fea:
	.dc.b -4
x13feb:
	.dc.b -5,128
x13fed:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x13ff0:
	.dc.b 32
x13ff1:
	.dc.b 19
x13ff2:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13ff5:
	.dc.b -4
x13ff6:
	.dc.b -5,106
x13ff8:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x13ffb:
	.dc.b -4
x13ffc:
	.dc.b -5,110
x13ffe:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x14001:
	.dc.b -4
x14002:
	.dc.b -5,94
x14004:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x14007:
	.dc.b -4
x14008:
	.dc.b -5,96
x1400a:
	.dc.b -1,(x13fd3-x13696)/256,(x13fd3-x13696)&255
x1400d:
	.dc.b -4
x1400e:
	.dc.b -5,98
x14010:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x14013:
	.dc.b 32
x14014:
	.dc.b 33
x14015:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14018:
	.dc.b -4
x14019:
	.dc.b -5,108
x1401b:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x1401e:
	.dc.b 32
x1401f:
	.dc.b 19
x14020:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14023:
	.dc.b 70
x14024:
	.dc.b -4
x14025:
	.dc.b -5,112
x14027:
	.dc.b -1,(x1402b-x13696)/256,(x1402b-x13696)&255
x1402a:
	.dc.b -4
x1402b:
	.dc.b 184
x1402c:
	.dc.b 70
x1402d:
	.dc.b -3
x1402e:
	.dc.b 185
x1402f:
	.dc.b 70
x14030:
	.dc.b -4
x14031:
	.dc.b -1,(x14039-x13696)/256,(x14039-x13696)&255
x14034:
	.dc.b -1,(x14066-x13696)/256,(x14066-x13696)&255
x14037:
	.dc.b 70
x14038:
	.dc.b -4
x14039:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x1403c:
	.dc.b -1,(x14076-x13696)/256,(x14076-x13696)&255
x1403f:
	.dc.b -1,(x14054-x13696)/256,(x14054-x13696)&255
x14042:
	.dc.b -1,(x1404d-x13696)/256,(x1404d-x13696)&255
x14045:
	.dc.b -3
x14046:
	.dc.b -1,(x1436a-x13696)/256,(x1436a-x13696)&255
x14049:
	.dc.b -1,(x14076-x13696)/256,(x14076-x13696)&255
x1404c:
	.dc.b -4
x1404d:
	.dc.b 114
x1404e:
	.dc.b -1,(x1405a-x13696)/256,(x1405a-x13696)&255
x14051:
	.dc.b 32
x14052:
	.dc.b -3
x14053:
	.dc.b -4
x14054:
	.dc.b 109
x14055:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14058:
	.dc.b -3
x14059:
	.dc.b -4
x1405a:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x1405d:
	.dc.b -3
x1405e:
	.dc.b -2,(f1548c-x13696)/256,(f1548c-x13696)&255
x14061:
	.dc.b -3
x14062:
	.dc.b -2,(f15490-x13696)/256,(f15490-x13696)&255
x14065:
	.dc.b -4
x14066:
	.dc.b 33
x14067:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1406a:
	.dc.b -1,(x1406f-x13696)/256,(x1406f-x13696)&255
x1406d:
	.dc.b -3
x1406e:
	.dc.b -4
x1406f:
	.dc.b 33
x14070:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x14073:
	.dc.b 32
x14074:
	.dc.b -3
x14075:
	.dc.b -4
x14076:
	.dc.b 5
x14077:
	.dc.b 32
x14078:
	.dc.b -3
x14079:
	.dc.b 6
x1407a:
	.dc.b 32
x1407b:
	.dc.b -3
x1407c:
	.dc.b 32
x1407d:
	.dc.b -4
x1407e:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14081:
	.dc.b 70
x14082:
	.dc.b -4
x14083:
	.dc.b -1,(x14392-x13696)/256,(x14392-x13696)&255
x14086:
	.dc.b 19
x14087:
	.dc.b -5,69
x14089:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1408c:
	.dc.b -3
x1408d:
	.dc.b -1,(x1435e-x13696)/256,(x1435e-x13696)&255
x14090:
	.dc.b 19
x14091:
	.dc.b -5,69
x14093:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14096:
	.dc.b 70
x14097:
	.dc.b -3
x14098:
	.dc.b -1,(x1438e-x13696)/256,(x1438e-x13696)&255
x1409b:
	.dc.b 5
x1409c:
	.dc.b 19
x1409d:
	.dc.b -2,(f140e2-x13696)/256,(f140e2-x13696)&255
x140a0:
	.dc.b -3
x140a1:
	.dc.b -1,(x1438e-x13696)/256,(x1438e-x13696)&255
x140a4:
	.dc.b 6
x140a5:
	.dc.b 19
x140a6:
	.dc.b -2,(f140d6-x13696)/256,(f140d6-x13696)&255
x140a9:
	.dc.b -3
x140aa:
	.dc.b -1,(x1438e-x13696)/256,(x1438e-x13696)&255
x140ad:
	.dc.b 7
x140ae:
	.dc.b 19
x140af:
	.dc.b -2,(f140ee-x13696)/256,(f140ee-x13696)&255
x140b2:
	.dc.b -3
x140b3:
	.dc.b -1,(x1438e-x13696)/256,(x1438e-x13696)&255
x140b6:
	.dc.b 8
x140b7:
	.dc.b 19
x140b8:
	.dc.b -2,(f140fa-x13696)/256,(f140fa-x13696)&255
x140bb:
	.dc.b -3
x140bc:
	.dc.b -1,(x14372-x13696)/256,(x14372-x13696)&255
x140bf:
	.dc.b -1,(x14147-x13696)/256,(x14147-x13696)&255
x140c2:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x140c5:
	.dc.b -3
x140c6:
	.dc.b -1,(x1437e-x13696)/256,(x1437e-x13696)&255
x140c9:
	.dc.b -1,(x14147-x13696)/256,(x14147-x13696)&255
x140cc:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x140cf:
	.dc.b 70
x140d0:
	.dc.b -3
x140d1:
	.dc.b -1,(x14181-x13696)/256,(x14181-x13696)&255
x140d4:
	.dc.b -4
	.even

f140d6:
		move.w     #352,d0
		lea.l      x142c4,a2
		bra.s      f140fa_1

f140e2:
		move.w     #368,d0
		lea.l      x142a6,a2
		bra.s      f140fa_1
f140ee:

		move.w     #384,d0
		lea.l      x142e7,a2
		bra.s      f140fa_1
f140fa:
		move.w     #400,d0
		lea.l      x142fc,a2
f140fa_1:
		lea.l      1106(a6),a0
		lea.l      1364(a6),a1
		move.w     d0,(a1)+
		movem.l    a0-a2,4(a7)
		rts

x14116:
	.dc.b -1,(x1436a-x13696)/256,(x1436a-x13696)&255
x14119:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x1411c:
	.dc.b 70
x1411d:
	.dc.b -4
x1411e:
	.dc.b -1,(x14372-x13696)/256,(x14372-x13696)&255
x14121:
	.dc.b -1,(x1413e-x13696)/256,(x1413e-x13696)&255
x14124:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14127:
	.dc.b -3
x14128:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x1412b:
	.dc.b -1,(x1413e-x13696)/256,(x1413e-x13696)&255
x1412e:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14131:
	.dc.b 70
x14132:
	.dc.b -3
x14133:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x14136:
	.dc.b -1,(x1413e-x13696)/256,(x1413e-x13696)&255
x14139:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x1413c:
	.dc.b 70
x1413d:
	.dc.b -4
x1413e:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14141:
	.dc.b 32
x14142:
	.dc.b -6
x14143:
	.dc.b 19
x14144:
	.dc.b -5,57
x14146:
	.dc.b -4
x14147:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x1414a:
	.dc.b -6
x1414b:
	.dc.b 19
x1414c:
	.dc.b -5,57
x1414e:
	.dc.b -4
x1414f:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14152:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14155:
	.dc.b 32
x14156:
	.dc.b -6
x14157:
	.dc.b 19
x14158:
	.dc.b -5,57
x1415a:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1415d:
	.dc.b -4
x1415e:
	.dc.b -1,(x1446a-x13696)/256,(x1446a-x13696)&255
x14161:
	.dc.b -3
x14162:
	.dc.b -2,(f13da6-x13696)/256,(f13da6-x13696)&255
x14165:
	.dc.b -1,(x14152-x13696)/256,(x14152-x13696)&255
x14168:
	.dc.b -4
x14169:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1416c:
	.dc.b 88
x1416d:
	.dc.b -6
x1416e:
	.dc.b 19
x1416f:
	.dc.b -5,67
x14171:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14174:
	.dc.b -4
x14175:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14178:
	.dc.b 88
x14179:
	.dc.b -6
x1417a:
	.dc.b 19
x1417b:
	.dc.b -5,67
x1417d:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x14180:
	.dc.b -4
x14181:
	.dc.b -2,(f15468-x13696)/256,(f15468-x13696)&255
x14184:
	.dc.b -1,(x14196-x13696)/256,(x14196-x13696)&255
x14187:
	.dc.b -3
x14188:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x1418b:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x1418e:
	.dc.b -6
x1418f:
	.dc.b 19
x14190:
	.dc.b -5,57
x14192:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x14195:
	.dc.b -4
x14196:
	.dc.b 19
x14197:
	.dc.b -5,69
x14199:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x1419c:
	.dc.b -4
x1419d:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x141a0:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x141a3:
	.dc.b -1,(x141b0-x13696)/256,(x141b0-x13696)&255
x141a6:
	.dc.b 70
x141a7:
	.dc.b -4
x141a8:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x141ab:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x141ae:
	.dc.b 70
x141af:
	.dc.b -4
x141b0:
	.dc.b 74
x141b1:
	.dc.b -3
x141b2:
	.dc.b -4
x141b3:
	.dc.b 90
x141b4:
	.dc.b -6
x141b5:
	.dc.b -3
x141b6:
	.dc.b -4
x141b7:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x141ba:
	.dc.b 70
x141bb:
	.dc.b -4
x141bc:
	.dc.b 70
x141bd:
	.dc.b -3
x141be:
	.dc.b -2,(f13d82-x13696)/256,(f13d82-x13696)&255
x141c1:
	.dc.b -1,(x14169-x13696)/256,(x14169-x13696)&255
x141c4:
	.dc.b -3
x141c5:
	.dc.b -2,(f13b68-x13696)/256,(f13b68-x13696)&255
x141c8:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x141cb:
	.dc.b 70
x141cc:
	.dc.b -4
x141cd:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x141d0:
	.dc.b 70
x141d1:
	.dc.b -3
x141d2:
	.dc.b -2,(f13b6c-x13696)/256,(f13b6c-x13696)&255
x141d5:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x141d8:
	.dc.b 70
x141d9:
	.dc.b -4
x141da:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x141dd:
	.dc.b 70
x141de:
	.dc.b -3
x141df:
	.dc.b -5,32
x141e1:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x141e4:
	.dc.b -1,(x141b3-x13696)/256,(x141b3-x13696)&255
x141e7:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x141ea:
	.dc.b 70
x141eb:
	.dc.b -4
x141ec:
	.dc.b 70
x141ed:
	.dc.b -3
x141ee:
	.dc.b -5,34
x141f0:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x141f3:
	.dc.b 70
x141f4:
	.dc.b -3
x141f5:
	.dc.b -5,36
x141f7:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x141fa:
	.dc.b -4
x141fb:
	.dc.b -1,(x1438e-x13696)/256,(x1438e-x13696)&255
x141fe:
	.dc.b -1,(x14228-x13696)/256,(x14228-x13696)&255
x14201:
	.dc.b -3
x14202:
	.dc.b -2,(f13dd2-x13696)/256,(f13dd2-x13696)&255
x14205:
	.dc.b -1,(x14213-x13696)/256,(x14213-x13696)&255
x14208:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x1420b:
	.dc.b -1,(x14217-x13696)/256,(x14217-x13696)&255
x1420e:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14211:
	.dc.b 70
x14212:
	.dc.b -4
x14213:
	.dc.b 96
x14214:
	.dc.b -6
x14215:
	.dc.b -3
x14216:
	.dc.b -4
x14217:
	.dc.b 33
x14218:
	.dc.b -3
x14219:
	.dc.b 108
x1421a:
	.dc.b -3
x1421b:
	.dc.b 34
x1421c:
	.dc.b -5,33
x1421e:
	.dc.b -4
x1421f:
	.dc.b -1,(x14217-x13696)/256,(x14217-x13696)&255
x14222:
	.dc.b -5,108
x14224:
	.dc.b -3
x14225:
	.dc.b 249,108
x14227:
	.dc.b -4
x14228:
	.dc.b 19
x14229:
	.dc.b -5,69
x1422b:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1422e:
	.dc.b 71
x1422f:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14232:
	.dc.b -1,(x14245-x13696)/256,(x14245-x13696)&255
x14235:
	.dc.b 70
x14236:
	.dc.b -3
x14237:
	.dc.b 19
x14238:
	.dc.b -5,69
x1423a:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1423d:
	.dc.b 73
x1423e:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14241:
	.dc.b -2,(f15972-x13696)/256,(f15972-x13696)&255
x14244:
	.dc.b -4
x14245:
	.dc.b 72
x14246:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14249:
	.dc.b -2,(f15976-x13696)/256,(f15976-x13696)&255
x1424c:
	.dc.b -3
x1424d:
	.dc.b -2,(f1596e-x13696)/256,(f1596e-x13696)&255
x14250:
	.dc.b -4
x14251:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x14254:
	.dc.b -1,(x1438e-x13696)/256,(x1438e-x13696)&255
x14257:
	.dc.b 70
x14258:
	.dc.b -4
x14259:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x1425c:
	.dc.b -1,(x14264-x13696)/256,(x14264-x13696)&255
x1425f:
	.dc.b -1,(x14286-x13696)/256,(x14286-x13696)&255
x14262:
	.dc.b 70
x14263:
	.dc.b -4
x14264:
	.dc.b 71
x14265:
	.dc.b -1,(x14276-x13696)/256,(x14276-x13696)&255
x14268:
	.dc.b -3
x14269:
	.dc.b -1,(x14276-x13696)/256,(x14276-x13696)&255
x1426c:
	.dc.b 71
x1426d:
	.dc.b -1,(x14276-x13696)/256,(x14276-x13696)&255
x14270:
	.dc.b -3
x14271:
	.dc.b -1,(x14276-x13696)/256,(x14276-x13696)&255
x14274:
	.dc.b 71
x14275:
	.dc.b -3
x14276:
	.dc.b -2,(f1595a-x13696)/256,(f1595a-x13696)&255
x14279:
	.dc.b -3
x1427a:
	.dc.b -2,(f1546c-x13696)/256,(f1546c-x13696)&255
x1427d:
	.dc.b -3
x1427e:
	.dc.b -2,(f15484-x13696)/256,(f15484-x13696)&255
x14281:
	.dc.b -3
x14282:
	.dc.b -2,(f15488-x13696)/256,(f15488-x13696)&255
x14285:
	.dc.b -4
x14286:
	.dc.b 33
x14287:
	.dc.b -1,(x14264-x13696)/256,(x14264-x13696)&255
x1428a:
	.dc.b -1,(x14286-x13696)/256,(x14286-x13696)&255
x1428d:
	.dc.b -3
x1428e:
	.dc.b -4
x1428f:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x14292:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14295:
	.dc.b -3
x14296:
	.dc.b -5,88
x14298:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x1429b:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x1429e:
	.dc.b -4
x1429f:
	.dc.b -2,(f13b62-x13696)/256,(f13b62-x13696)&255
x142a2:
	.dc.b 70
x142a3:
	.dc.b -4
x142a4:
	.dc.b 70
x142a5:
	.dc.b -4
x142a6:
	.dc.b -1,(x143cb-x13696)/256,(x143cb-x13696)&255
x142a9:
	.dc.b -1,(x14311-x13696)/256,(x14311-x13696)&255
x142ac:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x142af:
	.dc.b 70
x142b0:
	.dc.b -3
x142b1:
	.dc.b -1,(x1433e-x13696)/256,(x1433e-x13696)&255
x142b4:
	.dc.b -1,(x14311-x13696)/256,(x14311-x13696)&255
x142b7:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x142ba:
	.dc.b -3
x142bb:
	.dc.b -6
x142bc:
	.dc.b -5,0
x142be:
	.dc.b 249,12
x142c0:
	.dc.b -1,(x148e4-x13696)/256,(x148e4-x13696)&255
x142c3:
	.dc.b -4
x142c4:
	.dc.b -1,(x143cb-x13696)/256,(x143cb-x13696)&255
x142c7:
	.dc.b -1,(x14319-x13696)/256,(x14319-x13696)&255
x142ca:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x142cd:
	.dc.b 70
x142ce:
	.dc.b -3
x142cf:
	.dc.b -1,(x1433e-x13696)/256,(x1433e-x13696)&255
x142d2:
	.dc.b -1,(x14319-x13696)/256,(x14319-x13696)&255
x142d5:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x142d8:
	.dc.b -3
x142d9:
	.dc.b -2,(f13d8e-x13696)/256,(f13d8e-x13696)&255
x142dc:
	.dc.b -1,(x14152-x13696)/256,(x14152-x13696)&255
x142df:
	.dc.b -3
x142e0:
	.dc.b -2,(f13d9a-x13696)/256,(f13d9a-x13696)&255
x142e3:
	.dc.b -1,(x14152-x13696)/256,(x14152-x13696)&255
x142e6:
	.dc.b -4
x142e7:
	.dc.b -1,(x143cb-x13696)/256,(x143cb-x13696)&255
x142ea:
	.dc.b -1,(x14321-x13696)/256,(x14321-x13696)&255
x142ed:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x142f0:
	.dc.b 70
x142f1:
	.dc.b -3
x142f2:
	.dc.b -1,(x1433e-x13696)/256,(x1433e-x13696)&255
x142f5:
	.dc.b -1,(x14321-x13696)/256,(x14321-x13696)&255
x142f8:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x142fb:
	.dc.b -4
x142fc:
	.dc.b -1,(x143cb-x13696)/256,(x143cb-x13696)&255
x142ff:
	.dc.b -1,(x14329-x13696)/256,(x14329-x13696)&255
x14302:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14305:
	.dc.b 70
x14306:
	.dc.b -3
x14307:
	.dc.b -1,(x1433e-x13696)/256,(x1433e-x13696)&255
x1430a:
	.dc.b -1,(x14329-x13696)/256,(x14329-x13696)&255
x1430d:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14310:
	.dc.b -4
x14311:
	.dc.b 33
x14312:
	.dc.b -3
x14313:
	.dc.b 5
x14314:
	.dc.b 19
x14315:
	.dc.b -6
x14316:
	.dc.b -5,33
x14318:
	.dc.b -4
x14319:
	.dc.b 33
x1431a:
	.dc.b -3
x1431b:
	.dc.b 6
x1431c:
	.dc.b 19
x1431d:
	.dc.b -6
x1431e:
	.dc.b -5,33
x14320:
	.dc.b -4
x14321:
	.dc.b 33
x14322:
	.dc.b -3
x14323:
	.dc.b 7
x14324:
	.dc.b 19
x14325:
	.dc.b -6
x14326:
	.dc.b -5,33
x14328:
	.dc.b -4
x14329:
	.dc.b 33
x1432a:
	.dc.b -3
x1432b:
	.dc.b 8
x1432c:
	.dc.b 19
x1432d:
	.dc.b -6
x1432e:
	.dc.b -5,33
x14330:
	.dc.b -4
x14331:
	.dc.b -1,(x1433e-x13696)/256,(x1433e-x13696)&255
x14334:
	.dc.b 70
x14335:
	.dc.b -4
x14336:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14339:
	.dc.b -3
x1433a:
	.dc.b -1,(x143e1-x13696)/256,(x143e1-x13696)&255
x1433d:
	.dc.b -3
x1433e:
	.dc.b -1,(x14402-x13696)/256,(x14402-x13696)&255
x14341:
	.dc.b -3
x14342:
	.dc.b -1,(x143f7-x13696)/256,(x143f7-x13696)&255
x14345:
	.dc.b -3
x14346:
	.dc.b -1,(x143d6-x13696)/256,(x143d6-x13696)&255
x14349:
	.dc.b -3
x1434a:
	.dc.b -1,(x143cb-x13696)/256,(x143cb-x13696)&255
x1434d:
	.dc.b -4
x1434e:
	.dc.b -2,(f15488-x13696)/256,(f15488-x13696)&255
x14351:
	.dc.b -3
x14352:
	.dc.b -2,(f15468-x13696)/256,(f15468-x13696)&255
x14355:
	.dc.b -3
x14356:
	.dc.b -2,(f1546c-x13696)/256,(f1546c-x13696)&255
x14359:
	.dc.b -3
x1435a:
	.dc.b -2,(f15484-x13696)/256,(f15484-x13696)&255
x1435d:
	.dc.b -3
x1435e:
	.dc.b -2,(f15464-x13696)/256,(f15464-x13696)&255
x14361:
	.dc.b -3
x14362:
	.dc.b -2,(f15470-x13696)/256,(f15470-x13696)&255
x14365:
	.dc.b -4
x14366:
	.dc.b -2,(f15480-x13696)/256,(f15480-x13696)&255
x14369:
	.dc.b -3
x1436a:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x1436d:
	.dc.b -3
x1436e:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x14371:
	.dc.b -3
x14372:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x14375:
	.dc.b -3
x14376:
	.dc.b -2,(f1548c-x13696)/256,(f1548c-x13696)&255
x14379:
	.dc.b -3
x1437a:
	.dc.b -2,(f15490-x13696)/256,(f15490-x13696)&255
x1437d:
	.dc.b -4
x1437e:
	.dc.b -2,(f15480-x13696)/256,(f15480-x13696)&255
x14381:
	.dc.b -3
x14382:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x14385:
	.dc.b -4
x14386:
	.dc.b -2,(f15464-x13696)/256,(f15464-x13696)&255
x14389:
	.dc.b -3
x1438a:
	.dc.b -2,(f1546c-x13696)/256,(f1546c-x13696)&255
x1438d:
	.dc.b -4
x1438e:
	.dc.b -2,(f15464-x13696)/256,(f15464-x13696)&255
x14391:
	.dc.b -3
x14392:
	.dc.b -2,(f1546c-x13696)/256,(f1546c-x13696)&255
x14395:
	.dc.b -3
x14396:
	.dc.b -2,(f15484-x13696)/256,(f15484-x13696)&255
x14399:
	.dc.b -3
x1439a:
	.dc.b -2,(f15488-x13696)/256,(f15488-x13696)&255
x1439d:
	.dc.b -4
x1439e:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x143a1:
	.dc.b 33
x143a2:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x143a5:
	.dc.b -4
x143a6:
	.dc.b -1,(x14366-x13696)/256,(x14366-x13696)&255
x143a9:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x143ac:
	.dc.b -4
x143ad:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x143b0:
	.dc.b 32
x143b1:
	.dc.b -3
x143b2:
	.dc.b -2,(f15480-x13696)/256,(f15480-x13696)&255
x143b5:
	.dc.b 32
x143b6:
	.dc.b -3
x143b7:
	.dc.b -2,(f15490-x13696)/256,(f15490-x13696)&255
x143ba:
	.dc.b 32
x143bb:
	.dc.b -3
x143bc:
	.dc.b -2,(f1548c-x13696)/256,(f1548c-x13696)&255
x143bf:
	.dc.b 32
x143c0:
	.dc.b -3
x143c1:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x143c4:
	.dc.b 32
x143c5:
	.dc.b -3
x143c6:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x143c9:
	.dc.b 32
x143ca:
	.dc.b -4
x143cb:
	.dc.b -2,(f15464-x13696)/256,(f15464-x13696)&255
x143ce:
	.dc.b -3
x143cf:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x143d2:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x143d5:
	.dc.b -4
x143d6:
	.dc.b -2,(f1546c-x13696)/256,(f1546c-x13696)&255
x143d9:
	.dc.b -3
x143da:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x143dd:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x143e0:
	.dc.b -4
x143e1:
	.dc.b -2,(f15470-x13696)/256,(f15470-x13696)&255
x143e4:
	.dc.b -3
x143e5:
	.dc.b -2,(f15480-x13696)/256,(f15480-x13696)&255
x143e8:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x143eb:
	.dc.b -4
x143ec:
	.dc.b -2,(f15468-x13696)/256,(f15468-x13696)&255
x143ef:
	.dc.b -3
x143f0:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x143f3:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x143f6:
	.dc.b -4
x143f7:
	.dc.b -2,(f15484-x13696)/256,(f15484-x13696)&255
x143fa:
	.dc.b -3
x143fb:
	.dc.b -2,(f1548c-x13696)/256,(f1548c-x13696)&255
x143fe:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x14401:
	.dc.b -4
x14402:
	.dc.b -2,(f15488-x13696)/256,(f15488-x13696)&255
x14405:
	.dc.b -3
x14406:
	.dc.b -2,(f15490-x13696)/256,(f15490-x13696)&255
x14409:
	.dc.b -1,(x1519e-x13696)/256,(x1519e-x13696)&255
x1440c:
	.dc.b -4
x1440d:
	.dc.b -1,(x14342-x13696)/256,(x14342-x13696)&255
x14410:
	.dc.b 33
x14411:
	.dc.b -1,(x14342-x13696)/256,(x14342-x13696)&255
x14414:
	.dc.b 33
x14415:
	.dc.b -1,(x14342-x13696)/256,(x14342-x13696)&255
x14418:
	.dc.b 33
x14419:
	.dc.b -1,(x14342-x13696)/256,(x14342-x13696)&255
x1441c:
	.dc.b -4
x1441d:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x14420:
	.dc.b -1,(x14425-x13696)/256,(x14425-x13696)&255
x14423:
	.dc.b 70
x14424:
	.dc.b -4
x14425:
	.dc.b 33
x14426:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x14429:
	.dc.b -1,(x14425-x13696)/256,(x14425-x13696)&255
x1442c:
	.dc.b -3
x1442d:
	.dc.b -4
x1442e:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x14431:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14434:
	.dc.b -1,(x1442e-x13696)/256,(x1442e-x13696)&255
x14437:
	.dc.b -3
x14438:
	.dc.b -4
x14439:
	.dc.b -6
x1443a:
	.dc.b 249,52
x1443c:
	.dc.b -1,(x14213-x13696)/256,(x14213-x13696)&255
x1443f:
	.dc.b -1,(x15252-x13696)/256,(x15252-x13696)&255
x14442:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14445:
	.dc.b -1,(x1442e-x13696)/256,(x1442e-x13696)&255
x14448:
	.dc.b 70
x14449:
	.dc.b -3
x1444a:
	.dc.b -1,(x14213-x13696)/256,(x14213-x13696)&255
x1444d:
	.dc.b -2,(f13d22-x13696)/256,(f13d22-x13696)&255
x14450:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x14453:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14456:
	.dc.b -1,(x1442e-x13696)/256,(x1442e-x13696)&255
x14459:
	.dc.b 70
x1445a:
	.dc.b -3
x1445b:
	.dc.b -6
x1445c:
	.dc.b 249,54
x1445e:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14461:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14464:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14467:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1446a:
	.dc.b 70
x1446b:
	.dc.b -4
x1446c:
	.dc.b -2,(f1546c-x13696)/256,(f1546c-x13696)&255
x1446f:
	.dc.b 33
x14470:
	.dc.b -2,(f158f8-x13696)/256,(f158f8-x13696)&255
x14473:
	.dc.b 70
x14474:
	.dc.b -4
x14475:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14478:
	.dc.b 33
x14479:
	.dc.b -4
x1447a:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x1447d:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14480:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14483:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14486:
	.dc.b -1,(x1445e-x13696)/256,(x1445e-x13696)&255
x14489:
	.dc.b -4
x1448a:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x1448d:
	.dc.b -1,(x144ba-x13696)/256,(x144ba-x13696)&255
x14490:
	.dc.b -1,(x14483-x13696)/256,(x14483-x13696)&255
x14493:
	.dc.b -4
x14494:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14497:
	.dc.b -3
x14498:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x1449b:
	.dc.b -1,(x1454c-x13696)/256,(x1454c-x13696)&255
x1449e:
	.dc.b -4
x1449f:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x144a2:
	.dc.b -3
x144a3:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x144a6:
	.dc.b -1,(x14461-x13696)/256,(x14461-x13696)&255
x144a9:
	.dc.b -4
x144aa:
	.dc.b -1,(x14461-x13696)/256,(x14461-x13696)&255
x144ad:
	.dc.b -3
x144ae:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x144b1:
	.dc.b -4
x144b2:
	.dc.b -1,(x1445e-x13696)/256,(x1445e-x13696)&255
x144b5:
	.dc.b -3
x144b6:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x144b9:
	.dc.b -4
x144ba:
	.dc.b 71
x144bb:
	.dc.b -3
x144bc:
	.dc.b 33
x144bd:
	.dc.b -5,71
x144bf:
	.dc.b -4
x144c0:
	.dc.b -1,(x14386-x13696)/256,(x14386-x13696)&255
x144c3:
	.dc.b 19
x144c4:
	.dc.b -5,69
x144c6:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x144c9:
	.dc.b 70
x144ca:
	.dc.b -3
x144cb:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x144ce:
	.dc.b -1,(x14386-x13696)/256,(x14386-x13696)&255
x144d1:
	.dc.b 19
x144d2:
	.dc.b -5,69
x144d4:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x144d7:
	.dc.b -4
x144d8:
	.dc.b -1,(x144dd-x13696)/256,(x144dd-x13696)&255
x144db:
	.dc.b 70
x144dc:
	.dc.b -4
x144dd:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x144e0:
	.dc.b -1,(x144e6-x13696)/256,(x144e6-x13696)&255
x144e3:
	.dc.b -1,(x144e6-x13696)/256,(x144e6-x13696)&255
x144e6:
	.dc.b 33
x144e7:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x144ea:
	.dc.b -4
x144eb:
	.dc.b 33
x144ec:
	.dc.b -3
x144ed:
	.dc.b 34
x144ee:
	.dc.b -4
x144ef:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x144f2:
	.dc.b -3
x144f3:
	.dc.b 249,33
x144f5:
	.dc.b -4
x144f6:
	.dc.b -1,(x144ff-x13696)/256,(x144ff-x13696)&255
x144f9:
	.dc.b 249,77
x144fb:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x144fe:
	.dc.b -4
x144ff:
	.dc.b 77
x14500:
	.dc.b -6
x14501:
	.dc.b -3
x14502:
	.dc.b -4
x14503:
	.dc.b 77
x14504:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x14507:
	.dc.b 33
x14508:
	.dc.b -3
x14509:
	.dc.b -4
x1450a:
	.dc.b -2,(f13d6a-x13696)/256,(f13d6a-x13696)&255
x1450d:
	.dc.b -1,(x14503-x13696)/256,(x14503-x13696)&255
x14510:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x14513:
	.dc.b 33
x14514:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x14517:
	.dc.b 33
x14518:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x1451b:
	.dc.b 70
x1451c:
	.dc.b -3
x1451d:
	.dc.b -2,(f13d76-x13696)/256,(f13d76-x13696)&255
x14520:
	.dc.b 70
x14521:
	.dc.b -3
x14522:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x14525:
	.dc.b 70
x14526:
	.dc.b -3
x14527:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x1452a:
	.dc.b -1,(x14532-x13696)/256,(x14532-x13696)&255
x1452d:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x14530:
	.dc.b 70
x14531:
	.dc.b -4
x14532:
	.dc.b 71
x14533:
	.dc.b -3
x14534:
	.dc.b 33
x14535:
	.dc.b -5,71
x14537:
	.dc.b -3
x14538:
	.dc.b 34
x14539:
	.dc.b -5,71
x1453b:
	.dc.b -3
x1453c:
	.dc.b 249,71
x1453e:
	.dc.b -4
x1453f:
	.dc.b 182
x14540:
	.dc.b 184
x14541:
	.dc.b 70
x14542:
	.dc.b -3
x14543:
	.dc.b 182
x14544:
	.dc.b 185
x14545:
	.dc.b 70
x14546:
	.dc.b -4
x14547:
	.dc.b 70
x14548:
	.dc.b -3
x14549:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x1454c:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x1454f:
	.dc.b -3
x14550:
	.dc.b -2,(f13d1c-x13696)/256,(f13d1c-x13696)&255
x14553:
	.dc.b 70
x14554:
	.dc.b -4
x14555:
	.dc.b -1,(x1455c-x13696)/256,(x1455c-x13696)&255
x14558:
	.dc.b -2,(execute_defint-x13696)/256,(execute_defint-x13696)&255
x1455b:
	.dc.b -4
x1455c:
	.dc.b -2,(f13d22-x13696)/256,(f13d22-x13696)&255
x1455f:
	.dc.b 70
x14560:
	.dc.b -3
x14561:
	.dc.b -2,(f13d1c-x13696)/256,(f13d1c-x13696)&255
x14564:
	.dc.b 70
x14565:
	.dc.b -4
x14566:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x14569:
	.dc.b -1,(x1421f-x13696)/256,(x1421f-x13696)&255
x1456c:
	.dc.b -1,(x1454c-x13696)/256,(x1454c-x13696)&255
x1456f:
	.dc.b -4
x14570:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14573:
	.dc.b -3
x14574:
	.dc.b -2,(f14578-x13696)/256,(f14578-x13696)&255
x14577:
	.dc.b -4


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


x145c6:
	.dc.b -1,(x145ce-x13696)/256,(x145ce-x13696)&255
x145c9:
	.dc.b 33
x145ca:
	.dc.b -1,(x1454c-x13696)/256,(x1454c-x13696)&255
x145cd:
	.dc.b -4
x145ce:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x145d1:
	.dc.b -3
x145d2:
	.dc.b -4
x145d3:
	.dc.b -2,(f13d5a-x13696)/256,(f13d5a-x13696)&255
x145d6:
	.dc.b -1,(x145f0-x13696)/256,(x145f0-x13696)&255
x145d9:
	.dc.b -3
x145da:
	.dc.b -5,18
x145dc:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x145df:
	.dc.b -1,(x144ef-x13696)/256,(x144ef-x13696)&255
x145e2:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x145e5:
	.dc.b -1,(x144ef-x13696)/256,(x144ef-x13696)&255
x145e8:
	.dc.b -1,(x14570-x13696)/256,(x14570-x13696)&255
x145eb:
	.dc.b -1,(x14b90-x13696)/256,(x14b90-x13696)&255
x145ee:
	.dc.b 70
x145ef:
	.dc.b -4
x145f0:
	.dc.b -5,20
x145f2:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x145f5:
	.dc.b -3
x145f6:
	.dc.b -1,(x14461-x13696)/256,(x14461-x13696)&255
x145f9:
	.dc.b -3
x145fa:
	.dc.b -5,22
x145fc:
	.dc.b -1,(x144ff-x13696)/256,(x144ff-x13696)&255
x145ff:
	.dc.b -1,(x14480-x13696)/256,(x14480-x13696)&255
x14602:
	.dc.b -4
x14603:
	.dc.b -2,(f13d5a-x13696)/256,(f13d5a-x13696)&255
x14606:
	.dc.b -1,(x14628-x13696)/256,(x14628-x13696)&255
x14609:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1460c:
	.dc.b -3
x1460d:
	.dc.b -5,24
x1460f:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x14612:
	.dc.b 70
x14613:
	.dc.b -3
x14614:
	.dc.b 70
x14615:
	.dc.b -4
x14616:
	.dc.b 70
x14617:
	.dc.b -3
x14618:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x1461b:
	.dc.b 77
x1461c:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1461f:
	.dc.b -3
x14620:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14623:
	.dc.b -2,(f15444-x13696)/256,(f15444-x13696)&255
x14626:
	.dc.b 70
x14627:
	.dc.b -4
x14628:
	.dc.b 77
x14629:
	.dc.b -6
x1462a:
	.dc.b -5,28
x1462c:
	.dc.b -3
x1462d:
	.dc.b -5,26
x1462f:
	.dc.b -4
x14630:
	.dc.b 70
x14631:
	.dc.b -3
x14632:
	.dc.b -2,(f13d5a-x13696)/256,(f13d5a-x13696)&255
x14635:
	.dc.b -1,(x1463c-x13696)/256,(x1463c-x13696)&255
x14638:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1463b:
	.dc.b -4
x1463c:
	.dc.b 77
x1463d:
	.dc.b -6
x1463e:
	.dc.b -5,34
x14640:
	.dc.b -3
x14641:
	.dc.b -5,32
x14643:
	.dc.b -4
x14644:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14647:
	.dc.b -3
x14648:
	.dc.b 77
x14649:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1464c:
	.dc.b -4
x1464d:
	.dc.b -1,(x144ff-x13696)/256,(x144ff-x13696)&255
x14650:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14653:
	.dc.b -4
x14654:
	.dc.b -1,(x144ff-x13696)/256,(x144ff-x13696)&255
x14657:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x1465a:
	.dc.b -1,(x1454c-x13696)/256,(x1454c-x13696)&255
x1465d:
	.dc.b -4
x1465e:
	.dc.b -2,(f13bca-x13696)/256,(f13bca-x13696)&255
x14661:
	.dc.b -4
x14662:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14665:
	.dc.b -1,(x14695-x13696)/256,(x14695-x13696)&255
x14668:
	.dc.b -1,(x14b90-x13696)/256,(x14b90-x13696)&255
x1466b:
	.dc.b 32
x1466c:
	.dc.b -1,(x14196-x13696)/256,(x14196-x13696)&255
x1466f:
	.dc.b -4
x14670:
	.dc.b -1,(x1445e-x13696)/256,(x1445e-x13696)&255
x14673:
	.dc.b -3
x14674:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14677:
	.dc.b -1,(x14480-x13696)/256,(x14480-x13696)&255
x1467a:
	.dc.b -4
x1467b:
	.dc.b -1,(x14461-x13696)/256,(x14461-x13696)&255
x1467e:
	.dc.b -3
x1467f:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14682:
	.dc.b -1,(x14483-x13696)/256,(x14483-x13696)&255
x14685:
	.dc.b -4
x14686:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14689:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x1468c:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1468f:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x14692:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14695:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x14698:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1469b:
	.dc.b -4
x1469c:
	.dc.b -1,(x146d3-x13696)/256,(x146d3-x13696)&255
x1469f:
	.dc.b -1,(x14692-x13696)/256,(x14692-x13696)&255
x146a2:
	.dc.b -1,(x146c9-x13696)/256,(x146c9-x13696)&255
x146a5:
	.dc.b -3
x146a6:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x146a9:
	.dc.b -1,(x146ad-x13696)/256,(x146ad-x13696)&255
x146ac:
	.dc.b -4
x146ad:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x146b0:
	.dc.b -1,(x146b4-x13696)/256,(x146b4-x13696)&255
x146b3:
	.dc.b -4
x146b4:
	.dc.b 70
x146b5:
	.dc.b -3
x146b6:
	.dc.b -1,(x146c0-x13696)/256,(x146c0-x13696)&255
x146b9:
	.dc.b -1,(x1529b-x13696)/256,(x1529b-x13696)&255
x146bc:
	.dc.b -1,(x146b4-x13696)/256,(x146b4-x13696)&255
x146bf:
	.dc.b -4
x146c0:
	.dc.b 33
x146c1:
	.dc.b -3
x146c2:
	.dc.b 34
x146c3:
	.dc.b -3
x146c4:
	.dc.b 87
x146c5:
	.dc.b -3
x146c6:
	.dc.b 249,33
x146c8:
	.dc.b -4
x146c9:
	.dc.b 71
x146ca:
	.dc.b -1,(x14692-x13696)/256,(x14692-x13696)&255
x146cd:
	.dc.b -1,(x146c9-x13696)/256,(x146c9-x13696)&255
x146d0:
	.dc.b -3
x146d1:
	.dc.b 70
x146d2:
	.dc.b -4
x146d3:
	.dc.b 71
x146d4:
	.dc.b -3
x146d5:
	.dc.b -4
x146d6:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x146d9:
	.dc.b -1,(x14695-x13696)/256,(x14695-x13696)&255
x146dc:
	.dc.b -1,(x14695-x13696)/256,(x14695-x13696)&255
x146df:
	.dc.b 70
x146e0:
	.dc.b -4
x146e1:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x146e4:
	.dc.b -3
x146e5:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x146e8:
	.dc.b -1,(x14b90-x13696)/256,(x14b90-x13696)&255
x146eb:
	.dc.b 70
x146ec:
	.dc.b -4
x146ed:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x146f0:
	.dc.b -1,(x146f8-x13696)/256,(x146f8-x13696)&255
x146f3:
	.dc.b -1,(x1470c-x13696)/256,(x1470c-x13696)&255
x146f6:
	.dc.b 70
x146f7:
	.dc.b -4
x146f8:
	.dc.b -1,(x14695-x13696)/256,(x14695-x13696)&255
x146fb:
	.dc.b -1,(x1421f-x13696)/256,(x1421f-x13696)&255
x146fe:
	.dc.b -2,(f15468-x13696)/256,(f15468-x13696)&255
x14701:
	.dc.b -3
x14702:
	.dc.b -1,(x14695-x13696)/256,(x14695-x13696)&255
x14705:
	.dc.b 89
x14706:
	.dc.b -5,122
x14708:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x1470b:
	.dc.b -4
x1470c:
	.dc.b -1,(x146f8-x13696)/256,(x146f8-x13696)&255
x1470f:
	.dc.b -1,(x1470c-x13696)/256,(x1470c-x13696)&255
x14712:
	.dc.b -3
x14713:
	.dc.b -4
x14714:
	.dc.b -1,(x15039-x13696)/256,(x15039-x13696)&255
x14717:
	.dc.b 33
x14718:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x1471b:
	.dc.b 70
x1471c:
	.dc.b -3
x1471d:
	.dc.b -5,4
x1471f:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x14722:
	.dc.b 70
x14723:
	.dc.b -3
x14724:
	.dc.b -5,6
x14726:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x14729:
	.dc.b 33
x1472a:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1472d:
	.dc.b -4
x1472e:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14731:
	.dc.b 33
x14732:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14735:
	.dc.b 70
x14736:
	.dc.b -3
x14737:
	.dc.b -5,10
x14739:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x1473c:
	.dc.b 33
x1473d:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14740:
	.dc.b 33
x14741:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14744:
	.dc.b -3
x14745:
	.dc.b -5,12
x14747:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x1474a:
	.dc.b 70
x1474b:
	.dc.b -3
x1474c:
	.dc.b -5,14
x1474e:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x14751:
	.dc.b 33
x14752:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14755:
	.dc.b -4
x14756:
	.dc.b -1,(x14afe-x13696)/256,(x14afe-x13696)&255
x14759:
	.dc.b -3
x1475a:
	.dc.b -5,60
x1475c:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x1475f:
	.dc.b 33
x14760:
	.dc.b -1,(x1454c-x13696)/256,(x1454c-x13696)&255
x14763:
	.dc.b -4
x14764:
	.dc.b 175
x14765:
	.dc.b 70
x14766:
	.dc.b -3
x14767:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x1476a:
	.dc.b 77
x1476b:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1476e:
	.dc.b -1,(x14aa3-x13696)/256,(x14aa3-x13696)&255
x14771:
	.dc.b 70
x14772:
	.dc.b -3
x14773:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14776:
	.dc.b -1,(x15039-x13696)/256,(x15039-x13696)&255
x14779:
	.dc.b -1,(x14aa3-x13696)/256,(x14aa3-x13696)&255
x1477c:
	.dc.b 70
x1477d:
	.dc.b -3
x1477e:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14781:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14784:
	.dc.b 71
x14785:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14788:
	.dc.b -1,(x14aa3-x13696)/256,(x14aa3-x13696)&255
x1478b:
	.dc.b 70
x1478c:
	.dc.b -3
x1478d:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14790:
	.dc.b 109
x14791:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14794:
	.dc.b 70
x14795:
	.dc.b -4
x14796:
	.dc.b -1,(x1445e-x13696)/256,(x1445e-x13696)&255
x14799:
	.dc.b -3
x1479a:
	.dc.b -1,(x14461-x13696)/256,(x14461-x13696)&255
x1479d:
	.dc.b -4
x1479e:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x147a1:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x147a4:
	.dc.b 77
x147a5:
	.dc.b -1,(x147b9-x13696)/256,(x147b9-x13696)&255
x147a8:
	.dc.b -3
x147a9:
	.dc.b -1,(x14483-x13696)/256,(x14483-x13696)&255
x147ac:
	.dc.b -3
x147ad:
	.dc.b -1,(x1445e-x13696)/256,(x1445e-x13696)&255
x147b0:
	.dc.b -3
x147b1:
	.dc.b -1,(x14461-x13696)/256,(x14461-x13696)&255
x147b4:
	.dc.b -3
x147b5:
	.dc.b -1,(x1446a-x13696)/256,(x1446a-x13696)&255
x147b8:
	.dc.b -3
x147b9:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x147bc:
	.dc.b -3
x147bd:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x147c0:
	.dc.b -4
x147c1:
	.dc.b -1,(x147d8-x13696)/256,(x147d8-x13696)&255
x147c4:
	.dc.b -3
x147c5:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x147c8:
	.dc.b 77
x147c9:
	.dc.b -1,(x147d8-x13696)/256,(x147d8-x13696)&255
x147cc:
	.dc.b -3
x147cd:
	.dc.b -2,(f13de4-x13696)/256,(f13de4-x13696)&255
x147d0:
	.dc.b 77
x147d1:
	.dc.b -1,(x147d8-x13696)/256,(x147d8-x13696)&255
x147d4:
	.dc.b -3
x147d5:
	.dc.b -2,(f13de4-x13696)/256,(f13de4-x13696)&255
x147d8:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x147db:
	.dc.b -1,(x147e0-x13696)/256,(x147e0-x13696)&255
x147de:
	.dc.b 70
x147df:
	.dc.b -4
x147e0:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x147e3:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x147e6:
	.dc.b -1,(x147e0-x13696)/256,(x147e0-x13696)&255
x147e9:
	.dc.b -3
x147ea:
	.dc.b -4
x147eb:
	.dc.b -1,(x144ff-x13696)/256,(x144ff-x13696)&255
x147ee:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x147f1:
	.dc.b -4
x147f2:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x147f5:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x147f8:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x147fb:
	.dc.b -4
x147fc:
	.dc.b -1,(x143a6-x13696)/256,(x143a6-x13696)&255
x147ff:
	.dc.b -1,(x14804-x13696)/256,(x14804-x13696)&255
x14802:
	.dc.b 70
x14803:
	.dc.b -4
x14804:
	.dc.b 33
x14805:
	.dc.b -1,(x143a6-x13696)/256,(x143a6-x13696)&255
x14808:
	.dc.b -1,(x14804-x13696)/256,(x14804-x13696)&255
x1480b:
	.dc.b -3
x1480c:
	.dc.b -4
x1480d:
	.dc.b 76
x1480e:
	.dc.b -3
x1480f:
	.dc.b 159
x14810:
	.dc.b -5,76
x14812:
	.dc.b -3
x14813:
	.dc.b 249,76
x14815:
	.dc.b -4
x14816:
	.dc.b -1,(x1480d-x13696)/256,(x1480d-x13696)&255
x14819:
	.dc.b -6
x1481a:
	.dc.b -2,(f15444-x13696)/256,(f15444-x13696)&255
x1481d:
	.dc.b 70
x1481e:
	.dc.b -4
x1481f:
	.dc.b 76
x14820:
	.dc.b -3
x14821:
	.dc.b 159
x14822:
	.dc.b -5,76
x14824:
	.dc.b -4
x14825:
	.dc.b -1,(x1480d-x13696)/256,(x1480d-x13696)&255
x14828:
	.dc.b -2,(f15444-x13696)/256,(f15444-x13696)&255
x1482b:
	.dc.b 70
x1482c:
	.dc.b -4
x1482d:
	.dc.b -6
x1482e:
	.dc.b -5,1
x14830:
	.dc.b 249,0
x14832:
	.dc.b 151
x14833:
	.dc.b -6
x14834:
	.dc.b 70
x14835:
	.dc.b -3
x14836:
	.dc.b -5,4
x14838:
	.dc.b 153
x14839:
	.dc.b -6
x1483a:
	.dc.b 70
x1483b:
	.dc.b -3
x1483c:
	.dc.b -5,6
x1483e:
	.dc.b 153
x1483f:
	.dc.b -6
x14840:
	.dc.b 154
x14841:
	.dc.b -6
x14842:
	.dc.b 70
x14843:
	.dc.b -3
x14844:
	.dc.b -5,2
x14846:
	.dc.b 151
x14847:
	.dc.b -6
x14848:
	.dc.b -1,(x14816-x13696)/256,(x14816-x13696)&255
x1484b:
	.dc.b -3
x1484c:
	.dc.b -5,8
x1484e:
	.dc.b 153
x1484f:
	.dc.b -6
x14850:
	.dc.b -1,(x14816-x13696)/256,(x14816-x13696)&255
x14853:
	.dc.b -3
x14854:
	.dc.b -5,10
x14856:
	.dc.b 167
x14857:
	.dc.b -6
x14858:
	.dc.b -1,(x1481f-x13696)/256,(x1481f-x13696)&255
x1485b:
	.dc.b -1,(x14819-x13696)/256,(x14819-x13696)&255
x1485e:
	.dc.b -3
x1485f:
	.dc.b -5,12
x14861:
	.dc.b 167
x14862:
	.dc.b -6
x14863:
	.dc.b 174
x14864:
	.dc.b -6
x14865:
	.dc.b -1,(x14816-x13696)/256,(x14816-x13696)&255
x14868:
	.dc.b -3
x14869:
	.dc.b -5,14
x1486b:
	.dc.b 167
x1486c:
	.dc.b -6
x1486d:
	.dc.b 170
x1486e:
	.dc.b -6
x1486f:
	.dc.b -1,(x14816-x13696)/256,(x14816-x13696)&255
x14872:
	.dc.b -3
x14873:
	.dc.b -5,16
x14875:
	.dc.b 167
x14876:
	.dc.b -6
x14877:
	.dc.b 171
x14878:
	.dc.b -6
x14879:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x1487c:
	.dc.b -1,(x14825-x13696)/256,(x14825-x13696)&255
x1487f:
	.dc.b -3
x14880:
	.dc.b -5,220
x14882:
	.dc.b 167
x14883:
	.dc.b -6
x14884:
	.dc.b 172
x14885:
	.dc.b -6
x14886:
	.dc.b -1,(x15036-x13696)/256,(x15036-x13696)&255
x14889:
	.dc.b -1,(x14825-x13696)/256,(x14825-x13696)&255
x1488c:
	.dc.b -3
x1488d:
	.dc.b -5,222
x1488f:
	.dc.b 167
x14890:
	.dc.b -6
x14891:
	.dc.b 173
x14892:
	.dc.b -6
x14893:
	.dc.b -1,(x15036-x13696)/256,(x15036-x13696)&255
x14896:
	.dc.b -1,(x14825-x13696)/256,(x14825-x13696)&255
x14899:
	.dc.b -3
x1489a:
	.dc.b -5,20
x1489c:
	.dc.b 167
x1489d:
	.dc.b -6
x1489e:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x148a1:
	.dc.b -3
x148a2:
	.dc.b -5,18
x148a4:
	.dc.b 167
x148a5:
	.dc.b -6
x148a6:
	.dc.b 70
x148a7:
	.dc.b -3
x148a8:
	.dc.b -6
x148a9:
	.dc.b -5,0
x148ab:
	.dc.b 249,252
x148ad:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x148b0:
	.dc.b -1,(x1480d-x13696)/256,(x1480d-x13696)&255
x148b3:
	.dc.b -1,(x148ca-x13696)/256,(x148ca-x13696)&255
x148b6:
	.dc.b -4
x148b7:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x148ba:
	.dc.b -1,(x14825-x13696)/256,(x14825-x13696)&255
x148bd:
	.dc.b -3
x148be:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x148c1:
	.dc.b 152
x148c2:
	.dc.b 70
x148c3:
	.dc.b -3
x148c4:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x148c7:
	.dc.b 154
x148c8:
	.dc.b 70
x148c9:
	.dc.b -4
x148ca:
	.dc.b -2,(f15444-x13696)/256,(f15444-x13696)&255
x148cd:
	.dc.b 70
x148ce:
	.dc.b -3
x148cf:
	.dc.b -2,(f15444-x13696)/256,(f15444-x13696)&255
x148d2:
	.dc.b 33
x148d3:
	.dc.b -1,(x148ca-x13696)/256,(x148ca-x13696)&255
x148d6:
	.dc.b -4
x148d7:
	.dc.b 70
x148d8:
	.dc.b -3
x148d9:
	.dc.b 168
x148da:
	.dc.b 70
x148db:
	.dc.b -3
x148dc:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x148df:
	.dc.b -2,(f15448-x13696)/256,(f15448-x13696)&255
x148e2:
	.dc.b 70
x148e3:
	.dc.b -4
x148e4:
	.dc.b -2,(f15444-x13696)/256,(f15444-x13696)&255
x148e7:
	.dc.b -1,(x1491e-x13696)/256,(x1491e-x13696)&255
x148ea:
	.dc.b 70
x148eb:
	.dc.b -4
x148ec:
	.dc.b -2,(f154c4-x13696)/256,(f154c4-x13696)&255
x148ef:
	.dc.b -1,(x14917-x13696)/256,(x14917-x13696)&255
x148f2:
	.dc.b 70
x148f3:
	.dc.b -3
x148f4:
	.dc.b -2,(f154da-x13696)/256,(f154da-x13696)&255
x148f7:
	.dc.b -1,(x14917-x13696)/256,(x14917-x13696)&255
x148fa:
	.dc.b 70
x148fb:
	.dc.b -4
x148fc:
	.dc.b -2,(f154c4-x13696)/256,(f154c4-x13696)&255
x148ff:
	.dc.b -1,(x14917-x13696)/256,(x14917-x13696)&255
x14902:
	.dc.b 19
x14903:
	.dc.b -5,69
x14905:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14908:
	.dc.b 70
x14909:
	.dc.b -3
x1490a:
	.dc.b -2,(f154da-x13696)/256,(f154da-x13696)&255
x1490d:
	.dc.b -1,(x14917-x13696)/256,(x14917-x13696)&255
x14910:
	.dc.b 19
x14911:
	.dc.b -5,69
x14913:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x14916:
	.dc.b -4
x14917:
	.dc.b 35
x14918:
	.dc.b -1,(x14926-x13696)/256,(x14926-x13696)&255
x1491b:
	.dc.b 32
x1491c:
	.dc.b -3
x1491d:
	.dc.b -4
x1491e:
	.dc.b 35
x1491f:
	.dc.b -6
x14920:
	.dc.b -1,(x14926-x13696)/256,(x14926-x13696)&255
x14923:
	.dc.b 32
x14924:
	.dc.b -3
x14925:
	.dc.b -4
x14926:
	.dc.b 50
x14927:
	.dc.b -1,(x14947-x13696)/256,(x14947-x13696)&255
x1492a:
	.dc.b -1,(x14951-x13696)/256,(x14951-x13696)&255
x1492d:
	.dc.b -3
x1492e:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x14931:
	.dc.b -1,(x14935-x13696)/256,(x14935-x13696)&255
x14934:
	.dc.b -4
x14935:
	.dc.b 33
x14936:
	.dc.b 50
x14937:
	.dc.b -1,(x14947-x13696)/256,(x14947-x13696)&255
x1493a:
	.dc.b -1,(x14951-x13696)/256,(x14951-x13696)&255
x1493d:
	.dc.b -3
x1493e:
	.dc.b 33
x1493f:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x14942:
	.dc.b -1,(x14935-x13696)/256,(x14935-x13696)&255
x14945:
	.dc.b -3
x14946:
	.dc.b -4
x14947:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x1494a:
	.dc.b -3
x1494b:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x1494e:
	.dc.b -5,51
x14950:
	.dc.b -4
x14951:
	.dc.b 33
x14952:
	.dc.b -1,(x14947-x13696)/256,(x14947-x13696)&255
x14955:
	.dc.b -1,(x14951-x13696)/256,(x14951-x13696)&255
x14958:
	.dc.b -3
x14959:
	.dc.b -4
x1495a:
	.dc.b -2,(f15444-x13696)/256,(f15444-x13696)&255
x1495d:
	.dc.b -1,(x14962-x13696)/256,(x14962-x13696)&255
x14960:
	.dc.b 70
x14961:
	.dc.b -4
x14962:
	.dc.b 35
x14963:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14966:
	.dc.b -1,(x14982-x13696)/256,(x14982-x13696)&255
x14969:
	.dc.b 32
x1496a:
	.dc.b -3
x1496b:
	.dc.b 35
x1496c:
	.dc.b -5,157
x1496e:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14971:
	.dc.b -1,(x14982-x13696)/256,(x14982-x13696)&255
x14974:
	.dc.b 32
x14975:
	.dc.b -3
x14976:
	.dc.b 35
x14977:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x1497a:
	.dc.b -5,51
x1497c:
	.dc.b -1,(x14982-x13696)/256,(x14982-x13696)&255
x1497f:
	.dc.b 32
x14980:
	.dc.b -3
x14981:
	.dc.b -4
x14982:
	.dc.b 33
x14983:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14986:
	.dc.b -1,(x14982-x13696)/256,(x14982-x13696)&255
x14989:
	.dc.b -3
x1498a:
	.dc.b 33
x1498b:
	.dc.b -5,156
x1498d:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14990:
	.dc.b -1,(x14982-x13696)/256,(x14982-x13696)&255
x14993:
	.dc.b -3
x14994:
	.dc.b 33
x14995:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x14998:
	.dc.b -5,51
x1499a:
	.dc.b -1,(x14982-x13696)/256,(x14982-x13696)&255
x1499d:
	.dc.b -3
x1499e:
	.dc.b -4
x1499f:
	.dc.b -2,(f15448-x13696)/256,(f15448-x13696)&255
x149a2:
	.dc.b 124
x149a3:
	.dc.b 70
x149a4:
	.dc.b -4
x149a5:
	.dc.b 70
x149a6:
	.dc.b -3
x149a7:
	.dc.b -2,(f15448-x13696)/256,(f15448-x13696)&255
x149aa:
	.dc.b 70
x149ab:
	.dc.b -4
x149ac:
	.dc.b -1,(x143cb-x13696)/256,(x143cb-x13696)&255
x149af:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x149b2:
	.dc.b -1,(x143cb-x13696)/256,(x143cb-x13696)&255
x149b5:
	.dc.b 70
x149b6:
	.dc.b -3
x149b7:
	.dc.b -1,(x143d6-x13696)/256,(x143d6-x13696)&255
x149ba:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x149bd:
	.dc.b -1,(x143d6-x13696)/256,(x143d6-x13696)&255
x149c0:
	.dc.b 70
x149c1:
	.dc.b -3
x149c2:
	.dc.b -1,(x143e1-x13696)/256,(x143e1-x13696)&255
x149c5:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x149c8:
	.dc.b -1,(x143e1-x13696)/256,(x143e1-x13696)&255
x149cb:
	.dc.b 70
x149cc:
	.dc.b -3
x149cd:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x149d0:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x149d3:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x149d6:
	.dc.b 70
x149d7:
	.dc.b -3
x149d8:
	.dc.b -1,(x143f7-x13696)/256,(x143f7-x13696)&255
x149db:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x149de:
	.dc.b -1,(x143f7-x13696)/256,(x143f7-x13696)&255
x149e1:
	.dc.b 70
x149e2:
	.dc.b -3
x149e3:
	.dc.b -1,(x14402-x13696)/256,(x14402-x13696)&255
x149e6:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x149e9:
	.dc.b -1,(x14402-x13696)/256,(x14402-x13696)&255
x149ec:
	.dc.b 70
x149ed:
	.dc.b -3
x149ee:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x149f1:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x149f4:
	.dc.b 32
x149f5:
	.dc.b 33
x149f6:
	.dc.b -2,(f15474-x13696)/256,(f15474-x13696)&255
x149f9:
	.dc.b 32
x149fa:
	.dc.b 70
x149fb:
	.dc.b -3
x149fc:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x149ff:
	.dc.b 32
x14a00:
	.dc.b 33
x14a01:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x14a04:
	.dc.b 32
x14a05:
	.dc.b 70
x14a06:
	.dc.b -3
x14a07:
	.dc.b -2,(f15480-x13696)/256,(f15480-x13696)&255
x14a0a:
	.dc.b 32
x14a0b:
	.dc.b 33
x14a0c:
	.dc.b -2,(f15480-x13696)/256,(f15480-x13696)&255
x14a0f:
	.dc.b 32
x14a10:
	.dc.b 70
x14a11:
	.dc.b -3
x14a12:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x14a15:
	.dc.b 32
x14a16:
	.dc.b 33
x14a17:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x14a1a:
	.dc.b 32
x14a1b:
	.dc.b 70
x14a1c:
	.dc.b -3
x14a1d:
	.dc.b -2,(f1548c-x13696)/256,(f1548c-x13696)&255
x14a20:
	.dc.b 32
x14a21:
	.dc.b 33
x14a22:
	.dc.b -2,(f1548c-x13696)/256,(f1548c-x13696)&255
x14a25:
	.dc.b 32
x14a26:
	.dc.b 70
x14a27:
	.dc.b -3
x14a28:
	.dc.b -2,(f15490-x13696)/256,(f15490-x13696)&255
x14a2b:
	.dc.b 32
x14a2c:
	.dc.b 33
x14a2d:
	.dc.b -2,(f15490-x13696)/256,(f15490-x13696)&255
x14a30:
	.dc.b 32
x14a31:
	.dc.b 70
x14a32:
	.dc.b -3
x14a33:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14a36:
	.dc.b 7
x14a37:
	.dc.b -1,(x14386-x13696)/256,(x14386-x13696)&255
x14a3a:
	.dc.b 33
x14a3b:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x14a3e:
	.dc.b 70
x14a3f:
	.dc.b -4
x14a40:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x14a43:
	.dc.b 32
x14a44:
	.dc.b 70
x14a45:
	.dc.b -3
x14a46:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14a49:
	.dc.b 175
x14a4a:
	.dc.b -6
x14a4b:
	.dc.b 70
x14a4c:
	.dc.b -3
x14a4d:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14a50:
	.dc.b 176
x14a51:
	.dc.b -6
x14a52:
	.dc.b 70
x14a53:
	.dc.b -3
x14a54:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14a57:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x14a5a:
	.dc.b -3
x14a5b:
	.dc.b 249,55
x14a5d:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14a60:
	.dc.b 33
x14a61:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14a64:
	.dc.b 70
x14a65:
	.dc.b -4
x14a66:
	.dc.b -1,(x143b2-x13696)/256,(x143b2-x13696)&255
x14a69:
	.dc.b 33
x14a6a:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14a6d:
	.dc.b 70
x14a6e:
	.dc.b -4
x14a6f:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14a72:
	.dc.b -2,(f1547c-x13696)/256,(f1547c-x13696)&255
x14a75:
	.dc.b 32
x14a76:
	.dc.b 70
x14a77:
	.dc.b -4
x14a78:
	.dc.b -1,(x143c6-x13696)/256,(x143c6-x13696)&255
x14a7b:
	.dc.b 33
x14a7c:
	.dc.b -1,(x143c6-x13696)/256,(x143c6-x13696)&255
x14a7f:
	.dc.b 33
x14a80:
	.dc.b -1,(x143c6-x13696)/256,(x143c6-x13696)&255
x14a83:
	.dc.b 70
x14a84:
	.dc.b -3
x14a85:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14a88:
	.dc.b -1,(x143c6-x13696)/256,(x143c6-x13696)&255
x14a8b:
	.dc.b 70
x14a8c:
	.dc.b -3
x14a8d:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x14a90:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14a93:
	.dc.b -4
x14a94:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14a97:
	.dc.b -1,(x143bc-x13696)/256,(x143bc-x13696)&255
x14a9a:
	.dc.b 33
x14a9b:
	.dc.b -1,(x143bc-x13696)/256,(x143bc-x13696)&255
x14a9e:
	.dc.b -1,(x14aa3-x13696)/256,(x14aa3-x13696)&255
x14aa1:
	.dc.b 70
x14aa2:
	.dc.b -4
x14aa3:
	.dc.b 109
x14aa4:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14aa7:
	.dc.b -3
x14aa8:
	.dc.b -4
x14aa9:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x14aac:
	.dc.b -1,(x14ab1-x13696)/256,(x14ab1-x13696)&255
x14aaf:
	.dc.b 70
x14ab0:
	.dc.b -4
x14ab1:
	.dc.b 33
x14ab2:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x14ab5:
	.dc.b -1,(x14ab1-x13696)/256,(x14ab1-x13696)&255
x14ab8:
	.dc.b -3
x14ab9:
	.dc.b -4
x14aba:
	.dc.b -1,(x1433a-x13696)/256,(x1433a-x13696)&255
x14abd:
	.dc.b 33
x14abe:
	.dc.b -1,(x1433a-x13696)/256,(x1433a-x13696)&255
x14ac1:
	.dc.b 33
x14ac2:
	.dc.b -1,(x1433a-x13696)/256,(x1433a-x13696)&255
x14ac5:
	.dc.b 70
x14ac6:
	.dc.b -4
x14ac7:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14aca:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14acd:
	.dc.b 33
x14ace:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14ad1:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14ad4:
	.dc.b 33
x14ad5:
	.dc.b -1,(x1433a-x13696)/256,(x1433a-x13696)&255
x14ad8:
	.dc.b 70
x14ad9:
	.dc.b -4
x14ada:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14add:
	.dc.b -1,(x14139-x13696)/256,(x14139-x13696)&255
x14ae0:
	.dc.b -4
x14ae1:
	.dc.b -1,(x14afe-x13696)/256,(x14afe-x13696)&255
x14ae4:
	.dc.b -3
x14ae5:
	.dc.b -1,(x14aed-x13696)/256,(x14aed-x13696)&255
x14ae8:
	.dc.b -3
x14ae9:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14aec:
	.dc.b 33
x14aed:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14af0:
	.dc.b 33
x14af1:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14af4:
	.dc.b 33
x14af5:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14af8:
	.dc.b 33
x14af9:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14afc:
	.dc.b 70
x14afd:
	.dc.b -3
x14afe:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14b01:
	.dc.b 33
x14b02:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14b05:
	.dc.b 33
x14b06:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14b09:
	.dc.b 70
x14b0a:
	.dc.b -3
x14b0b:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14b0e:
	.dc.b 33
x14b0f:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x14b12:
	.dc.b 70
x14b13:
	.dc.b -3
x14b14:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14b17:
	.dc.b -3
x14b18:
	.dc.b 70
x14b19:
	.dc.b -4
x14b1a:
	.dc.b 70
x14b1b:
	.dc.b -3
x14b1c:
	.dc.b -5,208
x14b1e:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14b21:
	.dc.b -4
x14b22:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x14b25:
	.dc.b 33
x14b26:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x14b29:
	.dc.b -4
x14b2a:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x14b2d:
	.dc.b 33
x14b2e:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x14b31:
	.dc.b 32
x14b32:
	.dc.b -1,(x14b49-x13696)/256,(x14b49-x13696)&255
x14b35:
	.dc.b 70
x14b36:
	.dc.b -4
x14b37:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x14b3a:
	.dc.b 33
x14b3b:
	.dc.b -2,(f15478-x13696)/256,(f15478-x13696)&255
x14b3e:
	.dc.b 32
x14b3f:
	.dc.b 33
x14b40:
	.dc.b -1,(x14b4f-x13696)/256,(x14b4f-x13696)&255
x14b43:
	.dc.b 33
x14b44:
	.dc.b -1,(x14346-x13696)/256,(x14346-x13696)&255
x14b47:
	.dc.b 70
x14b48:
	.dc.b -4
x14b49:
	.dc.b 33
x14b4a:
	.dc.b -1,(x14b4f-x13696)/256,(x14b4f-x13696)&255
x14b4d:
	.dc.b -3
x14b4e:
	.dc.b -4
x14b4f:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14b52:
	.dc.b -1,(x14b56-x13696)/256,(x14b56-x13696)&255
x14b55:
	.dc.b -4
x14b56:
	.dc.b 71
x14b57:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14b5a:
	.dc.b -3
x14b5b:
	.dc.b -4
x14b5c:
	.dc.b -1,(x15036-x13696)/256,(x15036-x13696)&255
x14b5f:
	.dc.b -1,(x14532-x13696)/256,(x14532-x13696)&255
x14b62:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x14b65:
	.dc.b -1,(x14b90-x13696)/256,(x14b90-x13696)&255
x14b68:
	.dc.b 70
x14b69:
	.dc.b -4
x14b6a:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x14b6d:
	.dc.b -3
x14b6e:
	.dc.b -5,168
x14b70:
	.dc.b -1,(x1445e-x13696)/256,(x1445e-x13696)&255
x14b73:
	.dc.b -4
x14b74:
	.dc.b 70
x14b75:
	.dc.b -3
x14b76:
	.dc.b -5,174
x14b78:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14b7b:
	.dc.b -3
x14b7c:
	.dc.b -5,176
x14b7e:
	.dc.b -1,(x14461-x13696)/256,(x14461-x13696)&255
x14b81:
	.dc.b -3
x14b82:
	.dc.b -5,178
x14b84:
	.dc.b -1,(x1445e-x13696)/256,(x1445e-x13696)&255
x14b87:
	.dc.b -4
x14b88:
	.dc.b 70
x14b89:
	.dc.b -3
x14b8a:
	.dc.b -5,182
x14b8c:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x14b8f:
	.dc.b -4
x14b90:
	.dc.b 33
x14b91:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14b94:
	.dc.b -3
x14b95:
	.dc.b -4
x14b96:
	.dc.b -2,(f158f8-x13696)/256,(f158f8-x13696)&255
x14b99:
	.dc.b -3
x14b9a:
	.dc.b -1,(x14ba8-x13696)/256,(x14ba8-x13696)&255
x14b9d:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14ba0:
	.dc.b -3
x14ba1:
	.dc.b -1,(x14bb2-x13696)/256,(x14bb2-x13696)&255
x14ba4:
	.dc.b -1,(x14bc8-x13696)/256,(x14bc8-x13696)&255
x14ba7:
	.dc.b -4
x14ba8:
	.dc.b 6
x14ba9:
	.dc.b -5,29
x14bab:
	.dc.b -3
x14bac:
	.dc.b 5
x14bad:
	.dc.b -5,30
x14baf:
	.dc.b -3
x14bb0:
	.dc.b 31
x14bb1:
	.dc.b -4
x14bb2:
	.dc.b -2,(f13c9a-x13696)/256,(f13c9a-x13696)&255
x14bb5:
	.dc.b -3
x14bb6:
	.dc.b -1,(x14bd0-x13696)/256,(x14bd0-x13696)&255
x14bb9:
	.dc.b -3
x14bba:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14bbd:
	.dc.b -1,(x1517e-x13696)/256,(x1517e-x13696)&255
x14bc0:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14bc3:
	.dc.b -3
x14bc4:
	.dc.b -1,(x1433a-x13696)/256,(x1433a-x13696)&255
x14bc7:
	.dc.b -4
x14bc8:
	.dc.b -2,(f1369a-x13696)/256,(f1369a-x13696)&255
x14bcb:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14bce:
	.dc.b -3
x14bcf:
	.dc.b -4
x14bd0:
	.dc.b -2,(f14bde-x13696)/256,(f14bde-x13696)&255 /* BUG? x14bde is a subtable */
x14bd3:
	.dc.b -3
x14bd4:
	.dc.b -1,(x15160-x13696)/256,(x15160-x13696)&255
x14bd7:
	.dc.b -2,(f154c4-x13696)/256,(f154c4-x13696)&255
x14bda:
	.dc.b -1,(x14962-x13696)/256,(x14962-x13696)&255
x14bdd:
	.dc.b -4
x14bde:
f14bde:
	.dc.b 97
x14bdf:
	.dc.b 0
x14be0:
	.dc.b 238
x14be1:
	.dc.b 222
x14be2:
	.dc.b 69
x14be3:
	.dc.b -6
x14be4:
	.dc.b 1
x14be5:
	.dc.b 80


x14be6:
		move.w     d6,d0
		bpl.s      x14be6_1
		cmp.w      #(TOK_SUBFUNC_208<<8)+255,d0 /* token in range? */
		bhi        f13c9a_6
		lea.l      x14df8(pc),a2
		move.b     #TOK_SUBFUNC_208,(a1)+ /* secondary function table */
		andi.w     #255,d0
x14be6_1:
		move.b     d0,(a1)+
		move.b     0(a2,d0.w),d0
		beq        f13c9a_6
		lea.l      x13696(pc),a2
		adda.w     x14c16(pc,d0.w),a2
		addq.l     #4,a7
		bra        x1395a_1

x14c16:
		.dc.w x13696-x13696
		.dc.w x14d00-x13696
		.dc.w x14cfd-x13696
		.dc.w x14cfa-x13696
		.dc.w x14cf7-x13696
		.dc.w x14cf4-x13696
		.dc.w x14d04-x13696
		.dc.w x14d09-x13696
		.dc.w x14d03-x13696
		.dc.w x14d0e-x13696
		.dc.w x14ee8-x13696
		.dc.w x14f3c-x13696
		.dc.w x14f41-x13696
		.dc.w x14f4a-x13696
		.dc.w x14f55-x13696
		.dc.w x14f4d-x13696
		.dc.w x14f5d-x13696
		.dc.w x14f52-x13696
		.dc.w x14cee-x13696
		.dc.w x14f6e-x13696
		.dc.w x14f76-x13696
		.dc.w x14ce8-x13696
		.dc.w x14f8a-x13696
		.dc.w x14f6a-x13696
		.dc.w x14f7a-x13696
		.dc.w x14f66-x13696
		.dc.w x14cf1-x13696
		.dc.w x14ceb-x13696
		.dc.w x14f23-x13696
		.dc.w x14f87-x13696
		.dc.w x14f83-x13696
		.dc.w x14f92-x13696
		.dc.w x14fae-x13696
		.dc.w x14d23-x13696
		.dc.w x14fdc-x13696
		.dc.w x14fe1-x13696
		.dc.w x14fe5-x13696
		.dc.w x14ff3-x13696
		.dc.w x14fee-x13696
		.dc.w x14ffb-x13696
		.dc.w x15000-x13696
		.dc.w x15005-x13696
		.dc.w x15010-x13696
		.dc.w x14ca9-x13696
		.dc.w x14cb2-x13696
		.dc.w x14cbb-x13696
		.dc.w x14cc4-x13696
		.dc.w x14ccd-x13696
		.dc.w x14cd6-x13696
		.dc.w x14cdf-x13696
		.dc.w x14d13-x13696
		.dc.w x14f05-x13696
		.dc.w x14f0d-x13696
		.dc.w x14fc5-x13696
		.dc.w x14f34-x13696
		.dc.w x14c97-x13696
		.dc.w x14efd-x13696
		.dc.w x14ef4-x13696
		.dc.w x14c8e-x13696
		.dc.w x13696-x13696


x14c8e:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14c91:
	.dc.b 33
x14c92:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14c95:
	.dc.b 32
x14c96:
	.dc.b -4
x14c97:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14c9a:
	.dc.b -1,(x14c9f-x13696)/256,(x14c9f-x13696)&255
x14c9d:
	.dc.b 32
x14c9e:
	.dc.b -4
x14c9f:
	.dc.b 33
x14ca0:
	.dc.b -1,(x15036-x13696)/256,(x15036-x13696)&255
x14ca3:
	.dc.b 33
x14ca4:
	.dc.b -1,(x15036-x13696)/256,(x15036-x13696)&255
x14ca7:
	.dc.b -3
x14ca8:
	.dc.b -4
x14ca9:
	.dc.b -5,208
x14cab:
	.dc.b 35
x14cac:
	.dc.b -5,1
x14cae:
	.dc.b -1,(x14cfd-x13696)/256,(x14cfd-x13696)&255
x14cb1:
	.dc.b -4
x14cb2:
	.dc.b -5,208
x14cb4:
	.dc.b 35
x14cb5:
	.dc.b -5,4
x14cb7:
	.dc.b -1,(x14cfd-x13696)/256,(x14cfd-x13696)&255
x14cba:
	.dc.b -4
x14cbb:
	.dc.b -5,208
x14cbd:
	.dc.b 35
x14cbe:
	.dc.b -5,5
x14cc0:
	.dc.b -1,(x14cfd-x13696)/256,(x14cfd-x13696)&255
x14cc3:
	.dc.b -4
x14cc4:
	.dc.b -5,208
x14cc6:
	.dc.b 35
x14cc7:
	.dc.b -5,6
x14cc9:
	.dc.b -1,(x14cfd-x13696)/256,(x14cfd-x13696)&255
x14ccc:
	.dc.b -4
x14ccd:
	.dc.b -5,208
x14ccf:
	.dc.b 35
x14cd0:
	.dc.b -5,7
x14cd2:
	.dc.b -1,(x14cfd-x13696)/256,(x14cfd-x13696)&255
x14cd5:
	.dc.b -4
x14cd6:
	.dc.b -5,208
x14cd8:
	.dc.b 35
x14cd9:
	.dc.b -5,8
x14cdb:
	.dc.b -1,(x14cfd-x13696)/256,(x14cfd-x13696)&255
x14cde:
	.dc.b -4
x14cdf:
	.dc.b -5,208
x14ce1:
	.dc.b 35
x14ce2:
	.dc.b -5,9
x14ce4:
	.dc.b -1,(x14cfd-x13696)/256,(x14cfd-x13696)&255
x14ce7:
	.dc.b -4
x14ce8:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14ceb:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14cee:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14cf1:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14cf4:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14cf7:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14cfa:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14cfd:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14d00:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x14d03:
	.dc.b -4
x14d04:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14d07:
	.dc.b 32
x14d08:
	.dc.b -4
x14d09:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14d0c:
	.dc.b 32
x14d0d:
	.dc.b -4
x14d0e:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14d11:
	.dc.b 88
x14d12:
	.dc.b -4
x14d13:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255

x14d16:
	.dc.b 32
x14d17:
	.dc.b -3
x14d18:
	.dc.b 112
x14d19:
	.dc.b -5,113
x14d1b:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14d1e:
	.dc.b 33
x14d1f:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x14d22:
	.dc.b -4
x14d23:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14d26:
	.dc.b -1,(x14d2b-x13696)/256,(x14d2b-x13696)&255
x14d29:
	.dc.b 32
x14d2a:
	.dc.b -4
x14d2b:
	.dc.b 33
x14d2c:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x14d2f:
	.dc.b -1,(x14d2b-x13696)/256,(x14d2b-x13696)&255
x14d32:
	.dc.b -3
x14d33:
	.dc.b -4

x14d34:
		.dc.b 0x5a,0x5c
		.dc.b 0x5e,0x62
		.dc.b 0x60,0x00
		.dc.b 0x00,0x4a
		.dc.b 0x00,0x00
		.dc.b 0x58,0x56
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x0c
		.dc.b 0x00,0x0c
		.dc.b 0x0c,0x0c
		.dc.b 0x0c,0x0c
		.dc.b 0x0c,0x0c
		.dc.b 0x0c,0x00
		.dc.b 0x00,0x0c
		.dc.b 0x0c,0x0c
		.dc.b 0x00,0x00
		.dc.b 0x00,0x0e
		.dc.b 0x00,0x00
		.dc.b 0x00,0x10
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x0c
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x0c,0x10
		.dc.b 0x00,0x00
		.dc.b 0x0c,0x00
		.dc.b 0x0c,0x10
		.dc.b 0x0c,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x12,0x12
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x0c
		.dc.b 0x0c,0x0e
		.dc.b 0x0e,0x0e
		.dc.b 0x00,0x00
		.dc.b 0x0c,0x00
		.dc.b 0x64,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x42
		.dc.b 0x42,0x42
		.dc.b 0x42,0x12

x14dae:
		.dc.b 0x00,0x0c
		.dc.b 0x00,0x0c
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x02,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x02,0x04
		.dc.b 0x0c,0x04
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x0c
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x10
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x10,0x10
		.dc.b 0x00,0x00
		.dc.b 0x00,0x00
		.dc.b 0x10,0x00

x14df8:
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x02,0x02
		.dc.b 0x02,0x02
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x10,0x10
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x02,0x10
		.dc.b 0x10,0x04
		.dc.b 0x10,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x10,0x10
		.dc.b 0x10,0x10
		.dc.b 0x10,0x10
		.dc.b 0x10,0x02
		.dc.b 0x02,0x02
		.dc.b 0x0e,0x0e
		.dc.b 0x40,0x40
		.dc.b 0x40,0x54
		.dc.b 0x04,0x0e
		.dc.b 0x02,0x0e
		.dc.b 0x0e,0x02
		.dc.b 0x02,0x02
		.dc.b 0x02,0x4c
		.dc.b 0x02,0x02
		.dc.b 0x0e,0x4e
		.dc.b 0x4e,0x4e
		.dc.b 0x10,0x10
		.dc.b 0x02,0x02
		.dc.b 0x02,0x02
		.dc.b 0x02,0x50
		.dc.b 0x02,0x02
		.dc.b 0x02,0x02
		.dc.b 0x0c,0x0c
		.dc.b 0x0c,0x02
		.dc.b 0x10,0x6e
		.dc.b 0x10,0x6e
		.dc.b 0x10,0x10
		.dc.b 0x02,0x02
		.dc.b 0x12,0x12
		.dc.b 0x12,0x12
		.dc.b 0x12,0x52
		.dc.b 0x10,0x66
		.dc.b 0x68,0x02
		.dc.b 0x02,0x14
		.dc.b 0x0e,0x10
		.dc.b 0x3e,0x06
		.dc.b 0x04,0x16
		.dc.b 0x18,0x1a
		.dc.b 0x1c,0x1e
		.dc.b 0x20,0x10
		.dc.b 0x06,0x06
		.dc.b 0x0e,0x06
		.dc.b 0x04,0x10
		.dc.b 0x04,0x04
		.dc.b 0x06,0x06
		.dc.b 0x06,0x22
		.dc.b 0x1c,0x06
		.dc.b 0x04,0x24
		.dc.b 0x0a,0x26
		.dc.b 0x06,0x28
		.dc.b 0x2a,0x04
		.dc.b 0x2a,0x1c
		.dc.b 0x02,0x2c
		.dc.b 0x2e,0x32
		.dc.b 0x34,0x36
		.dc.b 0x36,0x08
		.dc.b 0x08,0x38
		.dc.b 0x04,0x38
		.dc.b 0x1e,0x0e
		.dc.b 0x6c,0x0a
		.dc.b 0x0a,0x02
		.dc.b 0x02,0x3a
		.dc.b 0x34,0x04
		.dc.b 0x02,0x3c
		.dc.b 0x02,0x02
		.dc.b 0x04,0x44
		.dc.b 0x48,0x4a
		.dc.b 0x02,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x04
		.dc.b 0x04,0x46
		.dc.b 0x2e,0x30
		.dc.b 0x02,0x02
		.dc.b 0x02,0x6a
		.dc.b 0x6a,0x6a
		.dc.b 0x10,0x10
		.dc.b 0x10,0x1a
		.dc.b 0x70,0x72
		.dc.b 0x74,0x10
		.dc.b 0x02,0x10
		.dc.b 0x12,0x02
		.dc.b 0x02,0x02
		.dc.b 0x02,0x10
		.dc.b 0x02,0x02
		.dc.b 0x02,0x10
		.dc.b 0x10,0x10
		.dc.b 0x10,0x06
		.dc.b 0x10,0x10
		.dc.b 0x10,0x08

x14ee8:

	.dc.b -1,(x1502d-x13696)/256,(x1502d-x13696)&255
x14eeb:
	.dc.b 33
x14eec:
	.dc.b -1,(x1502d-x13696)/256,(x1502d-x13696)&255
x14eef:
	.dc.b -1,(x14f19-x13696)/256,(x14f19-x13696)&255
x14ef2:
	.dc.b 32
x14ef3:
	.dc.b -4
x14ef4:
	.dc.b -1,(x15039-x13696)/256,(x15039-x13696)&255
x14ef7:
	.dc.b 33
x14ef8:
	.dc.b -1,(x1440d-x13696)/256,(x1440d-x13696)&255
x14efb:
	.dc.b 32
x14efc:
	.dc.b -4
x14efd:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14f00:
	.dc.b -1,(x14f15-x13696)/256,(x14f15-x13696)&255
x14f03:
	.dc.b 32
x14f04:
	.dc.b -4
x14f05:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x14f08:
	.dc.b -1,(x14f1d-x13696)/256,(x14f1d-x13696)&255
x14f0b:
	.dc.b 32
x14f0c:
	.dc.b -4
x14f0d:
	.dc.b -1,(x15036-x13696)/256,(x15036-x13696)&255
x14f10:
	.dc.b -1,(x14f1d-x13696)/256,(x14f1d-x13696)&255
x14f13:
	.dc.b 32
x14f14:
	.dc.b -4
x14f15:
	.dc.b 33
x14f16:
	.dc.b -1,(x14415-x13696)/256,(x14415-x13696)&255
x14f19:
	.dc.b 33
x14f1a:
	.dc.b -1,(x14415-x13696)/256,(x14415-x13696)&255
x14f1d:
	.dc.b 33
x14f1e:
	.dc.b -1,(x1440d-x13696)/256,(x1440d-x13696)&255
x14f21:
	.dc.b -3
x14f22:
	.dc.b -4
x14f23:
	.dc.b -1,(x14f1e-x13696)/256,(x14f1e-x13696)&255
x14f26:
	.dc.b 32
x14f27:
	.dc.b -4
x14f28:
	.dc.b 33
x14f29:
	.dc.b -1,(x14415-x13696)/256,(x14415-x13696)&255
x14f2c:
	.dc.b -3
x14f2d:
	.dc.b -4
x14f2e:
	.dc.b 33
x14f2f:
	.dc.b -1,(x14342-x13696)/256,(x14342-x13696)&255
x14f32:
	.dc.b -3
x14f33:
	.dc.b -4
x14f34:
	.dc.b -1,(x1439e-x13696)/256,(x1439e-x13696)&255
x14f37:
	.dc.b -1,(x14f2e-x13696)/256,(x14f2e-x13696)&255
x14f3a:
	.dc.b 32
x14f3b:
	.dc.b -4
x14f3c:
	.dc.b -1,(x1439e-x13696)/256,(x1439e-x13696)&255
x14f3f:
	.dc.b 32
x14f40:
	.dc.b -4
x14f41:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x14f44:
	.dc.b 33
x14f45:
	.dc.b -1,(x14fa6-x13696)/256,(x14fa6-x13696)&255
x14f48:
	.dc.b 32
x14f49:
	.dc.b -4
x14f4a:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14f4d:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x14f50:
	.dc.b 32
x14f51:
	.dc.b -4
x14f52:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14f55:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14f58:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14f5b:
	.dc.b 32
x14f5c:
	.dc.b -4
x14f5d:
	.dc.b -1,(x14346-x13696)/256,(x14346-x13696)&255
x14f60:
	.dc.b 33
x14f61:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14f64:
	.dc.b 32
x14f65:
	.dc.b -4
x14f66:
	.dc.b -1,(x15039-x13696)/256,(x15039-x13696)&255
x14f69:
	.dc.b 33
x14f6a:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14f6d:
	.dc.b 33
x14f6e:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14f71:
	.dc.b -1,(x14f28-x13696)/256,(x14f28-x13696)&255
x14f74:
	.dc.b 32
x14f75:
	.dc.b -4
x14f76:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14f79:
	.dc.b 33
x14f7a:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x14f7d:
	.dc.b 33
x14f7e:
	.dc.b -1,(x14342-x13696)/256,(x14342-x13696)&255
x14f81:
	.dc.b 32
x14f82:
	.dc.b -4
x14f83:
	.dc.b -1,(x15039-x13696)/256,(x15039-x13696)&255
x14f86:
	.dc.b 33
x14f87:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14f8a:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14f8d:
	.dc.b -1,(x14f1d-x13696)/256,(x14f1d-x13696)&255
x14f90:
	.dc.b 32
x14f91:
	.dc.b -4
x14f92:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x14f95:
	.dc.b 33
x14f96:
	.dc.b -1,(x14346-x13696)/256,(x14346-x13696)&255
x14f99:
	.dc.b 32
x14f9a:
	.dc.b -4
x14f9b:
	.dc.b -1,(x14fa6-x13696)/256,(x14fa6-x13696)&255
x14f9e:
	.dc.b 33
x14f9f:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x14fa2:
	.dc.b -4
x14fa3:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x14fa6:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14fa9:
	.dc.b 33
x14faa:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x14fad:
	.dc.b -4
x14fae:
	.dc.b -1,(x14fa6-x13696)/256,(x14fa6-x13696)&255
x14fb1:
	.dc.b 32
x14fb2:
	.dc.b -3
x14fb3:
	.dc.b 208
x14fb4:
	.dc.b 68
x14fb5:
	.dc.b -5,69
x14fb7:
	.dc.b -1,(x14fa3-x13696)/256,(x14fa3-x13696)&255
x14fba:
	.dc.b 32
x14fbb:
	.dc.b -3
x14fbc:
	.dc.b 208
x14fbd:
	.dc.b 68
x14fbe:
	.dc.b -5,70
x14fc0:
	.dc.b -1,(x14f9b-x13696)/256,(x14f9b-x13696)&255
x14fc3:
	.dc.b 32
x14fc4:
	.dc.b -4
x14fc5:
	.dc.b -1,(x14fa6-x13696)/256,(x14fa6-x13696)&255
x14fc8:
	.dc.b 32
x14fc9:
	.dc.b -3
x14fca:
	.dc.b 208
x14fcb:
	.dc.b 209
x14fcc:
	.dc.b -5,210
x14fce:
	.dc.b -1,(x14fa3-x13696)/256,(x14fa3-x13696)&255
x14fd1:
	.dc.b 32
x14fd2:
	.dc.b -3
x14fd3:
	.dc.b 208
x14fd4:
	.dc.b 209
x14fd5:
	.dc.b -5,211
x14fd7:
	.dc.b -1,(x14f9b-x13696)/256,(x14f9b-x13696)&255
x14fda:
	.dc.b 32
x14fdb:
	.dc.b -4
x14fdc:
	.dc.b -1,(x14fe1-x13696)/256,(x14fe1-x13696)&255
x14fdf:
	.dc.b 32
x14fe0:
	.dc.b -4
x14fe1:
	.dc.b -1,(x14336-x13696)/256,(x14336-x13696)&255
x14fe4:
	.dc.b -4
x14fe5:
	.dc.b -1,(x14fe9-x13696)/256,(x14fe9-x13696)&255
x14fe8:
	.dc.b -4
x14fe9:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x14fec:
	.dc.b 32
x14fed:
	.dc.b -3
x14fee:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x14ff1:
	.dc.b 32
x14ff2:
	.dc.b -4
x14ff3:
	.dc.b -5,208
x14ff5:
	.dc.b 249,189
x14ff7:
	.dc.b -1,(x1501f-x13696)/256,(x1501f-x13696)&255
x14ffa:
	.dc.b -4
x14ffb:
	.dc.b -1,(x15046-x13696)/256,(x15046-x13696)&255
x14ffe:
	.dc.b 32
x14fff:
	.dc.b -4
x15000:
	.dc.b -1,(x144dd-x13696)/256,(x144dd-x13696)&255
x15003:
	.dc.b 32
x15004:
	.dc.b -4
x15005:
	.dc.b -2,(f154aa-x13696)/256,(f154aa-x13696)&255
x15008:
	.dc.b 35
x15009:
	.dc.b -5,157
x1500b:
	.dc.b -1,(x15050-x13696)/256,(x15050-x13696)&255
x1500e:
	.dc.b 32
x1500f:
	.dc.b -4
x15010:
	.dc.b -1,(x14b91-x13696)/256,(x14b91-x13696)&255
x15013:
	.dc.b 32
x15014:
	.dc.b -4
x15015:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x15018:
	.dc.b -1,(x15027-x13696)/256,(x15027-x13696)&255
x1501b:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x1501e:
	.dc.b -4
x1501f:
	.dc.b -1,(x143ad-x13696)/256,(x143ad-x13696)&255
x15022:
	.dc.b -3
x15023:
	.dc.b -1,(x1434e-x13696)/256,(x1434e-x13696)&255
x15026:
	.dc.b -4
x15027:
	.dc.b 33
x15028:
	.dc.b -3
x15029:
	.dc.b 19
x1502a:
	.dc.b -5,33
x1502c:
	.dc.b -4
x1502d:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x15030:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x15033:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x15036:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x15039:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x1503c:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x1503f:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x15042:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x15045:
	.dc.b -4
x15046:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x15049:
	.dc.b -1,(x1504d-x13696)/256,(x1504d-x13696)&255
x1504c:
	.dc.b -4
x1504d:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x15050:
	.dc.b -1,(x1505b-x13696)/256,(x1505b-x13696)&255
x15053:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x15056:
	.dc.b -1,(x1504d-x13696)/256,(x1504d-x13696)&255
x15059:
	.dc.b -3
x1505a:
	.dc.b -4
x1505b:
	.dc.b 138
x1505c:
	.dc.b -3
x1505d:
	.dc.b 139
x1505e:
	.dc.b -3
x1505f:
	.dc.b -4
x15060:
	.dc.b 117
x15061:
	.dc.b -5,118
x15063:
	.dc.b -3
x15064:
	.dc.b 119
x15065:
	.dc.b -5,120
x15067:
	.dc.b -4
x15068:
	.dc.b -1,(x1506f-x13696)/256,(x1506f-x13696)&255
x1506b:
	.dc.b -1,(x15176-x13696)/256,(x15176-x13696)&255
x1506e:
	.dc.b -4
x1506f:
	.dc.b -2,(f13d22-x13696)/256,(f13d22-x13696)&255
x15072:
	.dc.b -3
x15073:
	.dc.b -2,(f13696-x13696)/256,(f13696-x13696)&255
x15076:
	.dc.b -3
x15077:
	.dc.b 135
x15078:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x1507b:
	.dc.b 32
x1507c:
	.dc.b -3
x1507d:
	.dc.b 58
x1507e:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x15081:
	.dc.b 32
x15082:
	.dc.b -3
x15083:
	.dc.b 58
x15084:
	.dc.b -5,59
x15086:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x15089:
	.dc.b 33
x1508a:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x1508d:
	.dc.b -3
x1508e:
	.dc.b 60
x1508f:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x15092:
	.dc.b 32
x15093:
	.dc.b -3
x15094:
	.dc.b 60
x15095:
	.dc.b -5,61
x15097:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x1509a:
	.dc.b 33
x1509b:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x1509e:
	.dc.b -3
x1509f:
	.dc.b 62
x150a0:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x150a3:
	.dc.b 33
x150a4:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x150a7:
	.dc.b -3
x150a8:
	.dc.b 62
x150a9:
	.dc.b -5,63
x150ab:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x150ae:
	.dc.b 33
x150af:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x150b2:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x150b5:
	.dc.b -3
x150b6:
	.dc.b -2,(f1369e-x13696)/256,(f1369e-x13696)&255
x150b9:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x150bc:
	.dc.b -3
x150bd:
	.dc.b 94
x150be:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x150c1:
	.dc.b -3
x150c2:
	.dc.b 94
x150c3:
	.dc.b -5,95
x150c5:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x150c8:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x150cb:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x150ce:
	.dc.b 32
x150cf:
	.dc.b -3
x150d0:
	.dc.b -1,(x15060-x13696)/256,(x15060-x13696)&255
x150d3:
	.dc.b -1,(x15164-x13696)/256,(x15164-x13696)&255
x150d6:
	.dc.b 32
x150d7:
	.dc.b -3
x150d8:
	.dc.b 127
x150d9:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x150dc:
	.dc.b 32
x150dd:
	.dc.b -3
x150de:
	.dc.b 129
x150df:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x150e2:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x150e5:
	.dc.b -3
x150e6:
	.dc.b 129
x150e7:
	.dc.b -5,130
x150e9:
	.dc.b -1,(x14475-x13696)/256,(x14475-x13696)&255
x150ec:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x150ef:
	.dc.b 32
x150f0:
	.dc.b -3
x150f1:
	.dc.b -1,(x15160-x13696)/256,(x15160-x13696)&255
x150f4:
	.dc.b -2,(f154da-x13696)/256,(f154da-x13696)&255
x150f7:
	.dc.b -1,(x14962-x13696)/256,(x14962-x13696)&255
x150fa:
	.dc.b -3
x150fb:
	.dc.b 208
x150fc:
	.dc.b 96
x150fd:
	.dc.b -6
x150fe:
	.dc.b -5,131
x15100:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x15103:
	.dc.b 32
x15104:
	.dc.b -3
x15105:
	.dc.b 208
x15106:
	.dc.b 97
x15107:
	.dc.b -6
x15108:
	.dc.b -5,133
x1510a:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x1510d:
	.dc.b 32
x1510e:
	.dc.b -3
x1510f:
	.dc.b 190
x15110:
	.dc.b -1,(x1512d-x13696)/256,(x1512d-x13696)&255
x15113:
	.dc.b -3
x15114:
	.dc.b 193
x15115:
	.dc.b -1,(x1513f-x13696)/256,(x1513f-x13696)&255
x15118:
	.dc.b -3
x15119:
	.dc.b 195
x1511a:
	.dc.b -1,(x1514a-x13696)/256,(x1514a-x13696)&255
x1511d:
	.dc.b -3
x1511e:
	.dc.b 115
x1511f:
	.dc.b -1,(x15155-x13696)/256,(x15155-x13696)&255
x15122:
	.dc.b -3
x15123:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x15126:
	.dc.b -3
x15127:
	.dc.b 97
x15128:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1512b:
	.dc.b 88
x1512c:
	.dc.b -4
x1512d:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x15130:
	.dc.b -3
x15131:
	.dc.b -5,191
x15133:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x15136:
	.dc.b 32
x15137:
	.dc.b -3
x15138:
	.dc.b -5,192
x1513a:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x1513d:
	.dc.b 32
x1513e:
	.dc.b -4
x1513f:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x15142:
	.dc.b -3
x15143:
	.dc.b -5,194
x15145:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x15148:
	.dc.b 32
x15149:
	.dc.b -4
x1514a:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x1514d:
	.dc.b -3
x1514e:
	.dc.b -5,196
x15150:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x15153:
	.dc.b 32
x15154:
	.dc.b -4
x15155:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x15158:
	.dc.b -3
x15159:
	.dc.b -5,116
x1515b:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x1515e:
	.dc.b 32
x1515f:
	.dc.b -4
x15160:
	.dc.b 158
x15161:
	.dc.b -3
x15162:
	.dc.b 159
x15163:
	.dc.b -4
x15164:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x15167:
	.dc.b -1,(x1516b-x13696)/256,(x1516b-x13696)&255
x1516a:
	.dc.b -4
x1516b:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x1516e:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x15171:
	.dc.b -1,(x1516b-x13696)/256,(x1516b-x13696)&255
x15174:
	.dc.b -3
x15175:
	.dc.b -4
x15176:
	.dc.b 6
x15177:
	.dc.b -5,28
x15179:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x1517c:
	.dc.b -3
x1517d:
	.dc.b -4
x1517e:
	.dc.b 12
x1517f:
	.dc.b -5,20
x15181:
	.dc.b -3
x15182:
	.dc.b 13
x15183:
	.dc.b -5,21
x15185:
	.dc.b -3
x15186:
	.dc.b 14
x15187:
	.dc.b -5,22
x15189:
	.dc.b -3
x1518a:
	.dc.b 15
x1518b:
	.dc.b -5,23
x1518d:
	.dc.b -3
x1518e:
	.dc.b 16
x1518f:
	.dc.b -5,24
x15191:
	.dc.b -3
x15192:
	.dc.b 17
x15193:
	.dc.b -5,25
x15195:
	.dc.b -3
x15196:
	.dc.b 18
x15197:
	.dc.b -5,26
x15199:
	.dc.b -3
x1519a:
	.dc.b 19
x1519b:
	.dc.b -5,27
x1519d:
	.dc.b -4
x1519e:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x151a1:
	.dc.b -1,(x151a6-x13696)/256,(x151a6-x13696)&255
x151a4:
	.dc.b 32
x151a5:
	.dc.b -4
x151a6:
	.dc.b 33
x151a7:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x151aa:
	.dc.b -1,(x151a6-x13696)/256,(x151a6-x13696)&255
x151ad:
	.dc.b -3
x151ae:
	.dc.b -4
x151af:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x151b2:
	.dc.b 33
x151b3:
	.dc.b -1,(x1529b-x13696)/256,(x1529b-x13696)&255
x151b6:
	.dc.b 70
x151b7:
	.dc.b -3
x151b8:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x151bb:
	.dc.b -1,(x1503c-x13696)/256,(x1503c-x13696)&255
x151be:
	.dc.b 33
x151bf:
	.dc.b -1,(x1529b-x13696)/256,(x1529b-x13696)&255
x151c2:
	.dc.b 70
x151c3:
	.dc.b -4
x151c4:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x151c7:
	.dc.b -1,(x151cf-x13696)/256,(x151cf-x13696)&255
x151ca:
	.dc.b -3
x151cb:
	.dc.b -1,(x14b9a-x13696)/256,(x14b9a-x13696)&255
x151ce:
	.dc.b -4
x151cf:
	.dc.b -1,(x1517e-x13696)/256,(x1517e-x13696)&255
x151d2:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x151d5:
	.dc.b -1,(x14bc8-x13696)/256,(x14bc8-x13696)&255
x151d8:
	.dc.b -3
x151d9:
	.dc.b -4
x151da:
	.dc.b -2,(f13d22-x13696)/256,(f13d22-x13696)&255
x151dd:
	.dc.b -1,(x151eb-x13696)/256,(x151eb-x13696)&255
x151e0:
	.dc.b -3
x151e1:
	.dc.b -1,(x151ee-x13696)/256,(x151ee-x13696)&255
x151e4:
	.dc.b -3
x151e5:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x151e8:
	.dc.b -1,(x144f6-x13696)/256,(x144f6-x13696)&255
x151eb:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x151ee:
	.dc.b -1,(x14336-x13696)/256,(x14336-x13696)&255
x151f1:
	.dc.b -1,(x151f6-x13696)/256,(x151f6-x13696)&255
x151f4:
	.dc.b 70
x151f5:
	.dc.b -4
x151f6:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x151f9:
	.dc.b -1,(x14336-x13696)/256,(x14336-x13696)&255
x151fc:
	.dc.b -1,(x151f6-x13696)/256,(x151f6-x13696)&255
x151ff:
	.dc.b -3
x15200:
	.dc.b -4
x15201:
	.dc.b -1,(x151ee-x13696)/256,(x151ee-x13696)&255
x15204:
	.dc.b -4
x15205:
	.dc.b 70
x15206:
	.dc.b -3
x15207:
	.dc.b -1,(x1524c-x13696)/256,(x1524c-x13696)&255
x1520a:
	.dc.b 70
x1520b:
	.dc.b -3
x1520c:
	.dc.b -1,(x15252-x13696)/256,(x15252-x13696)&255
x1520f:
	.dc.b -1,(x15214-x13696)/256,(x15214-x13696)&255
x15212:
	.dc.b 70
x15213:
	.dc.b -4
x15214:
	.dc.b -1,(x1529b-x13696)/256,(x1529b-x13696)&255
x15217:
	.dc.b -1,(x1521b-x13696)/256,(x1521b-x13696)&255
x1521a:
	.dc.b -4
x1521b:
	.dc.b -1,(x15228-x13696)/256,(x15228-x13696)&255
x1521e:
	.dc.b -1,(x1529b-x13696)/256,(x1529b-x13696)&255
x15221:
	.dc.b -1,(x1521b-x13696)/256,(x1521b-x13696)&255
x15224:
	.dc.b -3
x15225:
	.dc.b 34
x15226:
	.dc.b -3
x15227:
	.dc.b -4
x15228:
	.dc.b 33
x15229:
	.dc.b -3
x1522a:
	.dc.b 34
x1522b:
	.dc.b -5,33
x1522d:
	.dc.b -4
x1522e:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x15231:
	.dc.b 70
x15232:
	.dc.b -3
x15233:
	.dc.b -2,(f13d64-x13696)/256,(f13d64-x13696)&255
x15236:
	.dc.b 77
x15237:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x1523a:
	.dc.b -1,(x1523f-x13696)/256,(x1523f-x13696)&255
x1523d:
	.dc.b 70
x1523e:
	.dc.b -4
x1523f:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x15242:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x15245:
	.dc.b -3
x15246:
	.dc.b -4
x15247:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x1524a:
	.dc.b 70
x1524b:
	.dc.b -4
x1524c:
	.dc.b 77
x1524d:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x15250:
	.dc.b -3
x15251:
	.dc.b -4
x15252:
	.dc.b 77
x15253:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x15256:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x15259:
	.dc.b -3
x1525a:
	.dc.b -4
x1525b:
	.dc.b -1,(x144eb-x13696)/256,(x144eb-x13696)&255
x1525e:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x15261:
	.dc.b -3
x15262:
	.dc.b 87
x15263:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x15266:
	.dc.b -3
x15267:
	.dc.b 89
x15268:
	.dc.b -1,(x1503f-x13696)/256,(x1503f-x13696)&255
x1526b:
	.dc.b 32
x1526c:
	.dc.b -2,(f15306-x13696)/256,(f15306-x13696)&255
x1526f:
	.dc.b -2,(f15310-x13696)/256,(f15310-x13696)&255
x15272:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x15275:
	.dc.b -3
x15276:
	.dc.b -1,(x15297-x13696)/256,(x15297-x13696)&255
x15279:
	.dc.b -1,(x14c92-x13696)/256,(x14c92-x13696)&255
x1527c:
	.dc.b -2,(f15310-x13696)/256,(f15310-x13696)&255
x1527f:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x15282:
	.dc.b -3
x15283:
	.dc.b 163
x15284:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x15287:
	.dc.b 33
x15288:
	.dc.b -1,(x15214-x13696)/256,(x15214-x13696)&255
x1528b:
	.dc.b -3
x1528c:
	.dc.b -1,(x1529b-x13696)/256,(x1529b-x13696)&255
x1528f:
	.dc.b -2,(f15310-x13696)/256,(f15310-x13696)&255
x15292:
	.dc.b -1,(x1525b-x13696)/256,(x1525b-x13696)&255
x15295:
	.dc.b -3
x15296:
	.dc.b -4
x15297:
	.dc.b 161
x15298:
	.dc.b -3
x15299:
	.dc.b 162
x1529a:
	.dc.b -4
x1529b:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x1529e:
	.dc.b -2,(f152e6-x13696)/256,(f152e6-x13696)&255
x152a1:
	.dc.b -3
x152a2:
	.dc.b 249,55
x152a4:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x152a7:
	.dc.b -4
x152a8:
	.dc.b -1,(x14467-x13696)/256,(x14467-x13696)&255
x152ab:
	.dc.b -3
x152ac:
	.dc.b -5,48
x152ae:
	.dc.b -1,(x1454c-x13696)/256,(x1454c-x13696)&255
x152b1:
	.dc.b -4
x152b2:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x152b5:
	.dc.b 33
x152b6:
	.dc.b -1,(x14464-x13696)/256,(x14464-x13696)&255
x152b9:
	.dc.b -3
x152ba:
	.dc.b -1,(x143ec-x13696)/256,(x143ec-x13696)&255
x152bd:
	.dc.b 70
x152be:
	.dc.b -4
x152bf:
	.dc.b -2,(f154aa-x13696)/256,(f154aa-x13696)&255
x152c2:
	.dc.b -1,(x152c7-x13696)/256,(x152c7-x13696)&255
x152c5:
	.dc.b 70
x152c6:
	.dc.b -4
x152c7:
	.dc.b 35
x152c8:
	.dc.b -5,157
x152ca:
	.dc.b -1,(x152dc-x13696)/256,(x152dc-x13696)&255
x152cd:
	.dc.b -1,(x152d3-x13696)/256,(x152d3-x13696)&255
x152d0:
	.dc.b 32
x152d1:
	.dc.b -3
x152d2:
	.dc.b -4
x152d3:
	.dc.b 33
x152d4:
	.dc.b -1,(x152dc-x13696)/256,(x152dc-x13696)&255
x152d7:
	.dc.b -1,(x152d3-x13696)/256,(x152d3-x13696)&255
x152da:
	.dc.b -3
x152db:
	.dc.b -4
x152dc:
	.dc.b -1,(x14b96-x13696)/256,(x14b96-x13696)&255
x152df:
	.dc.b -3
x152e0:
	.dc.b 249,55
x152e2:
	.dc.b -1,(x15068-x13696)/256,(x15068-x13696)&255
x152e4:
	.dc.b -4
	.even

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
		cmpi.w     #294,1364(a6)
		sne        d7
		rts

f15310:
		bsr        skip_spaces
		move.b     (a0),d0
		cmp.b      #'!',d0
		beq.s      f15310_2
		cmp.b      #'/',d0
		beq.s      f15310_3
		cmp.b      #',',d0
		beq.s      f15310_2
		cmp.b      #';',d0
		beq.s      f15310_2
		cmp.b      #CR,d0 /* FIXME: handle also LF */
		beq.s      f15310_2
		cmp.b      #0x27,d0
f15310_1:
		beq.s      f15310_2
		move.b     #'"',(a1)+
f15310_2:
		moveq.l    #0,d7
		rts
f15310_3:
		move.b     1(a0),d0
		cmp.b      #'/',d0
		beq.s      f15310_2
		cmp.b      #'*',d0
		bra.s      f15310_1

x15352:
		bsr        skip_spaces
		move.l     a0,d1
		subi.l     #1106,d1 /* ??? */
		sub.l      a6,d1
		move.b     (a0)+,d0
		move.b     d0,8401(a6)
		cmp.b      #'A',d0
		bcs        x15352_12
		cmp.b      #'Z',d0
		bhi        x15352_12
x15352_0:
		moveq.l    #0,d3
x15352_1:
		addq.w     #1,d3
		beq        x15352_12
		move.b     (a0)+,d0
		cmp.b      #'_',d0
		beq.s      x15352_1
		cmp.b      #'.',d0
		beq.s      x15352_1
		cmp.b      #'A',d0
		bcs.s      x15352_2
		cmp.b      #'Z',d0
		bls.s      x15352_1
		bra.s      x15352_3
x15352_2:
		cmp.b      #'0',d0
		bcs.s      x15352_3
		cmp.b      #'9',d0
		bls.s      x15352_1
x15352_3:
		moveq.l    #TYPE_FLOAT,d2
		cmp.b      #'{',d0
		beq.s      x15352_12
		cmp.b      #'%',d0
		beq.s      x15352_7
		cmp.b      #'$',d0
		beq.s      x15352_8
		cmp.b      #'&',d0
		beq.s      x15352_5
		cmp.b      #'|',d0
		beq.s      x15352_6
		cmp.b      #'!',d0
		beq.s      x15352_4
		cmp.b      #'#',d0
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
		cmp.b      #'(',d0
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
		subi.l     #1106,d1
		sub.l      a6,d1
		cmpi.b     #'9',(a0)
		bhi        x15352
		cmpi.b     #'0',(a0)+
		bcc        x15352_0
		bra.s      x15352_12

f15444:
		moveq.l    #-5,d7
		bra.s      f15448_1

f15448:
		moveq.l    #-6,d7
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

f15464:
		moveq.l    #0,d7
		bra.s      x15492
f15468:
		moveq.l    #1,d7
		bra.s      x15492
f1546c:
		moveq.l    #2,d7
		bra.s      x15492
f15470:
		moveq.l    #3,d7
		bra.s      x15492
f15474:
		moveq.l    #4,d7
		bra.s      x15492
f15478:
		moveq.l    #5,d7
		bra.s      x15492
f1547c:
		moveq.l    #6,d7
		bra.s      x15492
f15480:
		moveq.l    #7,d7
		bra.s      x15492
f15484:
		moveq.l    #8,d7
		bra.s      x15492
f15488:
		moveq.l    #9,d7
		bra.s      x15492
f1548c:
		moveq.l    #12,d7
		bra.s      x15492
f15490:
		moveq.l    #13,d7

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
		cmp.b      #TYPE_INT,d2
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

x154f0:
		lea.l      1364(a6),a0
		move.w     (a0)+,d0
		cmp.w      #228,d0 /* TOK_CMD_REM*2 */
		beq.s      x154f0_1
		cmp.w      #230,d0 /* TOK_CMD_COMMENT*2 */
		beq.s      x154f0_1
		cmp.w      #232,d0 /* TOK_CMD_SYNERR*2 */
		beq.s      x154f0_1
		cmp.w      #508,d0 /* TOK_CMD_DOT*2 */
		beq.s      x154f0_1
		cmp.w      #822,d0 /* TOK_CMD_DOLLAR*2 */
		beq.s      x154f0_1
		cmp.w      #234,d0 /* TOK_CMD_DATA*2 */
		bne.s      x154f0_3
x154f0_1:
		rts
x154f0_2:
		st         x137b2
x154f0_3:
		move.b     (a0)+,d0
		cmp.b      #TOK_CHAR_CONST,d0
		bcc.s      x154f0_4
		cmp.b      #TOK_FNCALL,d0
		beq.s      x154f0_2
		cmp.b      #TOK_GOSUB,d0
		beq.s      x154f0_2
		cmp.b      #TOK_LINE_COMMENT,d0
		bne.s      x154f0_3
		movea.l    a0,a1
		rts
x154f0_4:
		cmp.b      #TOK_SUBFUNC_214,d0
		bcc.s      x154f0_11
		cmp.b      #TOK_SUBFUNC_208,d0
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
		cmp.b      #TOK_STRING_CONST,d0
		beq.s      x154f0_15
		cmp.b      #TOK_DEC_DBL_CONST,d0
		beq.s      x154f0_12
		bhi.s      x154f0_16
		cmp.b      #TOK_DEC_DBL_CONST_PAD,d0
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
		lea.l      1106(a6),a2
		adda.w     d1,a2
		move.b     (a0)+,d1
		andi.w     #15,d0
		add.w      d0,d0
		add.w      d0,d0
		lea.l      16(a6),a3
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
		cmp.w      #255,d7
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
		lea.l      newvar_msg,a1
		cmp.w      #28,d0
		bcs.s      x154f0_24
		lea.l      newfunc_msg,a1
x154f0_24:
		cmp.w      #20,d0
		bne.s      x154f0_25
		lea.l      newlab_msg,a1
x154f0_25:
		cmp.w      #22,d0
		bne.s      x154f0_26
		lea.l      newproc_msg,a1
x154f0_26:
		move.b     (a1)+,(a0)+
		bne.s      x154f0_26
		move.b     #' ',-1(a0)
		move.b     #'?',(a0)+
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
		jsr        x1018e
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
		tst.b      MergeFlg+1
		bne.s      x154f0_34
		jsr        x1194e
x154f0_34:
		lea.l      20(a6),a0
		adda.w     d0,a0
		movea.w    d0,a4
		moveq.l    #0,d0
		move.w     d1,d0
		jsr        ALLOT
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
		jsr        ALLOT
		tst.b      MergeFlg+1
		bne.s      x154f0_37
		jsr        x118e2
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

x157c8:
		move.b     (a0)+,d0
x157c8_1:
		cmp.b      #' ',d0
		beq.s      x157c8
		rts

x157d2:
		clr.b      x1585a
		moveq.l    #0,d2
		cmp.b      #'"',d0
		beq        x157d2_14
x157d2_1:
		cmp.b      #'+',d0
		beq.s      x157d2_2
		cmp.b      #'-',d0
		bne.s      x157d2_3
		not.b      x1585a
x157d2_2:
		bsr.s      x157c8
		bra.s      x157d2_1
x157d2_3:
		cmp.b      #'&',d0
		beq.s      x157d2_8
		moveq.l    #(TOK_BIN_CONST-TOK_DEC_CONST)/2,d1
		cmp.b      #'%',d0
		beq        x157d2_13
		moveq.l    #(TOK_HEX_CONST-TOK_DEC_CONST)/2,d1
		cmp.b      #'$',d0
		beq.s      x157d2_9
		subi.b     #'0',d0
		cmp.b      #9,d0
		bhi.s      x157d2_5
		moveq.l    #0,d1
		moveq.l    #15,d2
		and.w      d0,d2
x157d2_4:
		moveq.l    #0,d0
		move.b     (a0)+,d0
		cmp.b      #'0',d0
		bcs.s      x157d2_6
		cmp.b      #'9',d0
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
		bra        x157c8_1

x1585a: .dc.b 0
		.even

x157d2_8:
		move.b     (a0)+,d0
		moveq.l    #(TOK_BIN_CONST-TOK_DEC_CONST)/2,d1
		cmp.b      #'X',d0
		beq.s      x157d2_13
		moveq.l    #(TOK_OCT_CONST-TOK_DEC_CONST)/2,d1
		cmp.b      #'O',d0
		beq.s      x157d2_12
		moveq.l    #(TOK_HEX_CONST-TOK_DEC_CONST)/2,d1
		cmp.b      #'H',d0
		bne.s      x157d2_10
x157d2_9:
		move.b     (a0)+,d0
x157d2_10:
		cmp.b      #'F',d0
		bhi.s      x157d2_6
		cmp.b      #'0',d0
		bcs.s      x157d2_6
		cmp.b      #'9',d0
		bls.s      x157d2_11
		cmp.b      #'A',d0
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
		cmp.b      #'0',d0
		bcs.s      x157d2_6
		cmp.b      #'9',d0
		bhi.s      x157d2_6
		andi.b     #7,d0
		asl.l      #3,d2
		bcs.s      x157d2_5
		or.b       d0,d2
		bra.s      x157d2_12
x157d2_13:
		move.b     (a0)+,d0
		cmp.b      #'0',d0
		bcs.s      x157d2_6
		cmp.b      #'1',d0
		bhi.s      x157d2_6
		lsr.b      #1,d0
		roxl.l     #1,d2
		bcs        x157d2_5
		bra.s      x157d2_13
x157d2_14:
		moveq.l    #4,d1 /* string constant */
x157d2_15:
		move.b     (a0)+,d0
		cmp.b      #CR,d0 /* FIXME: handle also LF */
		beq        x157d2_6
		cmp.b      #'"',d0
		bne.s      x157d2_16
		move.b     (a0)+,d0
		cmp.b      #'"',d0
		bne        x157d2_6
x157d2_16:
		asl.l      #8,d2
		bcs        x157d2_5
		move.b     -257(a0),d2
		bra.s      x157d2_15

f158f8:
		pea.l      (a0)
		bsr        x157c8
		bsr        x157d2
		cmp.b      #4,d1 /* string constant? */
		beq.s      f158f8_4
f158f8_0:
		cmp.b      #',',d0
		beq.s      f158f8_2
		cmp.b      #')',d0
		beq.s      f158f8_2
		cmp.b      #'T',d0
		beq.s      f158f8_2
		cmp.b      #'!',d0
		beq.s      f158f8_2
		cmp.b      #'/',d0
		bne.s      f158f8_1
		cmp.b      (a0),d0
		beq.s      f158f8_2
		cmpi.b     #'*',(a0)
		beq.s      f158f8_2
f158f8_1:
		cmp.b      #CR,d0
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
		move.l     d2,(a1)+
		moveq.l    #0,d7
		addq.l     #4,a7
		rts
f158f8_4:
		moveq.l    #-1,d7
		movea.l    (a7)+,a0
		rts

f1595a:
		pea.l      (a0)
		bsr        x157c8
		bsr        x157d2
		cmp.b      #4,d1 /* string constant? */
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
		lea.l      1364(a6),a0
		move.w     (a0)+,d0
		cmp.w      #120,d0 /* TOK_CMD_GOSUB_IMP*2 */
		beq.s      x15982_1
		cmp.w      #122,d0 /* TOK_CMD_GOSUB*2 */
		beq.s      x15982_1
		cmp.w      #124,d0 /* TOK_CMD_GOSUB_EXP*2 */
		beq.s      x15982_1
		cmp.w      #12,d0 /* TOK_CMD_PROCEDURE*2 */
x15982_1:
		beq        x15982_33
		cmp.w      #320,d0 /* TOK_CMD_INC_FLOAT*2 */
		bcs.s      x15982_2
		cmp.w      #400,d0 /* TOK_CMD_DIV_FLOAT*2 */
		bls        x15982_29
		rts
x15982_2:
		cmp.w      #128,d0 /* TOK_CMD_LET_FLOAT*2 */
		beq        x15982_8
		cmp.w      #152,d0 /* TOK_CMD_ASSIGN_FLOAT*2 */
		beq.s      x15982_8
		cmp.w      #38,d0 /* TOK_CMD_FOR_FLOAT*2 */
		beq.s      x15982_3
		cmp.w      #62,d0 /* TOK_CMD_NEXT_FLOAT*2 */
		beq.s      x15982_5
		rts
x15982_3:
		moveq.l    #15,d1
		and.b      (a0),d1
		moveq.l    #38,d0
		add.b      x15a04(pc,d1.w),d0
		add.b      x15980,d0
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
		cmp.b      #TOK_REF_FLOAT,d0
		bcs.s      x15982_15
		move.b     (a1)+,(a0)+
x15982_15:
		move.b     (a1)+,(a0)+
x15982_16:
		move.b     (a1)+,d0
		move.b     d0,(a0)+
		cmp.b      #TOK_LINE_COMMENT,d0
		beq.s      x15982_25
		cmp.b      #TOK_CHAR_CONST,d0
		bcs.s      x15982_16
		cmp.b      #TOK_SUBFUNC_214,d0
		bcc.s      x15982_21
		cmp.b      #TOK_SUBFUNC_208,d0
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
		cmp.b      #TOK_DEC_DBL_CONST,d0
		beq.s      x15982_26
		bhi.s      x15982_14
		cmp.b      #TOK_DEC_DBL_CONST_PAD,d0
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
		lea.l      1364(a6),a0
		move.w     (a0)+,d0
		subi.w     #762,d0 /* TOK_CMD_DEFINT*2 */
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
		cmp.b      #',',d2
		beq.s      execute_defint_1
		cmp.b      #' ',d2
		beq.s      execute_defint_1
		andi.w     #0x00DF,d2 /* make it uppercase */
		cmp.b      #'A',d2
		bcs.s      execute_defint_2
		cmp.b      #'Z',d2
		bhi.s      execute_defint_2
		move.b     d0,-65(a1,d2.w)
		cmpi.b     #'-',(a0)
		bne.s      execute_defint_1
		addq.l     #1,a0
		move.b     (a0)+,d3
		andi.w     #0x00DF,d3 /* make it uppercase */
		subq.b     #2,d1
		bmi.s      execute_defint_2
		cmp.w      #'A',d3
		bcs.s      execute_defint_2
		cmp.w      #'Z',d3
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
		lea.l      850(a6),a0
		lsr.w      #1,d0
		move.w     d0,d6
		lea.l      4300(a6),a3
		move.w     0(a3,d0.w),d1
		beq        x15c52_8
		lea.l      x13696(pc),a3
		adda.w     d1,a3
		moveq.l    #0,d1
		move.b     (a3)+,d1
		move.b     (a3)+,(a0)+
		bra.s      x15c52_3
x15c52_1:
		move.b     (a3)+,d0
		cmp.b      #'A',d0
		bcs.s      x15c52_2
		cmp.b      #'Z',d0
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
		cmp.w      #228,d6 /* TOK_CMD_REM*2 */
		beq.s      x15c52_5
		cmp.w      #230,d6 /* TOK_CMD_COMMENT*2 */
		beq.s      x15c52_5
		cmp.w      #232,d6 /* TOK_CMD_SYNERR*2 */
		beq.s      x15c52_5
		cmp.w      #234,d6 /* TOK_CMD_DATA*2 */
		beq.s      x15c52_5
		cmp.w      #508,d6 /* TOK_CMD_DOT*2 */
		beq.s      x15c52_5
		cmp.w      #822,d6 /* TOK_CMD_DOLLAR*2 */
x15c52_5:
		beq        x15c52_27
		cmp.w      #128,d6 /* TOK_CMD_LET_FLOAT*2 */
		bcc.s      x15c52_8
		cmp.w      #98,d6 /* TOK_CMD_DO_WHILE*2 */
		bcs.s      x15c52_6
		cmp.w      #104,d6 /* TOK_CMD_LOOP_UNTIL*2 */
		bls.s      x15c52_7
x15c52_6:
		cmp.w      #2,d6 /* TOK_CMD_LOOP*2 */
		beq.s      x15c52_7
		cmp.w      #6,d6 /* TOK_CMD_UNTIL*2 */
		beq.s      x15c52_7
		cmp.w      #8,d6 /* TOK_CMD_WHILE*2 */
		beq.s      x15c52_7
		cmp.w      #10,d6 /* TOK_CMD_WEND*2 */
		beq.s      x15c52_7
		cmp.w      #16,d6 /* TOK_CMD_IF*2 */
		beq.s      x15c52_7
		cmp.w      #24,d6 /* TOK_CMD_SELECT*2 */
		beq.s      x15c52_7
		cmp.w      #88,d6 /* TOK_CMD_SELECT_STR*2 */
		beq.s      x15c52_7
		cmp.w      #28,d6 /* TOK_CMD_ELSE*2 */
		beq.s      x15c52_7
		cmp.w      #30,d6 /* TOK_CMD_DEFAULT*2 */
		beq.s      x15c52_7
		cmp.w      #32,d6 /* TOK_CMD_ELSEIF*2 */
		beq.s      x15c52_7
		cmp.w      #110,d6 /* TOK_CMD_EXITIF2*2 */
		beq.s      x15c52_7
		cmp.w      #112,d6 /* TOK_CMD_CASE*2 */
		beq.s      x15c52_7
		cmp.w      #62,d6 /* TOK_CMD_NEXT_FLOAT*2 */
		bcs.s      x15c52_8
		cmp.w      #86,d6 /* TOK_CMD_EXITIF*2 */
		bhi.s      x15c52_8
x15c52_7:
		addq.l     #4,a1
x15c52_8:
		cmp.w      #12,d6 /* TOK_CMD_PROCEDURE*2 */
		beq        x16338
		cmp.w      #108,d6 /* TOK_CMD_PROCEDURE2*2 */
		beq        x16338
		cmp.w      #38,d6 /* TOK_CMD_FOR_FLOAT*2 */
		bcs.s      x15c52_13
		cmp.w      #120,d6 /* TOK_CMD_GOSUB_IMP*2 */
		beq.s      x15c52_9
		cmp.w      #122,d6 /* TOK_CMD_GOSUB*2 */
		beq.s      x15c52_9
		cmp.w      #124,d6 /* TOK_CMD_GOSUB_EXP*2 */
		bne.s      x15c52_10
x15c52_9:
		bra        x16338_1
x15c52_10:
		cmp.w      #62,d6 /* TOK_CMD_NEXT_FLOAT*2 */
		bcs        x162f2
		cmp.w      #86,d6 /* TOK_CMD_EXITIF*2 */
		bcs        x162fc
		cmp.w      #320,d6 /* TOK_CMD_INC_FLOAT*2 */
		bcs.s      x15c52_11
		cmp.w      #414,d6 /* TOK_CMD_DIV_BYTE_ARR*2 */
		bls        x16318
x15c52_11:
		cmp.w      #128,d6 /* TOK_CMD_LET_FLOAT*2 */
		bcs.s      x15c52_13
		cmp.w      #174,d6 /* TOK_CMD_ASSIGN_BYTE_ARR*2 */
		bhi.s      x15c52_13
		move.w     d6,d1
		subi.w     #152,d1 /* TOK_CMD_ASSIGN_FLOAT*2 */
		bpl.s      x15c52_12
		addi.w     #24,d1
x15c52_12:
		lsr.w      #1,d1
		cmp.w      #6,d1
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
		cmp.b      #TOK_LINE_COMMENT,d0
		beq.s      x15c52_19
		cmp.b      #55,d0
		beq.s      x15c52_13
		cmp.b      #TOK_SUBFUNC_214,d0
		bcc        x15c52_28
		cmp.b      #TOK_CHAR_CONST,d0
		bcc        x162ac
		lea.l      x15fe8(pc),a3
		move.w     d0,d1
		lsr.w      #3,d1
		btst       d0,0(a3,d1.w)
		beq.s      x15c52_15
		move.b     #' ',(a0)+
x15c52_15:
		add.w      d0,d0
		lea.l      3372(a6),a3
		move.w     0(a3,d0.w),d1
		beq.s      x15c52_19
		lea.l      x13696(pc),a3
		adda.w     d1,a3
		moveq.l    #0,d1
		move.b     (a3)+,d1
		move.b     (a3)+,(a0)+
		bra.s      x15c52_18
x15c52_16:
		move.b     (a3)+,d0
		cmp.b      #'A',d0
		bcs.s      x15c52_17
		cmp.b      #'Z',d0
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
		cmpi.w     #1668,4(a7) /* TOK_CMD_INLINE*4 */
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
		cmp.b      #EOL,d0
		bne.s      x15c52_26
		bra.s      x15c52_19
x15c52_28:
		cmp.b      #TOK_DEC_DBL_CONST_PAD,d0
		beq.s      x15c52_32
		cmp.b      #TOK_STRING_CONST,d0
		beq.s      x15c52_29
		cmp.b      #TOK_DEC_DBL_CONST,d0
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
		cmp.b      #'"',d1
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
		cmp.b      #TOK_REF_FLOAT,d0
		bcs.s      x15c52_35
		move.b     (a1)+,-(a7)
		move.w     (a7)+,d1
x15c52_35:
		move.b     (a1)+,d1
		andi.w     #15,d0
		add.w      d0,d0
		add.w      d0,d0
		lea.l      16(a6),a2
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
		cmp.b      #'A',d1
		bcs.s      x15c52_45
		cmp.b      #'Z',d1
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
		jsr        328(a6)
		bsr        print_hex
		bra        x15c52_13
x16028_2:
		addq.l     #1,a1
x16028_3:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		jsr        328(a6)
		bsr        print_oct
		bra        x15c52_13
x16028_4:
		addq.l     #1,a1
x16028_5:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		jsr        328(a6)
		bsr        print_bin
		bra        x15c52_13

x1607a:
		lea.l      3372(a6),a0
		move.w     #(1952/2)-1,d0
x1607a_1:
		clr.w      (a0)+
		dbf        d0,x1607a_1
		lea.l      3372(a6),a0
		lea.l      func_misc_table(pc),a1
		moveq.l    #0,d0
x1607a_2:
		move.b     (a1),d0
		bmi.s      x1607a_4
		moveq.l    #0,d1
		move.b     3(a1,d0.w),d1
		move.b     2(a1,d0.w),d2
		beq.s      x1607a_3
		addi.w     #TOK_REF_FLOAT_SHORT,d1
x1607a_3:
		add.w      d1,d1
		move.l     a1,d2
		subi.l     #x13696,d2
		move.w     d2,0(a0,d1.w)
		lea.l      4(a1,d0.w),a1
		bra.s      x1607a_2
x1607a_4:
		lea.l      4300(a6),a0
		lea.l      cmd_table(pc),a1
		moveq.l    #0,d0
x1607a_5:
		move.b     (a1),d0
		bmi.s      x1607a_6
		moveq.l    #0,d1
		move.b     2(a1,d0.w),d1
		asl.w      #8,d1
		move.b     3(a1,d0.w),d1
		move.l     a1,d2
		subi.l     #x13696,d2
		move.w     d2,0(a0,d1.w)
		lea.l      6(a1,d0.w),a1
		bra.s      x1607a_5
x1607a_6:
		lea.l      3372(a6),a0
		move.w     #464-1,d0
x1607a_7:
		move.w     (a0)+,d1
		bne.s      x1607a_8
		move.w     -4(a0),-2(a0)
x1607a_8:
		dbf        d0,x1607a_7
		lea.l      4300(a6),a0
		move.w     #512-1,d0
x1607a_9:
		move.w     (a0)+,d1
		bne.s      x1607a_10
		move.w     -4(a0),-2(a0)
x1607a_10:
		dbf        d0,x1607a_9
		lea.l      4300(a6),a0
		clr.w      126(a0)
		clr.w      120(a0)
		adda.w     #152,a0
		moveq.l    #11,d0
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
		cmp.b      #'"',d2
		bne.s      x1612c_2
		move.b     d2,(a0)+
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
		cmp.l      #0x10000000,d0
		bcc.s      print_hex_2
		asl.l      #4,d0
		dbf        d1,print_hex_1
print_hex_2:
		rol.l      #4,d0
		move.b     d0,d2
		andi.b     #15,d2
		ori.b      #'0',d2
		cmp.b      #'9',d2
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
		cmp.l      #10000,d0
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
		jsr        FITOF
print_float:
		movem.l    a0-a1,-(a7)
		st         542(a6)
		jsr        Fstr
		sf         542(a6)
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
		cmp.b      #TOK_SUBFUNC_208,d0
		bne.s      x16294
		moveq.l    #0,d0
		move.b     (a1)+,d0
		addi.w     #224,d0
		add.w      d0,d0
		lea.l      3372(a6),a3
		move.w     0(a3,d0.w),d1
		beq        x15c52_19
		lea.l      x13696(pc),a3
		adda.w     d1,a3
		moveq.l    #0,d1
		move.b     (a3)+,d1
		move.b     (a3)+,(a0)+
		bra.s      x162ac_3
x162ac_1:
		move.b     (a3)+,d0
		cmp.b      #'A',d0
		bcs.s      x162ac_2
		cmp.b      #'Z',d0
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
		cmp.w      #350,d6
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
		lea.l      x16782(pc),a0
		move.l     d0,(a0)
		move.l     d1,-(a7)
		move.l     d0,-(a7)
		clr.w      -(a7)
		move.w     #74,-(a7) /* Mshrink */
		trap       #1
		lea.l      12(a7),a7
		tst.l      d0
		bmi.s      x16534_3
		movea.l    x16782(pc),a0
		move.w     #0x1FFF,d0
x16534_1:
		clr.l      (a0)+
		dbf        d0,x16534_1
		rts
x16534_2:
		addq.l     #4,a7
x16534_3:
		lea.l      x16782(pc),a0
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
		cmp.l      #0x4D616758,d1 /* 'MagX' */
		beq.s      find_mtask3
		cmp.l      #0x4D694E54,d1 /* 'MiNT' */
		beq.s      find_mtask3
		tst.l      d1
		bne.s      find_mtask1
find_mtask2:
		moveq.l    #0,d0
find_mtask3:
		lea.l      mtask(pc),a0
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
16: variable table
490: tmpbuf for Fstr
512: outbuf for FTstr
542: decimal_digits
1106: offsets / genereal buffer
1364: token buffer
2772: filetable, xx*6
3372: offsets to func_table
4300: offsets to cmd table
7664: intout
7920: ptsout
8398: offset to add to variable names
8399: deflist style
8401: first char of identifier
8698: workout
9708: workin
*/
