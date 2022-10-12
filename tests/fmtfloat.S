		.globl _gfa_format
		.globl _manthi
		.globl _mantlo
		
		.text


FDIV:
		tst.w      d5
		ble.s      FDIV_4
		ext.l      d2
		bgt.s      FDIV_6
		bne.s      FDIV_5
FDIV_1:
		rts
FDIV_2:
		moveq.l    #7,d0
		bra        ERROR /* division by zero */
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
		subi.l     #0x00010000,d5
FDIV_25:
		sub.w      d7,d1
		subx.l     d6,d0
		bcs.s      FDIV_22
FDIV_26:
		swap       d0
		move.w     d1,d0
		moveq.l    #0,d1
		bra        FDIV_12
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
		bvs.s      FDIV_24
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
		bvs.s      FDIV_42
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
		bvs.s      FDIV_42
		move.w     d0,-(a7)
		bra.s      FDIV_34
FDIV_42:
		move.w     #-1,-(a7)
		bra        FDIV_15

ERROR:
		rts

		
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

Feins:
		move.l     #0x80000000,d0
		moveq.l    #0,d1
		move.w     #0x03FF,d2
		rts


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
		lea.l      tmpbuf,a0
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
		bsr.w      Feins
FTstr_3:
		bsr        Fmul10
		addq.w     #1,d6
		cmp.w      d2,d7
		bcc.s      FTstr_3
		move.l     d0,d3
		move.w     d1,d4
		move.l     d2,d5
		move.l     d0,_manthi
		move.w     d1,_mantlo
		move.w     d2,_mantlo+2
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
		lea.l      tmpbuf+15,a1
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
		lea.l      tmpbuf,a0
		rts
FTstr_12:
		moveq.l    #0,d0
		moveq.l    #0,d1
		moveq.l    #0,d2
		moveq.l    #0,d6
		bra.s      FTstr_8

roundup:
		pea.l      (a1)
		move.w     decimal_digits,d1
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
		lea.l      outbuf,a1
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
		lea.l      outbuf,a0
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
		lea.l      tmpbuf+15,a0
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


/*
 * 4(a7).l = bytes 0-3
 * 8(a7).l = bytes 4-7
 */
_gfa_format:
	move.l 4(a7),d0
	move.l 8(a7),d1
	movem.l d2-d7/a2-a6,-(a7)
	move.l d1,d2
	andi.l #0x0000FFFF,d2
	lsr.l  #8,d1
	lsr.l  #8,d1
	bsr Fstr
	movem.l (a7)+,d2-d7/a2-a6
	lea outbuf,a0
	move.l a0,d0
	rts

	.data
decimal_digits:
	dc.w 13

	.bss
tmpbuf: ds.b 40
outbuf: ds.b 40

_manthi: ds.l 1
_mantlo: ds.l 1
