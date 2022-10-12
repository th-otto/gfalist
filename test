VFFTOI:
[000100a8] 2018                      move.l     (a0)+,d0
[000100aa] 2418                      move.l     (a0)+,d2
FFTOI:
[000100ac] 48c2                      ext.l      d2
[000100ae] 6b16                      bmi.s      $000100C6
[000100b0] 0442 03ff                 subi.w     #$03FF,d2
[000100b4] 6b0c                      bmi.s      $000100C2
[000100b6] 0442 001f                 subi.w     #$001F,d2
[000100ba] 6a2a                      bpl.s      $000100E6
[000100bc] 4442                      neg.w      d2
[000100be] e4a8                      lsr.l      d2,d0
[000100c0] 4e75                      rts
[000100c2] 7000                      moveq.l    #0,d0
[000100c4] 4e75                      rts
[000100c6] 4442                      neg.w      d2
[000100c8] 0442 03ff                 subi.w     #$03FF,d2
[000100cc] 6bf4                      bmi.s      $000100C2
[000100ce] 0442 001f                 subi.w     #$001F,d2
[000100d2] 6a08                      bpl.s      $000100DC
[000100d4] 4442                      neg.w      d2
[000100d6] e4a8                      lsr.l      d2,d0
[000100d8] 4480                      neg.l      d0
[000100da] 4e75                      rts
[000100dc] 6608                      bne.s      $000100E6
[000100de] 0c80 8000 0000            cmpi.l     #$80000000,d0
[000100e4] 67f4                      beq.s      $000100DA
[000100e6] 7002                      moveq.l    #2,d0
[000100e8] 6000 0018                 bra.w      ERROR
