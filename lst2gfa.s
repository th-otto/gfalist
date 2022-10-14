FOR_LIB = 0
STRANGE_CHECK = 1


EOL = 13
CR  = 13
NL  = 10

TOK_CMD_FOR_FLOAT       =  19
TOK_CMD_NEXT_FLOAT      =  31
TOK_CMD_EOF             =  45
TOK_CMD_LET_FLOAT       =  64
TOK_CMD_ASSIGN_FLOAT    =  76
TOK_CMD_REM             = 114
TOK_CMD_COMMENT         = 115
TOK_CMD_SYNERR          = 116
TOK_CMD_DATA            = 117
TOK_CMD_END             = 124
TOK_CMD_ADDRIN          = 224
TOK_CMD_ADDROUT         = 225
TOK_CMD_CONTRL          = 228
TOK_CMD_DOUBLE_REF      = 237
TOK_CMD_DOT             = 254
TOK_CMD_FILES           = 325
TOK_CMD_FILESELECT      = 329
TOK_CMD_DOLLAR          = 411
TOK_CMD_INLINE          = 417


TOK_SUBFUNC_208 = 208
TOK_SUBFUNC_209 = 209

_entry:
[00010000] 6000 047a                 bra        _main_entry

[00010004] 204e                      movea.l    a6,a0
[00010006] 2d7c 0001 007a 0004       move.l     #x1007a,4(a6)
[0001000e] 206e 00cc                 movea.l    204(a6),a0
[00010012] 41e8 0080                 lea.l      128(a0),a0
[00010016] 4a18                      tst.b      (a0)+
[00010018] 66fc                      bne.s      $00010016
[0001001a] 2248                      movea.l    a0,a1
[0001001c] 5b88                      subq.l     #5,a0
[0001001e] 6100 021c                 bsr        copy32b
[00010022] 0280 ff5f 5f5f            andi.l     #0xFF5F5F5F,d0
[00010028] b0bc 2e4c 5354            cmp.l      #0x2E4C5354,d0 /* '.LST' */
[0001002e] 6600 0164                 bne        $00010194
[00010032] 5389                      subq.l     #1,a1
[00010034] 7200                      moveq.l    #0,d1
[00010036] 1021                      move.b     -(a1),d0
[00010038] 671c                      beq.s      $00010056
[0001003a] b03c 005c                 cmp.b      #'\\',d0
[0001003e] 6716                      beq.s      $00010056
[00010040] b03c 003a                 cmp.b      #$3A,d0
[00010044] 6710                      beq.s      $00010056
[00010046] b03c 0061                 cmp.b      #'a',d0
[0001004a] 6dea                      blt.s      $00010036
[0001004c] b03c 007a                 cmp.b      #'z',d0
[00010050] 6ee4                      bgt.s      $00010036
[00010052] 72ff                      moveq.l    #-1,d1
[00010054] 60e0                      bra.s      $00010036
[00010056] 41fa 0422                 lea.l      lowercase_filenames(pc),a0
[0001005a] 3081                      move.w     d1,(a0)
[0001005c] 41fa 6674                 lea.l      reading_msg(pc),a0
[00010060] 6100 01ec                 bsr        printstr
[00010064] 206e 00cc                 movea.l    204(a6),a0
[00010068] 41e8 0081                 lea.l      129(a0),a0
[0001006c] 6100 01e0                 bsr        printstr
[00010070] 6100 01d8                 bsr        printnl
[00010074] 6100 1598                 bsr        $0001160E
[00010078] 4e71                      nop

x1007a:
[0001007a] 6100 01b0                 bsr        $0001022C
[0001007e] 6100 1a68                 bsr        $00011AE8
[00010082] 2d7c 0001 018e 0004       move.l     #$0001018E,4(a6)
[0001008a] 41ee 0452                 lea.l      1106(a6),a0
[0001008e] 226e 00cc                 movea.l    204(a6),a1
[00010092] 43e9 0080                 lea.l      128(a1),a1
[00010096] 4a19                      tst.b      (a1)+
[00010098] 6700 00fa                 beq        $00010194
[0001009c] 10d9                      move.b     (a1)+,(a0)+
[0001009e] 66fc                      bne.s      $0001009C
[000100a0] 5b88                      subq.l     #5,a0
[000100a2] 4210                      clr.b      (a0)
[000100a4] 6100 14d2                 bsr        $00011578
[000100a8] 2f00                      move.l     d0,-(a7)
[000100aa] 203a 0256                 move.l     $00010302(pc),d0
[000100ae] 6100 01b2                 bsr        $00010262
[000100b2] 41fa 6616                 lea.l      lines_msg(pc),a0
[000100b6] 6100 0196                 bsr        printstr
[000100ba] 203a 66d0                 move.l     $0001678C(pc),d0
[000100be] 6100 01a2                 bsr        $00010262
[000100c2] 41fa 65ad                 lea.l      bytes_msg(pc),a0
[000100c6] 6100 0186                 bsr        printstr
[000100ca] 3006                      move.w     d6,d0
[000100cc] b07c 0006                 cmp.w      #6,d0
[000100d0] 6d18                      blt.s      $000100EA
[000100d2] d040                      add.w      d0,d0
[000100d4] d046                      add.w      d6,d0
[000100d6] d040                      add.w      d0,d0
[000100d8] 41ee 0ad4                 lea.l      2772(a6),a0
[000100dc] d0c0                      adda.w     d0,a0
[000100de] 4a68 0004                 tst.w      4(a0)
[000100e2] 6700 107e                 beq        $00011162
[000100e6] 2050                      movea.l    (a0),a0
[000100e8] 6004                      bra.s      $000100EE
[000100ea] 206e 00ac                 movea.l    172(a6),a0
[000100ee] 2028 0006                 move.l     6(a0),d0
[000100f2] 6100 016e                 bsr        $00010262
[000100f6] 41fa 6584                 lea.l      exitcode_msg(pc),a0
[000100fa] 6100 0152                 bsr        printstr
[000100fe] 203a 0206                 move.l     x10306(pc),d0
[00010102] 6620                      bne.s      $00010124
[00010104] 2017                      move.l     (a7),d0
[00010106] 6a0a                      bpl.s      $00010112
[00010108] 702d                      moveq.l    #45,d0
[0001010a] 6100 01de                 bsr        $000102EA
[0001010e] 2017                      move.l     (a7),d0
[00010110] 4480                      neg.l      d0
[00010112] 6100 014e                 bsr        $00010262
[00010116] 6100 0132                 bsr        printnl
[0001011a] 201f                      move.l     (a7)+,d0
[0001011c] 2f00                      move.l     d0,-(a7)
[0001011e] 3f3c 004c                 move.w     #76,-(a7) /* Pterm */
[00010122] 4e41                      trap       #1
[00010124] 6100 013c                 bsr        $00010262
[00010128] 41fa 6656                 lea.l      x16780(pc),a0
[0001012c] 30bc 0200                 move.w     #$0200,(a0)
[00010130] 7200                      moveq.l    #0,d1
[00010132] 43fa 01d2                 lea.l      x10306(pc),a1
[00010136] 5391                      subq.l     #1,(a1)
[00010138] 6b52                      bmi.s      $0001018C
[0001013a] 227a 6646                 movea.l    x16782(pc),a1
[0001013e] 2009                      move.l     a1,d0
[00010140] 674a                      beq.s      $0001018C
[00010142] 3001                      move.w     d1,d0
[00010144] e548                      lsl.w      #2,d0
[00010146] 2031 0000                 move.l     0(a1,d0.w),d0
[0001014a] 6f40                      ble.s      $0001018C
[0001014c] 2400                      move.l     d0,d2
[0001014e] 7601                      moveq.l    #1,d3
[00010150] 5243                      addq.w     #1,d3
[00010152] 48c2                      ext.l      d2
[00010154] 84fc 000a                 divu.w     #10,d2
[00010158] 4a42                      tst.w      d2
[0001015a] 66f4                      bne.s      $00010150
[0001015c] 41fa 6622                 lea.l      x16780(pc),a0
[00010160] 3410                      move.w     (a0),d2
[00010162] d443                      add.w      d3,d2
[00010164] b47a 6616                 cmp.w      x1677c(pc),d2
[00010168] 6d0a                      blt.s      $00010174
[0001016a] 5343                      subq.w     #1,d3
[0001016c] 3083                      move.w     d3,(a0)
[0001016e] 6100 00da                 bsr        printnl
[00010172] 600c                      bra.s      $00010180
[00010174] 2f00                      move.l     d0,-(a7)
[00010176] 7020                      moveq.l    #32,d0
[00010178] 6100 0170                 bsr        $000102EA
[0001017c] 201f                      move.l     (a7)+,d0
[0001017e] 3082                      move.w     d2,(a0)
[00010180] 6100 00e0                 bsr        $00010262
[00010184] 5241                      addq.w     #1,d1
[00010186] b27c 2000                 cmp.w      #$2000,d1
[0001018a] 6da6                      blt.s      $00010132
[0001018c] 6042                      bra.s      $000101D0
[0001018e] 41fa 6457                 lea.l      error_str(pc),a0
[00010192] 6026                      bra.s      $000101BA
[00010194] 41fa 649c                 lea.l      usage_msg(pc),a0
[00010198] 6026                      bra.s      $000101C0
[0001019a] 41fa 6451                 lea.l      stack_overflow(pc),a0
[0001019e] 601a                      bra.s      $000101BA
[000101a0] 6100 008a                 bsr        $0001022C
[000101a4] 6014                      bra.s      $000101BA
[000101a6] 41fa 6454                 lea.l      notalst_msg(pc),a0
[000101aa] 41fa 6465                 lea.l      open_err_msg(pc),a0
[000101ae] 600a                      bra.s      $000101BA
[000101b0] 41fa 646a                 lea.l      save_err_msg(pc),a0
[000101b4] 6004                      bra.s      $000101BA

[000101b6] 41fa 646f                 lea.l      load_err_msg(pc),a0
[000101ba] 487a 6496                 pea.l      att_msg(pc)
[000101be] 6002                      bra.s      $000101C2
[000101c0] 42a7                      clr.l      -(a7)
[000101c2] 6100 008a                 bsr        printstr
[000101c6] 201f                      move.l     (a7)+,d0
[000101c8] 6706                      beq.s      $000101D0
[000101ca] 2040                      movea.l    d0,a0
[000101cc] 6100 0080                 bsr.w      printstr
[000101d0] 6100 0078                 bsr.w      printnl
[000101d4] 303a 65a8                 move.w     mtask(pc),d0
[000101d8] 6610                      bne.s      $000101EA
[000101da] 41fa 6570                 lea.l      waitkey_msg(pc),a0
[000101de] 6100 006e                 bsr.w      printstr
[000101e2] 3f3c 0007                 move.w     #7,-(a7) /* Crawcin */
[000101e6] 4e41                      trap       #1
[000101e8] 548f                      addq.l     #2,a7
[000101ea] 70ff                      moveq.l    #-1,d0
[000101ec] 6000 ff2e                 bra        $0001011C

[000101f0] 41ee 0452                 lea.l      1106(a6),a0
[000101f4] 4267                      clr.w      -(a7)
[000101f6] 2f08                      move.l     a0,-(a7)
[000101f8] 3f3c 003d                 move.w     #$003D,-(a7) /* Fopen */
[000101fc] 4e41                      trap       #1
[000101fe] 508f                      addq.l     #8,a7
[00010200] 4a40                      tst.w      d0
[00010202] 6ba6                      bmi.s      $000101AA
[00010204] 43fa 6580                 lea.l      x16786(pc),a1
[00010208] 3200                      move.w     d0,d1
[0001020a] d241                      add.w      d1,d1
[0001020c] d240                      add.w      d0,d1
[0001020e] d241                      add.w      d1,d1
[00010210] 41ee 0ad4                 lea.l      2772(a6),a0
[00010214] d0c1                      adda.w     d1,a0
[00010216] 317c 100a 0004            move.w     #$100A,4(a0)
[0001021c] 2089                      move.l     a1,(a0)
[0001021e] 22bc 0000 0000            move.l     #0,(a1)
[00010224] 337c 0001 0004            move.w     #1,4(a1)
[0001022a] 4e75                      rts
[0001022c] 302e 20f2                 move.w     8434(a6),d0
[00010230] 3f00                      move.w     d0,-(a7)
[00010232] 3f3c 003e                 move.w     #$003E,-(a7) /* Fclose */
[00010236] 4e41                      trap       #1
[00010238] 588f                      addq.l     #4,a7
[0001023a] 4e75                      rts

copy32b:
[0001023c] 7203                      moveq.l    #3,d1
copy16b:
[0001023e] 7000                      moveq.l    #0,d0
[00010240] e188                      lsl.l      #8,d0
[00010242] 1018                      move.b     (a0)+,d0
[00010244] 51c9 fffa                 dbf        d1,$00010240
[00010248] 4e75                      rts

printnl:
[0001024a] 41fa 6422                 lea.l      crnl(pc),a0
printstr:
[0001024e] 48e7 e0e0                 movem.l    d0-d2/a0-a2,-(a7)
[00010252] 4850                      pea.l      (a0)
[00010254] 3f3c 0009                 move.w     #9,-(a7) /* Cconws */
[00010258] 4e41                      trap       #1
[0001025a] 5c8f                      addq.l     #6,a7
[0001025c] 4cdf 0707                 movem.l    (a7)+,d0-d2/a0-a2
[00010260] 4e75                      rts

[00010262] 48e7 fce0                 movem.l    d0-d5/a0-a2,-(a7)
[00010266] 283c 0098 9680            move.l     #$00989680,d4
[0001026c] 2600                      move.l     d0,d3
[0001026e] 4241                      clr.w      d1
[00010270] 4242                      clr.w      d2
[00010272] b684                      cmp.l      d4,d3
[00010274] 6d06                      blt.s      $0001027C
[00010276] 9684                      sub.l      d4,d3
[00010278] 5242                      addq.w     #1,d2
[0001027a] 60f6                      bra.s      $00010272
[0001027c] 4a42                      tst.w      d2
[0001027e] 6726                      beq.s      $000102A6
[00010280] b47c 000a                 cmp.w      #10,d2
[00010284] 6b24                      bmi.s      $000102AA
[00010286] 42a7                      clr.l      -(a7)
[00010288] 48c2                      ext.l      d2
[0001028a] 84fc 000a                 divu.w     #10,d2
[0001028e] 2f02                      move.l     d2,-(a7)
[00010290] b47c 0009                 cmp.w      #9,d2
[00010294] 6ef2                      bgt.s      $00010288
[00010296] 0642 0030                 addi.w     #$0030,d2
[0001029a] 3002                      move.w     d2,d0
[0001029c] 614c                      bsr.s      $000102EA
[0001029e] 241f                      move.l     (a7)+,d2
[000102a0] 6710                      beq.s      $000102B2
[000102a2] 4842                      swap       d2
[000102a4] 60f0                      bra.s      $00010296
[000102a6] 4a41                      tst.w      d1
[000102a8] 670a                      beq.s      $000102B4
[000102aa] 0642 0030                 addi.w     #$0030,d2
[000102ae] 3002                      move.w     d2,d0
[000102b0] 6138                      bsr.s      $000102EA
[000102b2] 7201                      moveq.l    #1,d1
[000102b4] b87c 000a                 cmp.w      #10,d4
[000102b8] 6722                      beq.s      $000102DC
[000102ba] 740a                      moveq.l    #10,d2
[000102bc] 7a01                      moveq.l    #1,d5
[000102be] b484                      cmp.l      d4,d2
[000102c0] 6406                      bcc.s      $000102C8
[000102c2] e382                      asl.l      #1,d2
[000102c4] e385                      asl.l      #1,d5
[000102c6] 60f6                      bra.s      $000102BE
[000102c8] 4280                      clr.l      d0
[000102ca] b484                      cmp.l      d4,d2
[000102cc] 6204                      bhi.s      $000102D2
[000102ce] 8085                      or.l       d5,d0
[000102d0] 9882                      sub.l      d2,d4
[000102d2] e28a                      lsr.l      #1,d2
[000102d4] e28d                      lsr.l      #1,d5
[000102d6] 64f2                      bcc.s      $000102CA
[000102d8] 2800                      move.l     d0,d4
[000102da] 6094                      bra.s      $00010270
[000102dc] 0643 0030                 addi.w     #$0030,d3
[000102e0] 3003                      move.w     d3,d0
[000102e2] 6106                      bsr.s      $000102EA
[000102e4] 4cdf 073f                 movem.l    (a7)+,d0-d5/a0-a2
[000102e8] 4e75                      rts
[000102ea] 4a40                      tst.w      d0
[000102ec] 6712                      beq.s      $00010300
[000102ee] 48e7 e0e0                 movem.l    d0-d2/a0-a2,-(a7)
[000102f2] 3f00                      move.w     d0,-(a7)
[000102f4] 3f3c 0002                 move.w     #2,-(a7) /* Cconout */
[000102f8] 4e41                      trap       #1
[000102fa] 588f                      addq.l     #4,a7
[000102fc] 4cdf 0707                 movem.l    (a7)+,d0-d2/a0-a2
[00010300] 4e75                      rts

x10302: .dc.l 0
x10306: .dc.l 0

[0001030a] 2049                      movea.l    a1,a0
[0001030c] 2003                      move.l     d3,d0
[0001030e] 90af 0004                 sub.l      4(a7),d0
[00010312] d1ef 0004                 adda.l     4(a7),a0
[00010316] 48e7 7060                 movem.l    d1-d3/a1-a2,-(a7)
[0001031a] 4fef ffc0                 lea.l      -64(a7),a7
[0001031e] 43fa 6458                 lea.l      x16778(pc),a1
[00010322] 2211                      move.l     (a1),d1
[00010324] 4291                      clr.l      (a1)
[00010326] b081                      cmp.l      d1,d0
[00010328] 6d02                      blt.s      $0001032C
[0001032a] 2001                      move.l     d1,d0
[0001032c] 48e7 8080                 movem.l    d0/a0,-(a7)
[00010330] 45ef 0008                 lea.l      8(a7),a2
[00010334] 41ee 0452                 lea.l      1106(a6),a0
[00010338] 6100 ff02                 bsr        copy32b
[0001033c] b0bc 494e 4c49            cmp.l      #$494E4C49,d0 /* 'INLI' */
[00010342] 6600 0108                 bne        $0001044C
[00010346] 7201                      moveq.l    #1,d1
[00010348] 6100 fef4                 bsr        copy16b
[0001034c] b07c 4e45                 cmp.w      #0x4E45,d0 /* 'NE' */
[00010350] 6600 00fa                 bne        $0001044C
[00010354] 1018                      move.b     (a0)+,d0
[00010356] b03c 0020                 cmp.b      #' ',d0
[0001035a] 67f8                      beq.s      $00010354
[0001035c] 5388                      subq.l     #1,a0
[0001035e] 2248                      movea.l    a0,a1
[00010360] 7200                      moveq.l    #0,d1
[00010362] 1018                      move.b     (a0)+,d0
[00010364] 5241                      addq.w     #1,d1
[00010366] b03c 0030                 cmp.b      #'0',d0
[0001036a] 64f6                      bcc.s      $00010362
[0001036c] 5341                      subq.w     #1,d1
[0001036e] 6f00 00dc                 ble        $0001044C
[00010372] 5341                      subq.w     #1,d1
[00010374] 6b00 00d6                 bmi        $0001044C
[00010378] b27c 003a                 cmp.w      #$003A,d1
[0001037c] 6f02                      ble.s      $00010380
[0001037e] 723a                      moveq.l    #58,d1
[00010380] 14d9                      move.b     (a1)+,(a2)+
[00010382] 51c9 fffc                 dbf        d1,$00010380
[00010386] 14fc 002e                 move.b     #'.',(a2)+
[0001038a] 14fc 0049                 move.b     #'I',(a2)+
[0001038e] 14fc 004e                 move.b     #'N',(a2)+
[00010392] 14fc 004c                 move.b     #'L',(a2)+
[00010396] 4212                      clr.b      (a2)
[00010398] 41ef 0008                 lea.l      8(a7),a0
[0001039c] 4267                      clr.w      -(a7)
[0001039e] 2f08                      move.l     a0,-(a7)
[000103a0] 3f3c 003d                 move.w     #$003D,-(a7) /* Fopen */
[000103a4] 4e41                      trap       #1
[000103a6] 508f                      addq.l     #8,a7
[000103a8] 3600                      move.w     d0,d3
[000103aa] 4cdf 0101                 movem.l    (a7)+,d0/a0
[000103ae] 4a43                      tst.w      d3
[000103b0] 6b50                      bmi.s      $00010402
[000103b2] 2f08                      move.l     a0,-(a7)
[000103b4] 2f00                      move.l     d0,-(a7)
[000103b6] 3f03                      move.w     d3,-(a7)
[000103b8] 3f3c 003f                 move.w     #$003F,-(a7) /* Fread */
[000103bc] 4e41                      trap       #1
[000103be] 4fef 000c                 lea.l      12(a7),a7
[000103c2] 4a40                      tst.w      d0
[000103c4] 6f50                      ble.s      $00010416
[000103c6] 3f03                      move.w     d3,-(a7)
[000103c8] 2600                      move.l     d0,d3
[000103ca] 3f3c 003e                 move.w     #$003E,-(a7) /* Fclose */
[000103ce] 4e41                      trap       #1
[000103d0] 588f                      addq.l     #4,a7
[000103d2] 4a40                      tst.w      d0
[000103d4] 6b62                      bmi.s      $00010438
[000103d6] 41fa 6304                 lea.l      inline_msg(pc),a0
[000103da] 6100 fe72                 bsr        printstr
[000103de] 41d7                      lea.l      (a7),a0
[000103e0] 6100 fe6c                 bsr        printstr
[000103e4] 7020                      moveq.l    #32,d0
[000103e6] 6100 ff02                 bsr        $000102EA
[000103ea] 2003                      move.l     d3,d0
[000103ec] 6100 fe74                 bsr        $00010262
[000103f0] 41fa 62f2                 lea.l      bytes_read_msg(pc),a0
[000103f4] 6100 fe58                 bsr        printstr
[000103f8] 4fef 0040                 lea.l      64(a7),a7
[000103fc] 4cdf 060e                 movem.l    (a7)+,d1-d3/a1-a2
[00010400] 4e75                      rts
[00010402] 41fa 62d8                 lea.l      inline_msg(pc),a0
[00010406] 6100 fe46                 bsr        printstr
[0001040a] 41d7                      lea.l      (a7),a0
[0001040c] 6100 fe40                 bsr        printstr
[00010410] 41fa 62e1                 lea.l      cannot_open_msg(pc),a0
[00010414] 60de                      bra.s      $000103F4
[00010416] 41fa 62c4                 lea.l      inline_msg(pc),a0
[0001041a] 6100 fe32                 bsr        printstr
[0001041e] 41d7                      lea.l      (a7),a0
[00010420] 6100 fe2c                 bsr        printstr
[00010424] 41fa 62e0                 lea.l      cannot_read_msg(pc),a0
[00010428] 6100 fe24                 bsr        printstr
[0001042c] 3f03                      move.w     d3,-(a7)
[0001042e] 3f3c 003e                 move.w     #62,-(a7) /* Fclose */
[00010432] 4e41                      trap       #1
[00010434] 588f                      addq.l     #4,a7
[00010436] 60c0                      bra.s      $000103F8
[00010438] 41fa 62a2                 lea.l      inline_msg(pc),a0
[0001043c] 6100 fe10                 bsr        printstr
[00010440] 41d7                      lea.l      (a7),a0
[00010442] 6100 fe0a                 bsr        printstr
[00010446] 41fa 62d1                 lea.l      cannot_close_msg(pc),a0
[0001044a] 6094                      bra.s      $000103E0
[0001044c] 508f                      addq.l     #8,a7
[0001044e] 41fa 62dc                 lea.l      not_inline_msg(pc),a0
[00010452] 6100 fdfa                 bsr        printstr
[00010456] 41ee 0452                 lea.l      1106(a6),a0
[0001045a] 1018                      move.b     (a0)+,d0
[0001045c] b03c 000d                 cmp.b      #EOL,d0
[00010460] 66f8                      bne.s      $0001045A
[00010462] 1010                      move.b     (a0),d0
[00010464] 48e7 8080                 movem.l    d0/a0,-(a7)
[00010468] 4210                      clr.b      (a0)
[0001046a] 6100 fde2                 bsr        printstr
[0001046e] 4cdf 0101                 movem.l    (a7)+,d0/a0
[00010472] 1080                      move.b     d0,(a0)
[00010474] 41fa 61f8                 lea.l      crnl(pc),a0
[00010478] 609a                      bra.s      $00010414

lowercase_filenames: .dc.w 0

_main_entry:
		bra.s main

x1047e:
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0000
		dc.w       0x0777
		dc.w       0x0700
		dc.w       0x0070
		dc.w       0x0000

main:
           487a 60e2                 pea.l      find_mtask(pc)
[000104a4] 3f3c 0026                 move.w     #38,-(a7) /* Supexec */
[000104a8] 4e4e                      trap       #14
[000104aa] 5c8f                      addq.l     #6,a7
[000104ac] 303a 62d0                 move.w     mtask(pc),d0
[000104b0] 677c                      beq.s      $0001052E
[000104b2] 41fa fa78                 lea.l      _entry-212(pc),a0 /* get environment ptr from basepage */
[000104b6] 2010                      move.l     (a0),d0
[000104b8] 6774                      beq.s      $0001052E
[000104ba] 2040                      movea.l    d0,a0
[000104bc] 4a10                      tst.b      (a0)
[000104be] 676e                      beq.s      $0001052E
[000104c0] 0c10 0043                 cmpi.b     #'C',(a0)
[000104c4] 665a                      bne.s      $00010520
[000104c6] 0c28 004f 0001            cmpi.b     #'O',1(a0)
[000104cc] 6652                      bne.s      $00010520
[000104ce] 0c28 004c 0002            cmpi.b     #'L',2(a0)
[000104d4] 664a                      bne.s      $00010520
[000104d6] 0c28 0055 0003            cmpi.b     #'U',3(a0)
[000104dc] 6642                      bne.s      $00010520
[000104de] 0c28 004d 0004            cmpi.b     #'M',4(a0)
[000104e4] 663a                      bne.s      $00010520
[000104e6] 0c28 004e 0005            cmpi.b     #'N',5(a0)
[000104ec] 6632                      bne.s      $00010520
[000104ee] 0c28 0053 0006            cmpi.b     #'S',6(a0)
[000104f4] 662a                      bne.s      $00010520
[000104f6] 0c28 003d 0007            cmpi.b     #'=',7(a0)
[000104fc] 6622                      bne.s      $00010520
[000104fe] 5088                      addq.l     #8,a0
[00010500] 7000                      moveq.l    #0,d0
[00010502] 7200                      moveq.l    #0,d1
[00010504] 1018                      move.b     (a0)+,d0
[00010506] 6722                      beq.s      $0001052A
[00010508] 0440 0030                 subi.w     #$0030,d0
[0001050c] 6bf6                      bmi.s      $00010504
[0001050e] b03c 0009                 cmp.b      #$09,d0
[00010512] 6ef0                      bgt.s      $00010504
[00010514] e389                      lsl.l      #1,d1
[00010516] 2f01                      move.l     d1,-(a7)
[00010518] e589                      lsl.l      #2,d1
[0001051a] d29f                      add.l      (a7)+,d1
[0001051c] d280                      add.l      d0,d1
[0001051e] 60e4                      bra.s      $00010504
[00010520] 4a18                      tst.b      (a0)+
[00010522] 66fc                      bne.s      $00010520
[00010524] 4a10                      tst.b      (a0)
[00010526] 6706                      beq.s      $0001052E
[00010528] 6096                      bra.s      $000104C0
[0001052a] 2001                      move.l     d1,d0
[0001052c] 660a                      bne.s      $00010538
[0001052e] a000                      ALINE      #0
[00010530] 2040                      movea.l    d0,a0
[00010532] 3028 ffd4                 move.w     -44(a0),d0
[00010536] 5240                      addq.w     #1,d0
[00010538] b07c 0100                 cmp.w      #$0100,d0
[0001053c] 6e0a                      bgt.s      $00010548
[0001053e] b07c 0028                 cmp.w      #$0028,d0
[00010542] 6c06                      bge.s      $0001054A
[00010544] 7028                      moveq.l    #40,d0
[00010546] 6002                      bra.s      $0001054A
[00010548] 7050                      moveq.l    #80,d0
[0001054a] 41fa 6230                 lea.l      x1677c(pc),a0
[0001054e] 3080                      move.w     d0,(a0)
[00010550] 41fa 6216                 lea.l      x16768(pc),a0
[00010554] 203c 40ac ead6            move.l     #0x40ACEAD6,d0 /* d0 = 2056756B */
[0001055a] e298                      ror.l      #1,d0
[0001055c] 20c0                      move.l     d0,(a0)+
[0001055e] 203c 404c 4086            move.l     #0x404C4086,d0
[00010564] e298                      ror.l      #1,d0 /* d0 = 20262043 */
[00010566] 20c0                      move.l     d0,(a0)+
[00010568] 203c de5d 7e40            move.l     #0xDE5D7E40,d0
[0001056e] e298                      ror.l      #1,d0 /* d0 = 6F2EBF20 */
[00010570] 20c0                      move.l     d0,(a0)+
[00010572] 30bc 2000                 move.w     #0x2000,(a0)
[00010576] 6100 fcd2                 bsr        printnl
[0001057a] 41fa 61ec                 lea.l      x16768(pc),a0
[0001057e] 6100 fcce                 bsr        printstr
[00010582] 41fa 60d3                 lea.l      version_msg(pc),a0
[00010586] 6100 fcc6                 bsr        printstr
[0001058a] 4ef9 0001 0d1a            jmp        $00010D1A

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

[00010d1a] 2a6f 0004                 movea.l    4(a7),a5
[00010d1e] 4df9 0001 779c            lea.l      bss_end,a6
[00010d24] 200e                      move.l     a6,d0
[00010d26] 5680                      addq.l     #3,d0
[00010d28] 0200 00fc                 andi.b     #0xFC,d0
[00010d2c] 2c40                      movea.l    d0,a6
[00010d2e] 204e                      movea.l    a6,a0
[00010d30] 7000                      moveq.l    #0,d0
[00010d32] 323c 08ff                 move.w     #0x0900-1,d1
[00010d36] 20c0                      move.l     d0,(a0)+
[00010d38] 20c0                      move.l     d0,(a0)+
[00010d3a] 20c0                      move.l     d0,(a0)+
[00010d3c] 20c0                      move.l     d0,(a0)+
[00010d3e] 51c9 fff6                 dbf        d1,$00010D36
[00010d42] 204e                      movea.l    a6,a0
[00010d44] d1fc 0000 8fd4            adda.l     #36820,a0
[00010d4a] 23ce 0001 0caa            move.l     a6,mem_end
[00010d50] 43fa ff60                 lea.l      x10cb2(pc),a1
[00010d54] 45ee 00d6                 lea.l      214(a6),a2
[00010d58] 7019                      moveq.l    #25,d0
[00010d5a] 34fc 4ef9                 move.w     #0x4EF9,(a2)+ /* jmp.l opcode */
[00010d5e] 24d9                      move.l     (a1)+,(a2)+
[00010d60] 51c8 fff8                 dbf        d0,$00010D5A
[00010d64] 3d7c 000d 021e            move.w     #13,542(a6)
[00010d6a] 102e 0264                 move.b     612(a6),d0
[00010d6e] 0000 002e                 ori.b      #'.',d0
[00010d72] 0880 0004                 bclr       #4,d0
[00010d76] 1d40 0264                 move.b     d0,612(a6)
[00010d7a] 303a f814                 move.w     x10590(pc),d0
[00010d7e] 6100 0160                 bsr        $00010EE0
[00010d82] 4fee 6500                 lea.l      25856(a6),a7
[00010d86] 2cbc 4e71 4ef9            move.l     #$4E714EF9,(a6)
[00010d8c] 2d4d 00cc                 move.l     a5,204(a6)
[00010d90] 91cd                      suba.l     a5,a0
[00010d92] 4850                      pea.l      (a0)
[00010d94] 4855                      pea.l      (a5)
[00010d96] 2d48 00d0                 move.l     a0,208(a6)
[00010d9a] 4267                      clr.w      -(a7)
[00010d9c] 3f3c 004a                 move.w     #$004A,-(a7) /* Mshrink */
[00010da0] 4e41                      trap       #1
[00010da2] 6100 5790                 bsr        $00016534
[00010da6] 4eb9 0001 1a44            jsr        x11a44
[00010dac] a000                      ALINE      #0
[00010dae] 2d49 00c8                 move.l     a1,200(a6)
[00010db2] 43ee 00c4                 lea.l      196(a6),a1
[00010db6] 22c8                      move.l     a0,(a1)+
[00010db8] 4eb9 0001 1ab0            jsr        $00011AB0
[00010dbe] 4878 ffff                 pea.l      ($FFFFFFFF).w
[00010dc2] 3f3c 0048                 move.w     #$0048,-(a7) /* Malloc */
[00010dc6] 4e41                      trap       #1
[00010dc8] 0480 0000 4000            subi.l     #$00004000,d0
[00010dce] 2d40 000c                 move.l     d0,12(a6)
[00010dd2] 2f00                      move.l     d0,-(a7)
[00010dd4] 3f3c 0048                 move.w     #$0048,-(a7) /* Malloc */
[00010dd8] 4e41                      trap       #1
[00010dda] 2d40 0008                 move.l     d0,8(a6)
[00010dde] 4fee 6500                 lea.l      25856(a6),a7
[00010de2] 33f9 0001 0ede 0001 185a  move.w     $00010EDE,x1185a
[00010dec] 4eb9 0001 185c            jsr        $0001185C
[00010df2] 4eb9 0001 607a            jsr        $0001607A
[00010df8] 206e 00cc                 movea.l    204(a6),a0
[00010dfc] 0c28 007f 0080            cmpi.b     #$7F,128(a0)
[00010e02] 6600 0086                 bne        $00010E8A
[00010e06] 2028 002c                 move.l     44(a0),d0
[00010e0a] 6700 007e                 beq.w      $00010E8A
[00010e0e] 2240                      movea.l    d0,a1
[00010e10] 1011                      move.b     (a1),d0
[00010e12] 6700 0076                 beq.w      $00010E8A
[00010e16] 6008                      bra.s      $00010E20
[00010e18] 4a19                      tst.b      (a1)+
[00010e1a] 66fc                      bne.s      $00010E18
[00010e1c] 4a11                      tst.b      (a1)
[00010e1e] 676a                      beq.s      $00010E8A
[00010e20] 0c11 0041                 cmpi.b     #'A',(a1)
[00010e24] 6600 fff2                 bne.w      $00010E18
[00010e28] 0c29 0052 0001            cmpi.b     #$52,1(a1)
[00010e2e] 6600 ffe8                 bne.w      $00010E18
[00010e32] 0c29 0047 0002            cmpi.b     #$47,2(a1)
[00010e38] 6600 ffde                 bne.w      $00010E18
[00010e3c] 0c29 0056 0003            cmpi.b     #$56,3(a1)
[00010e42] 6600 ffd4                 bne.w      $00010E18
[00010e46] 0c29 003d 0004            cmpi.b     #$3D,4(a1)
[00010e4c] 6600 ffca                 bne.w      $00010E18
[00010e50] 5a89                      addq.l     #5,a1
[00010e52] 2049                      movea.l    a1,a0
[00010e54] 1219                      move.b     (a1)+,d1
[00010e56] 66fc                      bne.s      $00010E54
[00010e58] 1211                      move.b     (a1),d1
[00010e5a] 66f6                      bne.s      $00010E52
[00010e5c] 2248                      movea.l    a0,a1
[00010e5e] 1010                      move.b     (a0),d0
[00010e60] b03c 0022                 cmp.b      #$22,d0
[00010e64] 6706                      beq.s      $00010E6C
[00010e66] b03c 0027                 cmp.b      #$27,d0
[00010e6a] 660e                      bne.s      $00010E7A
[00010e6c] 4a18                      tst.b      (a0)+
[00010e6e] 66fc                      bne.s      $00010E6C
[00010e70] 5388                      subq.l     #1,a0
[00010e72] b020                      cmp.b      -(a0),d0
[00010e74] 6604                      bne.s      $00010E7A
[00010e76] 4210                      clr.b      (a0)
[00010e78] 4219                      clr.b      (a1)+
[00010e7a] 206e 00cc                 movea.l    204(a6),a0
[00010e7e] 41e8 0080                 lea.l      128(a0),a0
[00010e82] 10fc 007f                 move.b     #$7F,(a0)+
[00010e86] 10d9                      move.b     (a1)+,(a0)+
[00010e88] 66fc                      bne.s      $00010E86
[00010e8a] 206e 00cc                 movea.l    204(a6),a0
[00010e8e] d0fc 0080                 adda.w     #$0080,a0
[00010e92] 7e00                      moveq.l    #0,d7
[00010e94] 1e10                      move.b     (a0),d7
[00010e96] 6f00 f2fc                 ble        $00010194
[00010e9a] 4230 7001                 clr.b      1(a0,d7.w)
[00010e9e] 0c30 000d 7000            cmpi.b     #13,0(a0,d7.w)
[00010ea4] 6604                      bne.s      $00010EAA
[00010ea6] 4230 7000                 clr.b      0(a0,d7.w)
[00010eaa] 4a18                      tst.b      (a0)+
[00010eac] 6700 f2e6                 beq        $00010194
[00010eb0] 7e00                      moveq.l    #0,d7
[00010eb2] 43ee 0452                 lea.l      1106(a6),a1
[00010eb6] 0c18 0020                 cmpi.b     #' ',(a0)+
[00010eba] 67fa                      beq.s      $00010EB6
[00010ebc] 0c20 002d                 cmpi.b     #$2D,-(a0)
[00010ec0] 57c7                      seq        d7
[00010ec2] 660a                      bne.s      $00010ECE
[00010ec4] 5288                      addq.l     #1,a0
[00010ec6] 0c18 0020                 cmpi.b     #' ',(a0)+
[00010eca] 67fa                      beq.s      $00010EC6
[00010ecc] 5388                      subq.l     #1,a0
[00010ece] 12d8                      move.b     (a0)+,(a1)+
[00010ed0] 66fc                      bne.s      $00010ECE
[00010ed2] 1f07                      move.b     d7,-(a7)
[00010ed4] 4eb9 0001 1838            jsr        $00011838
[00010eda] 6000 f128                 bra        $00010004
[00010ede] 0000 1d40                 ori.b      #$40,d0
[00010ee2] 20cf                      move.l     a7,(a0)+
[00010ee4] 7200                      moveq.l    #0,d1
[00010ee6] e248                      lsr.w      #1,d0
[00010ee8] 6402                      bcc.s      $00010EEC
[00010eea] 7220                      moveq.l    #32,d1
[00010eec] 1d41 20ce                 move.b     d1,8398(a6)
[00010ef0] 4e75                      rts

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
		bhi.s      ALLOT_45
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

[0001104c] 41ee 2614                 lea.l      9748(a6),a0
[00011050] 303c 03e8                 move.w     #1000,d0
[00011054] 72ff                      moveq.l    #-1,d1
[00011056] 5888                      addq.l     #4,a0
[00011058] 30c1                      move.w     d1,(a0)+
[0001105a] 51c8 fffa                 dbf        d0,$00011056
[0001105e] 4e75                      rts

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
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
GarColl_9:
		move.l     -(a0),-(a1)
		move.l     -(a0),-(a1)
GarColl_8:
		dbf        d0,GarColl_10
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
[0001111c] 206e 0050                 movea.l    80(a6),a0
[00011120] 0c68 01d4 0002            cmpi.w     #$01D4,2(a0)
[00011126] 6710                      beq.s      $00011138
[00011128] 0c68 00b4 0002            cmpi.w     #$00B4,2(a0)
[0001112e] d0d0                      adda.w     (a0),a0
[00011130] 66ee                      bne.s      $00011120
[00011132] 42ae 01ca                 clr.l      458(a6)
[00011136] 4e75                      rts
[00011138] 2d48 01ca                 move.l     a0,458(a6)
[0001113c] 3d7c 0004 01ce            move.w     #4,462(a6)
[00011142] 4e75                      rts

/* gfa: 00015784 */
[00011144] 3006                      move.w     d6,d0
[00011146] d040                      add.w      d0,d0
[00011148] d046                      add.w      d6,d0
[0001114a] d040                      add.w      d0,d0
[0001114c] 41ee 0ad4                 lea.l      2772(a6),a0
[00011150] d0c0                      adda.w     d0,a0
[00011152] 4a68 0004                 tst.w      4(a0)
[00011156] 6700 000a                 beq.w      $00011162
[0001115a] 2050                      movea.l    (a0),a0
[0001115c] 4c90 0007                 movem.w    (a0),d0-d2
[00011160] 4e75                      rts
		.IFNE FOR_LIB
		bra        ERROR
		.ELSE
[00011162] 4ed6                      jmp        (a6) /* ERROR */
		.ENDC

/* gfa: 000157be */
[00011164] 43ee 0452                 lea.l      1106(a6),a1
[00011168] 1280                      move.b     d0,(a1)
[0001116a] 7001                      moveq.l    #1,d0
[0001116c] 4851                      pea.l      (a1)
[0001116e] 2f00                      move.l     d0,-(a7)
[00011170] 4879 0040 0001            pea.l      $00400001
[00011176] 4e41                      trap       #1
[00011178] defc 000c                 adda.w     #$000C,a7
[0001117c] 4e75                      rts
[0001117e] 43ee 0452                 lea.l      1106(a6),a1
[00011182] 7001                      moveq.l    #1,d0
[00011184] 6106                      bsr.s      $0001118C
[00011186] 102e 0452                 move.b     1106(a6),d0
[0001118a] 4e75                      rts
[0001118c] 4851                      pea.l      (a1)
[0001118e] 2f00                      move.l     d0,-(a7)
[00011190] 4879 003f 0000            pea.l      $003F0000
[00011196] 4e41                      trap       #1
[00011198] defc 000c                 adda.w     #$000C,a7
[0001119c] 4e75                      rts
[0001119e] 2600                      move.l     d0,d3
[000111a0] 6732                      beq.s      $000111D4
[000111a2] bc7c 0001                 cmp.w      #1,d6
[000111a6] 67c4                      beq.s      $0001116C
[000111a8] 619a                      bsr.s      $00011144
[000111aa] 0802 0001                 btst       #1,d2
[000111ae] 6700 0066                 beq.w      $00011216
[000111b2] 4a41                      tst.w      d1
[000111b4] 6704                      beq.s      $000111BA
[000111b6] 6100 0096                 bsr        $0001124E
[000111ba] 08e8 0007 0004            bset       #7,4(a0)
[000111c0] 323c 1000                 move.w     #$1000,d1
[000111c4] 1199 000a                 move.b     (a1)+,10(a0,d0.w)
[000111c8] 5240                      addq.w     #1,d0
[000111ca] b041                      cmp.w      d1,d0
[000111cc] 6408                      bcc.s      $000111D6
[000111ce] 5383                      subq.l     #1,d3
[000111d0] 66f2                      bne.s      $000111C4
[000111d2] 3080                      move.w     d0,(a0)
[000111d4] 4e75                      rts
[000111d6] 3080                      move.w     d0,(a0)
[000111d8] 6100 00ca                 bsr        $000112A4
[000111dc] 7000                      moveq.l    #0,d0
[000111de] b67c 1000                 cmp.w      #$1000,d3
[000111e2] 65ea                      bcs.s      $000111CE
[000111e4] 6000 0142                 bra        $00011328

/* gfa: 00015872 */
x111e8:
[000111e8] bc7c 0001                 cmp.w      #1,d6
[000111ec] 6700 ff90                 beq.w      $0001117E
[000111f0] 6100 ff52                 bsr        $00011144
[000111f4] 0802 0000                 btst       #0,d2
[000111f8] 671c                      beq.s      $00011216
[000111fa] 4a42                      tst.w      d2
[000111fc] 6a04                      bpl.s      $00011202
[000111fe] 6100 00a4                 bsr        $000112A4
[00011202] b041                      cmp.w      d1,d0
[00011204] 6504                      bcs.s      $0001120A
[00011206] 6100 00d8                 bsr        $000112E0
[0001120a] 5250                      addq.w     #1,(a0)
[0001120c] 1230 000a                 move.b     10(a0,d0.w),d1
[00011210] 7000                      moveq.l    #0,d0
[00011212] 1001                      move.b     d1,d0
[00011214] 4e75                      rts
[00011216] 70dc                      moveq.l    #-36,d0
		.IFNE FOR_LIB
		bra        ERROR
		.ELSE
[00011218] 4ed6                      jmp        (a6) /* ERROR */
		.ENDC
[0001121a] bc7c 0001                 cmp.w      #1,d6
[0001121e] 6700 ff44                 beq        $00011164
[00011222] 3600                      move.w     d0,d3
[00011224] 6100 ff1e                 bsr        $00011144
[00011228] 0802 0001                 btst       #1,d2
[0001122c] 67e8                      beq.s      $00011216
[0001122e] 4a41                      tst.w      d1
[00011230] 6704                      beq.s      $00011236
[00011232] 6100 001a                 bsr.w      $0001124E
[00011236] 0c40 1000                 cmpi.w     #$1000,d0
[0001123a] 6504                      bcs.s      $00011240
[0001123c] 6100 0066                 bsr.w      $000112A4
[00011240] 5250                      addq.w     #1,(a0)
[00011242] 1183 000a                 move.b     d3,10(a0,d0.w)
[00011246] 08e8 0007 0004            bset       #7,4(a0)
[0001124c] 4e75                      rts
[0001124e] 48e7 00c0                 movem.l    a0-a1,-(a7)
[00011252] 9081                      sub.l      d1,d0
[00011254] d1a8 0006                 add.l      d0,6(a0)
[00011258] 4290                      clr.l      (a0)
[0001125a] 3f3c 0001                 move.w     #1,-(a7)
[0001125e] 3f06                      move.w     d6,-(a7)
[00011260] 2f00                      move.l     d0,-(a7)
[00011262] 3f3c 0042                 move.w     #$0042,-(a7) /* Fseek */
[00011266] 4e41                      trap       #1
[00011268] 4fef 000a                 lea.l      10(a7),a7
[0001126c] 4a80                      tst.l      d0
[0001126e] 6b00 ef46                 bmi        $000101B6
[00011272] 4cdf 0300                 movem.l    (a7)+,a0-a1
[00011276] 4c90 0007                 movem.w    (a0),d0-d2
[0001127a] 4e75                      rts
[0001127c] 6100 fec6                 bsr        $00011144
[00011280] 4a42                      tst.w      d2
[00011282] 6a04                      bpl.s      $00011288
[00011284] 6100 001e                 bsr.w      $000112A4
[00011288] 217c ffff eff6 100a       move.l     #$FFFFEFF6,4106(a0)
[00011290] 3f06                      move.w     d6,-(a7)
[00011292] 3f3c 003e                 move.w     #$003E,-(a7) /* Fclose */
[00011296] 4e41                      trap       #1
[00011298] 584f                      addq.w     #4,a7
[0001129a] 4a80                      tst.l      d0
[0001129c] 6b04                      bmi.s      $000112A2
[0001129e] 7000                      moveq.l    #0,d0
[000112a0] 4e75                      rts
		.IFNE FOR_LIB
		bra        ERROR
		.ELSE
[000112a2] 4ed6                      jmp        (a6) /* ERROR */
		.ENDC
/* gfa: 00015986 */
[000112a4] 4c90 0007                 movem.w    (a0),d0-d2
[000112a8] 4a80                      tst.l      d0
[000112aa] 672a                      beq.s      $000112D6
[000112ac] 48e7 00c0                 movem.l    a0-a1,-(a7)
[000112b0] 4298                      clr.l      (a0)+
[000112b2] 0890 0007                 bclr       #7,(a0)
[000112b6] 4868 0006                 pea.l      6(a0)
[000112ba] 2f00                      move.l     d0,-(a7)
[000112bc] 3f06                      move.w     d6,-(a7)
[000112be] 3f3c 0040                 move.w     #$0040,-(a7) /* Fwrite */
[000112c2] 4e41                      trap       #1
[000112c4] 588f                      addq.l     #4,a7
[000112c6] 4cdf 0306                 movem.l    (a7)+,d1-d2/a0-a1
[000112ca] b280                      cmp.l      d0,d1
[000112cc] 660a                      bne.s      $000112D8
[000112ce] d1a8 0006                 add.l      d0,6(a0)
[000112d2] 4c90 0007                 movem.w    (a0),d0-d2
[000112d6] 4e75                      rts
[000112d8] 4a80                      tst.l      d0
[000112da] 6b02                      bmi.s      $000112DE
[000112dc] 7025                      moveq.l    #37,d0
		.IFNE FOR_LIB
		bra        ERROR
		.ELSE
[000112de] 4ed6                      jmp        (a6) /* ERROR */
		.ENDC

/* gfa: 000159c2 */
[000112e0] 48e7 00c0                 movem.l    a0-a1,-(a7)
[000112e4] 4290                      clr.l      (a0)
[000112e6] 4868 000a                 pea.l      10(a0)
[000112ea] 4878 1000                 pea.l      (4096).w
[000112ee] 3f06                      move.w     d6,-(a7)
[000112f0] 3f3c 003f                 move.w     #63,-(a7) /* Fread */
[000112f4] 4e41                      trap       #1
[000112f6] 4fef 000c                 lea.l      12(a7),a7
[000112fa] 4cdf 0300                 movem.l    (a7)+,a0-a1
[000112fe] 4a80                      tst.l      d0
[00011300] 6f0c                      ble.s      $0001130E
[00011302] 2080                      move.l     d0,(a0)
[00011304] d1a8 0006                 add.l      d0,6(a0)
[00011308] 4c90 0007                 movem.w    (a0),d0-d2
[0001130c] 4e75                      rts
[0001130e] 6b16                      bmi.s      $00011326
[00011310] 323a 0010                 move.w     x11322(pc),d1
[00011314] 6700 000e                 beq.w      x11324
[00011318] 4a01                      tst.b      d1
[0001131a] 6700 ee72                 beq        $0001018E
[0001131e] 7200                      moveq.l    #0,d1
[00011320] 4e75                      rts

x11322: .dc.w 0

/* gfa: 00015a06 */
x11324:
[00011324] 701a                      moveq.l    #0,d0
		.IFNE FOR_LIB
		bra        ERROR
		.ELSE
[00011326] 4ed6                      jmp        (a6) /* ERROR */
		.ENDC

/* gfa: 00015a2e */
[00011328] 4290                      clr.l      (a0)
[0001132a] 4850                      pea.l      (a0)
[0001132c] 4851                      pea.l      (a1)
[0001132e] 5383                      subq.l     #1,d3
[00011330] 2f03                      move.l     d3,-(a7)
[00011332] 3f06                      move.w     d6,-(a7)
[00011334] 3f3c 0040                 move.w     #64,-(a7) /* Fwrite */
[00011338] 4e41                      trap       #1
[0001133a] 588f                      addq.l     #4,a7
[0001133c] 4cdf 0106                 movem.l    (a7)+,d1-d2/a0
[00011340] b280                      cmp.l      d0,d1
[00011342] 6600 ff94                 bne.w      $000112D8
[00011346] d1a8 0006                 add.l      d0,6(a0)
[0001134a] 4e75                      rts

/* gfa: 00015db2 */
[0001134c] d12e 01c2                 add.b      d0,450(a6)
[00011350] 3c2e 20f2                 move.w     8434(a6),d6
[00011354] 41ee 07c6                 lea.l      1990(a6),a0
[00011358] d0c6                      adda.w     d6,a0
[0001135a] 1e10                      move.b     (a0),d7
[0001135c] 2449                      movea.l    a1,a2
[0001135e] 2200                      move.l     d0,d1
[00011360] 740d                      moveq.l    #13,d2
[00011362] 51c9 000a                 dbf        d1,$0001136E
[00011366] 0481 0001 0000            subi.l     #$00010000,d1
[0001136c] 6b22                      bmi.s      $00011390
[0001136e] 5247                      addq.w     #1,d7
[00011370] b41a                      cmp.b      (a2)+,d2
[00011372] 65ee                      bcs.s      $00011362
[00011374] 6604                      bne.s      $0001137A
[00011376] 7e00                      moveq.l    #0,d7
[00011378] 60e8                      bra.s      $00011362
[0001137a] 5347                      subq.w     #1,d7
[0001137c] 0c2a 000a ffff            cmpi.b     #10,-1(a2)
[00011382] 67de                      beq.s      $00011362
[00011384] 0c2a 0008 ffff            cmpi.b     #$08,-1(a2)
[0001138a] 66d6                      bne.s      $00011362
[0001138c] 5347                      subq.w     #1,d7
[0001138e] 60d2                      bra.s      $00011362
[00011390] 1087                      move.b     d7,(a0)
[00011392] 3c2e 20f2                 move.w     8434(a6),d6
[00011396] 6a44                      bpl.s      $000113DC
[00011398] 5c46                      addq.w     #6,d6
[0001139a] 6b2c                      bmi.s      $000113C8
[0001139c] 4853                      pea.l      (a3)
[0001139e] 2649                      movea.l    a1,a3
[000113a0] 2e00                      move.l     d0,d7
[000113a2] 51cf 0004                 dbf        d7,$000113A8
[000113a6] 6014                      bra.s      $000113BC
[000113a8] 7000                      moveq.l    #0,d0
[000113aa] 101b                      move.b     (a3)+,d0
[000113ac] 3f00                      move.w     d0,-(a7)
[000113ae] 3f06                      move.w     d6,-(a7)
[000113b0] 3f3c 0003                 move.w     #3,-(a7) /* Bconout */
[000113b4] 4e4d                      trap       #13
[000113b6] 5c8f                      addq.l     #6,a7
[000113b8] 51cf ffee                 dbf        d7,$000113A8
[000113bc] 0487 0001 0000            subi.l     #$00010000,d7
[000113c2] 6ae4                      bpl.s      $000113A8
[000113c4] 265f                      movea.l    (a7)+,a3
[000113c6] 4e75                      rts
[000113c8] 4851                      pea.l      (a1)
[000113ca] 2f00                      move.l     d0,-(a7)
[000113cc] 3f3c fffd                 move.w     #$FFFD,-(a7)
[000113d0] 3f3c 0040                 move.w     #$0040,-(a7) /* Fwrite */
[000113d4] 4e41                      trap       #1
[000113d6] 4fef 000c                 lea.l      12(a7),a7
[000113da] 4e75                      rts
[000113dc] 6000 fdc0                 bra        $0001119E

/* gfa: 00015f8c */
[000113e0] 3d40 20f2                 move.w     d0,8434(a6)
[000113e4] 7e00                      moveq.l    #0,d7
[000113e6] 4a40                      tst.w      d0
[000113e8] 6b24                      bmi.s      $0001140E
[000113ea] 43ee 090a                 lea.l      2314(a6),a1
[000113ee] b1c9                      cmpa.l     a1,a0
[000113f0] 651e                      bcs.s      $00011410
[000113f2] c0fc 0006                 mulu.w     #6,d0
[000113f6] 41ee 0ad4                 lea.l      2772(a6),a0
[000113fa] d0c0                      adda.w     d0,a0
[000113fc] 303c 100a                 move.w     #$100A,d0
[00011400] 4268 0004                 clr.w      4(a0)
[00011404] 6100 fc5a                 bsr        Screat
[00011408] 4299                      clr.l      (a1)+
[0001140a] 32c5                      move.w     d5,(a1)+
[0001140c] 22c7                      move.l     d7,(a1)+
[0001140e] 4e75                      rts
[00011410] c0fc 0006                 mulu.w     #6,d0
[00011414] 41ee 0ad4                 lea.l      2772(a6),a0
[00011418] d0c0                      adda.w     d0,a0
[0001141a] 43ee 4d90                 lea.l      19856(a6),a1
[0001141e] 20c9                      move.l     a1,(a0)+
[00011420] 30fc 100a                 move.w     #$100A,(a0)+
[00011424] 4299                      clr.l      (a1)+
[00011426] 32c5                      move.w     d5,(a1)+
[00011428] 22c7                      move.l     d7,(a1)+
[0001142a] 4e75                      rts

/* gfa: 0001601e */
[0001142c] 7a02                      moveq.l    #2,d5
[0001142e] 703c                      moveq.l    #60,d0 /* Fcreate */
[00011430] 4267                      clr.w      -(a7)
[00011432] 4851                      pea.l      (a1)
[00011434] 3f00                      move.w     d0,-(a7)
	.IFNE STRANGE_CHECK
[00011436] 41fa 332c                 lea.l      $00014764(pc),a0
[0001143a] 41e8 2004                 lea.l      8196(a0),a0 /* a0 = 00016768 */
[0001143e] 203c 8159 d5ac            move.l     #0x8159D5AC,d0
[00011444] e498                      ror.l      #2,d0 /* d0 = 2056756B *
[00011446] b098                      cmp.l      (a0)+,d0
[00011448] 6600 ecd2                 bne        $0001011C
[0001144c] 203c 8098 810c            move.l     #0x8098810C,d0
[00011452] e498                      ror.l      #2,d0 /* d0 = 20262043 */
[00011454] b098                      cmp.l      (a0)+,d0
[00011456] 6600 ecc4                 bne        $0001011C
[0001145a] 203c 3797 5f90            move.l     #0x37975F90,d0
[00011460] e398                      rol.l      #1,d0 /* d0 = 1BCBAFC8 */
[00011462] b098                      cmp.l      (a0)+,d0
[00011464] 6600 ecb6                 bne        $0001011C
[00011468] 303c 2000                 move.w     #0x2000,d0
[0001146c] b050                      cmp.w      (a0),d0
[0001146e] 6600 ecac                 bne        $0001011C
	.ENDC
[00011472] 4e41                      trap       #1
[00011474] 508f                      addq.l     #8,a7
[00011476] 4a40                      tst.w      d0
[00011478] 6b00 ed36                 bmi        $000101B0
[0001147c] 6000 ff62                 bra        $000113E0

/* gfa: 000167d4 */
x11480:
[00011480] 703d                      moveq.l    #61,d0 /* Fcreate */
[00011482] 6100 00d6                 bsr        gemdos_func
[00011486] 6b00 ffa4                 bmi.w      $0001142C
[0001148a] 4851                      pea.l      (a1)
[0001148c] 3f00                      move.w     d0,-(a7)
[0001148e] 3f3c 003e                 move.w     #62,-(a7) /* Fclose */
[00011492] 4e41                      trap       #1
[00011494] 588f                      addq.l     #4,a7  /* leave filename on stack */
[00011496] 41fa 51f8                 lea.l      file_msg(pc),a0
[0001149a] 6100 edb2                 bsr        printstr
[0001149e] 2057                      movea.l    (a7),a0
[000114a0] 6100 edac                 bsr        printstr
[000114a4] 41fa 51f0                 lea.l      already_exists_msg(pc),a0
[000114a8] 6100 eda4                 bsr        printstr
[000114ac] 2257                      movea.l    (a7),a1
[000114ae] 41ee 0352                 lea.l      850(a6),a0
[000114b2] 10d9                      move.b     (a1)+,(a0)+
[000114b4] 66fc                      bne.s      $000114B2
[000114b6] 5388                      subq.l     #1,a0
[000114b8] 7003                      moveq.l    #3,d0
[000114ba] 1220                      move.b     -(a0),d1
[000114bc] 6710                      beq.s      $000114CE
[000114be] b23c 005c                 cmp.b      #'\\',d1
[000114c2] 670a                      beq.s      $000114CE
[000114c4] b23c 002e                 cmp.b      #'.',d1
[000114c8] 57c8 fff0                 dbeq       d0,$000114BA
[000114cc] 6706                      beq.s      $000114D4
[000114ce] 4a18                      tst.b      (a0)+
[000114d0] 66fc                      bne.s      $000114CE
[000114d2] 5388                      subq.l     #1,a0
[000114d4] 10fc 002e                 move.b     #'.',(a0)+
[000114d8] 303a efa0                 move.w     lowercase_filenames(pc),d0
[000114dc] 660e                      bne.s      $000114EC
[000114de] 10fc 0042                 move.b     #'B',(a0)+
[000114e2] 10fc 0041                 move.b     #'A',(a0)+
[000114e6] 10fc 004b                 move.b     #'K',(a0)+
[000114ea] 600c                      bra.s      $000114F8
[000114ec] 10fc 0062                 move.b     #'b',(a0)+
[000114f0] 10fc 0061                 move.b     #'a',(a0)+
[000114f4] 10fc 006b                 move.b     #'k',(a0)+
[000114f8] 4210                      clr.b      (a0)
[000114fa] 486e 0352                 pea.l      850(a6)
[000114fe] 3f3c 0041                 move.w     #$0041,-(a7) /* Fdelete */
[00011502] 4e41                      trap       #1
[00011504] 548f                      addq.l     #2,a7
[00011506] 4a80                      tst.l      d0
[00011508] 6b14                      bmi.s      $0001151E
[0001150a] 41fa 519d                 lea.l      deleted_file_msg(pc),a0
[0001150e] 6100 ed3e                 bsr        printstr
[00011512] 41ee 0352                 lea.l      850(a6),a0
[00011516] 6100 ed36                 bsr        printstr
[0001151a] 6100 ed2e                 bsr        printnl
[0001151e] 2f2f 0004                 move.l     4(a7),-(a7)
[00011522] 4267                      clr.w      -(a7)
[00011524] 3f3c 0056                 move.w     #$0056,-(a7) /* Frename */
[00011528] 4e41                      trap       #1
[0001152a] 4fef 000c                 lea.l      12(a7),a7
[0001152e] 4a80                      tst.l      d0
[00011530] 6b22                      bmi.s      $00011554
[00011532] 41fa 5183                 lea.l      renamed_file_msg(pc),a0
[00011536] 6100 ed16                 bsr        printstr
[0001153a] 2057                      movea.l    (a7),a0
[0001153c] 6100 ed10                 bsr        printstr
[00011540] 41fa 5183                 lea.l      to_msg(pc),a0
[00011544] 6100 ed08                 bsr        printstr
[00011548] 41ee 0352                 lea.l      850(a6),a0
[0001154c] 6100 ed00                 bsr        printstr
[00011550] 6100 ecf8                 bsr        printnl
[00011554] 225f                      movea.l    (a7)+,a1
[00011556] 6000 fed4                 bra        $0001142C

/* gfa: 00016844 */
gemdos_func:
[0001155a] 4267                      clr.w      -(a7)
[0001155c] 4851                      pea.l      (a1)
[0001155e] 3f00                      move.w     d0,-(a7)
[00011560] 4e41                      trap       #1
[00011562] 226f 0002                 movea.l    2(a7),a1
[00011566] 508f                      addq.l     #8,a7
[00011568] 4a40                      tst.w      d0
[0001156a] 4e75                      rts

x1156c:
	.dc.w 4
	.ascii "GFA-BASIC3"

/* gfa: 00018cc6 */
[00011578] 6100                      bsr        x117bc
[0001157c] 6100                      bsr        x11480
[00011580] 43fa ffea                 lea.l      $0001156C(pc),a1
[00011584] 700c                      moveq.l    #12,d0
[00011586] 6100 fdc4                 bsr        $0001134C
[0001158a] 41ee 0010                 lea.l      16(a6),a0
[0001158e] 43ee 00a8                 lea.l      168(a6),a1
[00011592] 45ee 0452                 lea.l      1106(a6),a2
[00011596] 2010                      move.l     (a0),d0
[00011598] 4a39 0001 156c            tst.b      $0001156C
[0001159e] 6a04                      bpl.s      $000115A4
[000115a0] 2028 0040                 move.l     64(a0),d0
[000115a4] 2218                      move.l     (a0)+,d1
[000115a6] 9280                      sub.l      d0,d1
[000115a8] 6a02                      bpl.s      $000115AC
[000115aa] 7200                      moveq.l    #0,d1
[000115ac] 24c1                      move.l     d1,(a2)+
[000115ae] b3c8                      cmpa.l     a0,a1
[000115b0] 66f2                      bne.s      $000115A4
[000115b2] 43ee 0452                 lea.l      1106(a6),a1
[000115b6] 203c 0000 0098            move.l     #$00000098,d0
[000115bc] 6100 fd8e                 bsr        $0001134C
[000115c0] 226e 0010                 movea.l    16(a6),a1
[000115c4] 4a39 0001 156c            tst.b      $0001156C
[000115ca] 670a                      beq.s      $000115D6
[000115cc] 4239 0001 156c            clr.b      $0001156C
[000115d2] 226e 0050                 movea.l    80(a6),a1
[000115d6] 202e 005c                 move.l     92(a6),d0
[000115da] 9089                      sub.l      a1,d0
[000115dc] 6100 fd6e                 bsr        $0001134C
[000115e0] 4279 0001 1ae6            clr.w      x11ae6
[000115e6] 4279 0001 1322            clr.w      x11322
[000115ec] 302e 20f2                 move.w     8434(a6),d0
[000115f0] 41ee 090a                 lea.l      2314(a6),a0
[000115f4] b020                      cmp.b      -(a0),d0
[000115f6] 6602                      bne.s      $000115FA
[000115f8] 4210                      clr.b      (a0)
[000115fa] b020                      cmp.b      -(a0),d0
[000115fc] 6602                      bne.s      $00011600
[000115fe] 4210                      clr.b      (a0)
[00011600] b07c 0006                 cmp.w      #6,d0
[00011604] 6d06                      blt.s      $0001160C
[00011606] 3c00                      move.w     d0,d6
[00011608] 6000 fc72                 bra        $0001127C
[0001160c] 4e75                      rts

/* gfa: 0001915e */
[0001160e] 6100 01a4                 bsr        $000117B4
[00011612] 6100 ebdc                 bsr        $000101F0
[00011616] 3d40 20f2                 move.w     d0,8434(a6)
[0001161a] 43ee 0352                 lea.l      850(a6),a1
[0001161e] 6100 01fc                 bsr        $0001181C
[00011622] 102e 0352                 move.b     850(a6),d0
[00011626] b03c 000d                 cmp.b      #CR,d0
[0001162a] 67ee                      beq.s      $0001161A
[0001162c] b03c 000a                 cmp.b      #NL,d0
[00011630] 67e8                      beq.s      $0001161A
[00011632] b03c 0020                 cmp.b      #' ',d0
[00011636] 6500 eb68                 bcs        $000101A0
[0001163a] 6100 02a6                 bsr        $000118E2
[0001163e] 47ee 0352                 lea.l      850(a6),a3
[00011642] 600a                      bra.s      $0001164E
[00011644] 47ee 0352                 lea.l      850(a6),a3
[00011648] 224b                      movea.l    a3,a1
[0001164a] 6100 01d0                 bsr        $0001181C
[0001164e] 0c13 000a                 cmpi.b     #10,(a3)
[00011652] 67f4                      beq.s      $00011648
[00011654] 0c13 0004                 cmpi.b     #4,(a3)
[00011658] 6604                      bne.s      $0001165E
[0001165a] 6000 ff8a                 bra.w      $000115E6
[0001165e] 0c13 0020                 cmpi.b     #' ',(a3)
[00011662] 6608                      bne.s      $0001166C
[00011664] 45ee 0352                 lea.l      850(a6),a2
[00011668] b7ca                      cmpa.l     a2,a3
[0001166a] 67dc                      beq.s      $00011648
[0001166c] 45ee 0451                 lea.l      1105(a6),a2
[00011670] b7ca                      cmpa.l     a2,a3
[00011672] 6200 eb26                 bhi        $0001019A
[00011676] 0c13 000a                 cmpi.b     #10,(a3)
[0001167a] 6602                      bne.s      $0001167E
[0001167c] 5613                      addq.b     #3,(a3)
[0001167e] 0c1b 000d                 cmpi.b     #13,(a3)+
[00011682] 66c4                      bne.s      $00011648
[00011684] 41ee 0352                 lea.l      850(a6),a0
[00011688] 7220                      moveq.l    #32,d1
[0001168a] 700d                      moveq.l    #13,d0
[0001168c] b218                      cmp.b      (a0)+,d1
[0001168e] 67fc                      beq.s      $0001168C
[00011690] b020                      cmp.b      -(a0),d0
[00011692] 67b0                      beq.s      $00011644
[00011694] b018                      cmp.b      (a0)+,d0
[00011696] 66fc                      bne.s      $00011694
[00011698] 5388                      subq.l     #1,a0
[0001169a] b220                      cmp.b      -(a0),d1
[0001169c] 67fc                      beq.s      $0001169A
[0001169e] 1140 0001                 move.b     d0,1(a0)
[000116a2] 52b9 0001 0302            addq.l     #1,x10302
[000116a8] 0c2e 003e 0352            cmpi.b     #'>',850(a6)
[000116ae] 662c                      bne.s      $000116DC
[000116b0] 1d7c 0020 0352            move.b     #' ',850(a6)
[000116b6] 4eb9 0001 37d2            jsr        $000137D2
[000116bc] 0c6e 0028 0554            cmpi.w     #$0028,1364(a6)
[000116c2] 6608                      bne.s      $000116CC
[000116c4] 3d7c 0704 0554            move.w     #$0704,1364(a6)
[000116ca] 6016                      bra.s      $000116E2
[000116cc] 0c6e 0018 0554            cmpi.w     #$0018,1364(a6)
[000116d2] 660e                      bne.s      $000116E2
[000116d4] 3d7c 00d8 0554            move.w     #$00D8,1364(a6)
[000116da] 6006                      bra.s      $000116E2
[000116dc] 4eb9 0001 37d2            jsr        $000137D2
[000116e2] 2209                      move.l     a1,d1
[000116e4] 6702                      beq.s      $000116E8
[000116e6] 6a52                      bpl.s      $0001173A
[000116e8] 41fa ec1c                 lea.l      $00010306(pc),a0
[000116ec] 2210                      move.l     (a0),d1
[000116ee] b2bc 0000 1fff            cmp.l      #8192-1,d1
[000116f4] 6e1a                      bgt.s      $00011710
[000116f6] e549                      lsl.w      #2,d1
[000116f8] 43fa 5088                 lea.l      x16782(pc),a1
[000116fc] 4a91                      tst.l      (a1)
[000116fe] 6710                      beq.s      $00011710
[00011700] 2251                      movea.l    (a1),a1
[00011702] 4ab1 1000                 tst.l      0(a1,d1.w)
[00011706] 6608                      bne.s      $00011710
[00011708] 203a ebf8                 move.l     x10302(pc),d0
[0001170c] 2380 1000                 move.l     d0,0(a1,d1.w)
[00011710] 5290                      addq.l     #1,(a0)
[00011712] 43ee 0552                 lea.l      1362(a6),a1
[00011716] 22fc 0000 01d0            move.l     #$000001D0,(a1)+
[0001171c] 41ee 0352                 lea.l      850(a6),a0
[00011720] 12d0                      move.b     (a0),(a1)+
[00011722] 0c18 000d                 cmpi.b     #13,(a0)+
[00011726] 66f8                      bne.s      $00011720
[00011728] 2009                      move.l     a1,d0
[0001172a] 908e                      sub.l      a6,d0
[0001172c] 0440 0552                 subi.w     #$0552,d0
[00011730] 5240                      addq.w     #1,d0
[00011732] 0880 0000                 bclr       #0,d0
[00011736] 3d40 0552                 move.w     d0,1362(a6)
[0001173a] 7000                      moveq.l    #0,d0
[0001173c] 41ee 0058                 lea.l      88(a6),a0
[00011740] 43ee 0552                 lea.l      1362(a6),a1
[00011744] 3019                      move.w     (a1)+,d0
[00011746] 0c59 0684                 cmpi.w     #$0684,(a1)+
[0001174a] 6646                      bne.s      $00011792
[0001174c] 0c19 00f0                 cmpi.b     #$F0,(a1)+
[00011750] 6502                      bcs.s      $00011754
[00011752] 5489                      addq.l     #2,a1
[00011754] 5689                      addq.l     #3,a1
[00011756] 2219                      move.l     (a1)+,d1
[00011758] 45fa 501e                 lea.l      x16778(pc),a2
[0001175c] 2481                      move.l     d1,(a2)
[0001175e] d280                      add.l      d0,d1
[00011760] 5281                      addq.l     #1,d1
[00011762] 0241 fffe                 andi.w     #$FFFE,d1
[00011766] b2bc 0000 7ff8            cmp.l      #$00007FF8,d1
[0001176c] 6200 ff7a                 bhi        $000116E8
[00011770] 3d41 0552                 move.w     d1,1362(a6)
[00011774] 2f00                      move.l     d0,-(a7)
[00011776] 2001                      move.l     d1,d0
[00011778] 6100 f778                 bsr        ALLOT
[0001177c] 2248                      movea.l    a0,a1
[0001177e] e248                      lsr.w      #1,d0
[00011780] 6002                      bra.s      $00011784
[00011782] 4258                      clr.w      (a0)+
[00011784] 51c8 fffc                 dbf        d0,$00011782
[00011788] 6100 eb80                 bsr        $0001030A
[0001178c] 2049                      movea.l    a1,a0
[0001178e] 201f                      move.l     (a7)+,d0
[00011790] 6004                      bra.s      $00011796
[00011792] 6100 f75e                 bsr        ALLOT
[00011796] 50f9 0001 1ae6            st         x11ae6
[0001179c] 52b9 0001 1af6            addq.l     #1,$00011AF6
[000117a2] 43ee 0552                 lea.l      1362(a6),a1
[000117a6] e248                      lsr.w      #1,d0
[000117a8] 5340                      subq.w     #1,d0
[000117aa] 30d9                      move.w     (a1)+,(a0)+
[000117ac] 51c8 fffc                 dbf        d0,$000117AA
[000117b0] 6000 fe92                 bra        $00011644
[000117b4] 203c 2e4c 5354            move.l     #0x2E4C5354,d0 /* '.LST' */
[000117ba] 6006                      bra.s      $000117C2

/* gfa: 0001939c */
x117bc:
[000117bc] 203c 2e47 4641            move.l     #0x2E474641,d0 /* '.GFA' */
[000117c2] 41ee 0451                 lea.l      1105(a6),a0
[000117c6] 4218                      clr.b      (a0)+
[000117c8] 4a18                      tst.b      (a0)+
[000117ca] 66fc                      bne.s      $000117C8
[000117cc] 5388                      subq.l     #1,a0
[000117ce] 2248                      movea.l    a0,a1
[000117d0] 0c20 002e                 cmpi.b     #'.',-(a0)
[000117d4] 673c                      beq.s      $00011812
[000117d6] 4a10                      tst.b      (a0)
[000117d8] 670c                      beq.s      $000117E6
[000117da] 0c10 003a                 cmpi.b     #':',(a0)
[000117de] 6706                      beq.s      $000117E6
[000117e0] 0c10 005c                 cmpi.b     #'\\',(a0)
[000117e4] 66ea                      bne.s      $000117D0
[000117e6] 1218                      move.b     (a0)+,d1
[000117e8] 6714                      beq.s      $000117FE
[000117ea] b23c 0061                 cmp.b      #'a',d1
[000117ee] 6df6                      blt.s      $000117E6
[000117f0] b23c 007a                 cmp.b      #'z',d1
[000117f4] 6ef0                      bgt.s      $000117E6
[000117f6] 0a80 0020 2020            eori.l     #$00202020,d0
[000117fc] 6008                      bra.s      $00011806
[000117fe] 4a79 0001 047a            tst.w      lowercase_filenames
[00011804] 66f0                      bne.s      $000117F6
[00011806] 7203                      moveq.l    #3,d1
[00011808] e198                      rol.l      #8,d0
[0001180a] 12c0                      move.b     d0,(a1)+
[0001180c] 51c9 fffa                 dbf        d1,$00011808
[00011810] 4211                      clr.b      (a1)
[00011812] 2049                      movea.l    a1,a0
[00011814] 43ee 0452                 lea.l      1106(a6),a1
[00011818] 4e75                      rts

x1181a:
	.dc.w 0

/* gfa: 0001998a */
[0001181c] 3c2e                      move.w     8434(a6),d6
[00011820] 6100                      bsr        x111e8
[00011824] 1280                      move.b     d0,(a1)
[00011826] 4a68 0002                 tst.w      2(a0)
[0001182a] 6702                      beq.s      $0001182E
[0001182c] 4e75                      rts
[0001182e] 588f                      addq.l     #4,a7
[00011830] 6000 fdb4                 bra        $000115E6

x11834: .dc.l 0

[00011838] 41ee                      lea.l      614(a6),a0
[0001183c] 4298                      clr.l      (a0)+
[0001183e] 4298                      clr.l      (a0)+
[00011840] 4298                      clr.l      (a0)+
[00011842] 4298                      clr.l      (a0)+
[00011844] 4298                      clr.l      (a0)+
[00011846] 42ae 028e                 clr.l      654(a6)
[0001184a] 422e 0263                 clr.b      611(a6)
[0001184e] 33f9 0001 185a 0001 0ede  move.w     x1185a,$00010EDE
[00011858] 4e75                      rts

x1185a: .dc.w 0

/* gfa: 0001a424 */
x1185c:
[0001185c]                           clr.w      x11ae6
[00011862] 4cae 0003 21fa            movem.w    8698(a6),d0-d1
[00011868] 5240                      addq.w     #1,d0
[0001186a] 5241                      addq.w     #1,d1
[0001186c] 342e 2214                 move.w     8724(a6),d2
[00011870] c0c1                      mulu.w     d1,d0
[00011872] e44a                      lsr.w      #2,d2
[00011874] 670e                      beq.s      $00011884
[00011876] d080                      add.l      d0,d0
[00011878] e24a                      lsr.w      #1,d2
[0001187a] 6708                      beq.s      $00011884
[0001187c] d080                      add.l      d0,d0
[0001187e] e44a                      lsr.w      #2,d2
[00011880] 6702                      beq.s      $00011884
[00011882] d080                      add.l      d0,d0
[00011884] e688                      lsr.l      #3,d0
[00011886] 23c0 0001 1a54            move.l     d0,x11a54
[0001188c] 222e 000c                 move.l     12(a6),d1
[00011890] 9280                      sub.l      d0,d1
[00011892] 206e 0008                 movea.l    8(a6),a0
[00011896] d288                      add.l      a0,d1
[00011898] 43ee 0010                 lea.l      16(a6),a1
[0001189c] 7012                      moveq.l    #18,d0
[0001189e] 22c8                      move.l     a0,(a1)+
[000118a0] 51c8 fffc                 dbf        d0,$0001189E
[000118a4] 20fc 0004 00b4            move.l     #$000400B4,(a0)+
[000118aa] 7013                      moveq.l    #19,d0
[000118ac] 22c8                      move.l     a0,(a1)+
[000118ae] 51c8 fffc                 dbf        d0,$000118AC
[000118b2] 22c1                      move.l     d1,(a1)+
[000118b4] 22c1                      move.l     d1,(a1)+
[000118b6] 23c1 0001 0cae            move.l     d1,$00010CAE
[000118bc] 22c1                      move.l     d1,(a1)+
[000118be] 4299                      clr.l      (a1)+
[000118c0] 4299                      clr.l      (a1)+
[000118c2] 41ee 019a                 lea.l      410(a6),a0
[000118c6] 7009                      moveq.l    #9,d0
[000118c8] 4298                      clr.l      (a0)+
[000118ca] 51c8 fffc                 dbf        d0,$000118C8
[000118ce] 43f9 0001 047e            lea.l      x1047e,a1
[000118d4] 41f9 0001 53e4            lea.l      $000153E4,a0
[000118da] 7019                      moveq.l    #25,d0
[000118dc] 10d9                      move.b     (a1)+,(a0)+
[000118de] 51c8 fffc                 dbf        d0,$000118DC
[000118e2] 422e 027f                 clr.b      639(a6)
[000118e6] 422e 0262                 clr.b      610(a6)
[000118ea] 6100 ff4c                 bsr        $00011838
[000118ee] 41ee 067e                 lea.l      1662(a6),a0
[000118f2] bbc8                      cmpa.l     a0,a5
[000118f4] 6206                      bhi.s      $000118FC
[000118f6] 42b9 0001 1834            clr.l      x11834
[000118fc] 426e 02ba                 clr.w      698(a6)
[00011900] 6100 00bc                 bsr        $000119BE
[00011904] 2d6e 00b0 00ac            move.l     176(a6),172(a6)
[0001190a] 206e 009c                 movea.l    156(a6),a0
[0001190e] 202e 00a0                 move.l     160(a6),d0
[00011912] 9088                      sub.l      a0,d0
[00011914] 6730                      beq.s      $00011946
[00011916] 7200                      moveq.l    #0,d1
[00011918] e488                      lsr.l      #2,d0
[0001191a] 6402                      bcc.s      $0001191E
[0001191c] 30c1                      move.w     d1,(a0)+
[0001191e] e288                      lsr.l      #1,d0
[00011920] 6402                      bcc.s      $00011924
[00011922] 20c1                      move.l     d1,(a0)+
[00011924] e288                      lsr.l      #1,d0
[00011926] 6404                      bcc.s      $0001192C
[00011928] 20c1                      move.l     d1,(a0)+
[0001192a] 20c1                      move.l     d1,(a0)+
[0001192c] e288                      lsr.l      #1,d0
[0001192e] 6412                      bcc.s      $00011942
[00011930] 6008                      bra.s      $0001193A
[00011932] 20c1                      move.l     d1,(a0)+
[00011934] 20c1                      move.l     d1,(a0)+
[00011936] 20c1                      move.l     d1,(a0)+
[00011938] 20c1                      move.l     d1,(a0)+
[0001193a] 20c1                      move.l     d1,(a0)+
[0001193c] 20c1                      move.l     d1,(a0)+
[0001193e] 20c1                      move.l     d1,(a0)+
[00011940] 20c1                      move.l     d1,(a0)+
[00011942] 51c8 ffee                 dbf        d0,$00011932
[00011946] 6100 f704                 bsr        $0001104C
[0001194a] 6000 f7d0                 bra        $0001111C
[0001194e] 41ee 009c                 lea.l      156(a6),a0
[00011952] 2098                      move.l     (a0)+,(a0)
[00011954] 2098                      move.l     (a0)+,(a0)
[00011956] 20d8                      move.l     (a0)+,(a0)+
[00011958] 20a8 0004                 move.l     4(a0),(a0)
[0001195c] 4e75                      rts
[0001195e] 4cd1 0500                 movem.l    (a1),a0/a2
[00011962] b5c8                      cmpa.l     a0,a2
[00011964] 6708                      beq.s      $0001196E
[00011966] 20c1                      move.l     d1,(a0)+
[00011968] d280                      add.l      d0,d1
[0001196a] b5c8                      cmpa.l     a0,a2
[0001196c] 66f8                      bne.s      $00011966
[0001196e] 5889                      addq.l     #4,a1
[00011970] 4e75                      rts
[00011972] 222e 009c                 move.l     156(a6),d1
[00011976] 43ee 005c                 lea.l      92(a6),a1
[0001197a] 7008                      moveq.l    #8,d0
[0001197c] 61e0                      bsr.s      $0001195E
[0001197e] 7006                      moveq.l    #6,d0
[00011980] 61dc                      bsr.s      $0001195E
[00011982] 7004                      moveq.l    #4,d0
[00011984] 61d8                      bsr.s      $0001195E
[00011986] 7001                      moveq.l    #1,d0
[00011988] 61d4                      bsr.s      $0001195E
[0001198a] 5281                      addq.l     #1,d1
[0001198c] 0241 fffe                 andi.w     #$FFFE,d1
[00011990] 7006                      moveq.l    #6,d0
[00011992] 61ca                      bsr.s      $0001195E
[00011994] 61c8                      bsr.s      $0001195E
[00011996] 61c6                      bsr.s      $0001195E
[00011998] 61c4                      bsr.s      $0001195E
[0001199a] 7002                      moveq.l    #2,d0
[0001199c] 61c0                      bsr.s      $0001195E
[0001199e] 7001                      moveq.l    #1,d0
[000119a0] 61bc                      bsr.s      $0001195E
[000119a2] 5281                      addq.l     #1,d1
[000119a4] 0241 fffe                 andi.w     #$FFFE,d1
[000119a8] 43ee 008c                 lea.l      140(a6),a1
[000119ac] 7006                      moveq.l    #6,d0
[000119ae] 61ae                      bsr.s      $0001195E
[000119b0] 61ac                      bsr.s      $0001195E
[000119b2] 41ee 00a0                 lea.l      160(a6),a0
[000119b6] 20c1                      move.l     d1,(a0)+
[000119b8] 20c1                      move.l     d1,(a0)+
[000119ba] 20c1                      move.l     d1,(a0)+
[000119bc] 4e75                      rts
[000119be] 61b2                      bsr.s      $00011972
[000119c0] 226e 0050                 movea.l    80(a6),a1
[000119c4] 303c 00b4                 move.w     #$00B4,d0
[000119c8] 7200                      moveq.l    #0,d1
[000119ca] 4c91 000c                 movem.w    (a1),d2-d3
[000119ce] d2c2                      adda.w     d2,a1
[000119d0] 5281                      addq.l     #1,d1
[000119d2] b640                      cmp.w      d0,d3
[000119d4] 66f4                      bne.s      $000119CA
[000119d6] 5381                      subq.l     #1,d1
[000119d8] d281                      add.l      d1,d1
[000119da] 2279 0001 0cae            movea.l    $00010CAE,a1
[000119e0] 93c1                      suba.l     d1,a1
[000119e2] 5189                      subq.l     #8,a1
[000119e4] 2d49 00b0                 move.l     a1,176(a6)
[000119e8] 2d49 00ac                 move.l     a1,172(a6)
[000119ec] e289                      lsr.l      #1,d1
[000119ee] 206e 0050                 movea.l    80(a6),a0
[000119f2] 383c 8000                 move.w     #$8000,d4
[000119f6] 7a1c                      moveq.l    #28,d5
[000119f8] 3c3c 00d8                 move.w     #$00D8,d6
[000119fc] 3e3c 0704                 move.w     #$0704,d7
[00011a00] 4c90 000c                 movem.w    (a0),d2-d3
[00011a04] d0c2                      adda.w     d2,a0
[00011a06] b647                      cmp.w      d7,d3
[00011a08] 672c                      beq.s      $00011A36
[00011a0a] b646                      cmp.w      d6,d3
[00011a0c] 6710                      beq.s      $00011A1E
[00011a0e] 32c2                      move.w     d2,(a1)+
[00011a10] 51c9 ffee                 dbf        d1,$00011A00
[00011a14] 6012                      bra.s      $00011A28
[00011a16] 4c90 000c                 movem.w    (a0),d2-d3
[00011a1a] d0c2                      adda.w     d2,a0
[00011a1c] 8444                      or.w       d4,d2
[00011a1e] 32c2                      move.w     d2,(a1)+
[00011a20] b645                      cmp.w      d5,d3
[00011a22] 67ec                      beq.s      $00011A10
[00011a24] 51c9 fff0                 dbf        d1,$00011A16
[00011a28] 4261                      clr.w      -(a1)
[00011a2a] 4291                      clr.l      (a1)
[00011a2c] 4e75                      rts
[00011a2e] 4c90 000c                 movem.w    (a0),d2-d3
[00011a32] d0c2                      adda.w     d2,a0
[00011a34] 8444                      or.w       d4,d2
[00011a36] 32c2                      move.w     d2,(a1)+
[00011a38] b67c 002c                 cmp.w      #$002C,d3
[00011a3c] 67d2                      beq.s      $00011A10
[00011a3e] 51c9 ffee                 dbf        d1,$00011A2E
[00011a42] 60e4                      bra.s      $0011A28

/* gfa: 0001a94c */
x11a44:
[00011a44] 7015                      moveq.l    #(x11a58_end-x11a58)/4-1,d0
[00011a46] 220e                      move.l     a6,d1
[00011a48] 41fa 000e                 lea.l      x11a58(pc),a0
x11a44_1:
[00011a4c] d398                      add.l      d1,(a0)+
[00011a4e] 51c8 fffc                 dbf        d0,x11a44_1
[00011a52] 4e75                      rts

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
[00011ab0] 41ee 25ec                 lea.l      9708(a6),a0
[00011ab4] 2d48 08f4                 move.l     a0,2292(a6)
[00011ab8] 6102                      bsr.s      $00011ABC
[00011aba] 4e75                      rts

[00011abc] 7209                      moveq.l    #10-1,d1
[00011abe] 7001                      moveq.l    #1,d0
[00011ac0] 30c0                      move.w     d0,(a0)+
[00011ac2] 51c9 fffc                 dbf        d1,$00011AC0
[00011ac6] d160                      add.w      d0,-(a0)
[00011ac8] 41ee 1df0                 lea.l      7664(a6),a0
[00011acc] 43ee 21fa                 lea.l      8698(a6),a1
[00011ad0] 702c                      moveq.l    #45-1,d0
[00011ad2] 32d8                      move.w     (a0)+,(a1)+
[00011ad4] 51c8 fffc                 dbf        d0,$00011AD2
[00011ad8] 41ee 1ef0                 lea.l      7920(a6),a0
[00011adc] 700b                      moveq.l    #12-1,d0
[00011ade] 32d8                      move.w     (a0)+,(a1)+
[00011ae0] 51c8 fffc                 dbf        d0,$00011ADE
[00011ae4] 4e75                      rts

x11ae6:    .dc.w 0

x11ae8:
           226e 0050                 movea.l    84(a6),a1
[00011aea] 246e                      movea.l    176(a6),a2
           2d49 0058                 move.l     a1,88(a6)
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
		.even

[000128b8] 2300                      move.l     d0,-(a1)
[000128ba] 4d00                      chk.l      d0,d6 ; 68020+ only
[000128bc] 2700                      move.l     d0,-(a3)
[000128be] 5700                      subq.b     #3,d0
[000128c0] 0d00                      btst       d6,d0
[000128c2] 4600                      not.b      d0
[000128c4] 2800                      move.l     d0,d4
[000128c6] 2300                      move.l     d0,-(a1)
[000128c8] 2900                      move.l     d0,-(a4)
[000128ca] 2000                      move.l     d0,d0
[000128cc] 2a00                      move.l     d0,d5
[000128ce] 0700                      btst       d3,d0
[000128d0] 2b00                      move.l     d0,-(a5)
[000128d2] 0600 2d00                 addi.b     #$00,d0
[000128d6] 0500                      btst       d2,d0
[000128d8] 2d00                      move.l     d0,-(a6)
[000128da] 1e00                      move.b     d0,d7
[000128dc] 2c00                      move.l     d0,d6
[000128de] 2100                      move.l     d0,-(a0)
[000128e0] 3b00                      move.w     d0,-(a5)
[000128e2] 2201                      move.l     d1,d1
[000128e4] 3d3d                      move.w     ???,-(a6)
[000128e6] 002d 013e 3c00            ori.b      #$3E,15360(a5)
[000128ec] 0c01 3c3e                 cmpi.b     #$3E,d1
[000128f0] 000c 013c                 ori.b      #$3C,a4 ; apollo only
[000128f4] 3d00                      move.w     d0,-(a6)
[000128f6] 0d01                      btst       d6,d1
[000128f8] 3d3c 000e                 move.w     #$000E,-(a6)
[000128fc] 013d                      btst       d0,???
[000128fe] 3e00                      move.w     d0,d7
[00012900] 1001                      move.b     d1,d0
[00012902] 3e3d                      move.w     ???,d7
[00012904] 000f 003c                 ori.b      #$3C,a7 ; apollo only
[00012908] 0011 003d                 ori.b      #$3D,(a1)
[0001290c] 0013 003e                 ori.b      #$3E,(a3)
[00012910] 0012 003a                 ori.b      #$3A,(a2)
[00012914] 007c 0040                 ori.w      #$0040,sr
[00012918] 009f 0028 002e            ori.l      #$0028002E,(a7)+
[0001291e] 0028 009d 002c            ori.b      #$9D,44(a0)
[00012924] 009c 002b 001c            ori.l      #$002B001C,(a4)+
[0001292a] 002c 0040 003c            ori.b      #$40,60(a4)
[00012930] 0019 013c                 ori.b      #$3C,(a1)+
[00012934] 3d00                      move.w     d0,-(a6)
[00012936] 1501                      move.b     d1,-(a2)
[00012938] 3c3e                      move.w     ???,d6
[0001293a] 0014 003d                 ori.b      #$3D,(a4)
[0001293e] 001b 003d                 ori.b      #$3D,(a3)+
[00012942] 0045 013d                 ori.w      #$013D,d5
[00012946] 3c00                      move.w     d0,d6
[00012948] 1601                      move.b     d1,d3
[0001294a] 3d3e                      move.w     ???,-(a6)
[0001294c] 0018 003e                 ori.b      #$3E,(a0)+
[00012950] 001a 013e                 ori.b      #$3E,(a2)+
[00012954] 3d00                      move.w     d0,-(a6)
[00012956] 1700                      move.b     d0,-(a3)
[00012958] 2ad0                      move.l     (a0),(a5)+
[0001295a] bd00                      eor.b      d6,d0
[0001295c] 3000                      move.w     d0,d0
[0001295e] b800                      cmp.b      d0,d4
[00012960] 3100                      move.w     d0,-(a0)
[00012962] b900                      eor.b      d4,d0
[00012964] 3200                      move.w     d0,d1
[00012966] ba00                      cmp.b      d0,d5
[00012968] 3300                      move.w     d0,-(a1)
[0001296a] bb01                      eor.b      d5,d1
[0001296c] 293d                      move.l     ???,-(a4)
[0001296e] 0039 017d 3d00 4301       ori.b      #$7D,$3D004301
[00012976] 5d3d                      subq.b     #6,???
[00012978] 0044 0029                 ori.w      #$0029,d4
[0001297c] 0033

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
func_other_table:
		.dc.b 0
		.dc.b '\\'
		.dc.b 0,91
		.dc.b 0
		.ascii "["
		.dc.b 0,80
		.dc.b 0
		.ascii "]"
		.dc.b 0,81
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
		.dc.b 0,9
		.dc.b 0
		.ascii "{"
		.dc.b TOK_SUBFUNC_208,112
		.dc.b 0
		.ascii "}"
		.dc.b 0,88
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
		.dc.b 0,8
		.dc.b -1
		.even

x13696:
[00013696] 7009                      moveq.l    #9,d0
[00013698] 6006                      bra.s      $000136A0
[0001369a] 7003                      moveq.l    #3,d0
[0001369c] 6002                      bra.s      $000136A0
[0001369e] 7002                      moveq.l    #2,d0
[000136a0] 6100 041c                 bsr        x13abe
[000136a4] bc7c 0088                 cmp.w      #$0088,d6
[000136a8] 6212                      bhi.s      $000136BC
[000136aa] 3206                      move.w     d6,d1
[000136ac] e249                      lsr.w      #1,d1
[000136ae] 6410                      bcc.s      $000136C0
[000136b0] 123b 101e                 move.b     $000136D0(pc,d1.w),d1
[000136b4] 0241 000f                 andi.w     #$000F,d1
[000136b8] b001                      cmp.b      d1,d0
[000136ba] 670e                      beq.s      $000136CA
[000136bc] 7eff                      moveq.l    #-1,d7
[000136be] 4e75                      rts
[000136c0] 123b 100e                 move.b     $000136D0(pc,d1.w),d1
[000136c4] e849                      lsr.w      #4,d1
[000136c6] b001                      cmp.b      d1,d0
[000136c8] 66f2                      bne.s      $000136BC
[000136ca] 12c6                      move.b     d6,(a1)+
[000136cc] 7e00                      moveq.l    #0,d7
[000136ce] 4e75                      rts

[000136d0] 3333
           3333
           3333
           3333
           3333
[000136da] 5555
[000136dc] 5555
[000136de] 5444
[000136e0] 7770
[000136e2] 2000
[000136e4] 0000
           0300
[000136e8] 0000
           9190
[000136ec] 9000
[000136ee] 0000
           0020
[000136f2] 0000
[000136f4] 0000
[000136f6] 0000
           0009
[000136fa] 0000
           0003
[000136fe] cc00
[00013700] 0022
           2221
[00013704] 1111
[00013706] 0009
           0000
[0001370a] 0000
[0001370c] 0000
           0090
[00013710] 2000
[00013712] 2010

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
[0001377c] 49ee 0352                 lea.l      850(a6),a4
[00013780] 4bee 0452                 lea.l      1106(a6),a5
[00013784] 101c                      move.b     (a4)+,d0
[00013786] 6602                      bne.s      $0001378A
[00013788] 700d                      moveq.l    #13,d0
[0001378a] b03c 007a                 cmp.b      #'z',d0
[0001378e] 620a                      bhi.s      $0001379A
[00013790] b03c 0061                 cmp.b      #'a',d0
[00013794] 6504                      bcs.s      $0001379A
[00013796] 0400 0020                 subi.b     #' ',d0
[0001379a] 1ac0                      move.b     d0,(a5)+
[0001379c] b03c 000d                 cmp.b      #13,d0
[000137a0] 66e2                      bne.s      $00013784
[000137a2] 41ee 0452                 lea.l      1106(a6),a0
[000137a6] 4e75                      rts

skip_spaces_0:
[000137a8] 5288                      addq.l     #1,a0
skip_spaces:
[000137aa] 0c10 0020                 cmpi.b     #' ',(a0)
[000137ae] 67f8                      beq.s      skip_spaces_0
[000137b0] 4e75                      rts

x137b2: .dc.w 0
x137b4: .dc.l 0
x137b8: .dc.l 0
x137bc: .dc.l 0

/*
 * a2 = x14083/x1499f/x1495a
 */
x137c0:
[000137c0] 43ee 0554                 lea.l      1364(a6),a1
[000137c4] 32c0                      move.w     d0,(a1)+
[000137c6] 207a fff4                 movea.l    x137bc(pc),a0
[000137ca] 6100 018e                 bsr        x1395a
[000137ce] 2009                      move.l     a1,d0
[000137d0] 4e75                      rts

[000137d2] 51f9 0001 37b2            sf         x137b2
[000137d8] 23cf 0001 3898            move.l     a7,x13898
[000137de] 23c8 0001 37b8            move.l     a0,x137b8
[000137e4] 43ee 0554                 lea.l      1364(a6),a1
[000137e8] 4291                      clr.l      (a1)
[000137ea] 6190                      bsr.s      x1377c
[000137ec] 61bc                      bsr.s      skip_spaces
[000137ee] 23c8 0001 37bc            move.l     a0,x137bc
[000137f4] 6100 00a6                 bsr        x1389c
[000137f8] 6100 0160                 bsr        x1395a
[000137fc] 2009                      move.l     a1,d0
[000137fe] 6624                      bne.s      $00013824
[00013800] 45fa 0881                 lea.l      x14083(pc),a2
[00013804] 303c 0098                 move.w     #$0098,d0
[00013808] 61b6                      bsr.s      x137c0
[0001380a] 6618                      bne.s      $00013824
[0001380c] 45fa 1191                 lea.l      x1499f(pc),a2
[00013810] 303c 007e                 move.w     #$007E,d0
[00013814] 61aa                      bsr.s      x137c0
[00013816] 660c                      bne.s      $00013824
[00013818] 45fa 1140                 lea.l      x1495a(pc),a2
[0001381c] 303c 0078                 move.w     #$0078,d0
[00013820] 619e                      bsr.s      x137c0
[00013822] 6768                      beq.s      $0001388C
[00013824] 6b6c                      bmi.s      $00013892
[00013826] 4850                      pea.l      (a0)
[00013828] 6100 1cc6                 bsr        $000154F0
[0001382c] 6100 2154                 bsr        $00015982
[00013830] 203a ff82                 move.l     x137b4(pc),d0
[00013834] 6732                      beq.s      $00013868
[00013836] 2040                      movea.l    d0,a0
[00013838] 41e8 ff00                 lea.l      -256(a0),a0
[0001383c] 2009                      move.l     a1,d0
[0001383e] 6f28                      ble.s      $00013868
[00013840] 5280                      addq.l     #1,d0
[00013842] 0880 0000                 bclr       #0,d0
[00013846] 2240                      movea.l    d0,a1
[00013848] 2448                      movea.l    a0,a2
[0001384a] 70ff                      moveq.l    #-1,d0
[0001384c] 5240                      addq.w     #1,d0
[0001384e] 0c22 0020                 cmpi.b     #' ',-(a2)
[00013852] 67f8                      beq.s      $0001384C
[00013854] 12c0                      move.b     d0,(a1)+
[00013856] 0c18 0021                 cmpi.b     #'!',(a0)+
[0001385a] 6702                      beq.s      $0001385E
[0001385c] 5288                      addq.l     #1,a0
[0001385e] 1018                      move.b     (a0)+,d0
[00013860] 12c0                      move.b     d0,(a1)+
[00013862] b03c 000d                 cmp.b      #13,d0
[00013866] 66f6                      bne.s      $0001385E
[00013868] 205f                      movea.l    (a7)+,a0
[0001386a] 2009                      move.l     a1,d0
[0001386c] 43ee 0552                 lea.l      1362(a6),a1
[00013870] 9089                      sub.l      a1,d0
[00013872] 5240                      addq.w     #1,d0
[00013874] 0240 fffe                 andi.w     #0xFFFE,d0
[00013878] b07c 10fe                 cmp.w      #0x10FE,d0
[0001387c] 6214                      bhi.s      $00013892
[0001387e] 3280                      move.w     d0,(a1)
[00013880] e1e9 0002                 asl.w      2(a1)
[00013884] 4e75                      rts
[00013886] 2e7a 0010                 movea.l    x13898(pc),a7
[0001388a] 93c9                      suba.l     a1,a1
[0001388c] 207a ff2a                 movea.l    x137b8(pc),a0
[00013890] 4e75                      rts
[00013892] 43f8 ffff                 lea.l      ($FFFFFFFF).w,a1
[00013896] 4e75                      rts

x13898: .dc.l 0

x1389c:
[0001389c] 7400                      moveq.l    #0,d2
[0001389e] 1410                      move.b     (a0),d2
[000138a0] b43c 0045                 cmp.b      #'E',d2
[000138a4] 663c                      bne.s      $000138E2
[000138a6] 0c28 004e 0001            cmpi.b     #'N',1(a0)
[000138ac] 6634                      bne.s      $000138E2
[000138ae] 0c28 0044 0002            cmpi.b     #'D',2(a0)
[000138b4] 662c                      bne.s      $000138E2
[000138b6] 0c28 000d 0003            cmpi.b     #EOL,3(a0)
[000138bc] 6708                      beq.s      $000138C6
[000138be] 0c28 0020 0003            cmpi.b     #' ',3(a0)
[000138c4] 661c                      bne.s      $000138E2
[000138c6] 5688                      addq.l     #3,a0
[000138c8] 32fc 00f8                 move.w     #248,(a1)+ /* TOK_CMD_END*2 */
[000138cc] 45fa 0b9c                 lea.l      $0001446A(pc),a2
[000138d0] 4e75                      rts

[000138d2] 45fa e226                 lea.l      cmd_table(pc),a2
[000138d6] 7440                      moveq.l    #64,d2
[000138d8] 6026                      bra.s      $00013900
[000138da] 45fa ecab                 lea.l      cmd_other_table(pc),a2
[000138de] 747f                      moveq.l    #127,d2
[000138e0] 601e                      bra.s      $00013900
[000138e2] 45fa fe30                 lea.l      cmd_index_table(pc),a2
[000138e6] 3602                      move.w     d2,d3
[000138e8] 0443 0041                 subi.w     #'A',d3
[000138ec] 6be4                      bmi.s      $000138D2
[000138ee] b67c 0019                 cmp.w      #25,d3
[000138f2] 62e6                      bhi.s      $000138DA
[000138f4] d643                      add.w      d3,d3
[000138f6] 3632 3000                 move.w     0(a2,d3.w),d3
[000138fa] 45fa fd9a                 lea.l      x13696(pc),a2
[000138fe] d4c3                      adda.w     d3,a2

[00013900] 2848                      movea.l    a0,a4
[00013902] 7000                      moveq.l    #0,d0
[00013904] 101a                      move.b     (a2)+,d0
[00013906] 6b46                      bmi.s      $0001394E
[00013908] 47f2 0005                 lea.l      5(a2,d0.w),a3
[0001390c] b412                      cmp.b      (a2),d2
[0001390e] 653e                      bcs.s      $0001394E
[00013910] b508                      cmpm.b     (a0)+,(a2)+
[00013912] 56c8 fffc                 dbne       d0,$00013910
[00013916] 6718                      beq.s      $00013930
[00013918] 0c28 0020 ffff            cmpi.b     #' ',-1(a0)
[0001391e] 6710                      beq.s      $00013930
[00013920] 0c28 000d ffff            cmpi.b     #13,-1(a0)
[00013926] 6706                      beq.s      $0001392E
[00013928] 244b                      movea.l    a3,a2
[0001392a] 204c                      movea.l    a4,a0
[0001392c] 60d4                      bra.s      $00013902
[0001392e] 5388                      subq.l     #1,a0
[00013930] 1f2b fffc                 move.b     -4(a3),-(a7)
[00013934] 321f                      move.w     (a7)+,d1  /* d1 = -4(a3)<<8 */
[00013936] 122b fffd                 move.b     -3(a3),d1
[0001393a] 32c1                      move.w     d1,(a1)+
[0001393c] 1f2b fffe                 move.b     -2(a3),-(a7)
[00013940] 301f                      move.w     (a7)+,d0  /* d0 = -2(a3)<<8 */
[00013942] 102b ffff                 move.b     -1(a3),d0
[00013946] 45fa fd4e                 lea.l      x13696(pc),a2
[0001394a] d4c0                      adda.w     d0,a2
[0001394c] 4e75                      rts

[0001394e] 32fc 0098                 move.w     #152,(a1)+ /* TOK_CMD_ASSIGN_FLOAT*2 */
[00013952] 45f9 0001 4083            lea.l      x14083,a2
[00013958] 4e75                      rts

x1395a:
[0001395a] 42b9 0001 37b4            clr.l      x137b4
[00013960] 4878 0000                 pea.l      (0).w
[00013964] 4851                      pea.l      (a1)
[00013966] 4850                      pea.l      (a0)
[00013968] 42ae 20f6                 clr.l      8438(a6)
[0001396c] 7e00                      moveq.l    #0,d7
[0001396e] 7000                      moveq.l    #0,d0
[00013970] 101a                      move.b     (a2)+,d0
[00013972] 0c00 00f0                 cmpi.b     #240,d0
[00013976] 622e                      bhi.s      $000139A6
[00013978] b03c 00d0                 cmp.b      #208,d0 /* secondary function table? */
[0001397c] 6604                      bne.s      $00013982
[0001397e] e140                      asl.w      #8,d0
[00013980] 101a                      move.b     (a2)+,d0
[00013982] 6100 009e                 bsr        handle_function
[00013986] 4a07                      tst.b      d7
[00013988] 67e2                      beq.s      $0001396C
[0001398a] 606c                      bra.s      $000139F8
/* handle 0xfc & 0xfd */
[0001398c] 508f                      addq.l     #8,a7
[0001398e] 245f                      movea.l    (a7)+,a2
[00013990] 200a                      move.l     a2,d0
[00013992] 66d8                      bne.s      $0001396C
[00013994] 2009                      move.l     a1,d0
[00013996] 908e                      sub.l      a6,d0
[00013998] b0bc 0000 0732            cmp.l      #1842,d0
[0001399e] 6504                      bcs.s      $000139A4
[000139a0] 43f8 ffff                 lea.l      (-1).w,a1
[000139a4] 4e75                      rts

/* XXX */
[000139a6] 5400                      addq.b     #2,d0
[000139a8] 6e1a                      bgt.s      $000139C4
[000139aa] 672c                      beq.s      $000139D8
[000139ac] 5400                      addq.b     #2,d0
[000139ae] 6adc                      bpl.s      $0001398C
[000139b0] 5400                      addq.b     #2,d0
[000139b2] 6e0a                      bgt.s      $000139BE
[000139b4] 6704                      beq.s      $000139BA
[000139b6] 12da                      move.b     (a2)+,(a1)+
[000139b8] 60b2                      bra.s      $0001396C
/* handle 0xfa */
[000139ba] 5389                      subq.l     #1,a1
[000139bc] 60ae                      bra.s      $0001396C
/* handle 0xfb */
[000139be] 135a ffff                 move.b     (a2)+,-1(a1)
[000139c2] 60a8                      bra.s      $0001396C

/* handle 0xff */
[000139c4] 1f1a                      move.b     (a2)+,-(a7)
[000139c6] 301f                      move.w     (a7)+,d0
[000139c8] 101a                      move.b     (a2)+,d0 /* d0.w = *((short *)a2++) now */
[000139ca] 4852                      pea.l      (a2)
[000139cc] 4851                      pea.l      (a1)
[000139ce] 4850                      pea.l      (a0)
[000139d0] 45fa fcc4                 lea.l      x13696(pc),a2
[000139d4] d4c0                      adda.w     d0,a2
[000139d6] 6094                      bra.s      $0001396C

/* handle 0xfe */
[000139d8] 1f1a                      move.b     (a2)+,-(a7)
[000139da] 301f                      move.w     (a7)+,d0
[000139dc] 101a                      move.b     (a2)+,d0 /* d0.w = *((short *)a2++) now */
[000139de] 4852                      pea.l      (a2)
[000139e0] 4851                      pea.l      (a1)
[000139e2] 4850                      pea.l      (a0)
[000139e4] 45fa fcb0                 lea.l      x13696(pc),a2
[000139e8] 4eb2 0000                 jsr        0(a2,d0.w)
[000139ec] 4a07                      tst.b      d7
[000139ee] 679c                      beq.s      $0001398C
/* error */
[000139f0] 508f                      addq.l     #8,a7
[000139f2] 245f                      movea.l    (a7)+,a2
[000139f4] 200a                      move.l     a2,d0
[000139f6] 6726                      beq.s      $00013A1E
[000139f8] 101a                      move.b     (a2)+,d0
[000139fa] b03c 00f9                 cmp.b      #249,d0
[000139fe] 6710                      beq.s      $00013A10
[00013a00] 0c00 00fc                 cmpi.b     #252,d0
[00013a04] 67ea                      beq.s      $000139F0
[00013a06] 0c00 00fd                 cmpi.b     #253,d0
[00013a0a] 6708                      beq.s      $00013A14
[00013a0c] 65ea                      bcs.s      $000139F8
[00013a0e] 528a                      addq.l     #1,a2
[00013a10] 528a                      addq.l     #1,a2
[00013a12] 60e4                      bra.s      $000139F8
[00013a14] 2057                      movea.l    (a7),a0
[00013a16] 226f 0004                 movea.l    4(a7),a1
[00013a1a] 6000 ff50                 bra        $0001396C
[00013a1e] 93c9                      suba.l     a1,a1
[00013a20] 4e75                      rts

/*
 * function code in d0.w
 * bit 7-8: secondary table code
 */
handle_function:
[00013a22] 6100 009a                 bsr        x13abe
[00013a26] bc40                      cmp.w      d0,d6
[00013a28] 56c7                      sne        d7
[00013a2a] 6714                      beq.s      $00013A40
[00013a2c] b03c 0046                 cmp.b      #$46,d0
[00013a30] 672a                      beq.s      $00013A5C
[00013a32] b1fa fd84                 cmpa.l     x137b8(pc),a0
[00013a36] 6522                      bcs.s      $00013A5A
[00013a38] 23c8 0001 37b8            move.l     a0,x137b8
[00013a3e] 4e75                      rts
[00013a40] b07c 00ff                 cmp.w      #$00FF,d0
[00013a44] 6306                      bls.s      $00013A4C
[00013a46] e158                      rol.w      #8,d0
[00013a48] 12c0                      move.b     d0,(a1)+
[00013a4a] e158                      rol.w      #8,d0
[00013a4c] 12c0                      move.b     d0,(a1)+
[00013a4e] b1fa fd68                 cmpa.l     x137b8(pc),a0
[00013a52] 6506                      bcs.s      $00013A5A
[00013a54] 23c8 0001 37b8            move.l     a0,x137b8
[00013a5a] 4e75                      rts
[00013a5c] 0c10 002f                 cmpi.b     #'/',(a0)
[00013a60] 6610                      bne.s      $00013A72
[00013a62] 0c28 002f 0001            cmpi.b     #'/',1(a0)
[00013a68] 670e                      beq.s      $00013A78
[00013a6a] 0c28 002a 0001            cmpi.b     #'*',1(a0)
[00013a70] 6706                      beq.s      $00013A78
[00013a72] 0c10 0021                 cmpi.b     #'!',(a0)
[00013a76] 66d6                      bne.s      $00013A4E
[00013a78] 0c6e 0342 0554            cmpi.w     #$0342,1364(a6)
[00013a7e] 67ce                      beq.s      $00013A4E
[00013a80] 3c00                      move.w     d0,d6
[00013a82] 23c8 0001 37b4            move.l     a0,x137b4
[00013a88] 609c                      bra.s      $00013A26
[00013a8a] 47fa ee2b                 lea.l      $000128B7(pc),a3
[00013a8e] bc3c 00ee                 cmp.b      #$EE,d6
[00013a92] 6704                      beq.s      $00013A98
[00013a94] 7c40                      moveq.l    #64,d6
[00013a96] 6056                      bra.s      $00013AEE
[00013a98] 0c28 002f 0001            cmpi.b     #'/',1(a0)
[00013a9e] 6710                      beq.s      $00013AB0
[00013aa0] 0c28 002a 0001            cmpi.b     #'*',1(a0)
[00013aa6] 6708                      beq.s      $00013AB0
[00013aa8] 7c08                      moveq.l    #8,d6
[00013aaa] 5288                      addq.l     #1,a0
[00013aac] 6000 0072                 bra.w      $00013B20
[00013ab0] 2a48                      movea.l    a0,a5
[00013ab2] 7cff                      moveq.l    #-1,d6
[00013ab4] 4e75                      rts

[00013ab6] 47fa fb7a                 lea.l      func_other_table(pc),a3
[00013aba] 7c7f                      moveq.l    #127,d6
[00013abc] 6030                      bra.s      $00013AEE

x13abe:
[00013abe] b1ee 20f6                 cmpa.l     8438(a6),a0
[00013ac2] 674e                      beq.s      $00013B12
[00013ac4] 2d48 20f6                 move.l     a0,8438(a6)
[00013ac8] 6100 fce0                 bsr        skip_spaces
[00013acc] 7c00                      moveq.l    #0,d6
[00013ace] 1c10                      move.b     (a0),d6
[00013ad0] 0446 0041                 subi.w     #'A',d6
[00013ad4] 6bb4                      bmi.s      $00013A8A
[00013ad6] bc7c 0019                 cmp.w      #25,d6
[00013ada] 64da                      bcc.s      $00013AB6
[00013adc] 47fa fc6a                 lea.l      func_index_table(pc),a3
[00013ae0] dc46                      add.w      d6,d6
[00013ae2] 3c33 6000                 move.w     0(a3,d6.w),d6
[00013ae6] 47fa fbae                 lea.l      x13696(pc),a3
[00013aea] d6c6                      adda.w     d6,a3
[00013aec] 1c10                      move.b     (a0),d6
[00013aee] 2848                      movea.l    a0,a4
[00013af0] 7200                      moveq.l    #0,d1
[00013af2] 121b                      move.b     (a3)+,d1
[00013af4] 6b16                      bmi.s      $00013B0C
[00013af6] 4bf3 1003                 lea.l      3(a3,d1.w),a5
[00013afa] bc13                      cmp.b      (a3),d6
[00013afc] 650e                      bcs.s      $00013B0C
[00013afe] b708                      cmpm.b     (a0)+,(a3)+
[00013b00] 56c9 fffc                 dbne       d1,$00013AFE
[00013b04] 6710                      beq.s      $00013B16
[00013b06] 264d                      movea.l    a5,a3
[00013b08] 204c                      movea.l    a4,a0
[00013b0a] 60e4                      bra.s      $00013AF0
[00013b0c] 7cff                      moveq.l    #-1,d6
[00013b0e] 2a48                      movea.l    a0,a5
[00013b10] 4e75                      rts
[00013b12] 204d                      movea.l    a5,a0
[00013b14] 4e75                      rts
[00013b16] 1f2d fffe                 move.b     -2(a5),-(a7)
[00013b1a] 3c1f                      move.w     (a7)+,d6
[00013b1c] 1c2d ffff                 move.b     -1(a5),d6
[00013b20] 2a48                      movea.l    a0,a5
[00013b22] 0c28 0041 ffff            cmpi.b     #'A',-1(a0)
[00013b28] 6536                      bcs.s      $00013B60
[00013b2a] 0c28 005a ffff            cmpi.b     #'Z',-1(a0)
[00013b30] 622e                      bhi.s      $00013B60
[00013b32] bc3c 0018                 cmp.b      #24,d6 /* wtf? why .b? */
[00013b36] 6328                      bls.s      $00013B60
[00013b38] 1210                      move.b     (a0),d1
[00013b3a] b23c 005f                 cmp.b      #'_',d1
[00013b3e] 671e                      beq.s      $00013B5E
[00013b40] b23c 002e                 cmp.b      #'.',d1
[00013b44] 6718                      beq.s      $00013B5E
[00013b46] b23c 0030                 cmp.b      #'0',d1
[00013b4a] 6514                      bcs.s      $00013B60
[00013b4c] b23c 0039                 cmp.b      #'9',d1
[00013b50] 630c                      bls.s      $00013B5E
[00013b52] b23c 0041                 cmp.b      #'A',d1
[00013b56] 6508                      bcs.s      $00013B60
[00013b58] b23c 005a                 cmp.b      #'Z',d1
[00013b5c] 6202                      bhi.s      $00013B60
[00013b5e] 7cff                      moveq.l    #-1,d6
[00013b60] 4e75                      rts
f13b62:
[00013b62] 7e00                      moveq.l    #0,d7
[00013b64] 22c7                      move.l     d7,(a1)+
[00013b66] 4e75                      rts
f13b68:
[00013b68] 7062                      moveq.l    #98,d0
[00013b6a] 6002                      bra.s      $00013B6E
f13b6c:
[00013b6c] 7066                      moveq.l    #102,d0
[00013b6e] 3d40 0554                 move.w     d0,1364(a6)
[00013b72] 4299                      clr.l      (a1)+
[00013b74] 0c18 0020                 cmpi.b     #' ',(a0)+
[00013b78] 67fa                      beq.s      $00013B74
[00013b7a] 0c20 0055                 cmpi.b     #$55,-(a0)
[00013b7e] 6728                      beq.s      $00013BA8
[00013b80] 0c18 0057                 cmpi.b     #$57,(a0)+
[00013b84] 6640                      bne.s      $00013BC6
[00013b86] 0c18 0048                 cmpi.b     #$48,(a0)+
[00013b8a] 6618                      bne.s      $00013BA4
[00013b8c] 0c18 0049                 cmpi.b     #$49,(a0)+
[00013b90] 6612                      bne.s      $00013BA4
[00013b92] 0c18 004c                 cmpi.b     #$4C,(a0)+
[00013b96] 660c                      bne.s      $00013BA4
[00013b98] 0c18 0045                 cmpi.b     #$45,(a0)+
[00013b9c] 6606                      bne.s      $00013BA4
[00013b9e] 0c18 0020                 cmpi.b     #' ',(a0)+
[00013ba2] 67fa                      beq.s      $00013B9E
[00013ba4] 5388                      subq.l     #1,a0
[00013ba6] 4e75                      rts
[00013ba8] 546e 0554                 addq.w     #2,1364(a6)
[00013bac] 5288                      addq.l     #1,a0
[00013bae] 0c18 004e                 cmpi.b     #$4E,(a0)+
[00013bb2] 66f0                      bne.s      $00013BA4
[00013bb4] 0c18 0054                 cmpi.b     #$54,(a0)+
[00013bb8] 66ea                      bne.s      $00013BA4
[00013bba] 0c18 0049                 cmpi.b     #$49,(a0)+
[00013bbe] 66e4                      bne.s      $00013BA4
[00013bc0] 0c18 004c                 cmpi.b     #$4C,(a0)+
[00013bc4] 60d6                      bra.s      $00013B9C
[00013bc6] 7eff                      moveq.l    #-1,d7
[00013bc8] 4e75                      rts

f13bca:
[00013bca] 0c28 0020 ffff            cmpi.b     #' ',-1(a0)
[00013bd0] 6708                      beq.s      $00013BDA
[00013bd2] 0c10 0020                 cmpi.b     #' ',(a0)
[00013bd6] 6602                      bne.s      $00013BDA
[00013bd8] 5288                      addq.l     #1,a0
[00013bda] 47e8 ff00                 lea.l      -256(a0),a3
[00013bde] 12db                      move.b     (a3)+,(a1)+
[00013be0] 0c2b 000d ffff            cmpi.b     #13,-1(a3)
[00013be6] 66f6                      bne.s      $00013BDE
[00013be8] 7e00                      moveq.l    #0,d7
[00013bea] 4e75                      rts
[00013bec] 5288                      addq.l     #1,a0
[00013bee] 7000                      moveq.l    #0,d0
[00013bf0] 74fe                      moveq.l    #-2,d2
[00013bf2] 5242                      addq.w     #1,d2
[00013bf4] 1218                      move.b     (a0)+,d1
[00013bf6] 0401 0030                 subi.b     #'0',d1
[00013bfa] 0c01 0001                 cmpi.b     #$01,d1
[00013bfe] 620a                      bhi.s      $00013C0A
[00013c00] d080                      add.l      d0,d0
[00013c02] 8001                      or.b       d1,d0
[00013c04] 4a80                      tst.l      d0
[00013c06] 6aea                      bpl.s      $00013BF2
[00013c08] 5288                      addq.l     #1,a0
[00013c0a] 12fc 00da                 move.b     #$DA,(a1)+
[00013c0e] 6074                      bra.s      $00013C84
[00013c10] 7000                      moveq.l    #0,d0
[00013c12] 74fe                      moveq.l    #-2,d2
[00013c14] 5242                      addq.w     #1,d2
[00013c16] 1218                      move.b     (a0)+,d1
[00013c18] 0401 0030                 subi.b     #'0',d1
[00013c1c] 0c01 0007                 cmpi.b     #$07,d1
[00013c20] 620e                      bhi.s      $00013C30
[00013c22] e780                      asl.l      #3,d0
[00013c24] 8001                      or.b       d1,d0
[00013c26] b0bc 2000 0000            cmp.l      #$20000000,d0
[00013c2c] 65e6                      bcs.s      $00013C14
[00013c2e] 5288                      addq.l     #1,a0
[00013c30] 12fc 00d8                 move.b     #$D8,(a1)+
[00013c34] 604e                      bra.s      $00013C84
[00013c36] 5288                      addq.l     #1,a0
[00013c38] 1018                      move.b     (a0)+,d0
[00013c3a] b03c 0058                 cmp.b      #$58,d0
[00013c3e] 67ae                      beq.s      $00013BEE
[00013c40] b03c 004f                 cmp.b      #$4F,d0
[00013c44] 67ca                      beq.s      $00013C10
[00013c46] b03c 0048                 cmp.b      #$48,d0
[00013c4a] 6704                      beq.s      $00013C50
[00013c4c] 5588                      subq.l     #2,a0
[00013c4e] 5288                      addq.l     #1,a0
[00013c50] 7000                      moveq.l    #0,d0
[00013c52] 74fe                      moveq.l    #-2,d2
[00013c54] 5242                      addq.w     #1,d2
[00013c56] 1218                      move.b     (a0)+,d1
[00013c58] 0c01 0046                 cmpi.b     #$46,d1
[00013c5c] 6222                      bhi.s      $00013C80
[00013c5e] 0401 0030                 subi.b     #'0',d1
[00013c62] 6b1c                      bmi.s      $00013C80
[00013c64] 0c01 0009                 cmpi.b     #$09,d1
[00013c68] 6308                      bls.s      $00013C72
[00013c6a] 5f01                      subq.b     #7,d1
[00013c6c] 0c01 0009                 cmpi.b     #$09,d1
[00013c70] 630e                      bls.s      $00013C80
[00013c72] e980                      asl.l      #4,d0
[00013c74] 8001                      or.b       d1,d0
[00013c76] b0bc 1000 0000            cmp.l      #$10000000,d0
[00013c7c] 65d6                      bcs.s      $00013C54
[00013c7e] 5288                      addq.l     #1,a0
[00013c80] 12fc 00dc                 move.b     #$DC,(a1)+
[00013c84] 5388                      subq.l     #1,a0
[00013c86] 4a42                      tst.w      d2
[00013c88] 6b7c                      bmi.s      $00013D06
[00013c8a] 4eae 0142                 jsr        322(a6)
[00013c8e] 2609                      move.l     a1,d3
[00013c90] e20b                      lsr.b      #1,d3
[00013c92] 6468                      bcc.s      $00013CFC
[00013c94] 5329 ffff                 subq.b     #1,-1(a1)
[00013c98] 6060                      bra.s      $00013CFA

f13c9a:
[00013c9a] 6100 fb0e                 bsr        skip_spaces
[00013c9e] 0c10 0026                 cmpi.b     #'&',(a0)
[00013ca2] 6792                      beq.s      $00013C36
[00013ca4] 0c10 0024                 cmpi.b     #'$',(a0)
[00013ca8] 67a4                      beq.s      $00013C4E
[00013caa] 0c10 0025                 cmpi.b     #'%',(a0)
[00013cae] 6700 ff3c                 beq        $00013BEC
[00013cb2] 3f06                      move.w     d6,-(a7)
[00013cb4] 4eb9 0001 0850            jsr        $00010850
[00013cba] 3c1f                      move.w     (a7)+,d6
[00013cbc] 4a42                      tst.w      d2
[00013cbe] 6b46                      bmi.s      $00013D06
[00013cc0] 6748                      beq.s      $00013D0A
[00013cc2] 4a41                      tst.w      d1
[00013cc4] 6624                      bne.s      $00013CEA
[00013cc6] b47c 0200                 cmp.w      #$0200,d2
[00013cca] 6608                      bne.s      $00013CD4
[00013ccc] b0bc 8000 0000            cmp.l      #$80000000,d0
[00013cd2] 673a                      beq.s      $00013D0E
[00013cd4] b47c 0201                 cmp.w      #$0201,d2
[00013cd8] 6610                      bne.s      $00013CEA
[00013cda] b0bc 8000 0000            cmp.l      #$80000000,d0
[00013ce0] 6730                      beq.s      $00013D12
[00013ce2] b0bc c000 0000            cmp.l      #$C0000000,d0
[00013ce8] 672c                      beq.s      $00013D16
[00013cea] 12fc 00df                 move.b     #$DF,(a1)+
[00013cee] 2609                      move.l     a1,d3
[00013cf0] e20b                      lsr.b      #1,d3
[00013cf2] 6408                      bcc.s      $00013CFC
[00013cf4] 137c 00dd ffff            move.b     #$DD,-1(a1)
[00013cfa] 4219                      clr.b      (a1)+
[00013cfc] 22c0                      move.l     d0,(a1)+
[00013cfe] 32c1                      move.w     d1,(a1)+
[00013d00] 32c2                      move.w     d2,(a1)+
[00013d02] 7e00                      moveq.l    #0,d7
[00013d04] 4e75                      rts
[00013d06] 7eff                      moveq.l    #-1,d7
[00013d08] 4e75                      rts
[00013d0a] 70b8                      moveq.l    #-72,d0
[00013d0c] 600a                      bra.s      $00013D18
[00013d0e] 70b9                      moveq.l    #-71,d0
[00013d10] 6006                      bra.s      $00013D18
[00013d12] 70ba                      moveq.l    #-70,d0
[00013d14] 6002                      bra.s      $00013D18
[00013d16] 70bb                      moveq.l    #-69,d0
[00013d18] 12c0                      move.b     d0,(a1)+
[00013d1a] 60e6                      bra.s      $00013D02
f13d1c:
[00013d1c] 6100 fa8c                 bsr        skip_spaces
[00013d20] 600c                      bra.s      $00013D2E
f13d22:
[00013d22] 6100 fa86                 bsr        skip_spaces
[00013d26] 0c10 0022                 cmpi.b     #$22,(a0)
[00013d2a] 66da                      bne.s      $00013D06
[00013d2c] 5288                      addq.l     #1,a0
[00013d2e] 12fc 00de                 move.b     #$DE,(a1)+
[00013d32] 2649                      movea.l    a1,a3
[00013d34] 4219                      clr.b      (a1)+
[00013d36] 1018                      move.b     (a0)+,d0
[00013d38] 0c00 000d                 cmpi.b     #13,d0
[00013d3c] 6716                      beq.s      $00013D54
[00013d3e] 0c00 0022                 cmpi.b     #$22,d0
[00013d42] 6708                      beq.s      $00013D4C
[00013d44] 12e8 feff                 move.b     -257(a0),(a1)+
[00013d48] 5213                      addq.b     #1,(a3)
[00013d4a] 60ea                      bra.s      $00013D36
[00013d4c] b010                      cmp.b      (a0),d0
[00013d4e] 6606                      bne.s      $00013D56
[00013d50] 5288                      addq.l     #1,a0
[00013d52] 60f0                      bra.s      $00013D44
[00013d54] 5388                      subq.l     #1,a0
[00013d56] 7e00                      moveq.l    #0,d7
[00013d58] 4e75                      rts

f13d5a:
[00013d5a] 0c10 0057                 cmpi.b     #$57,(a0)
[00013d5e] 66a6                      bne.s      $00013D06
[00013d60] 5288                      addq.l     #1,a0
[00013d62] 4e75                      rts

f13d64:
[00013d64] 546e 0554                 addq.w     #2,1364(a6)
[00013d68] 4e75                      rts

f13d6a:
[00013d6a] 3d7c 0292 0554            move.w     #658,1364(a6) /* TOK_CMD_FILESELECT*2 */
[00013d70] 45fa e1be                 lea.l      cmd_fileselect(pc),a2
[00013d74] 603a                      bra.s      $00013DB0
f13d76:
[00013d76] 3d7c 028a 0554            move.w     #650,1364(a6) /* TOK_CMD_FILES*2 */
[00013d7c] 45fa e1a8                 lea.l      cmd_files(pc),a2
[00013d80] 602e                      bra.s      $00013DB0
f13d82:
[00013d82] 3d7c 01da 0554            move.w     #474,1364(a6) /* TOK_CMD_DOUBLE_REF*2 */
[00013d88] 45fa dff5                 lea.l      cmd_double_ref(pc),a2
[00013d8c] 6022                      bra.s      $00013DB0
f13d8e:
[00013d8e] 3d7c 01c0 0554            move.w     #448,1364(a6) /* TOK_CMD_ADDRIN*2 */
[00013d94] 45fa dde8                 lea.l      cmd_addrin(pc),a2
[00013d98] 6016                      bra.s      $00013DB0
f13d9a:
[00013d9a] 3d7c 01c2 0554            move.w     #450,1364(a6) /* TOK_CMD_ADDROUT*2 */
[00013da0] 45fa dde8                 lea.l      cmd_addrout(pc),a2
[00013da4] 600a                      bra.s      $00013DB0
f13da6:
[00013da6] 3d7c 01c8 0554            move.w     #456,1364(a6) /* TOK_CMD_CONTRL*2 */
[00013dac] 45fa de8e                 lea.l      cmd_contrl(pc),a2
[00013db0] 41ee 0452                 lea.l      1106(a6),a0
[00013db4] 7200                      moveq.l    #0,d1
[00013db6] 121a                      move.b     (a2)+,d1
[00013db8] 6100 f9f0                 bsr        skip_spaces
[00013dbc] b10a                      cmpm.b     (a2)+,(a0)+
[00013dbe] 56c9 fffc                 dbne       d1,$00013DBC
[00013dc2] 670a                      beq.s      $00013DCE
[00013dc4] 0c20 0020                 cmpi.b     #' ',-(a0)
[00013dc8] 6704                      beq.s      $00013DCE
[00013dca] 7eff                      moveq.l    #-1,d7
[00013dcc] 4e75                      rts
[00013dce] 7e00                      moveq.l    #0,d7
[00013dd0] 4e75                      rts
f13dd2:
[00013dd2] 337c 0132 fffe            move.w     #$0132,-2(a1)
[00013dd8] 0c18 004d                 cmpi.b     #$4D,(a0)+
[00013ddc] 6702                      beq.s      $00013DE0
[00013dde] 5388                      subq.l     #1,a0
[00013de0] 7e00                      moveq.l    #0,d7
[00013de2] 4e75                      rts

f13de4:
[00013de4] 3d7c 0348 0554            move.w     #$0348,1364(a6)
[00013dea] 7e00                      moveq.l    #0,d7
[00013dec] 1018                      move.b     (a0)+,d0
[00013dee] b03c 0026                 cmp.b      #'&',d0
[00013df2] 670c                      beq.s      $00013E00
[00013df4] b03c 0025                 cmp.b      #'%',d0
[00013df8] 6702                      beq.s      $00013DFC
[00013dfa] 7eff                      moveq.l    #-1,d7
[00013dfc] 546e 0554                 addq.w     #2,1364(a6)
[00013e00] 4e75                      rts

x13e02:
		dc.b 'ADD',0,x13ee2-x13696
		dc.b 'ABS',0,x14008-x13696
		dc.b 'BASE',0,x14025-x13696
		dc.b 'CPY',0,x13f94-x13696
		dc.b 'CLR',0,x13ff6-x13696
		dc.b 'DET',0,x13f69-x13696
		dc.b 'QDET',0,x13f82-x13696
		dc.b 'INV',0,x13efb-x13696
		dc.b 'INPUT',0,x13fc8-x13696
		dc.b 'MUL',0,x13f26-x13696
		dc.b 'NORM',0,x1400e-x13696
		dc.b 'NEG',0,x14002-x13696
		dc.b 'ONE',0,x13ffc-x13696
		dc.b 'PRINT',0,x13fb0-x13696
		dc.b '/',0,x13fb0-x13696
		dc.b 'READ',0,x13fd1-x13696
		dc.b 'RANG',0,x13f88-x13696
		dc.b 'SET',0,x13f04-x13696
		dc.b 'SET',0,x14019-x13696
		dc.b 'TRANS',0,x13fd9-x13696
		dc.b 'XCPY',0,x13f8e-x13696
		dc.b 0
		.even

f13e8c:
[00013e8c] 6100 f22c                 bsr        skip_spaces
[00013e90] 2008                      move.l     a0,d0
[00013e92] 2209                      move.l     a1,d1
[00013e94] 43fa ff6c                 lea.l      x13e02(pc),a1
[00013e98] 1418                      move.b     (a0)+,d2
[00013e9a] 1619                      move.b     (a1)+,d3
[00013e9c] 671e                      beq.s      $00013EBC
[00013e9e] b602                      cmp.b      d2,d3
[00013ea0] 67f6                      beq.s      $00013E98
[00013ea2] b43c 0020                 cmp.b      #' ',d2
[00013ea6] 6710                      beq.s      $00013EB8
[00013ea8] 4a19                      tst.b      (a1)+
[00013eaa] 66fc                      bne.s      $00013EA8
[00013eac] 2040                      movea.l    d0,a0
[00013eae] 5489                      addq.l     #2,a1
[00013eb0] 4a11                      tst.b      (a1)
[00013eb2] 66e4                      bne.s      $00013E98
[00013eb4] 7eff                      moveq.l    #-1,d7
[00013eb6] 4e75                      rts
[00013eb8] 4a19                      tst.b      (a1)+
[00013eba] 66fc                      bne.s      $00013EB8
[00013ebc] 5388                      subq.l     #1,a0
[00013ebe] 1419                      move.b     (a1)+,d2
[00013ec0] e142                      asl.w      #8,d2
[00013ec2] 1419                      move.b     (a1)+,d2
[00013ec4] 45fa f7d0                 lea.l      x13696(pc),a2
[00013ec8] d4c2                      adda.w     d2,a2
[00013eca] 2f4a 000c                 move.l     a2,12(a7)
[00013ece] 2241                      movea.l    d1,a1
[00013ed0] 4e75                      rts


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
[000140d6] 303c 0170                 move.w     #$0160,d0
[000140da] 45f9 0001 42c4            lea.l      x142c4,a2
[000140e0] 6022                      bra.s      $00014104
f140e2:
[000140e2] 303c 0170                 move.w     #$0170,d0
[000140e6] 45f9 0001 42a6            lea.l      x142a6,a2
[000140ec] 6016                      bra.s      $00014104
f140ee:
[000140ee] 303c 0180                 move.w     #$0180,d0
[000140f2] 45f9 0001 42e7            lea.l      x142e7,a2
[000140f8] 600a                      bra.s      $00014104
f140fa:
[000140fa] 303c 0190                 move.w     #$0190,d0
[000140fe] 45f9 0001 42fc            lea.l      x142fc,a2
[00014104] 41ee 0452                 lea.l      1106(a6),a0
[00014108] 43ee 0554                 lea.l      1364(a6),a1
[0001410c] 32c0                      move.w     d0,(a1)+
[0001410e] 48ef 0700 0004            movem.l    a0-a2,4(a7)
[00014114] 4e75                      rts

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
	.dc.b -2,(f15bca-x13696)/256,(f15bca-x13696)&255
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
[00014578] 48e7                      movem.l    a0-a1,-(a7)
[0001457c] 6100 f22c                 bsr        skip_spaces
[00014580] 12fc 00de                 move.b     #$DE,(a1)+
[00014584] 2649                      movea.l    a1,a3
[00014586] 4219                      clr.b      (a1)+
[00014588] 1018                      move.b     (a0)+,d0
[0001458a] 0c00 000d                 cmpi.b     #13,d0
[0001458e] 6722                      beq.s      $000145B2
[00014590] 0c00 0020                 cmpi.b     #' ',d0
[00014594] 671c                      beq.s      $000145B2
[00014596] 0c00 002c                 cmpi.b     #',',d0
[0001459a] 6716                      beq.s      $000145B2
[0001459c] 0c00 0022                 cmpi.b     #'"',d0
[000145a0] 6708                      beq.s      $000145AA
[000145a2] 12e8 feff                 move.b     -257(a0),(a1)+
[000145a6] 5213                      addq.b     #1,(a3)
[000145a8] 60de                      bra.s      $00014588
[000145aa] b010                      cmp.b      (a0),d0
[000145ac] 6606                      bne.s      $000145B4
[000145ae] 5288                      addq.l     #1,a0
[000145b0] 60f0                      bra.s      $000145A2
[000145b2] 5388                      subq.l     #1,a0
[000145b4] 4a13                      tst.b      (a3)
[000145b6] 6706                      beq.s      $000145BE
[000145b8] 7e00                      moveq.l    #0,d7
[000145ba] 508f                      addq.l     #8,a7
[000145bc] 4e75                      rts
[000145be] 4cdf 0300                 movem.l    (a7)+,a0-a1
[000145c2] 7eff                      moveq.l    #-1,d7
[000145c4] 4e75                      rts


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


[00014be6] 3006                      move.w     d6,d0
[00014be8] 6a14                      bpl.s      $00014BFE
[00014bea] b07c d0ff                 cmp.w      #(TOK_SUBFUNC_208<<8)+255,d0 /* token in range? */
[00014bee] 6200 f116                 bhi        $00013D06
[00014bf2] 45fa 0204                 lea.l      x14df8(pc),a2
[00014bf6] 12fc 00d0                 move.b     #TOK_SUBFUNC_208,(a1)+ /* secondary function table */
[00014bfa] 0240 00ff                 andi.w     #$00FF,d0
[00014bfe] 12c0                      move.b     d0,(a1)+
[00014c00] 1032 0000                 move.b     0(a2,d0.w),d0
[00014c04] 6700 f100                 beq        $00013D06
[00014c08] 45fa ea8c                 lea.l      x13696(pc),a2
[00014c0c] d4fb 0008                 adda.w     x14c16(pc,d0.w),a2
[00014c10] 588f                      addq.l     #4,a7
[00014c12] 6000 ed58                 bra        $0001396C

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
		.dc.w x135af-x13696
		.dc.w x108b7-x13696
		.dc.w x135ab-x13696
		.dc.w x136b6-x13696
		.dc.w x13395-x13696
		.dc.w x14b96-x13696
		.dc.w x135ac-x13696
		.dc.w x13fb6-x13696
		.dc.w x132b7-x13696
		.dc.w x135af-x13696
		.dc.w x0d6b7-x13696
		.dc.w x135af-x13696
		.dc.w x0d793-x13696
		.dc.w x13391-x13696
		.dc.w x106b9-x13696
		.dc.w x13197-x13696
		.dc.w x135ac-x13696
		.dc.w x19e92-x13696
		.dc.w x13266-x13696
		.dc.w x15a91-x13696
		.dc.w x13b95-x13696
		.dc.w x14cfd-x13696
		.dc.w x13391-x13696
		.dc.w x106b9-x13696
		.dc.w x1319b-x13696
		.dc.w x135ac-x13696
		.dc.w x19e92-x13696
		.dc.w x13266-x13696
		.dc.w x15a91-x13696
		.dc.w x13d95-x13696
		.dc.w x14cfd-x13696
		.dc.w x13391-x13696
		.dc.w x106b9-x13696
		.dc.w x1319d-x13696
		.dc.w x135ac-x13696
		.dc.w x19e92-x13696
		.dc.w x13266-x13696
		.dc.w x15a91-x13696
		.dc.w x13f95-x13696
		.dc.w x14cfd-x13696
		.dc.w x13391-x13696
		.dc.w x106b9-x13696
		.dc.w x1319f-x13696
		.dc.w x135ac-x13696
		.dc.w x19e92-x13696

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


[00014d16] 20fd
[00014d18] 70fb
[00014d1a] 71ff
[00014d1c] 1504
[00014d1e] 21ff
           15fc
[00014d22] fcff
           1504
           ff16
[00014d28] 9520
[00014d2a] fc21
           ff15
           04ff
[00014d30] 1695
[00014d32] fdfc
[00014d34] 5a5c
[00014d36] 5e62
[00014d38] 6000
           004a
[00014d3c] 0000
           5856
[00014d40] 0000
[00014d42] 0000
[00014d44] 0000
[00014d46] 0000
[00014d48] 0000
[00014d4a] 0000
[00014d4c] 0000
[00014d4e] 0000
[00014d50] 0000
[00014d52] 0000
[00014d54] 0000
           000c
[00014d58] 000c
           0c0c
[00014d5c] 0c0c
           0c0c
[00014d60] 0c00
           000c
[00014d64] 0c0c
           0000
[00014d68] 000e
           0000
[00014d6c] 0010
           0000
[00014d70] 0000
[00014d72] 0000
           000c
[00014d76] 0000
[00014d78] 0000
[00014d7a] 0000
[00014d7c] 0000
[00014d7e] 0000
[00014d80] 0000
           0c10
[00014d84] 0000
           0c00
[00014d88] 0c10
           0c00
[00014d8c] 0000
[00014d8e] 0000
           1212
[00014d92] 0000
[00014d94] 0000
[00014d96] 0000
[00014d98] 0000
           000c
[00014d9c] 0c0e
           0e0e
[00014da0] 0000
           0c00
[00014da4] 6400
           0000
[00014da8] 0042
           4242
[00014dac] 4212

[00014dae] 000c
           000c
[00014db2] 0000
[00014db4] 0000
[00014db6] 0000
[00014db8] 0000
           0200
[00014dbc] 0000
[00014dbe] 0000
           0204
[00014dc2] 0c04
           0000
[00014dc6] 0000
[00014dc8] 0000
[00014dca] 0000
[00014dcc] 0000
           000c
[00014dd0] 0000
[00014dd2] 0000
[00014dd4] 0000
[00014dd6] 0000
[00014dd8] 0000
[00014dda] 0000
           0010
[00014dde] 0000
[00014de0] 0000
[00014de2] 0000
[00014de4] 0000
[00014de6] 0000
[00014de8] 0000
[00014dea] 0000
[00014dec] 0000
[00014dee] 0000
           1010
[00014df2] 0000
[00014df4] 0000
           1000

x14df8:
[00014df8] 0404
           0404
[00014dfc] 0404
           0404
[00014e00] 0404
           0404
[00014e04] 0404
           0202
[00014e08] 0202
           0210
[00014e0c] 0210
           0210
[00014e10] 0210
           0210
[00014e14] 0210
           1010
[00014e18] 0210
           0210
[00014e1c] 0210
           0210
[00014e20] 1004
[00014e22] 1004
[00014e24] 0404
           0404
[00014e28] 0404
           0404
[00014e2c] 0404
           0404
[00014e30] 1010
[00014e32] 1010
[00014e34] 1010
[00014e36] 1002
[00014e38] 0202
           0e0e
[00014e3c] 4040
[00014e3e] 4054
[00014e40] 040e
           020e
[00014e44] 0e02
           0202
[00014e48] 024c
           0202
[00014e4c] 0e4e
           4e4e
[00014e50] 1010
[00014e52] 0202
           0202
[00014e56] 0250
           0202
[00014e5a] 0202
           0c0c
[00014e5e] 0c02
           106e
[00014e62] 106e
           1010
[00014e66] 0202
           1212
[00014e6a] 1212
[00014e6c] 1252
[00014e6e] 1066
[00014e70] 6802
[00014e72] 0214
           0e10
[00014e76] 3e06
[00014e78] 0416
           181a
[00014e7c] 1c1e
[00014e7e] 2010
[00014e80] 0606
           0e06
[00014e84] 0410
           0404
[00014e88] 0606
           0622
[00014e8c] 1c06
[00014e8e] 0424
           0a26
[00014e92] 0628
           2a04
           2a1c
[00014e98] 022c
           2e32
           3436
[00014e9e] 3608
[00014ea0] 0838
           0438
           1e0e
[00014ea6] 6c0a
[00014ea8] 0a02
           023a
[00014eac] 3404
[00014eae] 023c
           0202
[00014eb2] 0444
           484a
[00014eb6] 0204
           0404
[00014eba] 0404
           0404
[00014ebe] 0404
           0404
[00014ec2] 0446
           2e30
[00014ec6] 0202
           026a
[00014eca] 6a6a
[00014ecc] 1010
[00014ece] 101a
[00014ed0] 7072
[00014ed2] 7410
[00014ed4] 0210
           1202
[00014ed8] 0202
           0210
[00014edc] 0202
           0210
[00014ee0] 1010
[00014ee2] 1006
[00014ee4] 1010
[00014ee6] 1008

[00014ee8] ff19
           9721
[00014eec] ff19
[00014eee] 97ff
[00014ef0] 1883
[00014ef2] 20fc
           ff19
           a321

[00014ef8] ff0d 7720
[00014efc] fcff 19d2 ff18
[00014f02] 7f20
[00014f04] fcff 19a6 ff18
[00014f0a] 8720
[00014f0c] fcff 19a0 ff18
[00014f12] 8720
[00014f14] fc21 ff0d 7f21
[00014f1a] ff0d 7f21
[00014f1e] ff0d
[00014f20] 77fd
[00014f22] fcff 1888 20fc
[00014f28] 21ff 0d7f
[00014f2c] fdfc
[00014f2e] 21ff 0cac
[00014f32] fdfc
[00014f34] ff0d
[00014f36] 08ff 1898
[00014f3a] 20fc ff0d 0820
[00014f40] fcff 19a6 21ff
[00014f46] 1910
[00014f48] 20fc ff0d dfff
[00014f4e] 0d56
[00014f50] 20fc ff0d dfff
[00014f56] 0ddf
[00014f58] ff19 d220
[00014f5c] fcff 0cb0 21ff
[00014f62] 19d2
[00014f64] 20fc ff19 a321
[00014f6a] ff19 a921
[00014f6e] ff19
[00014f70] a9ff
[00014f72] 1892
[00014f74] 20fc ff19 a921
[00014f7a] ff19 a621
[00014f7e] ff0c ac20
[00014f82] fcff 19a3 21ff
[00014f88] 0ddf
[00014f8a] ff15
[00014f8c] 00ff 1887
[00014f90] 20fc ff19 a921
[00014f96] ff0c b020
[00014f9a] fcff 1910 21ff
[00014fa0] 1500
[00014fa2] fcff 0ddf ff19
[00014fa8] d221
[00014faa] ff19
[00014fac] d2fc ff19
[00014fb0] 1020
[00014fb2] fdd0
[00014fb4] 44fb 45ff 190d 20fd d044
[00014fbe] fb46
[00014fc0] ff19 0520
[00014fc4] fcff 1910 20fd
[00014fca] d0d1
[00014fcc] fbd2 ff19
[00014fd0] 0d20
[00014fd2] fdd0
[00014fd4] d1fb d3ff 1905 20fc ff19
[00014fde] 4b20
[00014fe0] fcff 0ca0 fcff
[00014fe6] 1953 fcff
[00014fea] 0cb8 20fd ff0d 1720
[00014ff2] fcfb d0f9 bdff
[00014ff8] 1989 fcff
[00014ffc] 19b0 20fc ff0e 4720
[00015004] fcfe 1e14 23fb
[0001500a] 9dff
[0001500c] 19ba 20fc ff14
[00015012] fb20
[00015014] fcff 0cb8 ff19
[0001501a] 91ff
[0001501c] 0dd1
[0001501e] fcff 0d17 fdff
[00015024] 0cb8 fc21 fd13 fb21
[0001502c] fcff 0ddf ff0d
[00015032] dfff
[00015034] 0ddf
[00015036] ff0d
[00015038] dfff
[0001503a] 0ddf
[0001503c] ff0d
[0001503e] dfff
[00015040] 0ddf
[00015042] ff15
[00015044] 00fc ff15 00ff
[0001504a] 19b7 fcff 0e55
[00015050] ff19
[00015052] c5ff
[00015054] 1500
[00015056] ff19
[00015058] b7fd
[0001505a] fc8a fd8b
[0001505e] fdfc
[00015060] 75fb
[00015062] 76fd
[00015064] 77fb
[00015066] 78fc
[00015068] ff19
[0001506a] d9ff
[0001506c] 1ae0
[0001506e] fcfe 068c fdfe
[00015074] 0000 fd87
[00015078] ff19 d220
[0001507c] fd3a
[0001507e] ff19 d220
[00015082] fd3a
[00015084] fb3b ff19
[00015088] d221
[0001508a] ff15
[0001508c] fcfd 3cff 19d2
[00015092] 20fd
[00015094] 3cfb 3dff 19d2 21ff 15fc
[0001509e] fd3e
[000150a0] ff19 d221
[000150a4] ff15
[000150a6] fcfd 3efb 3fff
[000150ac] 19d2
[000150ae] 21ff 0ddf
[000150b2] ff15
[000150b4] fcfd fe00 08ff
[000150ba] 15fc fd5e ff15
[000150c0] fcfd 5efb 5fff
[000150c6] 1500
[000150c8] ff0e
[000150ca] 55ff
[000150cc] 0e60 20fd
[000150d0] ff19
[000150d2] caff
[000150d4] 1ace
[000150d6] 20fd
[000150d8] 7fff
[000150da] 19d2
[000150dc] 20fd
[000150de] 81ff
[000150e0] 0ddf
[000150e2] ff15
[000150e4] fcfd 81fb 82ff
[000150ea] 0ddf
[000150ec] ff19 d220
[000150f0] fdff
[000150f2] 1aca
[000150f4] fe1e 44ff 12cc
[000150fa] fdd0
[000150fc] 60fa
[000150fe] fb83
[00015100] ff19 d220
[00015104] fdd0
[00015106] 61fa
[00015108] fb85
[0001510a] ff19 d220
[0001510e] fdbe
[00015110] ff1a
[00015112] 97fd
[00015114] c1ff
[00015116] 1aa9 fdc3
[0001511a] ff1a
[0001511c] b4fd
[0001511e] 73ff
[00015120] 1abf
[00015122] fdff
[00015124] 0d56
[00015126] fd61
[00015128] ff15
[0001512a] 0058 fcff
[0001512e] 15fc fdfb bfff
[00015134] 19a9 20fd fbc0
[0001513a] ff19 a620
[0001513e] fcff 15fc fdfb
[00015144] c2ff
[00015146] 19a9 20fc ff15
[0001514c] fcfd fbc4 ff19
[00015152] a920
[00015154] fcff 15fc fdfb
[0001515a] 74ff
[0001515c] 19a9 20fc 9efd
[00015162] 9ffc ff19 d2ff
[00015168] 1ad5
[0001516a] fcff 0e55 ff19
[00015170] d2ff
[00015172] 1ad5
[00015174] fdfc
[00015176] 06fb 1cff 19d2 fdfc
[0001517e] 0cfb 14fd 0dfb 15fd 0efb
[00015188] 16fd 0ffb
[0001518c] 17fd 10fb
[00015190] 18fd
[00015192] 11fb 19fd 12fb 1afd 13fb
[0001519c] 1bfc ff15
[000151a0] 00ff 1b10
[000151a4] 20fc 21ff 1500
[000151aa] ff1b
[000151ac] 10fd
[000151ae] fcff 19a9 21ff
[000151b4] 1c05
[000151b6] 46fd
[000151b8] fe06 ceff 19a6
[000151be] 21ff 1c05
[000151c2] 46fc ff19
[000151c6] d2ff
[000151c8] 1b39 fdff 1504
[000151ce] fcff 1ae8 ff19
[000151d4] d2ff
[000151d6] 1532 fdfc fe06 8cff
[000151de] 1b55 fdff
[000151e2] 1b58 fdfe
[000151e6] 06ce
[000151e8] ff0e
[000151ea] 60ff 0e55 ff0c
[000151f0] a0ff 1b60 46fc
[000151f6] ff0e
[000151f8] 55ff
[000151fa] 0ca0 ff1b 60fd
[00015200] fcff 1b58 fc46
[00015206] fdff
[00015208] 1bb6 46fd ff1b bcff 1b7e
[00015212] 46fc ff1c
[00015216] 05ff
[00015218] 1b85 fcff
[0001521c] 1b92 ff1c
[00015220] 05ff
[00015222] 1b85 fd22 fdfc 21fd
[0001522a] 22fb 21fc ff1b c546
[00015232] fdfe
[00015234] 06ce
[00015236] 4dff
[00015238] 1500
[0001523a] ff1b
[0001523c] a946
[0001523e] fcff 0e55 ff1b
[00015244] c5fd
[00015246] fcff 1bc5 46fc
[0001524c] 4dff
[0001524e] 1500
[00015250] fdfc
[00015252] 4dff
[00015254] 1500
[00015256] ff0e
[00015258] 55fd
[0001525a] fcff 0e55 ff1b
[00015260] c5fd
[00015262] 57ff
[00015264] 1bc5
[00015266] fd59
[00015268] ff19 a920
[0001526c] fe1c 70fe 1c7a
[00015272] ff1b
[00015274] c5fd
[00015276] ff1c
[00015278] 01ff
[0001527a] 15fc fe1c 7aff
[00015280] 1bc5
[00015282] fda3
[00015284] ff19 d221
[00015288] ff1b
[0001528a] 7efd
[0001528c] ff1c
[0001528e] 05fe
[00015290] 1c7a ff1b
[00015294] c5fd
[00015296] fca1 fda2
[0001529a] fcff 19d2 fe1c
[000152a0] 50fd
[000152a2] f937
[000152a4] ff15
[000152a6] 00fc ff0d d1fd
[000152ac] fb30 ff0e b6fc
[000152b2] ff0d 5621
[000152b6] ff0d
[000152b8] cefd
[000152ba] ff0d
[000152bc] 5646
[000152be] fcfe 1e14 ff1c
[000152c4] 3146 fc23
[000152c8] fb9d
[000152ca] ff1c
[000152cc] 46ff
[000152ce] 1c3d
[000152d0] 20fd
[000152d2] fc21 ff1c 46ff
[000152d8] 1c3d
[000152da] fdfc
[000152dc] ff15
[000152de] 00fd f937
[000152e2] ff19

[000152e4] d2fc 4850                 adda.w     #$4850,a1
[000152e8] 0c18 0020                 cmpi.b     #' ',(a0)+
[000152ec] 67fa                      beq.s      $000152E8
[000152ee] 5388                      subq.l     #1,a0
[000152f0] 0c10 003d                 cmpi.b     #$3D,(a0)
[000152f4] 670a                      beq.s      $00015300
[000152f6] 0c10 003c                 cmpi.b     #$3C,(a0)
[000152fa] 6704                      beq.s      $00015300
[000152fc] 0c10 003e                 cmpi.b     #$3E,(a0)
[00015300] 57c7                      seq        d7
[00015302] 205f                      movea.l    (a7)+,a0
[00015304] 4e75                      rts
[00015306] 0c6e 0126 0554            cmpi.w     #$0126,1364(a6)
[0001530c] 56c7                      sne        d7
[0001530e] 4e75                      rts
[00015310] 6100 e498                 bsr        skip_spaces
[00015314] 1010                      move.b     (a0),d0
[00015316] b03c 0021                 cmp.b      #'!',d0
[0001531a] 6722                      beq.s      $0001533E
[0001531c] b03c 002f                 cmp.b      #'/',d0
[00015320] 6720                      beq.s      $00015342
[00015322] b03c 002c                 cmp.b      #',',d0
[00015326] 6716                      beq.s      $0001533E
[00015328] b03c 003b                 cmp.b      #';',d0
[0001532c] 6710                      beq.s      $0001533E
[0001532e] b03c 000d                 cmp.b      #13,d0
[00015332] 670a                      beq.s      $0001533E
[00015334] b03c 0027                 cmp.b      #0x27,d0
[00015338] 6704                      beq.s      $0001533E
[0001533a] 12fc 0022                 move.b     #'"',(a1)+
[0001533e] 7e00                      moveq.l    #0,d7
[00015340] 4e75                      rts
[00015342] 1028 0001                 move.b     1(a0),d0
[00015346] b03c 002f                 cmp.b      #'/',d0
[0001534a] 67f2                      beq.s      $0001533E
[0001534c] b03c 002a                 cmp.b      #'*',d0
[00015350] 60e6                      bra.s      $00015338
[00015352] 6100 e456                 bsr        skip_spaces
[00015356] 2208                      move.l     a0,d1
[00015358] 0481 0000 0452            subi.l     #$00000452,d1
[0001535e] 928e                      sub.l      a6,d1
[00015360] 1018                      move.b     (a0)+,d0
[00015362] 1d40 20d1                 move.b     d0,8401(a6)
[00015366] b03c 0041                 cmp.b      #'A',d0
[0001536a] 6500 00b4                 bcs        $00015420
[0001536e] b03c 005a                 cmp.b      #'Z',d0
[00015372] 6200 00ac                 bhi        $00015420
[00015376] 7600                      moveq.l    #0,d3
[00015378] 5243                      addq.w     #1,d3
[0001537a] 6700 00a4                 beq        $00015420
[0001537e] 1018                      move.b     (a0)+,d0
[00015380] b03c 005f                 cmp.b      #'_',d0
[00015384] 67f2                      beq.s      $00015378
[00015386] b03c 002e                 cmp.b      #'.',d0
[0001538a] 67ec                      beq.s      $00015378
[0001538c] b03c 0041                 cmp.b      #'A',d0
[00015390] 6508                      bcs.s      $0001539A
[00015392] b03c 005a                 cmp.b      #'Z',d0
[00015396] 63e0                      bls.s      $00015378
[00015398] 600c                      bra.s      $000153A6
[0001539a] b03c 0030                 cmp.b      #'0',d0
[0001539e] 6506                      bcs.s      $000153A6
[000153a0] b03c 0039                 cmp.b      #'9',d0
[000153a4] 63d2                      bls.s      $00015378
[000153a6] 7400                      moveq.l    #0,d2
[000153a8] b03c 007b                 cmp.b      #'{',d0
[000153ac] 6772                      beq.s      $00015420
[000153ae] b03c 0025                 cmp.b      #'%',d0
[000153b2] 6756                      beq.s      $0001540A
[000153b4] b03c 0024                 cmp.b      #'$',d0
[000153b8] 6754                      beq.s      $0001540E
[000153ba] b03c 0026                 cmp.b      #'&',d0
[000153be] 6742                      beq.s      $00015402
[000153c0] b03c 007c                 cmp.b      #'|',d0
[000153c4] 6740                      beq.s      $00015406
[000153c6] b03c 0021                 cmp.b      #'!',d0
[000153ca] 6732                      beq.s      $000153FE
[000153cc] b03c 0023                 cmp.b      #'#',d0
[000153d0] 673e                      beq.s      $00015410
[000153d2] 0c97 0001 5496            cmpi.l     #$00015496,(a7)
[000153d8] 6638                      bne.s      $00015412
[000153da] 142e 20d1                 move.b     8401(a6),d2
[000153de] 143b 20c3                 move.b     $000153A3(pc,d2.w),d2
[000153e2] 602e                      bra.s      $00015412

[000153e4] 0000                      .dc.w       $0000
[000153e6] 0000                      .dc.w       $0000
[000153e8] 0000                      .dc.w       $0000
[000153ea] 0000                      .dc.w       $0000
[000153ec] 0000                      .dc.w       $0000
[000153ee] 0000                      .dc.w       $0000
[000153f0] 0000                      .dc.w       $0000
[000153f2] 0000                      .dc.w       $0000
[000153f4] 0000                      .dc.w       $0000
[000153f6] 0000                      .dc.w       $0000
[000153f8] 0000                      .dc.w       $0000
[000153fa] 0000                      .dc.w       $0000

[000153fc] 0000 7403                 ori.b      #$03,d0
[00015400] 600e                      bra.s      $00015410
[00015402] 7408                      moveq.l    #8,d2
[00015404] 600a                      bra.s      $00015410
[00015406] 7409                      moveq.l    #9,d2
[00015408] 6006                      bra.s      $00015410
[0001540a] 7402                      moveq.l    #2,d2
[0001540c] 6002                      bra.s      $00015410
[0001540e] 7401                      moveq.l    #1,d2
[00015410] 1018                      move.b     (a0)+,d0
[00015412] b03c 0028                 cmp.b      #$28,d0
[00015416] 6604                      bne.s      $0001541C
[00015418] 5802                      addq.b     #4,d2
[0001541a] 4e75                      rts
[0001541c] 5388                      subq.l     #1,a0
[0001541e] 4e75                      rts
[00015420] 74ff                      moveq.l    #-1,d2
[00015422] 4e75                      rts
[00015424] 6100 e384                 bsr        skip_spaces
[00015428] 2208                      move.l     a0,d1
[0001542a] 0481 0000 0452            subi.l     #$00000452,d1
[00015430] 928e                      sub.l      a6,d1
[00015432] 0c10 0039                 cmpi.b     #'9',(a0)
[00015436] 6200 ff1a                 bhi        $00015352
[0001543a] 0c18 0030                 cmpi.b     #'0',(a0)+
[0001543e] 6400 ff36                 bcc        $00015376
[00015442] 60dc                      bra.s      $00015420

f15444:
[00015444] 7efb                      moveq.l    #-5,d7
[00015446] 6002                      bra.s      $0001544A
f15448:
[00015448] 7efa                      moveq.l    #-6,d7
[0001544a] 61d8                      bsr.s      $00015424
[0001544c] 0882 0002                 bclr       #2,d2
[00015450] 6702                      beq.s      $00015454
[00015452] 5388                      subq.l     #1,a0
[00015454] 4a02                      tst.b      d2
[00015456] 6600 e8ae                 bne        $00013D06
[0001545a] 12c7                      move.b     d7,(a1)+
[0001545c] 12c1                      move.b     d1,(a1)+
[0001545e] 12c3                      move.b     d3,(a1)+
[00015460] 7e00                      moveq.l    #0,d7
[00015462] 4e75                      rts

f15464:
[00015464] 7e00                      moveq.l    #0,d7
[00015466] 602a                      bra.s      x15492
f15468:
[00015468] 7e01                      moveq.l    #1,d7
[0001546a] 6026                      bra.s      x15492
f1546c:
[0001546c] 7e02                      moveq.l    #2,d7
[0001546e] 6022                      bra.s      x15492
f15470:
[00015470] 7e03                      moveq.l    #3,d7
[00015472] 601e                      bra.s      x15492
f15474:
[00015474] 7e04                      moveq.l    #4,d7
[00015476] 601a                      bra.s      x15492
f15478:
[00015478] 7e05                      moveq.l    #5,d7
[0001547a] 6016                      bra.s      x15492
f1547c:
[0001547c] 7e06                      moveq.l    #6,d7
[0001547e] 6012                      bra.s      x15492
f15480:
[00015480] 7e07                      moveq.l    #7,d7
[00015482] 600e                      bra.s      x15492
f15484:
[00015484] 7e08                      moveq.l    #8,d7
[00015486] 600a                      bra.s      x15492
f15488:
[00015488] 7e09                      moveq.l    #9,d7
[0001548a] 6006                      bra.s      x15492
f1548c:
[0001548c] 7e0c                      moveq.l    #12,d7
[0001548e] 6002                      bra.s      x15492
f15490:
[00015490] 7e0d                      moveq.l    #13,d7

x15492:
[00015492] 6100 febe                 bsr        $00015352
[00015496] b407                      cmp.b      d7,d2
[00015498] 6600 e86c                 bne        $00013D06
[0001549c] 0602 00f0                 addi.b     #$F0,d2
[000154a0] 12c2                      move.b     d2,(a1)+
[000154a2] 12c1                      move.b     d1,(a1)+
[000154a4] 12c3                      move.b     d3,(a1)+
[000154a6] 7e00                      moveq.l    #0,d7
[000154a8] 4e75                      rts
[000154aa] 6100 fea6                 bsr        $00015352
[000154ae] 0882 0002                 bclr       #2,d2
[000154b2] 6702                      beq.s      $000154B6
[000154b4] 5388                      subq.l     #1,a0
[000154b6] 4a02                      tst.b      d2
[000154b8] 67e2                      beq.s      $0001549C
[000154ba] b43c 0002                 cmp.b      #$02,d2
[000154be] 67dc                      beq.s      $0001549C
[000154c0] 6000 e844                 bra        $00013D06

f154c4:
[000154c4] 6100 fe8c                 bsr        $00015352
[000154c8] 0882 0002                 bclr       #2,d2
[000154cc] 6702                      beq.s      $000154D0
[000154ce] 5388                      subq.l     #1,a0
[000154d0] 4a02                      tst.b      d2
[000154d2] 6600 e832                 bne        $00013D06
[000154d6] 740e                      moveq.l    #14,d2
[000154d8] 60c2                      bra.s      $0001549C

f154da:
[000154da] 6100 fe76                 bsr        $00015352
[000154de] 0882 0002                 bclr       #2,d2
[000154e2] 6702                      beq.s      $000154E6
[000154e4] 5388                      subq.l     #1,a0
[000154e6] 5302                      subq.b     #1,d2
[000154e8] 6600 e81c                 bne        $00013D06
[000154ec] 740f                      moveq.l    #15,d2
[000154ee] 60ac                      bra.s      $0001549C
[000154f0] 41ee 0554                 lea.l      1364(a6),a0
[000154f4] 3018                      move.w     (a0)+,d0
[000154f6] b07c 00e4                 cmp.w      #228,d0 /* TOK_CMD_REM*2 */
[000154fa] 671e                      beq.s      $0001551A
[000154fc] b07c 00e6                 cmp.w      #230,d0 /* TOK_CMD_COMMENT*2 */
[00015500] 6718                      beq.s      $0001551A
[00015502] b07c 00e8                 cmp.w      #232,d0 /* TOK_CMD_SYNERR*2 */
[00015506] 6712                      beq.s      $0001551A
[00015508] b07c 01fc                 cmp.w      #508,d0 /* TOK_CMD_DOT*2 */
[0001550c] 670c                      beq.s      $0001551A
[0001550e] b07c 0336                 cmp.w      #822,d0 /* TOK_CMD_DOLLAR*2 */
[00015512] 6706                      beq.s      $0001551A
[00015514] b07c 00ea                 cmp.w      #234,d0 /* TOK_CMD_DATA*2 */
[00015518] 6608                      bne.s      $00015522
[0001551a] 4e75                      rts

[0001551c] 50f9 0001 37b2            st         x137b2
[00015522] 1018                      move.b     (a0)+,d0
[00015524] b03c 00c6                 cmp.b      #$C6,d0
[00015528] 6416                      bcc.s      $00015540
[0001552a] b03c 009e                 cmp.b      #$9E,d0
[0001552e] 67ec                      beq.s      $0001551C
[00015530] b03c 009f                 cmp.b      #$9F,d0
[00015534] 67e6                      beq.s      $0001551C
[00015536] b03c 0046                 cmp.b      #$46,d0
[0001553a] 66e6                      bne.s      $00015522
[0001553c] 2248                      movea.l    a0,a1
[0001553e] 4e75                      rts
[00015540] b03c 00d6                 cmp.b      #$D6,d0
[00015544] 6436                      bcc.s      $0001557C
[00015546] b03c 00d0                 cmp.b      #$D0,d0
[0001554a] 640e                      bcc.s      $0001555A
[0001554c] e208                      lsr.b      #1,d0
[0001554e] 640e                      bcc.s      $0001555E
[00015550] 2008                      move.l     a0,d0
[00015552] e208                      lsr.b      #1,d0
[00015554] 641a                      bcc.s      $00015570
[00015556] 5288                      addq.l     #1,a0
[00015558] 5688                      addq.l     #3,a0
[0001555a] 5288                      addq.l     #1,a0
[0001555c] 60c4                      bra.s      $00015522
[0001555e] 2008                      move.l     a0,d0
[00015560] e248                      lsr.w      #1,d0
[00015562] 64f4                      bcc.s      $00015558
[00015564] 6100 0216                 bsr        $0001577C
[00015568] 0860 0000                 bchg       #0,-(a0)
[0001556c] 5c88                      addq.l     #6,a0
[0001556e] 60b2                      bra.s      $00015522
[00015570] 6100 01fa                 bsr        $0001576C
[00015574] 0860 0000                 bchg       #0,-(a0)
[00015578] 5a88                      addq.l     #5,a0
[0001557a] 60a6                      bra.s      $00015522
[0001557c] b03c 00de                 cmp.b      #$DE,d0
[00015580] 6746                      beq.s      $000155C8
[00015582] b03c 00df                 cmp.b      #$DF,d0
[00015586] 6718                      beq.s      $000155A0
[00015588] 6246                      bhi.s      $000155D0
[0001558a] b03c 00dd                 cmp.b      #$DD,d0
[0001558e] 6600 01fc                 bne        $0001578C
[00015592] 2008                      move.l     a0,d0
[00015594] 0800 0000                 btst       #0,d0
[00015598] 6712                      beq.s      $000155AC
[0001559a] d0fc 0009                 adda.w     #9,a0
[0001559e] 60da                      bra.s      $0001557A
[000155a0] 2008                      move.l     a0,d0
[000155a2] 0800 0000                 btst       #0,d0
[000155a6] 6612                      bne.s      $000155BA
[000155a8] 5088                      addq.l     #8,a0
[000155aa] 60ce                      bra.s      $0001557A
[000155ac] 6100 01be                 bsr        $0001576C
[000155b0] 113c 00df                 move.b     #$DF,-(a0)
[000155b4] d0fc 0009                 adda.w     #9,a0
[000155b8] 60c0                      bra.s      $0001557A
[000155ba] 6100 01c0                 bsr        $0001577C
[000155be] 113c 00dd                 move.b     #$DD,-(a0)
[000155c2] d0fc 000a                 adda.w     #10,a0
[000155c6] 60b2                      bra.s      $0001557A
[000155c8] 7000                      moveq.l    #0,d0
[000155ca] 1018                      move.b     (a0)+,d0
[000155cc] d0c0                      adda.w     d0,a0
[000155ce] 60aa                      bra.s      $0001557A
[000155d0] 7200                      moveq.l    #0,d1
[000155d2] 1218                      move.b     (a0)+,d1
[000155d4] 45ee 0452                 lea.l      1106(a6),a2
[000155d8] d4c1                      adda.w     d1,a2
[000155da] 1218                      move.b     (a0)+,d1
[000155dc] 0240 000f                 andi.w     #$000F,d0
[000155e0] d040                      add.w      d0,d0
[000155e2] d040                      add.w      d0,d0
[000155e4] 47ee 0010                 lea.l      16(a6),a3
[000155e8] 2873 0000                 movea.l    0(a3,d0.w),a4
[000155ec] 2a73 0004                 movea.l    4(a3,d0.w),a5
[000155f0] 7eff                      moveq.l    #-1,d7
[000155f2] 7401                      moveq.l    #1,d2
[000155f4] 5247                      addq.w     #1,d7
[000155f6] b9cd                      cmpa.l     a5,a4
[000155f8] 6446                      bcc.s      $00015640
[000155fa] 7400                      moveq.l    #0,d2
[000155fc] 141c                      move.b     (a4)+,d2
[000155fe] 6740                      beq.s      $00015640
[00015600] b202                      cmp.b      d2,d1
[00015602] 6706                      beq.s      $0001560A
[00015604] 49f4 2000                 lea.l      0(a4,d2.w),a4
[00015608] 60ea                      bra.s      $000155F4
[0001560a] 3602                      move.w     d2,d3
[0001560c] 5343                      subq.w     #1,d3
[0001560e] 1832 3000                 move.b     0(a2,d3.w),d4
[00015612] b834 3000                 cmp.b      0(a4,d3.w),d4
[00015616] 56cb fff6                 dbne       d3,$0001560E
[0001561a] 66e8                      bne.s      $00015604
[0001561c] be7c 00ff                 cmp.w      #$00FF,d7
[00015620] 6210                      bhi.s      $00015632
[00015622] 5788                      subq.l     #3,a0
[00015624] 0418 0010                 subi.b     #$10,(a0)+
[00015628] 10c7                      move.b     d7,(a0)+
[0001562a] 6100 0140                 bsr        $0001576C
[0001562e] 6000 fef2                 bra        $00015522
[00015632] 1147 ffff                 move.b     d7,-1(a0)
[00015636] e15f                      rol.w      #8,d7
[00015638] 1147 fffe                 move.b     d7,-2(a0)
[0001563c] 6000 fee4                 bra        $00015522
[00015640] 48e7 e1e0                 movem.l    d0-d2/d7/a0-a2,-(a7)
[00015644] 4a79 0001 5c42            tst.w      $00015C42
[0001564a] 6700 00b2                 beq        $000156FE
[0001564e] 700f                      moveq.l    #15,d0
[00015650] c028 fffd                 and.b      -3(a0),d0
[00015654] d040                      add.w      d0,d0
[00015656] 41ee 14f0                 lea.l      5360(a6),a0
[0001565a] 20fc 5b32 5d5b            move.l     #$5B325D5B,(a0)+
[00015660] 43f9 0001 65b0            lea.l      newvar_msg,a1
[00015666] b07c 001c                 cmp.w      #$001C,d0
[0001566a] 6506                      bcs.s      $00015672
[0001566c] 43f9 0001 65cd            lea.l      newfunc_msg,a1
[00015672] b07c 0014                 cmp.w      #$0014,d0
[00015676] 6606                      bne.s      $0001567E
[00015678] 43f9 0001 65db            lea.l      newlab_msg,a1
[0001567e] b07c 0016                 cmp.w      #$0016,d0
[00015682] 6606                      bne.s      $0001568A
[00015684] 43f9 0001 65be            lea.l      newproc_msg,a1
[0001568a] 10d9                      move.b     (a1)+,(a0)+
[0001568c] 66fc                      bne.s      $0001568A
[0001568e] 117c 0020 ffff            move.b     #' ',-1(a0)
[00015694] 10fc 003f                 move.b     #$3F,(a0)+
[00015698] 10fc 007c                 move.b     #'|',(a0)+
[0001569c] 741d                      moveq.l    #29,d2
[0001569e] 6002                      bra.s      $000156A2
[000156a0] 10da                      move.b     (a2)+,(a0)+
[000156a2] 5342                      subq.w     #1,d2
[000156a4] 5bc9 fffa                 dbmi       d1,$000156A0
[000156a8] 6bee                      bmi.s      $00015698
[000156aa] 45fb 0010                 lea.l      $000156BC(pc,d0.w),a2
[000156ae] 10da                      move.b     (a2)+,(a0)+
[000156b0] 10da                      move.b     (a2)+,(a0)+
[000156b2] 45fa 0028                 lea.l      $000156DC(pc),a2
[000156b6] 10da                      move.b     (a2)+,(a0)+
[000156b8] 66fc                      bne.s      $000156B6
[000156ba] 602c                      bra.s      $000156E8
[000156bc] 2320                      move.l     -(a0),-(a1)
[000156be] 2420                      move.l     -(a0),d2
[000156c0] 2520                      move.l     -(a0),-(a2)
[000156c2] 2120                      move.l     -(a0),-(a0)
[000156c4] 2328 2428                 move.l     9256(a0),-(a1)
[000156c8] 2528 2128                 move.l     8488(a0),-(a2)
[000156cc] 2620                      move.l     -(a0),d3
[000156ce] 5c20                      addq.b     #6,-(a0)
[000156d0] 3a20                      move.w     -(a0),d5
[000156d2] 2020                      move.l     -(a0),d0
[000156d4] 2628 5c28                 move.l     23592(a0),d3
[000156d8] 2020                      move.l     -(a0),d0
[000156da] 2420                      move.l     -(a0),d2
[000156dc] 5d5b                      subq.w     #6,(a3)+
[000156de] 4f6b 7c45                 lea.l      31813(a3),b7 ; apollo only
[000156e2] 7272                      moveq.l    #114,d1
[000156e4] 6f72                      ble.s      $00015758
[000156e6] 5d00                      subq.b     #6,d0
[000156e8] 7001                      moveq.l    #1,d0
[000156ea] 41ee 14f0                 lea.l      5360(a6),a0
[000156ee] 4eb9 0001 018e            jsr        $0001018E
[000156f4] 5340                      subq.w     #1,d0
[000156f6] 6600 e18e                 bne        $00013886
[000156fa] 4cd7 0787                 movem.l    (a7),d0-d2/d7/a0-a2
[000156fe] 4a02                      tst.b      d2
[00015700] 6602                      bne.s      $00015704
[00015702] 5341                      subq.w     #1,d1
[00015704] 5441                      addq.w     #2,d1
[00015706] 0241 00fe                 andi.w     #$00FE,d1
[0001570a] 4a39 0001 1323            tst.b      $00011323
[00015710] 6606                      bne.s      $00015718
[00015712] 4eb9 0001 194e            jsr        $0001194E
[00015718] 41ee 0014                 lea.l      20(a6),a0
[0001571c] d0c0                      adda.w     d0,a0
[0001571e] 3840                      movea.w    d0,a4
[00015720] 7000                      moveq.l    #0,d0
[00015722] 3001                      move.w     d1,d0
[00015724] 4eb9 0001 0ef2            jsr        ALLOT
[0001572a] 4230 00ff                 clr.b      -1(a0,d0.w)
[0001572e] 2648                      movea.l    a0,a3
[00015730] 4cd7 0787                 movem.l    (a7),d0-d2/d7/a0-a2
[00015734] 4a02                      tst.b      d2
[00015736] 6602                      bne.s      $0001573A
[00015738] 538b                      subq.l     #1,a3
[0001573a] 16c1                      move.b     d1,(a3)+
[0001573c] 5341                      subq.w     #1,d1
[0001573e] 17b2 1000 1000            move.b     0(a2,d1.w),0(a3,d1.w)
[00015744] 51c9 fff8                 dbf        d1,$0001573E
[00015748] 41ee 0060                 lea.l      96(a6),a0
[0001574c] d0cc                      adda.w     a4,a0
[0001574e] 7004                      moveq.l    #4,d0
[00015750] 4eb9 0001 0ef2            jsr        ALLOT
[00015756] 4a39 0001 1323            tst.b      $00011323
[0001575c] 6606                      bne.s      $00015764
[0001575e] 4eb9 0001 18e2            jsr        $000118E2
[00015764] 4cdf 0787                 movem.l    (a7)+,d0-d2/d7/a0-a2
[00015768] 6000 feb2                 bra        $0001561C
[0001576c] 2848                      movea.l    a0,a4
[0001576e] 4bec 0001                 lea.l      1(a4),a5
[00015772] 18dd                      move.b     (a5)+,(a4)+
[00015774] b3cc                      cmpa.l     a4,a1
[00015776] 62fa                      bhi.s      $00015772
[00015778] 5389                      subq.l     #1,a1
[0001577a] 4e75                      rts
[0001577c] 2849                      movea.l    a1,a4
[0001577e] 4bec 0001                 lea.l      1(a4),a5
[00015782] 1b24                      move.b     -(a4),-(a5)
[00015784] b1cc                      cmpa.l     a4,a0
[00015786] 65fa                      bcs.s      $00015782
[00015788] 5289                      addq.l     #1,a1
[0001578a] 4e75                      rts
[0001578c] 0800 0000                 btst       #0,d0
[00015790] 6710                      beq.s      $000157A2
[00015792] 2008                      move.l     a0,d0
[00015794] 0800 0000                 btst       #0,d0
[00015798] 6716                      beq.s      $000157B0
[0001579a] d0fc 0009                 adda.w     #9,a0
[0001579e] 6000 fd82                 bra        $00015522
[000157a2] 2008                      move.l     a0,d0
[000157a4] 0800 0000                 btst       #0,d0
[000157a8] 6612                      bne.s      $000157BC
[000157aa] 5088                      addq.l     #8,a0
[000157ac] 6000 fd74                 bra        $00015522
[000157b0] 61ba                      bsr.s      $0001576C
[000157b2] 5220                      addq.b     #1,-(a0)
[000157b4] d0fc 0009                 adda.w     #9,a0
[000157b8] 6000 fd68                 bra        $00015522
[000157bc] 61be                      bsr.s      $0001577C
[000157be] 5320                      subq.b     #1,-(a0)
[000157c0] d0fc 000a                 adda.w     #10,a0
[000157c4] 6000 fd5c                 bra        $00015522
[000157c8] 1018                      move.b     (a0)+,d0
[000157ca] b03c 0020                 cmp.b      #' ',d0
[000157ce] 67f8                      beq.s      $000157C8
[000157d0] 4e75                      rts
[000157d2] 4239 0001 585a            clr.b      $0001585A
[000157d8] 7400                      moveq.l    #0,d2
[000157da] b03c 0022                 cmp.b      #$22,d0
[000157de] 6700 00f0                 beq        $000158D0
[000157e2] b03c 002b                 cmp.b      #$2B,d0
[000157e6] 670c                      beq.s      $000157F4
[000157e8] b03c 002d                 cmp.b      #$2D,d0
[000157ec] 660a                      bne.s      $000157F8
[000157ee] 4639 0001 585a            not.b      $0001585A
[000157f4] 61d2                      bsr.s      $000157C8
[000157f6] 60ea                      bra.s      $000157E2
[000157f8] b03c 0026                 cmp.b      #'&',d0
[000157fc] 675e                      beq.s      $0001585C
[000157fe] 7203                      moveq.l    #3,d1
[00015800] b03c 0025                 cmp.b      #'%',d0
[00015804] 6700 00b2                 beq        $000158B8
[00015808] 7201                      moveq.l    #1,d1
[0001580a] b03c 0024                 cmp.b      #'$',d0
[0001580e] 6766                      beq.s      $00015876
[00015810] 0400 0030                 subi.b     #'0',d0
[00015814] b03c 0009                 cmp.b      #$09,d0
[00015818] 622e                      bhi.s      $00015848
[0001581a] 7200                      moveq.l    #0,d1
[0001581c] 740f                      moveq.l    #15,d2
[0001581e] c440                      and.w      d0,d2
[00015820] 7000                      moveq.l    #0,d0
[00015822] 1018                      move.b     (a0)+,d0
[00015824] b03c 0030                 cmp.b      #'0',d0
[00015828] 6522                      bcs.s      $0001584C
[0001582a] b03c 0039                 cmp.b      #'9',d0
[0001582e] 621c                      bhi.s      $0001584C
[00015830] 0200 000f                 andi.b     #$0F,d0
[00015834] d482                      add.l      d2,d2
[00015836] 6910                      bvs.s      $00015848
[00015838] d082                      add.l      d2,d0
[0001583a] 690c                      bvs.s      $00015848
[0001583c] d482                      add.l      d2,d2
[0001583e] 6908                      bvs.s      $00015848
[00015840] d482                      add.l      d2,d2
[00015842] 6904                      bvs.s      $00015848
[00015844] d480                      add.l      d0,d2
[00015846] 68d8                      bvc.s      $00015820
[00015848] 703f                      moveq.l    #63,d0
[0001584a] 4e75                      rts
[0001584c] 4a39 0001 585a            tst.b      $0001585A
[00015852] 6702                      beq.s      $00015856
[00015854] 4482                      neg.l      d2
[00015856] 6000 ff72                 bra        $000157CA
[0001585a] 0000 1018                 ori.b      #$18,d0
[0001585e] 7203                      moveq.l    #3,d1
[00015860] b03c 0058                 cmp.b      #$58,d0
[00015864] 6752                      beq.s      $000158B8
[00015866] 7202                      moveq.l    #2,d1
[00015868] b03c 004f                 cmp.b      #$4F,d0
[0001586c] 6730                      beq.s      $0001589E
[0001586e] 7201                      moveq.l    #1,d1
[00015870] b03c 0048                 cmp.b      #$48,d0
[00015874] 6602                      bne.s      $00015878
[00015876] 1018                      move.b     (a0)+,d0
[00015878] b03c 0046                 cmp.b      #$46,d0
[0001587c] 62ce                      bhi.s      $0001584C
[0001587e] b03c 0030                 cmp.b      #'0',d0
[00015882] 65c8                      bcs.s      $0001584C
[00015884] b03c 0039                 cmp.b      #'9',d0
[00015888] 6308                      bls.s      $00015892
[0001588a] b03c 0041                 cmp.b      #'A',d0
[0001588e] 65b8                      bcs.s      $00015848
[00015890] 5f00                      subq.b     #7,d0
[00015892] 0200 000f                 andi.b     #$0F,d0
[00015896] e982                      asl.l      #4,d2
[00015898] 65ae                      bcs.s      $00015848
[0001589a] 8400                      or.b       d0,d2
[0001589c] 60d8                      bra.s      $00015876
[0001589e] 1018                      move.b     (a0)+,d0
[000158a0] b03c 0030                 cmp.b      #'0',d0
[000158a4] 65a6                      bcs.s      $0001584C
[000158a6] b03c 0039                 cmp.b      #'9',d0
[000158aa] 62a0                      bhi.s      $0001584C
[000158ac] 0200 0007                 andi.b     #$07,d0
[000158b0] e782                      asl.l      #3,d2
[000158b2] 6594                      bcs.s      $00015848
[000158b4] 8400                      or.b       d0,d2
[000158b6] 60e6                      bra.s      $0001589E
[000158b8] 1018                      move.b     (a0)+,d0
[000158ba] b03c 0030                 cmp.b      #'0',d0
[000158be] 658c                      bcs.s      $0001584C
[000158c0] b03c 0031                 cmp.b      #$31,d0
[000158c4] 6286                      bhi.s      $0001584C
[000158c6] e208                      lsr.b      #1,d0
[000158c8] e392                      roxl.l     #1,d2
[000158ca] 6500 ff7c                 bcs        $00015848
[000158ce] 60e8                      bra.s      $000158B8
[000158d0] 7204                      moveq.l    #4,d1
[000158d2] 1018                      move.b     (a0)+,d0
[000158d4] b03c 000d                 cmp.b      #13,d0
[000158d8] 6700 ff72                 beq        $0001584C
[000158dc] b03c 0022                 cmp.b      #$22,d0
[000158e0] 660a                      bne.s      $000158EC
[000158e2] 1018                      move.b     (a0)+,d0
[000158e4] b03c 0022                 cmp.b      #$22,d0
[000158e8] 6600 ff62                 bne        $0001584C
[000158ec] e182                      asl.l      #8,d2
[000158ee] 6500 ff58                 bcs        $00015848
[000158f2] 1428 feff                 move.b     -257(a0),d2
[000158f6] 60da                      bra.s      $000158D2

f158f8:
[000158f8] 4850                      pea.l      (a0)
[000158fa] 6100 fecc                 bsr        $000157C8
[000158fe] 6100 fed2                 bsr        $000157D2
[00015902] b23c 0004                 cmp.b      #$04,d1
[00015906] 674c                      beq.s      $00015954
[00015908] b03c 002c                 cmp.b      #$2C,d0
[0001590c] 6728                      beq.s      $00015936
[0001590e] b03c 0029                 cmp.b      #$29,d0
[00015912] 6722                      beq.s      $00015936
[00015914] b03c 0054                 cmp.b      #$54,d0
[00015918] 671c                      beq.s      $00015936
[0001591a] b03c 0021                 cmp.b      #'!',d0
[0001591e] 6716                      beq.s      $00015936
[00015920] b03c 002f                 cmp.b      #'/',d0
[00015924] 660a                      bne.s      $00015930
[00015926] b010                      cmp.b      (a0),d0
[00015928] 670c                      beq.s      $00015936
[0001592a] 0c10 002a                 cmpi.b     #'*',(a0)
[0001592e] 6706                      beq.s      $00015936
[00015930] b03c 000d                 cmp.b      #13,d0
[00015934] 661e                      bne.s      $00015954
[00015936] 76c8                      moveq.l    #-56,d3
[00015938] 5388                      subq.l     #1,a0
[0001593a] d241                      add.w      d1,d1
[0001593c] d203                      add.b      d3,d1
[0001593e] 12c1                      move.b     d1,(a1)+
[00015940] 2609                      move.l     a1,d3
[00015942] e28b                      lsr.l      #1,d3
[00015944] 6406                      bcc.s      $0001594C
[00015946] 5229 ffff                 addq.b     #1,-1(a1)
[0001594a] 4219                      clr.b      (a1)+
[0001594c] 22c2                      move.l     d2,(a1)+
[0001594e] 7e00                      moveq.l    #0,d7
[00015950] 588f                      addq.l     #4,a7
[00015952] 4e75                      rts
[00015954] 7eff                      moveq.l    #-1,d7
[00015956] 205f                      movea.l    (a7)+,a0
[00015958] 4e75                      rts
f1595a:
[0001595a] 4850                      pea.l      (a0)
[0001595c] 6100 fe6a                 bsr        $000157C8
[00015960] 6100 fe70                 bsr        $000157D2
[00015964] b23c 0004                 cmp.b      #$04,d1
[00015968] 669e                      bne.s      $00015908
[0001596a] 72ff                      moveq.l    #-1,d1
[0001596c] 609a                      bra.s      $00015908
f1596e:
[0001596e] 7000                      moveq.l    #0,d0
[00015970] 6006                      bra.s      $00015978
f15972:
[00015972] 7002                      moveq.l    #2,d0
[00015974] 6002                      bra.s      $00015978
f15976:
[00015976] 7004                      moveq.l    #4,d0
[00015978] 13c0 0001 5980            move.b     d0,$00015980
[0001597e] 4e75                      rts
[00015980] 0000 41ee                 ori.b      #$EE,d0
[00015984] 0554                      bchg       d2,(a4)
[00015986] 3018                      move.w     (a0)+,d0
[00015988] b07c 0078                 cmp.w      #$0078,d0
[0001598c] 6710                      beq.s      $0001599E
[0001598e] b07c 007a                 cmp.w      #$007A,d0
[00015992] 670a                      beq.s      $0001599E
[00015994] b07c 007c                 cmp.w      #$007C,d0
[00015998] 6704                      beq.s      $0001599E
[0001599a] b07c 000c                 cmp.w      #$000C,d0
[0001599e] 6700 020a                 beq        $00015BAA
[000159a2] b07c 0140                 cmp.w      #$0140,d0
[000159a6] 650a                      bcs.s      $000159B2
[000159a8] b07c 0190                 cmp.w      #$0190,d0
[000159ac] 6300 0198                 bls        $00015B46
[000159b0] 4e75                      rts
[000159b2] b07c 0080                 cmp.w      #128,d0 /* TOK_CMD_LET_FLOAT*2 */
[000159b6] 6700 0082                 beq        $00015A3A
[000159ba] b07c 0098                 cmp.w      #152,d0 /* TOK_CMD_ASSIGN_FLOAT*2 */
[000159be] 677a                      beq.s      $00015A3A
[000159c0] b07c 0026                 cmp.w      #38,d0 /* TOK_CMD_FOR_FLOAT*2 */
[000159c4] 6708                      beq.s      $000159CE
[000159c6] b07c 003e                 cmp.w      #62,d0 /* TOK_CMD_NEXT_FLOAT*2 */
[000159ca] 6742                      beq.s      $00015A0E
[000159cc] 4e75                      rts
[000159ce] 720f                      moveq.l    #15,d1
[000159d0] c210                      and.b      (a0),d1
[000159d2] 7026                      moveq.l    #38,d0
[000159d4] d03b 102e                 add.b      $00015A04(pc,d1.w),d0
[000159d8] d039 0001 5980            add.b      $00015980,d0
[000159de] 1140 ffff                 move.b     d0,-1(a0)
[000159e2] 0810 0004                 btst       #4,(a0)
[000159e6] 6710                      beq.s      $000159F8
[000159e8] 10e8 0001                 move.b     1(a0),(a0)+
[000159ec] 10e8 0001                 move.b     1(a0),(a0)+
[000159f0] 43e8 0002                 lea.l      2(a0),a1
[000159f4] 6000 00aa                 bra        $00015AA0
[000159f8] 4218                      clr.b      (a0)+
[000159fa] 5288                      addq.l     #1,a0
[000159fc] 43e8 0001                 lea.l      1(a0),a1
[00015a00] 6000 009e                 bra        $00015AA0

x15a04: .dc.b 0,0,6,0,0,0,0,0,12,18

[00015a0e] 5888                      addq.l     #4,a0
[00015a10] 720f                      moveq.l    #15,d1
[00015a12] c210                      and.b      (a0),d1
[00015a14] 703e                      moveq.l    #62,d0
[00015a16] d03b 10ec                 add.b      $00015A04(pc,d1.w),d0
[00015a1a] 1140 fffb                 move.b     d0,-5(a0)
[00015a1e] 0810 0004                 btst       #4,(a0)
[00015a22] 6710                      beq.s      $00015A34
[00015a24] 10e8 0001                 move.b     1(a0),(a0)+
[00015a28] 10e8 0001                 move.b     1(a0),(a0)+
[00015a2c] 10fc 0046                 move.b     #$46,(a0)+
[00015a30] 2248                      movea.l    a0,a1
[00015a32] 4e75                      rts
[00015a34] 4218                      clr.b      (a0)+
[00015a36] 5288                      addq.l     #1,a0
[00015a38] 60f2                      bra.s      $00015A2C
[00015a3a] 720f                      moveq.l    #15,d1
[00015a3c] c210                      and.b      (a0),d1
[00015a3e] 143b 1036                 move.b     $00015A76(pc,d1.w),d2
[00015a42] d528 ffff                 add.b      d2,-1(a0)
[00015a46] 0810 0004                 btst       #4,(a0)
[00015a4a] 6716                      beq.s      $00015A62
[00015a4c] 10e8 0001                 move.b     1(a0),(a0)+
[00015a50] 10e8 0001                 move.b     1(a0),(a0)+
[00015a54] 43e8 0001                 lea.l      1(a0),a1
[00015a58] 0c11 0045                 cmpi.b     #$45,(a1)
[00015a5c] 6642                      bne.s      $00015AA0
[00015a5e] 5289                      addq.l     #1,a1
[00015a60] 603e                      bra.s      $00015AA0
[00015a62] 4218                      clr.b      (a0)+
[00015a64] 0c28 0045 0001            cmpi.b     #$45,1(a0)
[00015a6a] 6608                      bne.s      $00015A74
[00015a6c] 5288                      addq.l     #1,a0
[00015a6e] 43e8 0001                 lea.l      1(a0),a1
[00015a72] 602c                      bra.s      $00015AA0
[00015a74] 4e75                      rts
[00015a76] 0002 0406                 ori.b      #$06,d2
[00015a7a] 0c0e 1012                 cmpi.b     #$12,a6 ; apollo only
[00015a7e] 080a 0000                 btst       #0,a2
[00015a82] 1416                      move.b     (a6),d2
[00015a84] 0000 7000                 ori.b      #$00,d0
[00015a88] 1019                      move.b     (a1)+,d0
[00015a8a] 10c0                      move.b     d0,(a0)+
[00015a8c] 6002                      bra.s      $00015A90
[00015a8e] 10d9                      move.b     (a1)+,(a0)+
[00015a90] 51c8 fffc                 dbf        d0,$00015A8E
[00015a94] 600a                      bra.s      $00015AA0
[00015a96] b03c 00f0                 cmp.b      #$F0,d0
[00015a9a] 6502                      bcs.s      $00015A9E
[00015a9c] 10d9                      move.b     (a1)+,(a0)+
[00015a9e] 10d9                      move.b     (a1)+,(a0)+
[00015aa0] 1019                      move.b     (a1)+,d0
[00015aa2] 10c0                      move.b     d0,(a0)+
[00015aa4] b03c 0046                 cmp.b      #$46,d0
[00015aa8] 6774                      beq.s      $00015B1E
[00015aaa] b03c 00c6                 cmp.b      #$C6,d0
[00015aae] 65f0                      bcs.s      $00015AA0
[00015ab0] b03c 00d6                 cmp.b      #$D6,d0
[00015ab4] 6432                      bcc.s      $00015AE8
[00015ab6] b03c 00d0                 cmp.b      #$D0,d0
[00015aba] 6428                      bcc.s      $00015AE4
[00015abc] e208                      lsr.b      #1,d0
[00015abe] 6410                      bcc.s      $00015AD0
[00015ac0] 2208                      move.l     a0,d1
[00015ac2] e209                      lsr.b      #1,d1
[00015ac4] 6518                      bcs.s      $00015ADE
[00015ac6] 0868 0000 ffff            bchg       #0,-1(a0)
[00015acc] 5289                      addq.l     #1,a1
[00015ace] 6010                      bra.s      $00015AE0
[00015ad0] 2208                      move.l     a0,d1
[00015ad2] e209                      lsr.b      #1,d1
[00015ad4] 640a                      bcc.s      $00015AE0
[00015ad6] 0860 0000                 bchg       #0,-(a0)
[00015ada] 5488                      addq.l     #2,a0
[00015adc] 6002                      bra.s      $00015AE0
[00015ade] 10d9                      move.b     (a1)+,(a0)+
[00015ae0] 20d9                      move.l     (a1)+,(a0)+
[00015ae2] 60bc                      bra.s      $00015AA0
[00015ae4] 10d9                      move.b     (a1)+,(a0)+
[00015ae6] 60b8                      bra.s      $00015AA0
[00015ae8] b03c 00df                 cmp.b      #$DF,d0
[00015aec] 6734                      beq.s      $00015B22
[00015aee] 62a6                      bhi.s      $00015A96
[00015af0] b03c 00dd                 cmp.b      #$DD,d0
[00015af4] 673c                      beq.s      $00015B32
[00015af6] 628e                      bhi.s      $00015A86
[00015af8] e208                      lsr.b      #1,d0
[00015afa] 640e                      bcc.s      $00015B0A
[00015afc] 2208                      move.l     a0,d1
[00015afe] e209                      lsr.b      #1,d1
[00015b00] 6514                      bcs.s      $00015B16
[00015b02] 5228 ffff                 addq.b     #1,-1(a0)
[00015b06] 5289                      addq.l     #1,a1
[00015b08] 600e                      bra.s      $00015B18
[00015b0a] 2208                      move.l     a0,d1
[00015b0c] e209                      lsr.b      #1,d1
[00015b0e] 6408                      bcc.s      $00015B18
[00015b10] 5320                      subq.b     #1,-(a0)
[00015b12] 5488                      addq.l     #2,a0
[00015b14] 6002                      bra.s      $00015B18
[00015b16] 10d9                      move.b     (a1)+,(a0)+
[00015b18] 20d9                      move.l     (a1)+,(a0)+
[00015b1a] 20d9                      move.l     (a1)+,(a0)+
[00015b1c] 6082                      bra.s      $00015AA0
[00015b1e] 2248                      movea.l    a0,a1
[00015b20] 4e75                      rts
[00015b22] 2208                      move.l     a0,d1
[00015b24] e209                      lsr.b      #1,d1
[00015b26] 64f0                      bcc.s      $00015B18
[00015b28] 117c 00dd ffff            move.b     #$DD,-1(a0)
[00015b2e] 4218                      clr.b      (a0)+
[00015b30] 60e6                      bra.s      $00015B18
[00015b32] 2208                      move.l     a0,d1
[00015b34] e209                      lsr.b      #1,d1
[00015b36] 650a                      bcs.s      $00015B42
[00015b38] 117c 00df ffff            move.b     #$DF,-1(a0)
[00015b3e] 5289                      addq.l     #1,a1
[00015b40] 60d6                      bra.s      $00015B18
[00015b42] 10d9                      move.b     (a1)+,(a0)+
[00015b44] 60d2                      bra.s      $00015B18
[00015b46] 720f                      moveq.l    #15,d1
[00015b48] c210                      and.b      (a0),d1
[00015b4a] 143b 104e                 move.b     $00015B9A(pc,d1.w),d2
[00015b4e] d528 ffff                 add.b      d2,-1(a0)
[00015b52] 0810 0004                 btst       #4,(a0)
[00015b56] 6720                      beq.s      $00015B78
[00015b58] 10e8 0001                 move.b     1(a0),(a0)+
[00015b5c] 10e8 0001                 move.b     1(a0),(a0)+
[00015b60] 43e8 0001                 lea.l      1(a0),a1
[00015b64] 0c11 0046                 cmpi.b     #$46,(a1)
[00015b68] 672a                      beq.s      $00015B94
[00015b6a] 0c11 0021                 cmpi.b     #'!',(a1)
[00015b6e] 6600 ff30                 bne        $00015AA0
[00015b72] 5289                      addq.l     #1,a1
[00015b74] 6000 ff2a                 bra        $00015AA0
[00015b78] 4218                      clr.b      (a0)+
[00015b7a] 0c28 0046 0001            cmpi.b     #$46,1(a0)
[00015b80] 6716                      beq.s      $00015B98
[00015b82] 0c28 0021 0001            cmpi.b     #'!',1(a0)
[00015b88] 660e                      bne.s      $00015B98
[00015b8a] 5288                      addq.l     #1,a0
[00015b8c] 43e8 0001                 lea.l      1(a0),a1
[00015b90] 6000 ff0e                 bra        $00015AA0
[00015b94] 10fc 0046                 move.b     #$46,(a0)+
[00015b98] 4e75                      rts
[00015b9a] 0000 0200                 ori.b      #$00,d0
[00015b9e] 0800 0a00                 btst       #2560,d0
[00015ba2] 0406 0000                 subi.b     #$00,d6
[00015ba6] 0c0e 0000                 cmpi.b     #$00,a6 ; apollo only
[00015baa] 0c10 00f0                 cmpi.b     #$F0,(a0)
[00015bae] 6510                      bcs.s      $00015BC0
[00015bb0] 10e8 0001                 move.b     1(a0),(a0)+
[00015bb4] 10e8 0001                 move.b     1(a0),(a0)+
[00015bb8] 43e8 0001                 lea.l      1(a0),a1
[00015bbc] 6000 fee2                 bra        $00015AA0
[00015bc0] 4210                      clr.b      (a0)
[00015bc2] 4e75                      rts

[00015bc4] 0200 0908                 andi.b     #$08,d0
[00015bc8] 0301                      btst       d1,d1

f15bca:
[00015bca] 48e7 00c0                 movem.l    a0-a1,-(a7)
[00015bce] 43fa f814                 lea.l      $000153E4(pc),a1
[00015bd2] 41ee 0554                 lea.l      1364(a6),a0
[00015bd6] 3018                      move.w     (a0)+,d0
[00015bd8] 0440 02fa                 subi.w     #$02FA,d0
[00015bdc] e248                      lsr.w      #1,d0
[00015bde] 103b 00e4                 move.b     $00015BC4(pc,d0.w),d0
[00015be2] 5288                      addq.l     #1,a0
[00015be4] 1218                      move.b     (a0)+,d1
[00015be6] 5301                      subq.b     #1,d1
[00015be8] 6a06                      bpl.s      $00015BF0
[00015bea] 4cdf 0300                 movem.l    (a7)+,a0-a1
[00015bee] 4e75                      rts
[00015bf0] 1418                      move.b     (a0)+,d2
[00015bf2] b43c 002c                 cmp.b      #$2C,d2
[00015bf6] 67ee                      beq.s      $00015BE6
[00015bf8] b43c 0020                 cmp.b      #' ',d2
[00015bfc] 67e8                      beq.s      $00015BE6
[00015bfe] 0242 00df                 andi.w     #$00DF,d2
[00015c02] b43c 0041                 cmp.b      #'A',d2
[00015c06] 65e2                      bcs.s      $00015BEA
[00015c08] b43c 005a                 cmp.b      #'Z',d2
[00015c0c] 62dc                      bhi.s      $00015BEA
[00015c0e] 1380 20bf                 move.b     d0,-65(a1,d2.w)
[00015c12] 0c10 002d                 cmpi.b     #$2D,(a0)
[00015c16] 66ce                      bne.s      $00015BE6
[00015c18] 5288                      addq.l     #1,a0
[00015c1a] 1618                      move.b     (a0)+,d3
[00015c1c] 0243 00df                 andi.w     #$00DF,d3
[00015c20] 5501                      subq.b     #2,d1
[00015c22] 6bc6                      bmi.s      $00015BEA
[00015c24] b67c 0041                 cmp.w      #$0041,d3
[00015c28] 65c0                      bcs.s      $00015BEA
[00015c2a] b67c 005a                 cmp.w      #$005A,d3
[00015c2e] 62ba                      bhi.s      $00015BEA
[00015c30] b642                      cmp.w      d2,d3
[00015c32] 6202                      bhi.s      $00015C36
[00015c34] c742                      exg        d3,d2
[00015c36] 1380 20bf                 move.b     d0,-65(a1,d2.w)
[00015c3a] 5202                      addq.b     #1,d2
[00015c3c] b443                      cmp.w      d3,d2
[00015c3e] 63f6                      bls.s      $00015C36
[00015c40] 60a4                      bra.s      $00015BE6

[00015c42] 0000

x15c44:
[00015c44] 4e75                      rts

x15c46:
		.dc.b 0xf0,0xf1,0xf2,0xf3,0xf8,0xf9,0xf4,0xf5,0xf6,0xf7,0xfc,0xfd

[00015c52] 4a39 0001                 tst.b      x1181a
[00015c58] 66ea                      bne.s      x15c44
[00015c5a] 3e19                      move.w     (a1)+,d7
[00015c5c] 7000                      moveq.l    #0,d0
[00015c5e] 3019                      move.w     (a1)+,d0
[00015c60] 3f00                      move.w     d0,-(a7)
[00015c62] 4871 70fc                 pea.l      -4(a1,d7.w)
[00015c66] 41ee 0352                 lea.l      850(a6),a0
[00015c6a] e248                      lsr.w      #1,d0
[00015c6c] 3c00                      move.w     d0,d6
[00015c6e] 47ee 10cc                 lea.l      4300(a6),a3
[00015c72] 3233 0000                 move.w     0(a3,d0.w),d1
[00015c76] 6700 00cc                 beq        $00015D44
[00015c7a] 47fa da1a                 lea.l      x13696(pc),a3
[00015c7e] d6c1                      adda.w     d1,a3
[00015c80] 7200                      moveq.l    #0,d1
[00015c82] 121b                      move.b     (a3)+,d1
[00015c84] 10db                      move.b     (a3)+,(a0)+
[00015c86] 6014                      bra.s      $00015C9C
[00015c88] 101b                      move.b     (a3)+,d0
[00015c8a] b03c 0041                 cmp.b      #'A',d0
[00015c8e] 650a                      bcs.s      $00015C9A
[00015c90] b03c 005a                 cmp.b      #'Z',d0
[00015c94] 6204                      bhi.s      $00015C9A
[00015c96] d02e 20ce                 add.b      8398(a6),d0
[00015c9a] 10c0                      move.b     d0,(a0)+
[00015c9c] 51c9 ffea                 dbf        d1,$00015C88
[00015ca0] 3006                      move.w     d6,d0
[00015ca2] e248                      lsr.w      #1,d0
[00015ca4] 3200                      move.w     d0,d1
[00015ca6] e649                      lsr.w      #3,d1
[00015ca8] 45fa 06a2                 lea.l      $0001634C(pc),a2
[00015cac] 0132 1000                 btst       d0,0(a2,d1.w)
[00015cb0] 6604                      bne.s      $00015CB6
[00015cb2] 10fc 0020                 move.b     #' ',(a0)+
[00015cb6] bc7c 00e4                 cmp.w      #$00E4,d6
[00015cba] 671c                      beq.s      $00015CD8
[00015cbc] bc7c 00e6                 cmp.w      #$00E6,d6
[00015cc0] 6716                      beq.s      $00015CD8
[00015cc2] bc7c 00e8                 cmp.w      #$00E8,d6
[00015cc6] 6710                      beq.s      $00015CD8
[00015cc8] bc7c 00ea                 cmp.w      #$00EA,d6
[00015ccc] 670a                      beq.s      $00015CD8
[00015cce] bc7c 01fc                 cmp.w      #$01FC,d6
[00015cd2] 6704                      beq.s      $00015CD8
[00015cd4] bc7c 0336                 cmp.w      #$0336,d6
[00015cd8] 6700 01d4                 beq        $00015EAE
[00015cdc] bc7c 0080                 cmp.w      #$0080,d6
[00015ce0] 6462                      bcc.s      $00015D44
[00015ce2] bc7c 0062                 cmp.w      #$0062,d6
[00015ce6] 6506                      bcs.s      $00015CEE
[00015ce8] bc7c 0068                 cmp.w      #$0068,d6
[00015cec] 6354                      bls.s      $00015D42
[00015cee] bc7c 0002                 cmp.w      #2,d6
[00015cf2] 674e                      beq.s      $00015D42
[00015cf4] bc7c 0006                 cmp.w      #6,d6
[00015cf8] 6748                      beq.s      $00015D42
[00015cfa] bc7c 0008                 cmp.w      #8,d6
[00015cfe] 6742                      beq.s      $00015D42
[00015d00] bc7c 000a                 cmp.w      #10,d6
[00015d04] 673c                      beq.s      $00015D42
[00015d06] bc7c 0010                 cmp.w      #$0010,d6
[00015d0a] 6736                      beq.s      $00015D42
[00015d0c] bc7c 0018                 cmp.w      #$0018,d6
[00015d10] 6730                      beq.s      $00015D42
[00015d12] bc7c 0058                 cmp.w      #$0058,d6
[00015d16] 672a                      beq.s      $00015D42
[00015d18] bc7c 001c                 cmp.w      #$001C,d6
[00015d1c] 6724                      beq.s      $00015D42
[00015d1e] bc7c 001e                 cmp.w      #$001E,d6
[00015d22] 671e                      beq.s      $00015D42
[00015d24] bc7c 0020                 cmp.w      #$0020,d6
[00015d28] 6718                      beq.s      $00015D42
[00015d2a] bc7c 006e                 cmp.w      #$006E,d6
[00015d2e] 6712                      beq.s      $00015D42
[00015d30] bc7c 0070                 cmp.w      #$0070,d6
[00015d34] 670c                      beq.s      $00015D42
[00015d36] bc7c 003e                 cmp.w      #$003E,d6
[00015d3a] 6508                      bcs.s      $00015D44
[00015d3c] bc7c 0056                 cmp.w      #$0056,d6
[00015d40] 6202                      bhi.s      $00015D44
[00015d42] 5889                      addq.l     #4,a1
[00015d44] bc7c 000c                 cmp.w      #$000C,d6
[00015d48] 6700 05ee                 beq        $00016338
[00015d4c] bc7c 006c                 cmp.w      #$006C,d6
[00015d50] 6700 05e6                 beq        $00016338
[00015d54] bc7c 0026                 cmp.w      #$0026,d6
[00015d58] 6566                      bcs.s      $00015DC0
[00015d5a] bc7c 0078                 cmp.w      #$0078,d6
[00015d5e] 670c                      beq.s      $00015D6C
[00015d60] bc7c 007a                 cmp.w      #$007A,d6
[00015d64] 6706                      beq.s      $00015D6C
[00015d66] bc7c 007c                 cmp.w      #$007C,d6
[00015d6a] 6604                      bne.s      $00015D70
[00015d6c] 6000 05d8                 bra        $00016346
[00015d70] bc7c 003e                 cmp.w      #$003E,d6
[00015d74] 6500 057c                 bcs        $000162F2
[00015d78] bc7c 0056                 cmp.w      #$0056,d6
[00015d7c] 6500 057e                 bcs        $000162FC
[00015d80] bc7c 0140                 cmp.w      #$0140,d6
[00015d84] 6508                      bcs.s      $00015D8E
[00015d86] bc7c 019e                 cmp.w      #$019E,d6
[00015d8a] 6300 058c                 bls        x16318
[00015d8e] bc7c 0080                 cmp.w      #$0080,d6
[00015d92] 652c                      bcs.s      $00015DC0
[00015d94] bc7c 00ae                 cmp.w      #$00AE,d6
[00015d98] 6226                      bhi.s      $00015DC0
[00015d9a] 3206                      move.w     d6,d1
[00015d9c] 0441 0098                 subi.w     #$0098,d1
[00015da0] 6a04                      bpl.s      $00015DA6
[00015da2] 0641 0018                 addi.w     #$0018,d1
[00015da6] e249                      lsr.w      #1,d1
[00015da8] b27c 0006                 cmp.w      #6,d1
[00015dac] 6406                      bcc.s      $00015DB4
[00015dae] 1d7c 003d 20d0            move.b     #'=',8400(a6)
[00015db4] 47fa fe90                 lea.l      x15c46(pc),a3
[00015db8] 7000                      moveq.l    #0,d0
[00015dba] 1033 1000                 move.b     0(a3,d1.w),d0
[00015dbe] 6004                      bra.s      $00015DC4
[00015dc0] 7000                      moveq.l    #0,d0
[00015dc2] 1019                      move.b     (a1)+,d0
[00015dc4] b03c 0046                 cmp.b      #$46,d0
[00015dc8] 6774                      beq.s      $00015E3E
[00015dca] b03c 0037                 cmp.b      #$37,d0
[00015dce] 67f0                      beq.s      $00015DC0
[00015dd0] b03c 00d6                 cmp.b      #$D6,d0
[00015dd4] 6400 00e2                 bcc        $00015EB8
[00015dd8] b03c 00c6                 cmp.b      #$C6,d0
[00015ddc] 6400 04ce                 bcc        $000162AC
[00015de0] 47fa 0206                 lea.l      $00015FE8(pc),a3
[00015de4] 3200                      move.w     d0,d1
[00015de6] e649                      lsr.w      #3,d1
[00015de8] 0133 1000                 btst       d0,0(a3,d1.w)
[00015dec] 6704                      beq.s      $00015DF2
[00015dee] 10fc 0020                 move.b     #' ',(a0)+
[00015df2] d040                      add.w      d0,d0
[00015df4] 47ee 0d2c                 lea.l      3372(a6),a3
[00015df8] 3233 0000                 move.w     0(a3,d0.w),d1
[00015dfc] 6740                      beq.s      $00015E3E
[00015dfe] 47fa d896                 lea.l      x13696(pc),a3
[00015e02] d6c1                      adda.w     d1,a3
[00015e04] 7200                      moveq.l    #0,d1
[00015e06] 121b                      move.b     (a3)+,d1
[00015e08] 10db                      move.b     (a3)+,(a0)+
[00015e0a] 6014                      bra.s      $00015E20
[00015e0c] 101b                      move.b     (a3)+,d0
[00015e0e] b03c 0041                 cmp.b      #'A',d0
[00015e12] 650a                      bcs.s      $00015E1E
[00015e14] b03c 005a                 cmp.b      #'Z',d0
[00015e18] 6204                      bhi.s      $00015E1E
[00015e1a] d02e 20ce                 add.b      8398(a6),d0
[00015e1e] 10c0                      move.b     d0,(a0)+
[00015e20] 51c9 ffea                 dbf        d1,$00015E0C
[00015e24] 47fa 01e2                 lea.l      $00016008(pc),a3
[00015e28] 7000                      moveq.l    #0,d0
[00015e2a] 1029 ffff                 move.b     -1(a1),d0
[00015e2e] 3200                      move.w     d0,d1
[00015e30] e649                      lsr.w      #3,d1
[00015e32] 0133 1000                 btst       d0,0(a3,d1.w)
[00015e36] 6788                      beq.s      $00015DC0
[00015e38] 10fc 0020                 move.b     #' ',(a0)+
[00015e3c] 6082                      bra.s      $00015DC0
[00015e3e] 0c20 0020                 cmpi.b     #' ',-(a0)
[00015e42] 6702                      beq.s      $00015E46
[00015e44] 5288                      addq.l     #1,a0
[00015e46] 0c6f 0684 0004            cmpi.w     #$0684,4(a7)
[00015e4c] 674e                      beq.s      $00015E9C
[00015e4e] 2009                      move.l     a1,d0
[00015e50] 5280                      addq.l     #1,d0
[00015e52] 0880 0000                 bclr       #0,d0
[00015e56] 2240                      movea.l    d0,a1
[00015e58] b3d7                      cmpa.l     (a7),a1
[00015e5a] 6440                      bcc.s      $00015E9C
[00015e5c] 7000                      moveq.l    #0,d0
[00015e5e] 1019                      move.b     (a1)+,d0
[00015e60] 6004                      bra.s      $00015E66
[00015e62] 10fc 0020                 move.b     #' ',(a0)+
[00015e66] 51c8 fffa                 dbf        d0,$00015E62
[00015e6a] 082e 0003 20cf            btst       #3,8399(a6)
[00015e70] 670a                      beq.s      $00015E7C
[00015e72] 10fc 002f                 move.b     #'/',(a0)+
[00015e76] 10fc 002a                 move.b     #'*',(a0)+
[00015e7a] 6016                      bra.s      $00015E92
[00015e7c] 082e 0002 20cf            btst       #2,8399(a6)
[00015e82] 670a                      beq.s      $00015E8E
[00015e84] 10fc 002f                 move.b     #'/',(a0)+
[00015e88] 10fc 002f                 move.b     #'/',(a0)+
[00015e8c] 6004                      bra.s      $00015E92
[00015e8e] 10fc 0021                 move.b     #'!',(a0)+
[00015e92] 0c11 000d                 cmpi.b     #EOL,(a1)
[00015e96] 6704                      beq.s      $00015E9C
[00015e98] 10d9                      move.b     (a1)+,(a0)+
[00015e9a] 60f6                      bra.s      $00015E92
[00015e9c] 10fc 000d                 move.b     #CR,(a0)+
[00015ea0] 10fc 000a                 move.b     #NL,(a0)+
[00015ea4] 4210                      clr.b      (a0)
[00015ea6] 225f                      movea.l    (a7)+,a1
[00015ea8] 548f                      addq.l     #2,a7
[00015eaa] 4e75                      rts
[00015eac] 10c0                      move.b     d0,(a0)+
[00015eae] 1019                      move.b     (a1)+,d0
[00015eb0] b03c 000d                 cmp.b      #13,d0
[00015eb4] 66f6                      bne.s      $00015EAC
[00015eb6] 6086                      bra.s      $00015E3E
[00015eb8] b03c 00dd                 cmp.b      #$DD,d0
[00015ebc] 673a                      beq.s      $00015EF8
[00015ebe] b03c 00de                 cmp.b      #$DE,d0
[00015ec2] 670c                      beq.s      $00015ED0
[00015ec4] b03c 00df                 cmp.b      #$DF,d0
[00015ec8] 6730                      beq.s      $00015EFA
[00015eca] 623c                      bhi.s      $00015F08
[00015ecc] 6000 015a                 bra        $00016028
[00015ed0] 10fc 0022                 move.b     #$22,(a0)+
[00015ed4] 7000                      moveq.l    #0,d0
[00015ed6] 1019                      move.b     (a1)+,d0
[00015ed8] 6716                      beq.s      $00015EF0
[00015eda] 5340                      subq.w     #1,d0
[00015edc] 1219                      move.b     (a1)+,d1
[00015ede] 10c1                      move.b     d1,(a0)+
[00015ee0] b23c 0022                 cmp.b      #$22,d1
[00015ee4] 57c8 fff6                 dbeq       d0,$00015EDC
[00015ee8] 6606                      bne.s      $00015EF0
[00015eea] 10c1                      move.b     d1,(a0)+
[00015eec] 51c8 ffee                 dbf        d0,$00015EDC
[00015ef0] 10fc 0022                 move.b     #$22,(a0)+
[00015ef4] 6000 feca                 bra        $00015DC0
[00015ef8] 5289                      addq.l     #1,a1
[00015efa] 2019                      move.l     (a1)+,d0
[00015efc] 3219                      move.w     (a1)+,d1
[00015efe] 3419                      move.w     (a1)+,d2
[00015f00] 6100 036a                 bsr        $0001626C
[00015f04] 6000 feba                 bra        $00015DC0
[00015f08] 7200                      moveq.l    #0,d1
[00015f0a] b03c 00f0                 cmp.b      #0xF0,d0
[00015f0e] 6504                      bcs.s      $00015F14
[00015f10] 1f19                      move.b     (a1)+,-(a7)
[00015f12] 321f                      move.w     (a7)+,d1
[00015f14] 1219                      move.b     (a1)+,d1
[00015f16] 0240 000f                 andi.w     #15,d0
[00015f1a] d040                      add.w      d0,d0
[00015f1c] d040                      add.w      d0,d0
[00015f1e] 45ee 0010                 lea.l      16(a6),a2
[00015f22] 2472 0000                 movea.l    0(a2,d0.w),a2
[00015f26] 7400                      moveq.l    #0,d2
[00015f28] e249                      lsr.w      #1,d1
[00015f2a] 6404                      bcc.s      $00015F30
[00015f2c] 141a                      move.b     (a2)+,d2
[00015f2e] d5c2                      adda.l     d2,a2
[00015f30] e249                      lsr.w      #1,d1
[00015f32] 641a                      bcc.s      $00015F4E
[00015f34] 141a                      move.b     (a2)+,d2
[00015f36] d5c2                      adda.l     d2,a2
[00015f38] 141a                      move.b     (a2)+,d2
[00015f3a] d5c2                      adda.l     d2,a2
[00015f3c] 6010                      bra.s      $00015F4E
[00015f3e] 141a                      move.b     (a2)+,d2
[00015f40] d5c2                      adda.l     d2,a2
[00015f42] 141a                      move.b     (a2)+,d2
[00015f44] d5c2                      adda.l     d2,a2
[00015f46] 141a                      move.b     (a2)+,d2
[00015f48] d5c2                      adda.l     d2,a2
[00015f4a] 141a                      move.b     (a2)+,d2
[00015f4c] d5c2                      adda.l     d2,a2
[00015f4e] 51c9 ffee                 dbf        d1,$00015F3E
[00015f52] 141a                      move.b     (a2)+,d2
[00015f54] 5342                      subq.w     #1,d2
[00015f56] 1d52 20d1                 move.b     (a2),8401(a6)
[00015f5a] 4a2e 20ce                 tst.b      8398(a6)
[00015f5e] 6706                      beq.s      $00015F66
[00015f60] 10da                      move.b     (a2)+,(a0)+
[00015f62] 5342                      subq.w     #1,d2
[00015f64] 6b18                      bmi.s      $00015F7E
[00015f66] 121a                      move.b     (a2)+,d1
[00015f68] b23c 0041                 cmp.b      #'A',d1
[00015f6c] 650a                      bcs.s      $00015F78
[00015f6e] b23c 005a                 cmp.b      #'Z',d1
[00015f72] 6204                      bhi.s      $00015F78
[00015f74] 0601 0020                 addi.b     #' ',d1
[00015f78] 10c1                      move.b     d1,(a0)+
[00015f7a] 51ca ffea                 dbf        d2,$00015F66
[00015f7e] e248                      lsr.w      #1,d0
[00015f80] 082e 0001 20cf            btst       #1,8399(a6)
[00015f86] 661e                      bne.s      $00015FA6
[00015f88] 7400                      moveq.l    #0,d2
[00015f8a] 142e 20d1                 move.b     8401(a6),d2
[00015f8e] 4850                      pea.l      (a0)
[00015f90] 41fa f452                 lea.l      $000153E4(pc),a0
[00015f94] 1430 20bf                 move.b     -65(a0,d2.w),d2
[00015f98] 205f                      movea.l    (a7)+,a0
[00015f9a] d402                      add.b      d2,d2
[00015f9c] b400                      cmp.b      d0,d2
[00015f9e] 670e                      beq.s      $00015FAE
[00015fa0] 5002                      addq.b     #8,d2
[00015fa2] b400                      cmp.b      d0,d2
[00015fa4] 6708                      beq.s      $00015FAE
[00015fa6] 143b 0020                 move.b     x15fc8(pc,d0.w),d2
[00015faa] 6702                      beq.s      $00015FAE
[00015fac] 10c2                      move.b     d2,(a0)+
[00015fae] 143b 0019                 move.b     x15fc8+1(pc,d0.w),d2
[00015fb2] 6702                      beq.s      $00015FB6
[00015fb4] 10c2                      move.b     d2,(a0)+
[00015fb6] 102e 20d0                 move.b     8400(a6),d0
[00015fba] 6700 fe04                 beq        $00015DC0
[00015fbe] 422e 20d0                 clr.b      8400(a6)
[00015fc2] 10c0                      move.b     d0,(a0)+
[00015fc4] 6000 fdfa                 bra        $00015DC0

x15fc8:
[00015fc8] .dc.b '#',0
[00015fca] .dc.b '$',0
[00015fcc] .dc.b '%',0
[00015fce] .dc.b '!',0
[00015fd0] .dc.b '#','('
           .dc.b '$','('
[00015fd4] .dc.b '%','('
           .dc.b '!','('
[00015fd8] .dc.b '&',0
[00015fda] .dc.b '|',0
[00015fdc] .dc.b 0,0
[00015fde] .dc.b 0,0
           .dc.b '&','('
[00015fe2] .dc.b '|','('
[00015fe4] .dc.b 0,0
           .dc.b 0,'$'

[00015fe8] .dc.b 0x1f,0x0c,0x00,0x00,0x00,0x00,0x00,0x00
           .dc.b 0x80,0x1f,0x00,0x00,0x00,0x30,0x04,0x00
           .dc.b 0x00,0x00,0x00,0x04,0x00,0x00,0x00,0x00
[00016000] .dc.b 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

[00016008] .dc.b 0x1f,0x0c,0x00,0x80,0x00,0x00,0x04,0x00
[00016010] .dc.b 0x80,0x1f,0x00,0x04,0x01,0x30,0x04,0x00
           .dc.b 0x00,0x00,0x00,0x44,0x88,0x38,0x40,0x00
[00016020] .dc.b 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

[00016028] 10fc                      move.b     #'&',(a0)+
[0001602c] 0400                      subi.b     #0xd8,d0
[00016030] 6b20                      bmi.s      $00016052
[00016032] 6720                      beq.s      $00016054
[00016034] 5500                      subq.b     #2,d0
[00016036] 6b2e                      bmi.s      $00016066
[00016038] 672e                      beq.s      $00016068
[0001603a] 5500                      subq.b     #2,d0
[0001603c] 6702                      beq.s      $00016040
[0001603e] 5289                      addq.l     #1,a1
[00016040] 2019                      move.l     (a1)+,d0
[00016042] 3219                      move.w     (a1)+,d1
[00016044] 3419                      move.w     (a1)+,d2
[00016046] 4eae 0148                 jsr        328(a6)
[0001604a] 6100 0128                 bsr        $00016174
[0001604e] 6000 fd70                 bra        $00015DC0
[00016052] 5289                      addq.l     #1,a1
[00016054] 2019                      move.l     (a1)+,d0
[00016056] 3219                      move.w     (a1)+,d1
[00016058] 3419                      move.w     (a1)+,d2
[0001605a] 4eae 0148                 jsr        328(a6)
[0001605e] 6100 014e                 bsr        $000161AE
[00016062] 6000 fd5c                 bra        $00015DC0
[00016066] 5289                      addq.l     #1,a1
[00016068] 2019                      move.l     (a1)+,d0
[0001606a] 3219                      move.w     (a1)+,d1
[0001606c] 3419                      move.w     (a1)+,d2
[0001606e] 4eae 0148                 jsr        328(a6)
[00016072] 6100 0174                 bsr        $000161E8
[00016076] 6000 fd48                 bra        $00015DC0
[0001607a] 41ee 0d2c                 lea.l      3372(a6),a0
[0001607e] 303c 03cf                 move.w     #$03CF,d0
[00016082] 4258                      clr.w      (a0)+
[00016084] 51c8 fffc                 dbf        d0,$00016082
[00016088] 41ee 0d2c                 lea.l      3372(a6),a0
[0001608c] 43fa c829                 lea.l      $000128B7(pc),a1
[00016090] 7000                      moveq.l    #0,d0
[00016092] 1011                      move.b     (a1),d0
[00016094] 6b24                      bmi.s      $000160BA
[00016096] 7200                      moveq.l    #0,d1
[00016098] 1231 0003                 move.b     3(a1,d0.w),d1
[0001609c] 1431 0002                 move.b     2(a1,d0.w),d2
[000160a0] 6704                      beq.s      $000160A6
[000160a2] 0641 00e0                 addi.w     #$00E0,d1
[000160a6] d241                      add.w      d1,d1
[000160a8] 2409                      move.l     a1,d2
[000160aa] 0482 0001 3696            subi.l     #x13696,d2
[000160b0] 3182 1000                 move.w     d2,0(a0,d1.w)
[000160b4] 43f1 0004                 lea.l      4(a1,d0.w),a1
[000160b8] 60d8                      bra.s      $00016092
[000160ba] 41ee 10cc                 lea.l      4300(a6),a0
[000160be] 43fa ba3a                 lea.l      cmd_table(pc),a1
[000160c2] 7000                      moveq.l    #0,d0
[000160c4] 1011                      move.b     (a1),d0
[000160c6] 6b1e                      bmi.s      $000160E6
[000160c8] 7200                      moveq.l    #0,d1
[000160ca] 1231 0002                 move.b     2(a1,d0.w),d1
[000160ce] e141                      asl.w      #8,d1
[000160d0] 1231 0003                 move.b     3(a1,d0.w),d1
[000160d4] 2409                      move.l     a1,d2
[000160d6] 0482 0001 3696            subi.l     #x13696,d2
[000160dc] 3182 1000                 move.w     d2,0(a0,d1.w)
[000160e0] 43f1 0006                 lea.l      6(a1,d0.w),a1
[000160e4] 60de                      bra.s      $000160C4
[000160e6] 41ee 0d2c                 lea.l      3372(a6),a0
[000160ea] 303c 01cf                 move.w     #$01CF,d0
[000160ee] 3218                      move.w     (a0)+,d1
[000160f0] 6606                      bne.s      $000160F8
[000160f2] 3168 fffc fffe            move.w     -4(a0),-2(a0)
[000160f8] 51c8 fff4                 dbf        d0,$000160EE
[000160fc] 41ee 10cc                 lea.l      4300(a6),a0
[00016100] 303c 01ff                 move.w     #$01FF,d0
[00016104] 3218                      move.w     (a0)+,d1
[00016106] 6606                      bne.s      $0001610E
[00016108] 3168 fffc fffe            move.w     -4(a0),-2(a0)
[0001610e] 51c8 fff4                 dbf        d0,$00016104
[00016112] 41ee 10cc                 lea.l      4300(a6),a0
[00016116] 4268 007e                 clr.w      126(a0)
[0001611a] 4268 0078                 clr.w      120(a0)
[0001611e] d0fc 0098                 adda.w     #$0098,a0
[00016122] 700b                      moveq.l    #11,d0
[00016124] 4258                      clr.w      (a0)+
[00016126] 51c8 fffc                 dbf        d0,$00016124
[0001612a] 4e75                      rts
[0001612c] 5301                      subq.b     #1,d1
[0001612e] 6b28                      bmi.s      $00016158
[00016130] 673c                      beq.s      $0001616E
[00016132] 5501                      subq.b     #2,d1
[00016134] 6b28                      bmi.s      $0001615E
[00016136] 672e                      beq.s      $00016166
[00016138] 10fc 0022                 move.b     #'"',(a0)+
[0001613c] 7003                      moveq.l    #3,d0
[0001613e] e19a                      rol.l      #8,d2
[00016140] 1082                      move.b     d2,(a0)
[00016142] 670a                      beq.s      $0001614E
[00016144] b43c 0022                 cmp.b      #$22,d2
[00016148] 6602                      bne.s      $0001614C
[0001614a] 10c2                      move.b     d2,(a0)+
[0001614c] 5288                      addq.l     #1,a0
[0001614e] 51c8 ffee                 dbf        d0,$0001613E
[00016152] 10fc 0022                 move.b     #'"',(a0)+
[00016156] 4e75                      rts
[00016158] 2002                      move.l     d2,d0
[0001615a] 6000 00ac                 bra        $00016208
[0001615e] 10fc 0026                 move.b     #'&',(a0)+
[00016162] 2002                      move.l     d2,d0
[00016164] 6048                      bra.s      $000161AE
[00016166] 10fc 0026                 move.b     #'&',(a0)+
[0001616a] 2002                      move.l     d2,d0
[0001616c] 607a                      bra.s      $000161E8
[0001616e] 10fc 0026                 move.b     #'&',(a0)+
[00016172] 2002                      move.l     d2,d0
[00016174] 10fc 0048                 move.b     #'H',(a0)+
[00016178] 4a80                      tst.l      d0
[0001617a] 672c                      beq.s      $000161A8
[0001617c] 7207                      moveq.l    #7,d1
[0001617e] b0bc 1000 0000            cmp.l      #0x10000000,d0
[00016184] 6406                      bcc.s      $0001618C
[00016186] e980                      asl.l      #4,d0
[00016188] 51c9 fff4                 dbf        d1,$0001617E
[0001618c] e998                      rol.l      #4,d0
[0001618e] 1400                      move.b     d0,d2
[00016190] 0202 000f                 andi.b     #15,d2
[00016194] 0002 0030                 ori.b      #'0',d2
[00016198] b43c 0039                 cmp.b      #'9',d2
[0001619c] 6302                      bls.s      $000161A0
[0001619e] 5e02                      addq.b     #7,d2
[000161a0] 10c2                      move.b     d2,(a0)+
[000161a2] 51c9 ffe8                 dbf        d1,$0001618C
[000161a6] 4e75                      rts
[000161a8] 10fc 0030                 move.b     #'0',(a0)+
[000161ac] 4e75                      rts
[000161ae] 10fc 004f                 move.b     #$4F,(a0)+
[000161b2] 4a80                      tst.l      d0
[000161b4] 67f2                      beq.s      $000161A8
[000161b6] 7209                      moveq.l    #9,d1
[000161b8] e598                      rol.l      #2,d0
[000161ba] 1400                      move.b     d0,d2
[000161bc] 0202 0003                 andi.b     #$03,d2
[000161c0] 6704                      beq.s      $000161C6
[000161c2] 5241                      addq.w     #1,d1
[000161c4] 600e                      bra.s      $000161D4
[000161c6] e798                      rol.l      #3,d0
[000161c8] 1400                      move.b     d0,d2
[000161ca] 0202 0007                 andi.b     #$07,d2
[000161ce] 6604                      bne.s      $000161D4
[000161d0] 51c9 fff4                 dbf        d1,$000161C6
[000161d4] 0202 0007                 andi.b     #7,d2
[000161d8] 0002 0030                 ori.b      #'0',d2
[000161dc] 10c2                      move.b     d2,(a0)+
[000161de] e798                      rol.l      #3,d0
[000161e0] 1400                      move.b     d0,d2
[000161e2] 51c9 fff0                 dbf        d1,$000161D4
[000161e6] 4e75                      rts
[000161e8] 10fc 0058                 move.b     #$58,(a0)+
[000161ec] 721f                      moveq.l    #31,d1
[000161ee] 4a80                      tst.l      d0
[000161f0] 67b6                      beq.s      $000161A8
[000161f2] 6002                      bra.s      $000161F6
[000161f4] d080                      add.l      d0,d0
[000161f6] 5bc9 fffc                 dbmi       d1,$000161F4
[000161fa] d080                      add.l      d0,d0
[000161fc] 7418                      moveq.l    #24,d2
[000161fe] d502                      addx.b     d2,d2
[00016200] 10c2                      move.b     d2,(a0)+
[00016202] 51c9 fff6                 dbf        d1,$000161FA
[00016206] 4e75                      rts
[00016208] b0bc 0000 2710            cmp.l      #$00002710,d0
[0001620e] 6456                      bcc.s      $00016266
[00016210] 80fc 0064                 divu.w     #100,d0
[00016214] 3200                      move.w     d0,d1
[00016216] 4840                      swap       d0
[00016218] 48c0                      ext.l      d0
[0001621a] 48c1                      ext.l      d1
[0001621c] 80fc 000a                 divu.w     #10,d0
[00016220] 82fc 000a                 divu.w     #10,d1
[00016224] 4a41                      tst.w      d1
[00016226] 6708                      beq.s      $00016230
[00016228] 0081 2030 2030            ori.l      #0x20302030,d1 /* ' 0 0' */
[0001622e] 6010                      bra.s      $00016240
[00016230] 4a81                      tst.l      d1
[00016232] 6708                      beq.s      $0001623C
[00016234] 0081 3030 0000            ori.l      #0x30300000,d1
[0001623a] 6004                      bra.s      $00016240
[0001623c] 4a40                      tst.w      d0
[0001623e] 6706                      beq.s      $00016246
[00016240] 0080 2030 2030            ori.l      #0x20302030,d0 /* ' 0 0' */
[00016246] 0080 3030 0000            ori.l      #0x30300000,d0
[0001624c] 1081                      move.b     d1,(a0)
[0001624e] 6702                      beq.s      $00016252
[00016250] 5288                      addq.l     #1,a0
[00016252] 4841                      swap       d1
[00016254] 1081                      move.b     d1,(a0)
[00016256] 6702                      beq.s      $0001625A
[00016258] 5288                      addq.l     #1,a0
[0001625a] 1080                      move.b     d0,(a0)
[0001625c] 6702                      beq.s      $00016260
[0001625e] 5288                      addq.l     #1,a0
[00016260] 4840                      swap       d0
[00016262] 10c0                      move.b     d0,(a0)+
[00016264] 4e75                      rts
[00016266] 4eb9 0001 0b96            jsr        FITOF
[0001626c] 48e7 00c0                 movem.l    a0-a1,-(a7)
[00016270] 50ee 021e                 st         542(a6)
[00016274] 4eb9 0001 0ae6            jsr        Fstr
[0001627a] 51ee 021e                 sf         542(a6)
[0001627e] 2448                      movea.l    a0,a2
[00016280] 4cdf 0300                 movem.l    (a7)+,a0-a1
[00016284] 0c12 0020                 cmpi.b     #' ',(a2)
[00016288] 6602                      bne.s      $0001628C
[0001628a] 528a                      addq.l     #1,a2
[0001628c] 10da                      move.b     (a2)+,(a0)+
[0001628e] 66fc                      bne.s      $0001628C
[00016290] 5388                      subq.l     #1,a0
[00016292] 4e75                      rts
[00016294] e208                      lsr.b      #1,d0
[00016296] 6402                      bcc.s      $0001629A
[00016298] 5289                      addq.l     #1,a1
[0001629a] 2419                      move.l     (a1)+,d2
[0001629c] 729c                      moveq.l    #-100,d1
[0001629e] d200                      add.b      d0,d1
[000162a0] 6a02                      bpl.s      $000162A4
[000162a2] 7204                      moveq.l    #4,d1
[000162a4] 6100 fe86                 bsr        $0001612C
[000162a8] 6000 fb16                 bra        $00015DC0
[000162ac] b03c 00d0                 cmp.b      #$D0,d0
[000162b0] 66e2                      bne.s      $00016294
[000162b2] 7000                      moveq.l    #0,d0
[000162b4] 1019                      move.b     (a1)+,d0
[000162b6] 0640 00e0                 addi.w     #$00E0,d0
[000162ba] d040                      add.w      d0,d0
[000162bc] 47ee 0d2c                 lea.l      3372(a6),a3
[000162c0] 3233 0000                 move.w     0(a3,d0.w),d1
[000162c4] 6700 fb78                 beq        $00015E3E
[000162c8] 47fa d3cc                 lea.l      x13696(pc),a3
[000162cc] d6c1                      adda.w     d1,a3
[000162ce] 7200                      moveq.l    #0,d1
[000162d0] 121b                      move.b     (a3)+,d1
[000162d2] 10db                      move.b     (a3)+,(a0)+
[000162d4] 6014                      bra.s      $000162EA
[000162d6] 101b                      move.b     (a3)+,d0
[000162d8] b03c 0041                 cmp.b      #'A',d0
[000162dc] 650a                      bcs.s      $000162E8
[000162de] b03c 005a                 cmp.b      #'Z',d0
[000162e2] 6204                      bhi.s      $000162E8
[000162e4] d02e 20ce                 add.b      8398(a6),d0
[000162e8] 10c0                      move.b     d0,(a0)+
[000162ea] 51c9 ffea                 dbf        d1,$000162D6
[000162ee] 6000 fad0                 bra        $00015DC0
[000162f2] 1d7c 003d 20d0            move.b     #'=',8400(a6)
[000162f8] 72da                      moveq.l    #-38,d1
[000162fa] 6002                      bra.s      $000162FE
[000162fc] 72c2                      moveq.l    #-62,d1
[000162fe] d246                      add.w      d6,d1
[00016300] 48c1                      ext.l      d1
[00016302] 82fc 0006                 divu.w     #6,d1
[00016306] 7000                      moveq.l    #0,d0
[00016308] 103b 1006                 move.b     x16310(pc,d1.w),d0
[0001630c] 6000 fab6                 bra        $00015DC4

x16310:
	.dc.b 0xf0,0xf2,0xf8,0xf9,0xf4,0xf6,0xfc,0xfd

x16318:
[00016318] 720e                      moveq.l    #14,d1
           c246                      and.w      d6,d1
[0001631c] e249                      lsr.w      #1,d1
[0001631e] 7000                      moveq.l    #0,d0
[00016320] 103b 10ee                 move.b     x16310(pc,d1.w),d0
[00016324] 5941                      subq.w     #4,d1
[00016326] 6c0c                      bge.s      $00016334
[00016328] bc7c 015e                 cmp.w      #$015E,d6
[0001632c] 6306                      bls.s      $00016334
[0001632e] 1d7c 002c 20d0            move.b     #',',8400(a6)
[00016334] 6000 fa8e                 bra        $00015DC4
[00016338] 0c29 0046 0002            cmpi.b     #$46,2(a1)
[0001633e] 6706                      beq.s      $00016346
[00016340] 1d7c 0028 20d0            move.b     #'(',8400(a6)
[00016346] 70fb                      moveq.l    #-5,d0
[00016348] 6000 fa7a                 bra        $00015DC4

[0001634c] 0000
[0001634e] 0000
[00016350] 0000
           0050
[00016354] 0000
[00016356] 0000
[00016358] 0000
           000e
[0001635c] 0000
[0001635e] 0000
[00016360] 0000
[00016362] 0000
[00016364] 0000
           03f0
[00016368] ff3f
           fe5f
           0048
           1e00
[00016370] 0000
           0200
[00016374] 4000
[00016376] 0000
[00016378] 0000
[0001637a] 0000
[0001637c] 0000
           c019
[00016380] 0400
           0000
[00016384] 0000
[00016386] 0000
[00016388] 0000
[0001638a] 0000

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
	.dc.l 0x80000000,0x223c0000
	.dc.w 0x8000

[0001653a] 2f01                      move.l     d1,-(a7)
[0001653c] 3f3c 0048                 move.w     #72,-(a7) /* Malloc */
[00016540] 4e41                      trap       #1
[00016542] 548f                      addq.l     #2,a7
[00016544] 2200                      move.l     d0,d1
[00016546] 6f32                      ble.s      $0001657A
[00016548] 0201 0001                 andi.b     #1,d1
[0001654c] 662c                      bne.s      $0001657A
[0001654e] 221f                      move.l     (a7)+,d1
[00016550] 41fa 0230                 lea.l      x16782(pc),a0
[00016554] 2080                      move.l     d0,(a0)
[00016556] 2f01                      move.l     d1,-(a7)
[00016558] 2f00                      move.l     d0,-(a7)
[0001655a] 4267                      clr.w      -(a7)
[0001655c] 3f3c 004a                 move.w     #74,-(a7) /* Mshrink */
[00016560] 4e41                      trap       #1
[00016562] 4fef 000c                 lea.l      12(a7),a7
[00016566] 4a80                      tst.l      d0
[00016568] 6b12                      bmi.s      $0001657C
[0001656a] 207a 0216                 movea.l    x16782(pc),a0
[0001656e] 303c 1fff                 move.w     #0x1FFF,d0
[00016572] 4298                      clr.l      (a0)+
[00016574] 51c8 fffc                 dbf        d0,$00016572
[00016578] 4e75                      rts
[0001657a] 588f                      addq.l     #4,a7
[0001657c] 41fa 0204                 lea.l      x16782(pc),a0
[00016580] 4290                      clr.l      (a0)
[00016582] 4e75                      rts

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
		dc.b 'Neue Variable',0
newproc_msg:
		dc.b 'Neue Procedure',0
newfunc_msg:
		dc.b 'Neue Function',0
newlab_msg:
		dc.b 'Neues Label',0
error_str:
		dc.b 'Error',0
stack_overflow:
		dc.b 'Stack overflow',0
notalst_msg:
		dc.b 'This is not LST file',0
open_err_msg:
		dc.b 'Open error',0
save_err_msg:
		dc.b 'Save error',0
load_err_msg:
		dc.b 'Load error',0
usage_msg:
		dc.b 'Usage: LST2GFA.TTP filename.LST',0
att_msg:
		dc.b ' !',13,10,0
version_msg:
		dc.b 'LST to GFA version 1.02'
crnl:
		13,10,0
bytes_msg:
		dc.b ' bytes -> ',0
exitcode_msg:
		dc.b ' bytes. Exit code: ',0
file_msg:
		dc.b 'File ',0
already_exists_msg:
		dc.b ' already exist !',13,10,0
deleted_file_msg:
		dc.b 'Deleted file ',0
renamed_file_msg:
		dc.b 'Renamed file ',0
to_msg:
		dc.b ' to ',0
lines_msg:
		dc.b ' lines ',0
reading_msg:
		dc.b ' Reading ',0
inline_msg:
		dc.b 'INLINE ',0
bytes_read_msg:
		dc.b ' bytes read.',13,10,0
cannot_open_msg:
		dc.b ' cannot be open.',13,10,0
cannot_read_msg:
		dc.b ' cannot be read.',13,10,0
cannot_close_msg:
		dc.b ' cannot be closed,',0
not_inline_msg:
		dc.b ' This is not INLINE command:',13,10,' ',0
waitkey_msg:
		dc.b ' Press any key to exit...',13,10,0

/* ph_blen = 0x00001034 */

	.bss

x16768:   .ds.b 16
x16778:   .ds.l 1
x1677c:   .ds.w 1
mtask:    .ds.w 1  /* 1677e */
x16780:   .ds.w 1
x16782:   .ds.l 1
x16786:   .ds.b 4096

bss_end: /* 1779c */

/* a6:
490: tmpbuf for Fstr
512: outbuf for FTstr
542: decimal_digits
2772: filetable, xx*6 */
7664: intout
7920: ptsout
8698: workout
9708: workin
*/
[
