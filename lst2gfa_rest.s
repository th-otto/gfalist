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
		bsr        x1395a
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
		bsr        x1395a
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
		cmpi.b     #TOK_SUBFUNC_208,d0 /* secondary function table? */
		bcs.s      x1395a_2
		cmpi.b     #TOK_SUBFUNC_214,d0
		bhi.s      x1395a_2
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
		lea.l      jmpbase(pc),a2
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
		bra        x1395a_1
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
handle_function_9:
		lea.l      func_misc_table(pc),a3
		cmpi.b     #238,d6
		beq.s      handle_function_10
		moveq.l    #64,d6
		bra.s      find_function_1
handle_function_10:
		cmpi.b     #'/',1(a0)
		beq.s      handle_function_11
		cmpi.b     #'*',1(a0)
		beq.s      handle_function_11
		moveq.l    #8,d6
		addq.l     #1,a0
		bra.s      find_function_7
handle_function_11:
		movea.l    a0,a5
		moveq.l    #-1,d6
		rts
handle_function_12:
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
		bmi.s      handle_function_9
		cmpi.w     #25,d6
		bhi.s      handle_function_12
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
		moveq.l    #0,d7
		move.l     d7,(a1)+
		rts

f13b68:
		moveq.l    #98,d0
		bra.s      f13b6c_1
f13b6c:
		moveq.l    #102,d0
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
		addq.w     #2,o1364(a6)
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

ymat_SUB_args:
	{ ARG_REPLACE, { (void *)84 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ ARG_PUSH, { x13f0e } },
	{ ARG_END, { 0 } }

x13f0e:
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 5, { 0 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_POP, { 0 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

ymat_MUL_args:
	{ ARG_PUSH, { x13f2a } },
	{ ARG_END, { 0 } }

x13f2a:
	{ ARG_REPLACE, { (void *)120 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 7, { 0 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)122 } },
	{ ARG_CALL_FUNC, { (void *)expect_float } },
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 7, { 0 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)124 } },
	{ ARG_CALL_FUNC, { (void *)expect_float } },
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 7, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 7, { 0 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)126 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

ymat_RANG_args:
	{ ARG_REPLACE, { (void *)118 } },
	{ ARG_PUSH, { ymat_DET_args+1 } },
	{ ARG_END, { 0 } }

ymat_PRINT_args:
	{ ARG_REPLACE, { (void *)102 } },
	{ ARG_PUSH, { print_channel_args } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ ARG_PUSH, { x13fbe } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x13fbe:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

ymat_INPUT_args:
	{ ARG_REPLACE, { (void *)116 } },
	{ ARG_PUSH, { print_channel_args } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_END, { 0 } }

ymat_READ_args:
	{ ARG_REPLACE, { (void *)100 } },
x13fd3:
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

ymat_TRANS_args:
	{ ARG_REPLACE, { (void *)104 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ ARG_PUSH, { x13fe4 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x13fe4:
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

ymat_INV_args:
	{ ARG_REPLACE, { (void *)128 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 19, { 0 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_END, { 0 } }

ymat_ONE_args:
	{ ARG_REPLACE, { (void *)110 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_END, { 0 } }

ymat_NEG_args:
	{ ARG_REPLACE, { (void *)94 } },
	{ ARG_PUSH, { x13fd3 } },
	{ ARG_END, { 0 } }

ymat_NORM_args:
	{ ARG_REPLACE, { (void *)98 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

ymat_SET_args:
	{ ARG_REPLACE, { (void *)108 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 19, { 0 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

ySSORT_args:
yQSORT_args:
	{ ARG_PUSH, { x14039 } },
	{ ARG_PUSH, { x14066 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x14039:
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ ARG_PUSH, { x14076 } },
	{ ARG_PUSH, { x14054 } },
	{ ARG_PUSH, { x1404d } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1436a } },
	{ ARG_PUSH, { x14076 } },
	{ ARG_END, { 0 } }

x1404d:
	{ 114, { 0 } },
	{ ARG_PUSH, { x1405a } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x14054:
	{ 109, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x1405a:
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word_arr } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte_arr } },
	{ ARG_END, { 0 } }

x14066:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x1406f } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x1406f:
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x14076:
	{ 5, { 0 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 6, { 0 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

yVOID_args:
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yLET_args:
	{ ARG_PUSH, { x14392 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1435e } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1438e } },
	{ 5, { 0 } },
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f140e2 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1438e } },
	{ 6, { 0 } },
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f140d6 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1438e } },
	{ 7, { 0 } },
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f140ee } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1438e } },
	{ 8, { 0 } },
	{ 19, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f140fa } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14372 } },
	{ ARG_PUSH, { x14147 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1437e } },
	{ ARG_PUSH, { x14147 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yRSET_args } },
	{ ARG_END, { 0 } }

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

/* 371: 56690 */
/* 372: 57aa8 */
/* 373: 58898 */
yDELETE_args:
	{ ARG_PUSH, { x1436a } },
	{ ARG_PUSH, { x14c92 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yINSERT_args:
	{ ARG_PUSH, { x14372 } },
	{ ARG_PUSH, { x1413e } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ ARG_PUSH, { x1413e } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ ARG_PUSH, { x1413e } },
x14139:
	{ ARG_PUSH, { x15068 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x1413e:
	{ ARG_PUSH, { x14b96 } },
	{ 32, { 0 } },
	{ -6, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_ARRAY_ASS } },
	{ ARG_END, { 0 } }

x14147:
	{ ARG_PUSH, { x1519e } },
	{ -6, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_ARRAY_ASS } },
	{ ARG_END, { 0 } }

#if GBE > 0
ySTRUCTs_args:
yOB_TEXTs_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14b96 } },
	{ 32, { 0 } },
	{ -6, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_ARRAY_ASS } },
	{ ARG_PUSH, { yCHDIR_args } },
	{ ARG_END, { 0 } }

yUSERBLK_args:
yTEDINFO_args:
yICONBLK_args:
yCICONBLK_args:
yBFOBSPEC_args:
yBITBLK_args:
yOB_RADIO_args:
yOB_dot_FLAGS_args:
yOB_dot_STATE_args:
	{ ARG_PUSH, { x14475 } },
#endif

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
	{ ARG_PUSH, { x14475 } },
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
	{ ARG_PUSH, { x14b96 } },
	{ 32, { 0 } },
	{ -6, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_ARRAY_ASS } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

yCONT_args:
	{ ARG_PUSH, { ySELECT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13da6 } },
	{ ARG_PUSH, { yPTSOUT_args } },
	{ ARG_END, { 0 } }

yWORD_args:
ySBYTE_args:
ySINGLE_args:
yLONG_args:
yINT_args:
yFLOAT_args:
yDOUBLE_args:
yCARD_args:
yBYTE_args:
	{ ARG_PUSH, { x14b96 } },
	{ 88, { 0 } },
	{ -6, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_REFEND } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

yCHAR_args:
	{ ARG_PUSH, { x14b96 } },
	{ 88, { 0 } },
	{ -6, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_REFEND } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

yRSET_args:
yLSET_args:
	{ ARG_CALL_FUNC, { (void *)expect_string } },
	{ ARG_PUSH, { x14196 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ ARG_PUSH, { x1519e } },
	{ -6, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_ARRAY_ASS } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

x14196:
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)TOK_ASSIGN } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

yIF_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ ARG_PUSH, { x14b9a } },
	{ ARG_PUSH, { x141b0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yWHILE_args:
yUNTIL_args:
yENDREPEAT_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x141b0:
	{ 74, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x141b3:
	{ 90, { 0 } },
	{ -6, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

yWEND_args:
yENDWHILE_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yDO_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d82 } },
	{ ARG_PUSH, { yWORD_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13b68 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yLOOP_args:
yENDDO_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13b6c } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yELSE_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)32 } },
yEXIT_IF_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ ARG_PUSH, { x141b3 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yRETURN_args:
yENDSUB_args:
yENDPROC_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)34 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)36 } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

yFOR_args:
	{ ARG_PUSH, { x1438e } },
	{ ARG_PUSH, { x14228 } },
	{ ARG_POP, { 0 } },
yFORM_INPUT_args:
	{ ARG_CALL_FUNC, { (void *)handle_form_input } },
	{ ARG_PUSH, { x14213 } },
	{ ARG_PUSH, { x14b9a } },
	{ ARG_PUSH, { x14217 } },
ySPUT_args:
ySGET_args:
yMNAM_args:
	{ ARG_PUSH, { x143ec } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x14213:
	{ 96, { 0 } },
	{ -6, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x14217:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 108, { 0 } },
	{ ARG_POP, { 0 } },
	{ 34, { 0 } },
	{ ARG_REPLACE, { (void *)33 } },
	{ ARG_END, { 0 } }

x1421f:
	{ ARG_PUSH, { x14217 } },
	{ ARG_REPLACE, { (void *)108 } },
	{ ARG_POP, { 0 } },
	{ 249,108, { 0 } },
	{ ARG_END, { 0 } }

x14228:
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14b96 } },
	{ 71, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x14245 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14b96 } },
	{ 73, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_CALL_FUNC, { (void *)f15972 } },
	{ ARG_END, { 0 } }

x14245:
	{ 72, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_CALL_FUNC, { (void *)f15976 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f1596e } },
	{ ARG_END, { 0 } }

yNEXT_args:
yENDFOR_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ ARG_PUSH, { x1438e } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yCASE_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ ARG_PUSH, { x14264 } },
	{ ARG_PUSH, { x14286 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x14264:
	{ 71, { 0 } },
	{ ARG_PUSH, { x14276 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14276 } },
	{ 71, { 0 } },
	{ ARG_PUSH, { x14276 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14276 } },
	{ 71, { 0 } },
	{ ARG_POP, { 0 } },
x14276:
	{ ARG_CALL_FUNC, { (void *)f1595a } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_int } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte } },
	{ ARG_END, { 0 } }

x14286:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14264 } },
	{ ARG_PUSH, { x14286 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

ySWITCH_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)88 } },
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

yDEFAULT_args:
	{ ARG_CALL_FUNC, { (void *)f13b62 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yENDSELECT_args:
yENDSWITCH_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

ySUB_args:
	{ ARG_PUSH, { x143cb } },
	{ ARG_PUSH, { x14311 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ ARG_PUSH, { x14311 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)0 } },
	{ 249,12, { 0 } },
	{ ARG_PUSH, { yPROCEDURE_args } },
	{ ARG_END, { 0 } }

yADD_args:
	{ ARG_PUSH, { x143cb } },
	{ ARG_PUSH, { x14319 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ ARG_PUSH, { x14319 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d8e } },
	{ ARG_PUSH, { yPTSOUT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d9a } },
	{ ARG_PUSH, { yPTSOUT_args } },
	{ ARG_END, { 0 } }

yMUL_args:
	{ ARG_PUSH, { x143cb } },
	{ ARG_PUSH, { x14321 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ ARG_PUSH, { x14321 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

yDIV_args:
	{ ARG_PUSH, { x143cb } },
	{ ARG_PUSH, { x14329 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ ARG_PUSH, { x14329 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

x14311:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 5, { 0 } },
	{ 19, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)33 } },
	{ ARG_END, { 0 } }

x14319:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 6, { 0 } },
	{ 19, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)33 } },
	{ ARG_END, { 0 } }

x14321:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 7, { 0 } },
	{ 19, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)33 } },
	{ ARG_END, { 0 } }

x14329:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 8, { 0 } },
	{ 19, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)33 } },
	{ ARG_END, { 0 } }

yINC_args:
yDEC_args:
	{ ARG_PUSH, { x1433e } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x14336:
	{ ARG_PUSH, { x143ec } },
	{ ARG_POP, { 0 } },
x1433a:
	{ ARG_PUSH, { x143e1 } },
	{ ARG_POP, { 0 } },

x1433e:
	{ ARG_PUSH, { x14402 } },
	{ ARG_POP, { 0 } },
x14342:
	{ ARG_PUSH, { x143f7 } },
	{ ARG_POP, { 0 } },

x14346:
	{ ARG_PUSH, { x143d6 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143cb } },
	{ ARG_END, { 0 } }

x1434e:
	{ ARG_CALL_FUNC, { (void *)expect_byte } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_int } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word } },
	{ ARG_POP, { 0 } },
x1435e:
	{ ARG_CALL_FUNC, { (void *)expect_float } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_bool } },
	{ ARG_END, { 0 } }

x14366:
	{ ARG_CALL_FUNC, { (void *)expect_bool_arr } },
	{ ARG_POP, { 0 } },
x1436a:
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ ARG_POP, { 0 } },
x14372:
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word_arr } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte_arr } },
	{ ARG_END, { 0 } }

x1437e:
	{ ARG_CALL_FUNC, { (void *)expect_bool_arr } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ ARG_END, { 0 } }

x14386:
	{ ARG_CALL_FUNC, { (void *)expect_float } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_int } },
	{ ARG_END, { 0 } }

x1438e:
	{ ARG_CALL_FUNC, { (void *)expect_float } },
	{ ARG_POP, { 0 } },
x14392:
	{ ARG_CALL_FUNC, { (void *)expect_int } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte } },
	{ ARG_END, { 0 } }

x1439e:
	{ ARG_PUSH, { x143ec } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ ARG_END, { 0 } }

x143a6:
	{ ARG_PUSH, { x14366 } },
	{ ARG_PUSH, { x1519e } },
	{ ARG_END, { 0 } }

x143ad:
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
x143b2:
	{ ARG_CALL_FUNC, { (void *)expect_bool_arr } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte_arr } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
x143bc:
	{ ARG_CALL_FUNC, { (void *)expect_word_arr } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
x143c6:
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

x143cb:
	{ ARG_CALL_FUNC, { (void *)expect_float } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ ARG_PUSH, { x1519e } },
	{ ARG_END, { 0 } }

x143d6:
	{ ARG_CALL_FUNC, { (void *)expect_int } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ ARG_PUSH, { x1519e } },
	{ ARG_END, { 0 } }

x143f7:
	{ ARG_CALL_FUNC, { (void *)expect_word } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word_arr } },
	{ ARG_PUSH, { x1519e } },
	{ ARG_END, { 0 } }

x14402:
	{ ARG_CALL_FUNC, { (void *)expect_byte } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte_arr } },
	{ ARG_PUSH, { x1519e } },
	{ ARG_END, { 0 } }

x1440d:
	{ ARG_PUSH, { x14342 } },
	{ 33, { 0 } },
x14411:
	{ ARG_PUSH, { x14342 } },
	{ 33, { 0 } },
x14415:
	{ ARG_PUSH, { x14342 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ ARG_END, { 0 } }

yERASE_args:
	{ ARG_PUSH, { x143ad } },
	{ ARG_PUSH, { x14425 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x14425:
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ad } },
	{ ARG_PUSH, { x14425 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x1442e:
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x143ec } },
	{ ARG_PUSH, { x1442e } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

yLINE_INPUT_args:
yLINE_args:
	{ -6, { 0 } },
	{ 249,52, { 0 } },
	{ ARG_PUSH, { x14213 } },
	{ ARG_PUSH, { print_channel_args } },
	{ ARG_PUSH, { x143ec } },
	{ ARG_PUSH, { x1442e } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14213 } },
	{ ARG_CALL_FUNC, { (void *)f13d22 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x143ec } },
	{ ARG_PUSH, { x1442e } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ -6, { 0 } },
	{ 249,54, { 0 } },

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
	{ ARG_PUSH, { x14475 } },

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
	{ ARG_PUSH, { x14475 } },

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
	{ ARG_PUSH, { x14475 } },

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
	{ ARG_PUSH, { x14b96 } },

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
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yINLINE_args:
	{ ARG_CALL_FUNC, { (void *)expect_int } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f158f8 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yVCURVE_args:
ySET_PXYXY_args:
ySET_RXYWH_args:
yCURVE_args:
yARECT_args:
	{ ARG_PUSH, { x14475 } },
ySET_GCBITMAP_args:
ySFILL_args:
yHLINE_args:
yALINE_args:
	{ ARG_PUSH, { x14475 } },
ySET_PXYWH_args:
ySET_MENU_args:
ySET_MFDB_args:
yCRASTER_args:
yACHAR_args:
	{ ARG_PUSH, { x14475 } },
yVGET_args:
yPIXEL1M_args:
yPIXEL2P_args:
yPIXEL4P_args:
yPIXEL8P_args:
yPIXEL8C_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { yVBOX_args } },
	{ ARG_END, { 0 } }

yAPOLY_args:
	{ ARG_PUSH, { x1503c } },
	{ ARG_PUSH, { x144ba } },
yACLIP_args:
	{ ARG_PUSH, { yVGET_args } },
	{ ARG_END, { 0 } }

yCHDRIVE_args:
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { yCHDIR_args } },
	{ ARG_END, { 0 } }

yFILL_args:
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { yTBITBLT_args } },
	{ ARG_END, { 0 } }

ySETMOUSE_args:
	{ ARG_PUSH, { yTBITBLT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_END, { 0 } }

yVSETCOLOR_args:
	{ ARG_PUSH, { yVBOX_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_END, { 0 } }

x144ba:
	{ 71, { 0 } },
	{ ARG_POP, { 0 } },
	{ 33, { 0 } },
	{ ARG_REPLACE, { (void *)71 } },
	{ ARG_END, { 0 } }

star_args:
	{ ARG_PUSH, { x14386 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { x14386 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

yEXEC_args:
	{ ARG_PUSH, { x144dd } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x144dd:
	{ ARG_PUSH, { x14b9a } },
	{ ARG_PUSH, { x144e6 } },
	{ ARG_PUSH, { x144e6 } },
x144e6:
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ ARG_END, { 0 } }

x144ef:
	{ ARG_PUSH, { x144eb } },
	{ ARG_POP, { 0 } },
	{ 249,33, { 0 } },
	{ ARG_END, { 0 } }

x14503:
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x14570 } },
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

yFILESELECT_args:
yFILES_args:
	{ ARG_CALL_FUNC, { (void *)f13d6a } },
	{ ARG_PUSH, { x14503 } },
	{ ARG_PUSH, { x14570 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14570 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d76 } },
yDUMP_args:
yDIR_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14570 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14570 } },
	{ ARG_PUSH, { x14532 } },
	{ ARG_PUSH, { x14570 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x14532:
	{ 71, { 0 } },
	{ ARG_POP, { 0 } },
	{ 33, { 0 } },
	{ ARG_REPLACE, { (void *)71 } },
	{ ARG_POP, { 0 } },
	{ 34, { 0 } },
	{ ARG_REPLACE, { (void *)71 } },
	{ ARG_POP, { 0 } },
	{ 249,71, { 0 } },
	{ ARG_END, { 0 } }

yOPTION_args:
	{ TOK_BASE, { 0 } },
	{ TOK_CONST_ZERO, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ TOK_BASE, { 0 } },
	{ TOK_CONST_ONE, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yRUN_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
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
	{ ARG_PUSH, { x14139 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d1c } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yDEFFLT_args:
yDEFDBL_args:
yDEFSNG_args:
yDEFSTR_args:
yDEFBIT_args:
yDEFWRD_args:
yDEFBYT_args:
yDEFINT_args:
	{ ARG_PUSH, { x1455c } },
	{ ARG_CALL_FUNC, { (void *)execute_defint } },
	{ ARG_END, { 0 } }

x1455c:
	{ ARG_CALL_FUNC, { (void *)f13d22 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d1c } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yRENAME_args:
yNAME_args:
	{ ARG_PUSH, { x14570 } },
	{ ARG_PUSH, { x1421f } },
	{ ARG_PUSH, { yCHDIR_args } },
	{ ARG_END, { 0 } }

x14570:
	{ ARG_PUSH, { x15068 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f14578 } },
	{ ARG_END, { 0 } }
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
		cmpi.b     #,d0
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

/* 371: 56e56 */
/* 372: 57f6e */
/* 373: 58d5e */
ySETTIME_args:
	{ ARG_PUSH, { x145ce } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yCHDIR_args } },
	{ ARG_END, { 0 } }
x145ce:
	{ ARG_PUSH, { x14570 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yOPEN_args:
	{ ARG_CALL_FUNC, { (void *)f13d5a } },
	{ ARG_PUSH, { x145f0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)18 } },
	{ ARG_PUSH, { x14570 } },
	{ ARG_PUSH, { x144ef } },
	{ ARG_PUSH, { x144f6 } },
	{ ARG_PUSH, { x144ef } },
	{ ARG_PUSH, { x14570 } },
	{ ARG_PUSH, { x14b90 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x145f0:
	{ ARG_REPLACE, { (void *)20 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yTBITBLT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)22 } },
	{ ARG_PUSH, { x144ff } },
	{ ARG_PUSH, { ySET_PXYWH_args } },
	{ ARG_END, { 0 } }
yCLOSE_args:
	{ ARG_CALL_FUNC, { (void *)f13d5a } },
	{ ARG_PUSH, { x14628 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)24 } },
yCLS_args:
	{ ARG_PUSH, { x144f6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
#if GBE > 0
x57fbe_372:
x58dae_373:
	{ ARG_PUSH, { x57fc3_372 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x57fc3_372:
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ ARG_END, { 0 } }
#endif
yTRON_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x14628:
	{ TOK_CHANNEL, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)28 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)26 } },
	{ ARG_END, { 0 } }
yCLEAR_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d5a } },
	{ ARG_PUSH, { x1463c } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

x1463c:
	{ TOK_CHANNEL, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)34 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)32 } },
	{ ARG_END, { 0 } }

yFULLW_args:
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

yTOUCH_args:
yTOPW_args:
	{ ARG_PUSH, { x144ff } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

yTITLEW_args:
ySTRPOKE_args:
yINFOW_args:
	{ ARG_PUSH, { x144ff } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { yCHDIR_args } },
	{ ARG_END, { 0 } }
REM_args:
yDATA_args:
	{ ARG_CALL_FUNC, { (void *)f13bca } },
	{ ARG_END, { 0 } }
yMIDs_args:
	{ ARG_PUSH, { x143ec } },
	{ ARG_PUSH, { x14695 } },
	{ ARG_PUSH, { x14b90 } },
	{ 32, { 0 } },
	{ ARG_PUSH, { x14196 } },
	{ ARG_END, { 0 } }
yPELLIPSE_args:
yELLIPSE_args:
	{ ARG_PUSH, { yVBOX_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { ySET_PXYWH_args } },
	{ ARG_END, { 0 } }
yPCIRCLE_args:
yCIRCLE_args:
	{ ARG_PUSH, { yTBITBLT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { yVGET_args } },
	{ ARG_END, { 0 } }
	.IFEQ GBE
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x144eb } },
#endif
x14692:
	{ ARG_PUSH, { x14b96 } },
x14695:
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_END, { 0 } }

yDRAW_args:
	{ ARG_PUSH, { x146d3 } },
	{ ARG_PUSH, { x14692 } },
	{ ARG_PUSH, { x146c9 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { x146ad } },
	{ ARG_END, { 0 } }

x146ad:
	{ ARG_PUSH, { x15068 } },
	{ ARG_PUSH, { x146b4 } },
	{ ARG_END, { 0 } }

x146b4:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x146c0 } },
	{ ARG_PUSH, { x1529b } },
	{ ARG_PUSH, { x146b4 } },
	{ ARG_END, { 0 } }

x146c0:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 34, { 0 } },
	{ ARG_POP, { 0 } },
	{ 87, { 0 } },
	{ ARG_POP, { 0 } },
	{ 249,33, { 0 } },
	{ ARG_END, { 0 } }
x146c9:
	{ 71, { 0 } },
	{ ARG_PUSH, { x14692 } },
	{ ARG_PUSH, { x146c9 } },
	{ ARG_POP, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x146d3:
	{ 71, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yBSAVE_args:
	{ ARG_PUSH, { x15068 } },
	{ ARG_PUSH, { x14695 } },
	{ ARG_PUSH, { x14695 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yBLOAD_args:
	{ ARG_PUSH, { x14139 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ ARG_PUSH, { x14b90 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yFIELD_args:
	{ ARG_PUSH, { x144f6 } },
	{ ARG_PUSH, { x146f8 } },
	{ ARG_PUSH, { x1470c } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x146f8:
	{ ARG_PUSH, { x14695 } },
	{ ARG_PUSH, { x1421f } },
	{ ARG_CALL_FUNC, { (void *)expect_string } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14695 } },
	{ 89, { 0 } },
	{ ARG_REPLACE, { (void *)122 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_END, { 0 } }
x1470c:
	{ ARG_PUSH, { x146f8 } },
	{ ARG_PUSH, { x1470c } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yGET_args:
	{ ARG_PUSH, { x15039 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)4 } },
	{ ARG_PUSH, { x144f6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)6 } },
	{ ARG_PUSH, { x144f6 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }
yPUT_args:
	{ ARG_PUSH, { x1503f } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)10 } },
	{ ARG_PUSH, { x1503f } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)12 } },
	{ ARG_PUSH, { x144f6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)14 } },
	{ ARG_PUSH, { x144f6 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

#if GBE > 0
yVPUT_args:
	{ ARG_PUSH, { x1503c } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)218 } },
	{ ARG_PUSH, { x15039 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
#endif

yDEFFILL_args:
	{ ARG_PUSH, { yDEFMARK_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)60 } },
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yCHDIR_args } },
	{ ARG_END, { 0 } }

yCLIP_args:
	{ TOK_OFF, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x14aa3 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { x15039 } },
	{ ARG_PUSH, { x14aa3 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { x1503f } },
	{ 71, { 0 } },
	{ ARG_PUSH, { x1503f } },
	{ ARG_PUSH, { x14aa3 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ 109, { 0 } },
	{ ARG_PUSH, { x1503f } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yDMASOUND_args:
	{ ARG_PUSH, { yVBOX_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yTBITBLT_args } },
	{ ARG_END, { 0 } }
ySOUND_args:
	{ ARG_PUSH, { x1503f } },
	{ ARG_PUSH, { x144eb } },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x147b9 } },
	{ ARG_POP, { 0 } },

yWAVE_args:
	{ ARG_PUSH, { yVGET_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yVBOX_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yTBITBLT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yENDIF_args } },
	{ ARG_POP, { 0 } },
x147b9:
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }

yOUT_args:
	{ ARG_PUSH, { x147d8 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x147d8 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13de4 } },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x147d8 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13de4 } },

x147d8:
	{ ARG_PUSH, { x1503f } },
	{ ARG_PUSH, { x147e0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x147e0:
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x147e0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yENDSEEK_args:
ySEEK_args:
yRELSEEK_args:
	{ ARG_PUSH, { x144ff } },
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_END, { 0 } }

yRECORD_args:
	{ ARG_PUSH, { x144f6 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }
yDIM_args:
	{ ARG_PUSH, { x143a6 } },
	{ ARG_PUSH, { x14804 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x14804:
	{ 33, { 0 } },
	{ ARG_PUSH, { x143a6 } },
	{ ARG_PUSH, { x14804 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
x1480d:
	{ 76, { 0 } },
	{ ARG_POP, { 0 } },
	{ 159, { 0 } },
	{ ARG_REPLACE, { (void *)76 } },
	{ ARG_POP, { 0 } },
	{ 249,76, { 0 } },
	{ ARG_END, { 0 } }
x14816:
	{ ARG_PUSH, { x1480d } },
x14819:
	{ -6, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x1481f:
	{ 76, { 0 } },
	{ ARG_POP, { 0 } },
	{ 159, { 0 } },
	{ ARG_REPLACE, { (void *)76 } },
	{ ARG_END, { 0 } }
x14825:
	{ ARG_PUSH, { x1480d } },
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

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
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)1 } },
	{ 249,0, { 0 } },
	{ 151, { 0 } },
	{ -6, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)4 } },
	{ 153, { 0 } },
	{ -6, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)6 } },
	{ 153, { 0 } },
	{ -6, { 0 } },
	{ 154, { 0 } },
	{ -6, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)2 } },
	{ 151, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x14816 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)8 } },
	{ 153, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x14816 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)10 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x1481f } },
	{ ARG_PUSH, { x14819 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)12 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ 174, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x14816 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)14 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ 170, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x14816 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)16 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ 171, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x1503c } },
	{ ARG_PUSH, { x14825 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)220 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ 172, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x15036 } },
	{ ARG_PUSH, { x14825 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)222 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ 173, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x15036 } },
	{ ARG_PUSH, { x14825 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)20 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)18 } },
	{ 167, { 0 } },
	{ -6, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)0 } },
	{ 249,252, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x1480d } },
	{ ARG_PUSH, { x148ca } },
	{ ARG_END, { 0 } }

yEVERY_args:
yAFTER_args:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x14825 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ 152, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ 154, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x148ca:
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x148ca } },
	{ ARG_END, { 0 } }

yRESUME_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ 168, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_CALL_FUNC, { (void *)f15448 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yPROCEDURE_args:
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ ARG_PUSH, { x1491e } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yFUNCTION_args:
	{ ARG_CALL_FUNC, { (void *)f154c4 } },
	{ ARG_PUSH, { x14917 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f154da } },
	{ ARG_PUSH, { x14917 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yDEFFN_args:
	{ ARG_CALL_FUNC, { (void *)f154c4 } },
	{ ARG_PUSH, { x14917 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f154da } },
	{ ARG_PUSH, { x14917 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

x14917:
	{ 35, { 0 } },
	{ ARG_PUSH, { x14926 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x1491e:
	{ 35, { 0 } },
	{ -6, { 0 } },
	{ ARG_PUSH, { x14926 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x14926:
	{ 50, { 0 } },
	{ ARG_PUSH, { x14947 } },
	{ ARG_PUSH, { x14951 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1434e } },
	{ ARG_PUSH, { x14935 } },
	{ ARG_END, { 0 } }

x14935:
	{ 33, { 0 } },
	{ 50, { 0 } },
	{ ARG_PUSH, { x14947 } },
	{ ARG_PUSH, { x14951 } },
	{ ARG_POP, { 0 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1434e } },
	{ ARG_PUSH, { x14935 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x14947:
	{ ARG_PUSH, { x1434e } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143ad } },
	{ ARG_REPLACE, { (void *)51 } },
	{ ARG_END, { 0 } }
x14951:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14947 } },
	{ ARG_PUSH, { x14951 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yGOSUB_args:
	{ ARG_CALL_FUNC, { (void *)f15444 } },
	{ ARG_PUSH, { x14962 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

LABEL_args:
	{ ARG_CALL_FUNC, { (void *)f15448 } },
	{ TOK_LABEL, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yRESTORE_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
yGOTO_args:
	{ ARG_CALL_FUNC, { (void *)f15448 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

ySWAP_args:
	{ ARG_PUSH, { x143cb } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x143cb } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143d6 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x143d6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143e1 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x143e1 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x143ec } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143f7 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x143f7 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14402 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x14402 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_float_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_bool_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_bool_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_word_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_byte_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ 7, { 0 } },
	{ ARG_PUSH, { x14386 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ad } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yMENU_args:
yMENU_KILL_args:
yMENU_OFF_args:
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ TOK_OFF, { 0 } },
	{ -6, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ TOK_KILL, { 0 } },
	{ -6, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_POP, { 0 } },
	{ 249,55, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yARRAYFILL_args:
	{ ARG_PUSH, { x143b2 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b9a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yRCALL_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_CALL_FUNC, { (void *)expect_int_arr } },
	{ 32, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yBITBLT_args:
	{ ARG_PUSH, { x143c6 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143c6 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143c6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { x143c6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }
yPOLYMARK_args:
yPOLYFILL_args:
yPOLYLINE_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x143bc } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143bc } },
	{ ARG_PUSH, { x14aa3 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x14aa3:
	{ 109, { 0 } },
	{ ARG_PUSH, { x1503f } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yLOCAL_args:
yCLR_args:
	{ ARG_PUSH, { x1434e } },
	{ ARG_PUSH, { x14ab1 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x14ab1:
	{ 33, { 0 } },
	{ ARG_PUSH, { x1434e } },
	{ ARG_PUSH, { x14ab1 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yMOUSE_args:
yGMOUSE_args:
	{ ARG_PUSH, { x1433a } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433a } },
	{ 33, { 0 } },
yKEYLOOK_args:
yKEYGET_args:
yKEYTEST_args:
	{ ARG_PUSH, { x1433a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

#if GBE > 0
x58478_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x1433a } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58480_372:
	{ ARG_PUSH, { x14475 } },
x58483_372:
	{ ARG_PUSH, { x14342 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58488_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58497_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
x584a3_372:
	{ ARG_PUSH, { x14475 } },
x584a6_372:
	{ ARG_PUSH, { x14342 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif

yALERT_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yKEYDEF_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14139 } },
	{ ARG_END, { 0 } }

yDEFTEXT_args:
	{ ARG_PUSH, { yDEFMARK_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yDEFLINE_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
yDEFLINE_args:
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
yDEFMARK_args:
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b91 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },

yVCLS_args:
ySLEEP_args:
ySYSTEM_args:
yRANDOMIZE_args:
yQUIT_args:
yMONITOR_args:
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yRESERVE_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)208 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }
yBPUT_args:
yBGET_args:
	{ ARG_PUSH, { x144f6 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_END, { 0 } }

#if GBE > 0
#if GBE >= 373
yRC_REDRAW_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)74 } },
	{ ARG_PUSH, { yVPBAR_args } },
	{ ARG_END, { 0 } }
#endif
ySTRARRAYFILL_args:
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x58524_372:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58531_372:
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x143ec } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58541_372:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x143ec } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58550_372:
	{ ARG_PUSH, { x143ec } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x5855f_372:
	{ ARG_PUSH, { x143ec } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_END, { 0 } }
x58567_372:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#if GBE >= 373
yPIXEL24_args:
	{ ARG_PUSH, { yVGET_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)2 } },
	{ ARG_PUSH, { ySET_GCBITMAP_args } },
	{ ARG_END, { 0 } }
yPIXEL32_args:
	{ ARG_PUSH, { yVGET_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)6 } },
	{ ARG_PUSH, { ySET_GCBITMAP_args } },
	{ ARG_END, { 0 } }
yPIXEL16_args:
	{ ARG_PUSH, { yVGET_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)10 } },
	{ ARG_PUSH, { ySET_GCBITMAP_args } },
	{ ARG_END, { 0 } }
yPIXEL15_args:
	{ ARG_PUSH, { yVGET_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)14 } },
	{ ARG_PUSH, { ySET_GCBITMAP_args } },
	{ ARG_END, { 0 } }
#endif
#endif

ySTORE_args:
	{ ARG_PUSH, { x144f6 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ ARG_PUSH, { x14b49 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yRECALL_args:
	{ ARG_PUSH, { x144f6 } },
	{ 33, { 0 } },
	{ ARG_CALL_FUNC, { (void *)expect_string_arr } },
	{ 32, { 0 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b4f } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14346 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x14b49:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b4f } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x14b4f:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x14b56 } },
	{ ARG_END, { 0 } }

x14b56:
	{ 71, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

yVRC_COPY_args:
yRC_COPY_args:
	{ ARG_PUSH, { x15036 } },
	{ ARG_PUSH, { x14532 } },
	{ ARG_PUSH, { x1503c } },
	{ ARG_PUSH, { x14b90 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

ySETCOLOR_args:
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)168 } },
	{ ARG_PUSH, { yVBOX_args } },
	{ ARG_END, { 0 } }

yVDISYS_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)174 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)176 } },
	{ ARG_PUSH, { yTBITBLT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)178 } },
	{ ARG_PUSH, { yVBOX_args } },
	{ ARG_END, { 0 } }

yGEMSYS_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)182 } },
	{ ARG_PUSH, { yCLEARW_args } },
#if GBE > 0
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { yVGET_args } },
#endif
	{ ARG_END, { 0 } }
x14b90:
	{ 33, { 0 } },
x14b91:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

	.even

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
		bra        x1395a_1

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
#if GBE >= 372
		.dc.w x58e08_372-jmpbase
#else
		.dc.w x14f4a-jmpbase
#endif
		.dc.w x14f55-jmpbase
#if GBE >= 372
		.dc.w x58e0b_372-jmpbase
#else
		.dc.w x14f4d-jmpbase
#endif
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
#if GBE >= 372
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
#endif
#if GBE >= 373
		.dc.w x59d80_373-jmpbase
		.dc.w x59be7_373-jmpbase
		.dc.w x59c1f_373-jmpbase
#endif
		.dc.w 0

/* 371: 5764e */
/* 372: 58798 */
/* 373: 595be */
#if GBE > 0
y132:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x587a9_372:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x587b6_372:
	{ ARG_PUSH, { x14b96 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif

x14c8e:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
x14c97:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x14c9f } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

x14c9f:
	{ 33, { 0 } },
	{ ARG_PUSH, { x15036 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15036 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
x14ca9:
	{ ARG_REPLACE, { (void *)208 } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)1 } },
	{ ARG_PUSH, { x14cfd } },
	{ ARG_END, { 0 } }
x14cb2:
	{ ARG_REPLACE, { (void *)208 } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)4 } },
	{ ARG_PUSH, { x14cfd } },
	{ ARG_END, { 0 } }
x14cbb:
	{ ARG_REPLACE, { (void *)208 } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)5 } },
	{ ARG_PUSH, { x14cfd } },
	{ ARG_END, { 0 } }
x14cc4:
	{ ARG_REPLACE, { (void *)208 } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)6 } },
	{ ARG_PUSH, { x14cfd } },
	{ ARG_END, { 0 } }
x14ccd:
	{ ARG_REPLACE, { (void *)208 } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)7 } },
	{ ARG_PUSH, { x14cfd } },
	{ ARG_END, { 0 } }
x14cd6:
	{ ARG_REPLACE, { (void *)208 } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)8 } },
	{ ARG_PUSH, { x14cfd } },
	{ ARG_END, { 0 } }
x14cdf:
	{ ARG_REPLACE, { (void *)208 } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)9 } },
	{ ARG_PUSH, { x14cfd } },
	{ ARG_END, { 0 } }

x14ce8:
	{ ARG_PUSH, { x14475 } },
x14ceb:
	{ ARG_PUSH, { x14475 } },
x14cee:
	{ ARG_PUSH, { x14475 } },
x14cf1:
	{ ARG_PUSH, { x14475 } },
x14cf4:
	{ ARG_PUSH, { x14475 } },
x14cf7:
	{ ARG_PUSH, { x14475 } },
x14cfa:
	{ ARG_PUSH, { x14475 } },
x14cfd:
	{ ARG_PUSH, { x14475 } },
x14d00:
	{ ARG_PUSH, { x14c92 } },
x14d03:
	{ ARG_END, { 0 } }

x14d04:
	{ ARG_PUSH, { x14b9a } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

x14d09:
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x59669_373:
x14d0e:
	{ ARG_PUSH, { x14b96 } },
	{ 88, { 0 } },
	{ ARG_END, { 0 } }
#if GBE > 0
x58848_372:
	{ ARG_PUSH, { x14cf7 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_208<<8)+239, { 0 } },
	{ ARG_REPLACE, { (void *)240 } },
	{ ARG_PUSH, { x14cf4 } },
	{ ARG_END, { 0 } }
x58854_372:
	{ ARG_PUSH, { x14cfd } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_210<<8)+91, { 0 } },
	{ ARG_REPLACE, { (void *)92 } },
	{ ARG_PUSH, { x14cf7 } },
	{ ARG_END, { 0 } }
x58860_372:
	{ ARG_PUSH, { x14d00 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_210<<8)+254, { 0 } },
	{ ARG_REPLACE, { (void *)255 } },
	{ ARG_PUSH, { x14cfa } },
	{ ARG_END, { 0 } }
x5886c_372:
	{ ARG_PUSH, { x14cfd } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_211<<8)+1, { 0 } },
	{ ARG_REPLACE, { (void *)2 } },
	{ ARG_PUSH, { x14cf7 } },
	{ ARG_END, { 0 } }
#endif
x14d13:
	{ ARG_PUSH, { x14b9a } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 112, { 0 } },
	{ ARG_REPLACE, { (void *)113 } },
	{ ARG_PUSH, { x14b9a } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_END, { 0 } }
x14d23:
	{ ARG_PUSH, { x14b9a } },
	{ ARG_PUSH, { x14d2b } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14d2b:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b9a } },
	{ ARG_PUSH, { x14d2b } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

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
#if GBE >= 372
		.dc.b 0    /* 142 ENVIRON$( */
#else
		.dc.b 0x0c /* 142 ENVIRON$(*/
#endif
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
#if GBE >= 372
		.dc.b 0    /* 169 STRPEEK$( */
#else
		.dc.b 0x10 /* 169 STRPEEK$( */
#endif
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
#if GBE >= 372
		.dc.b 0x10 /* 183 NULL */
#else
		.dc.b 0    /* 183 NULL */
#endif
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
#if GBE >= 372
		.dc.b 0    /* 194 HEX$( */
#else
		.dc.b 0x10 /* 194 HEX$(*/
#endif
		.dc.b 0    /* 195 OCT$( */
#if GBE >= 372
		.dc.b 0    /* 196 OCT$(*/
#endif

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
#else
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
#if GBE >= 373
		.dc.b 0x7e /* 100 AV_OPENWIND( */
#else
		.dc.b 0    /* 100 */
#endif
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
#if GBE >= 373
		.dc.b 0x0e /* 112 AV_FILEINFO( */
		.dc.b 0xa4 /* 113 AV_COPYFILE( */
		.dc.b 0x0e /* 114 AV_DELFILE( */
#else
		.dc.b 0    /* 112 */
		.dc.b 0    /* 113 */
		.dc.b 0    /* 114 */
#endif
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
#if GBE >= 373
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
#endif

#endif

	.IF GBE<372
offset_table_sf209:
offset_table_sf210:
offset_table_sf211:
offset_table_sf212:
#endif

offset_table_sf213:
offset_table_sf214:
		.even

/* 371: 57b1c */
/* 372: 58d18 */
/* 373: 59bca */
x14ee8:
	{ ARG_PUSH, { x1502d } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1502d } },
	{ ARG_PUSH, { x14f19 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14ef4:
	{ ARG_PUSH, { x15039 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1440d } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14efd:
	{ ARG_PUSH, { x15068 } },
	{ ARG_PUSH, { x14f15 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

#if GBE > 0
#if GBE >= 373
x59be7_373:
	{ ARG_PUSH, { x1433e } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif
x58d35_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14346 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58d41_372:
	{ ARG_PUSH, { x14475 } },
x58d44_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
x58d4a_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14346 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58d52_372:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x58d5a_372 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58d5a_372:
	{ 33, { 0 } },
	{ ARG_PUSH, { x58d60_372 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
x58d60_372:
	{ ARG_PUSH, { x14346 } },
	{ ARG_END, { 0 } }
#if GBE >= 373
x59c1f_373:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14346 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14346 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif
x58d64_372:
	{ ARG_PUSH, { x14475 } },
x58d67_372:
	{ ARG_PUSH, { x14475 } },
x58d6a_372:
	{ ARG_PUSH, { x14411 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
yRGB_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x1433e } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yAVERAGE_RGB_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x1433a } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433a } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433a } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
#endif

x14f05:
	{ ARG_PUSH, { x1503c } },
	{ ARG_PUSH, { x14f1d } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f0d:
	{ ARG_PUSH, { x15036 } },
	{ ARG_PUSH, { x14f1d } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f15:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14415 } },
x14f19:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14415 } },
x14f1d:
	{ 33, { 0 } },
x14f1e:
	{ ARG_PUSH, { x1440d } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
x14f23:
	{ ARG_PUSH, { x14f1e } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

x14f28:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14415 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x14f2e:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

#if GBE > 0
x58dd0_372:
	{ ARG_PUSH, { x1439e } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif

x14f34:
	{ ARG_PUSH, { x1439e } },
	{ ARG_PUSH, { x14f2e } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f3c:
	{ ARG_PUSH, { x1439e } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f41:
	{ ARG_PUSH, { x1503c } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14fa6 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#if GBE >= 372
x58df3_372:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
#else
x14f4a:
	{ ARG_PUSH, { x14475 } },
#endif
x14f4d:
	{ ARG_PUSH, { x143ec } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

#if GBE > 0

yTPUT_args:
	{ ARG_PUSH, { x1503f } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14fa6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x58e05_372:
	{ ARG_PUSH, { x14475 } },
x58e08_372:
	{ ARG_PUSH, { x14475 } },
x58e0b_372:
	{ ARG_PUSH, { x143ec } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
yVER2STR_args:
yENVIRON_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x143ec } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
yBXLATE_args:
yBCRYPT_args:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x58e23_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_END, { 0 } }
x58e37_372:
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58e48_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58e60_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1433e } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58e70_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif

x14f52:
	{ ARG_PUSH, { x14475 } },
x14f55:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f5d:
	{ ARG_PUSH, { x14346 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f66:
	{ ARG_PUSH, { x15039 } },
	{ 33, { 0 } },
x14f6a:
	{ ARG_PUSH, { x1503f } },
	{ 33, { 0 } },
x14f6e:
	{ ARG_PUSH, { x1503f } },
	{ ARG_PUSH, { x14f28 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#if GBE > 0
x58ea0_372:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x14f28 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58ea8_372:
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x143ec } },
	{ ARG_PUSH, { x14f28 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif
#if GBE >= 373
x59d80_373:
	{ ARG_PUSH, { x15039 } },
	{ ARG_PUSH, { x59d88_373 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x59d88_373:
	{ 33, { 0 } },
	{ ARG_PUSH, { x14411 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
#endif
x14f76:
	{ ARG_PUSH, { x1503f } },
	{ 33, { 0 } },
x14f7a:
	{ ARG_PUSH, { x1503c } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14342 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f83:
	{ ARG_PUSH, { x15039 } },
	{ 33, { 0 } },
x14f87:
	{ ARG_PUSH, { x14475 } },
x14f8a:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x14f1d } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14f92:
	{ ARG_PUSH, { x1503f } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14346 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#if GBE > 0
x58ed8_372:
	{ ARG_PUSH, { x14fa3 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58edd_372:
	{ ARG_PUSH, { x14fa6 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif

x14f9b:
	{ ARG_PUSH, { x14fa6 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_END, { 0 } }

x14fa3:
	{ ARG_PUSH, { x14475 } },

#if GBE > 0
ySCALL_args:
	{ ARG_PUSH, { x14346 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x58efa_372:
	{ ARG_PUSH, { x14346 } },
	{ 33, { 0 } },
x58efe_372:
	{ ARG_PUSH, { x14346 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58f03_372:
	{ ARG_PUSH, { x14f9b } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14346 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14346 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x58f10_372:
	{ ARG_PUSH, { x14f9b } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
#endif

x14fae:
	{ ARG_PUSH, { x14fa6 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_208<<8)+68, { 0 } },
	{ ARG_REPLACE, { (void *)69 } },
	{ ARG_PUSH, { x14fa3 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_208<<8)+68, { 0 } },
	{ ARG_REPLACE, { (void *)70 } },
	{ ARG_PUSH, { x14f9b } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }

x14fc5:
	{ ARG_PUSH, { x14fa6 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_208<<8)+209, { 0 } },
	{ ARG_REPLACE, { (void *)210 } },
	{ ARG_PUSH, { x14fa3 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_208<<8)+209, { 0 } },
	{ ARG_REPLACE, { (void *)211 } },
	{ ARG_PUSH, { x14f9b } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14fdc:
	{ ARG_PUSH, { x14fe1 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14fe1:
	{ ARG_PUSH, { x14336 } },
	{ ARG_END, { 0 } }
x14fe5:
	{ ARG_PUSH, { x14fe9 } },
	{ ARG_END, { 0 } }
x14fe9:
	{ ARG_PUSH, { x1434e } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
x14fee:
	{ ARG_PUSH, { x143ad } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x14ff3:
	{ ARG_REPLACE, { (void *)208 } },
	{ 249,189, { 0 } },
	{ ARG_PUSH, { x1501f } },
	{ ARG_END, { 0 } }
x14ffb:
	{ ARG_PUSH, { x15046 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x15000:
	{ ARG_PUSH, { x144dd } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x15005:
	{ ARG_CALL_FUNC, { (void *)f154aa } },
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)157 } },
	{ ARG_PUSH, { x15050 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
x15010:
	{ ARG_PUSH, { x14b91 } },
	{ 32, { 0 } },
	{ ARG_END, { 0 } }
yABSOLUTE_args:
	{ ARG_PUSH, { x1434e } },
	{ ARG_PUSH, { x15027 } },
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_END, { 0 } }
x1501f:
	{ ARG_PUSH, { x143ad } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1434e } },
	{ ARG_END, { 0 } }
x15027:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 19, { 0 } },
	{ ARG_REPLACE, { (void *)33 } },
	{ ARG_END, { 0 } }

x15046:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x1504d } },
	{ ARG_END, { 0 } }
x1504d:
	{ ARG_PUSH, { x144eb } },
x15050:
	{ ARG_PUSH, { x1505b } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x1504d } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
x1505b:
	{ 138, { 0 } },
	{ ARG_POP, { 0 } },
	{ 139, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x1506f:
	{ ARG_CALL_FUNC, { (void *)f13d22 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13696 } },
	{ ARG_POP, { 0 } },
	{ 135, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 58, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 58, { 0 } },
	{ ARG_REPLACE, { (void *)59 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 60, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 60, { 0 } },
	{ ARG_REPLACE, { (void *)61 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 62, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 62, { 0 } },
	{ ARG_REPLACE, { (void *)63 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f1369e } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 94, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 94, { 0 } },
	{ ARG_REPLACE, { (void *)95 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x144f6 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x15060 } },
	{ ARG_PUSH, { x15164 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 127, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
.IFNE GBE
	{ 148, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 160, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 144, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 145, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 150, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 146, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 147, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 142, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 177, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 166, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 164, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 165, { 0 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 149, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
#if GBE >= 373
	{ 181, { 0 } },
#else
	{ 169, { 0 } },
#endif
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
#if GBE >= 373
	{ 169, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
#endif
	{ 178, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 179, { 0 } },
	{ ARG_PUSH, { x14fa6 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 180, { 0 } },
	{ ARG_PUSH, { x14fa6 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
.ENDC

x150de:
	{ 129, { 0 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_POP, { 0 } },
	{ 129, { 0 } },
	{ ARG_REPLACE, { (void *)130 } },
	{ ARG_PUSH, { x14475 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x15160 } },
	{ ARG_CALL_FUNC, { (void *)f154da } },
	{ ARG_PUSH, { x14962 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_208<<8)+96, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)131 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ (TOK_SUBFUNC_208<<8)+97, { 0 } },
	{ -6, { 0 } },
	{ ARG_REPLACE, { (void *)133 } },
	{ ARG_PUSH, { x15068 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ 190, { 0 } },
	{ ARG_PUSH, { x1512d } },
	{ ARG_POP, { 0 } },
	{ 193, { 0 } },
	{ ARG_PUSH, { x1513f } },
	{ ARG_POP, { 0 } },
	{ 195, { 0 } },
	{ ARG_PUSH, { x1514a } },
	{ ARG_POP, { 0 } },
	{ 115, { 0 } },
	{ ARG_PUSH, { x15155 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ ARG_POP, { 0 } },
	{ 97, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ 88, { 0 } },
	{ ARG_END, { 0 } }



yTEXT_args:
	{ ARG_PUSH, { x1503f } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1529b } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
yATEXT_args:
	{ ARG_PUSH, { x1503c } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x1529b } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
	.IFEQ GBE
	{ ARG_PUSH, { x15068 } },
	{ ARG_PUSH, { x151cf } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x14b9a } },
	{ ARG_END, { 0 } }
x151cf:
	{ ARG_PUSH, { x1517e } },
	{ ARG_PUSH, { x15068 } },
	{ ARG_PUSH, { x14bc8 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
#endif
yINPUT_args:
	{ ARG_CALL_FUNC, { (void *)f13d22 } },
	{ ARG_PUSH, { x151eb } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x151ee } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ ARG_PUSH, { x144f6 } },
x151eb:
	{ ARG_PUSH, { x144eb } },
x151ee:
	{ ARG_PUSH, { x14336 } },
	{ ARG_PUSH, { x151f6 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x151f6:
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x14336 } },
	{ ARG_PUSH, { x151f6 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }
yREAD_args:
	{ ARG_PUSH, { x151ee } },
	{ ARG_END, { 0 } }
yWRITE_args:
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { write_channel_args } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { print_channel_args } },
	{ ARG_PUSH, { x15214 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }
x15214:
	{ ARG_PUSH, { x1529b } },
	{ ARG_PUSH, { x1521b } },
	{ ARG_END, { 0 } }
x1521b:
	{ ARG_PUSH, { x15228 } },
	{ ARG_PUSH, { x1529b } },
	{ ARG_PUSH, { x1521b } },
	{ ARG_POP, { 0 } },
	{ 34, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x15228:
	{ 33, { 0 } },
	{ ARG_POP, { 0 } },
	{ 34, { 0 } },
	{ ARG_REPLACE, { (void *)33 } },
	{ ARG_END, { 0 } }

yPRINT_args:
	{ ARG_PUSH, { x1525b } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f13d64 } },
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x1523f } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x1523f:
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x1525b } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

yLPRINT_args:
	{ ARG_PUSH, { x1525b } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

write_channel_args:
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

print_channel_args:
	{ TOK_CHANNEL, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_PUSH, { x144eb } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x1525b:
	{ ARG_PUSH, { x144eb } },
	{ ARG_PUSH, { x1525b } },
	{ ARG_POP, { 0 } },
	{ TOK_PRINTSPACE, { 0 } },
	{ ARG_PUSH, { x1525b } },
	{ ARG_POP, { 0 } },
	{ TOK_AT, { 0 } },
	{ ARG_PUSH, { x1503f } },
	{ 32, { 0 } },
	{ ARG_CALL_FUNC, { (void *)f15306 } },
	{ ARG_CALL_FUNC, { (void *)f15310 } },
	{ ARG_PUSH, { x1525b } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x15297 } },
	{ ARG_PUSH, { x14c92 } },
	{ ARG_CALL_FUNC, { (void *)f15310 } },
	{ ARG_PUSH, { x1525b } },
	{ ARG_POP, { 0 } },
	{ 163, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ 33, { 0 } },
	{ ARG_PUSH, { x15214 } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x1529b } },
	{ ARG_CALL_FUNC, { (void *)f15310 } },
	{ ARG_PUSH, { x1525b } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x15297:
	{ TOK_TAB, { 0 } },
	{ ARG_POP, { 0 } },
	{ TOK_SPC, { 0 } },
	{ ARG_END, { 0 } }

x1529b:
	{ ARG_PUSH, { x15068 } },
	{ ARG_CALL_FUNC, { (void *)f152e6 } },
	{ ARG_POP, { 0 } },
	{ 249,55, { 0 } },
	{ ARG_PUSH, { x14b96 } },
	{ ARG_END, { 0 } }

yDEFMOUSE_args:
	{ ARG_PUSH, { yCLEARW_args } },
	{ ARG_POP, { 0 } },
	{ ARG_REPLACE, { (void *)48 } },
	{ ARG_PUSH, { yCHDIR_args } },
	{ ARG_END, { 0 } }

ySPRITE_args:
	{ ARG_PUSH, { x143ec } },
	{ 33, { 0 } },
	{ ARG_PUSH, { yVPLOT_args } },
	{ ARG_POP, { 0 } },
	{ ARG_PUSH, { x143ec } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

yCALL_args:
	{ ARG_CALL_FUNC, { (void *)f154aa } },
	{ ARG_PUSH, { x152c7 } },
	{ TOK_LINE_COMMENT, { 0 } },
	{ ARG_END, { 0 } }

x152c7:
	{ 35, { 0 } },
	{ ARG_REPLACE, { (void *)157 } },
	{ ARG_PUSH, { x152dc } },
	{ ARG_PUSH, { x152d3 } },
	{ 32, { 0 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x152d3:
	{ 33, { 0 } },
	{ ARG_PUSH, { x152dc } },
	{ ARG_PUSH, { x152d3 } },
	{ ARG_POP, { 0 } },
	{ ARG_END, { 0 } }

x152dc:
	{ ARG_PUSH, { x14b96 } },
	{ ARG_POP, { 0 } },
	{ 249,55, { 0 } },
	{ ARG_PUSH, { x15068 } },
	{ ARG_END, { 0 } }
	.even

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
		cmpi.b     #,d0
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
		cmpi.b     #,d0
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
		cmpi.b     #,d2
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
#if GBE > 0
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
#else
		addi.w     #TOK_REF_FLOAT_SHORT,d1
#endif
x1607a_3:
		add.w      d1,d1
		move.l     a1,d2
		subi.l     #jmpbase,d2
		move.w     d2,0(a0,d1.w)
		lea.l      4(a1,d0.w),a1
		bra.s      x1607a_2
x1607a_4:
		lea.l      cmd_table_offsets(a6),a0
#if GBE >= 373
		lea.l      cmd_table,a1
#else
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
		move.b     #,8400(a6)
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
