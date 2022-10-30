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
		lea.l      reading_msg,a0
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
		lea.l      o1106(a6),a0
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
		lea.l      lines_msg,a0
		bsr        printstr
		move.l     x16786+6,d0
		bsr        print_decimal
		lea.l      bytes_msg,a0
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
		lea.l      exitcode_msg,a0
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
		lea.l      x16780,a0
		move.w     #0x0200,(a0)
		moveq.l    #0,d1
x1007a_6:
		lea.l      x10306(pc),a1
		subq.l     #1,(a1)
		bmi.s      x1007a_10
		movea.l    x16782,a1
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
		lea.l      x16780,a0
		move.w     (a0),d2
		add.w      d3,d2
		cmp.w      columns,d2
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
		lea.l      error_str,a0
		bra.s      failure

x10194:
		lea.l      usage_msg,a0
		bra.s      failure_1
stackoverflow:
		lea.l      stack_overflow_msg,a0
		bra.s      failure
x10194_1:
		bsr        x1022c
		bra.s      failure
x10194_2:
		lea.l      notalst_msg,a0
x101aa:
		lea.l      open_err_msg,a0
		bra.s      failure
x10194_3:
		lea.l      save_err_msg,a0
		bra.s      failure
x10194_4:
		lea.l      load_err_msg,a0

failure:
		pea.l      att_msg
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
		move.w     mtask,d0
		bne.s      x101d0_1
		lea.l      waitkey_msg,a0
		bsr.w      printstr
		move.w     #7,-(a7) /* Crawcin */
		trap       #1
		addq.l     #2,a7
x101d0_1:
		moveq.l    #-1,d0
		bra        exit

x101f0:
		lea.l      o1106(a6),a0
		clr.w      -(a7)
		move.l     a0,-(a7)
		move.w     #61,-(a7) /* Fopen */
		trap       #1
		addq.l     #8,a7
		tst.w      d0
		bmi.s      x101aa
		lea.l      x16786,a1
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

x10302: .dc.l 0
x10306: .dc.l 0

x1030a:
		movea.l    a1,a0
		move.l     d3,d0
		sub.l      4(a7),d0
		adda.l     4(a7),a0
		movem.l    d1-d3/a1-a2,-(a7)
		lea.l      -64(a7),a7
		lea.l      x16778,a1
		move.l     (a1),d1
		clr.l      (a1)
		cmp.l      d1,d0
		blt.s      x1030a_1
		move.l     d1,d0
x1030a_1:
		movem.l    d0/a0,-(a7)
		lea.l      8(a7),a2
		lea.l      o1106(a6),a0
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
		lea.l      inline_msg,a0
		bsr        printstr
		lea.l      (a7),a0
x1030a_5:
		bsr        printstr
		moveq.l    #32,d0
		bsr        cconout
		move.l     d3,d0
		bsr        print_decimal
		lea.l      bytes_read_msg,a0
x1030a_6:
		bsr        printstr
x1030a_7:
		lea.l      64(a7),a7
		movem.l    (a7)+,d1-d3/a1-a2
		rts
x1030a_8:
		lea.l      inline_msg,a0
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
		lea.l      cannot_open_msg,a0
x1030a_9:
		bra.s      x1030a_6
x1030a_10:
		lea.l      inline_msg,a0
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
		lea.l      cannot_read_msg,a0
		bsr        printstr
		move.w     d3,-(a7)
		move.w     #62,-(a7) /* Fclose */
		trap       #1
		addq.l     #4,a7
		bra.s      x1030a_7
x1030a_11:
		lea.l      inline_msg,a0
		bsr        printstr
		lea.l      (a7),a0
		bsr        printstr
		lea.l      cannot_close_msg,a0
		bra.s      x1030a_5
x1030a_12:
		addq.l     #8,a7
		lea.l      not_inline_msg,a0
		bsr        printstr
		lea.l      o1106(a6),a0
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
		lea.l      crnl,a0
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
		pea.l      find_mtask
		move.w     #38,-(a7) /* Supexec */
		trap       #14
		addq.l     #6,a7
		move.w     mtask,d0
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
		lea.l      columns,a0
		move.w     d0,(a0)
		lea.l      x16768,a0
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
		lea.l      x16768,a0
		bsr        printstr
		lea.l      version_msg,a0
		bsr        printstr
		jmp        main.l

x10590: .dc.w 0


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
		jsr        x16534
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
		lea.l      o1106(a6),a1
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
		lea.l      x16768-8196,a0
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
		lea.l      file_msg,a0
		bsr        printstr
		movea.l    (a7),a0
		bsr        printstr
		lea.l      already_exists_msg,a0
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
		lea.l      deleted_file_msg,a0
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
		lea.l      renamed_file_msg,a0
		bsr        printstr
		movea.l    (a7),a0
		bsr        printstr
		lea.l      to_msg,a0
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
		lea.l      o1106(a6),a2
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
		lea.l      o1106(a6),a1
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
		lea.l      x16782,a1
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
		lea.l      x16778,a2
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
		lea.l      o1106(a6),a1
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

		.even
jmpbase:

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
		cmpi.w     #(x136d0_end-x136d0)*2-1,d6
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
#if GBE > 0
		.dc.b (9<<4)+9   /* TOK_CMDLINE,TOK_CURDIR */
#endif
x136d0_end:
		.even

x1377c:
		lea.l      o850(a6),a4
		lea.l      o1106(a6),a5
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
		lea.l      o1106(a6),a0
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
		lea.l      no_args(pc),a2
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

f13b62:
		moveq.l    #0,d7
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
		addq.w     #(TOK_CMD_DO_UNTIL-TOK_CMD_DO_WHILE)*2,o1364(a6)
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
		jsr        FITOF.l
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
		lea.l      o1106(a6),a0
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

/* 371: 5674c */
/* 372: 57864 */
/* 373: 58654 */

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
		lea.l      o1106(a6),a0
		lea.l      o1364(a6),a1
		move.w     d0,(a1)+
		movem.l    a0-a2,4(a7)
		rts

		.even

/* 371: 56e06 */
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

/* 371: 574f4 */
/* 372: 5862c */
/* 373: 5944c */
f14bde:
		bsr        find_function
		lea.l      offset_table_pf(pc),a2
		move.w     d6,d0
		bpl.s      f14bde_1
#if GBE > 0
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
#if GBE >= 373
		lea.l      offset_table_sf212(pc),a2
#else
		lea.l      offset_table_sf214(pc),a2
#endif
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
#else
		cmpi.w     #(TOK_SUBFUNC_208<<8)+255,d0 /* token in range? */
		bhi        f13c9a_6
#endif
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
		subi.l     #o1106,d1 /* ??? */
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
		subi.l     #o1106,d1
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
		bhi.s      x154f0_11
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
		lea.l      o1106(a6),a2
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
#if GBE >= 372
		move.l     #0x4E657720,(a0)+ /* 'New ' */
#endif
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
#if GBE >= 372
		move.b     #'?',-1(a0)
		move.b     #' ',(a0)+
#else
		move.b     #' ',-1(a0)
		move.b     #'?',(a0)+
#endif
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
#endif
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
#endif
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
		bhi        x15c52_28
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
		.dc.b '#('
		.dc.b '$('
		.dc.b '%('
		.dc.b '!('
		.dc.b '&',0
		.dc.b '|',0
		.dc.b 0,0
		.dc.b 0,0
		.dc.b '&('
		.dc.b '|('
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
		jsr FFTOI.l
		bsr        print_hex
		bra        x15c52_13
x16028_2:
		addq.l     #1,a1
x16028_3:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		jsr FFTOI.l
		bsr        print_oct
		bra        x15c52_13
x16028_4:
		addq.l     #1,a1
x16028_5:
		move.l     (a1)+,d0
		move.w     (a1)+,d1
		move.w     (a1)+,d2
		jsr FFTOI.l
		bsr        print_bin
		bra        x15c52_13

x1607a:
		lea.l      func_table_offsets(a6),a0
#if GBE > 0
		move.w     #(5384/2)-1,d0
#else
		move.w     #(1952/2)-1,d0
#endif
x1607a_1:
		clr.w      (a0)+
		dbf        d0,x1607a_1

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
#if GBE > 0
		addq.l     #1,a0
		move.b     d2,(a0)
#else
		move.b     d2,(a0)+
#endif
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
#if GBE > 0
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
#else
		cmpi.b     #TOK_SUBFUNC_208,d0
		bne.s      x16294
		moveq.l    #0,d0
		move.b     (a1)+,d0
		addi.w     #224,d0
#endif
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
		lea.l      x16782,a0
		move.l     d0,(a0)
		move.l     d1,-(a7)
		move.l     d0,-(a7)
		clr.w      -(a7)
		move.w     #74,-(a7) /* Mshrink */
		trap       #1
		lea.l      12(a7),a7
		tst.l      d0
		bmi.s      x16534_3
		movea.l    x16782,a0
		move.w     #0x1FFF,d0
x16534_1:
		clr.l      (a0)+
		dbf        d0,x16534_1
		rts
x16534_2:
		addq.l     #4,a7
x16534_3:
		lea.l      x16782,a0
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
		lea.l      mtask,a0
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
		.dc.b ' !',13,10,0
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
8698: workout
9708: workin
*/


.dc.b
