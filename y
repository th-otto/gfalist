y75:
	.dc.b -1,(y42-jmpbase)/256,(y42-jmpbase)&255
	.dc.b -5,108
	.dc.b -3
	.dc.b 249,108
	.dc.b -4
y40:
	.dc.b 19
	.dc.b -5,69
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b 71
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y44-jmpbase)/256,(y44-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b 19
	.dc.b -5,69
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b 73
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -2,(f20-jmpbase)/256,(f20-jmpbase)&255
	.dc.b -4
y44:
	.dc.b 72
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -2,(f21-jmpbase)/256,(f21-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f22-jmpbase)/256,(f22-jmpbase)&255
	.dc.b -4
yENDFOR_args:
	.dc.b -2,(f15-jmpbase)/256,(f15-jmpbase)&255
	.dc.b -1,(y27-jmpbase)/256,(y27-jmpbase)&255
	.dc.b 70
	.dc.b -4
yCASE_args:
	.dc.b -2,(f15-jmpbase)/256,(f15-jmpbase)&255
	.dc.b -1,(y45-jmpbase)/256,(y45-jmpbase)&255
	.dc.b -1,(y46-jmpbase)/256,(y46-jmpbase)&255
	.dc.b 70
	.dc.b -4
y45:
	.dc.b 71
	.dc.b -1,(y47-jmpbase)/256,(y47-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y47-jmpbase)/256,(y47-jmpbase)&255
	.dc.b 71
	.dc.b -1,(y47-jmpbase)/256,(y47-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y47-jmpbase)/256,(y47-jmpbase)&255
	.dc.b 71
	.dc.b -3
y47:
	.dc.b -2,(f23-jmpbase)/256,(f23-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f24-jmpbase)/256,(f24-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f25-jmpbase)/256,(f25-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f26-jmpbase)/256,(f26-jmpbase)&255
	.dc.b -4
y46:
	.dc.b 33
	.dc.b -1,(y45-jmpbase)/256,(y45-jmpbase)&255
	.dc.b -1,(y46-jmpbase)/256,(y46-jmpbase)&255
	.dc.b -3
	.dc.b -4
ySWITCH_args:
	.dc.b -2,(f15-jmpbase)/256,(f15-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,88
	.dc.b -2,(f15-jmpbase)/256,(f15-jmpbase)&255
	.dc.b -1,(y36-jmpbase)/256,(y36-jmpbase)&255
	.dc.b -4
yDEFAULT_args:
	.dc.b -2,(f15-jmpbase)/256,(f15-jmpbase)&255
	.dc.b 70
	.dc.b -4
yENDSWITCH_args:
	.dc.b 70
	.dc.b -4
ySUB_args:
	.dc.b -1,(y48-jmpbase)/256,(y48-jmpbase)&255
	.dc.b -1,(y49-jmpbase)/256,(y49-jmpbase)&255
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y50-jmpbase)/256,(y50-jmpbase)&255
	.dc.b -1,(y49-jmpbase)/256,(y49-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -6
	.dc.b -5,0
	.dc.b 249,12
	.dc.b -1,(yPROCEDURE_args-jmpbase)/256,(yPROCEDURE_args-jmpbase)&255
	.dc.b -4
yADD_args:
	.dc.b -1,(y48-jmpbase)/256,(y48-jmpbase)&255
	.dc.b -1,(y51-jmpbase)/256,(y51-jmpbase)&255
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y50-jmpbase)/256,(y50-jmpbase)&255
	.dc.b -1,(y51-jmpbase)/256,(y51-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f27-jmpbase)/256,(f27-jmpbase)&255
	.dc.b -1,(yADDRIN_args-jmpbase)/256,(yADDRIN_args-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f28-jmpbase)/256,(f28-jmpbase)&255
	.dc.b -1,(yADDRIN_args-jmpbase)/256,(yADDRIN_args-jmpbase)&255
	.dc.b -4
yMUL_args:
	.dc.b -1,(y48-jmpbase)/256,(y48-jmpbase)&255
	.dc.b -1,(y52-jmpbase)/256,(y52-jmpbase)&255
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y50-jmpbase)/256,(y50-jmpbase)&255
	.dc.b -1,(y52-jmpbase)/256,(y52-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yDIV_args:
	.dc.b -1,(y48-jmpbase)/256,(y48-jmpbase)&255
	.dc.b -1,(y53-jmpbase)/256,(y53-jmpbase)&255
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y50-jmpbase)/256,(y50-jmpbase)&255
	.dc.b -1,(y53-jmpbase)/256,(y53-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
y49:
	.dc.b 33
	.dc.b -3
	.dc.b 5
	.dc.b 19
	.dc.b -6
	.dc.b -5,33
	.dc.b -4
y51:
	.dc.b 33
	.dc.b -3
	.dc.b 6
	.dc.b 19
	.dc.b -6
	.dc.b -5,33
	.dc.b -4
y52:
	.dc.b 33
	.dc.b -3
	.dc.b 7
	.dc.b 19
	.dc.b -6
	.dc.b -5,33
	.dc.b -4
y53:
	.dc.b 33
	.dc.b -3
	.dc.b 8
	.dc.b 19
	.dc.b -6
	.dc.b -5,33
	.dc.b -4
yDEC_args:
	.dc.b -1,(y50-jmpbase)/256,(y50-jmpbase)&255
	.dc.b 70
	.dc.b -4
y151:
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -3
y121:
	.dc.b -1,(y54-jmpbase)/256,(y54-jmpbase)&255
	.dc.b -3
y50:
	.dc.b -1,(y55-jmpbase)/256,(y55-jmpbase)&255
	.dc.b -3
y59:
	.dc.b -1,(y56-jmpbase)/256,(y56-jmpbase)&255
	.dc.b -3
y124:
	.dc.b -1,(y57-jmpbase)/256,(y57-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y48-jmpbase)/256,(y48-jmpbase)&255
	.dc.b -4
y113:
	.dc.b -2,(f26-jmpbase)/256,(f26-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f14-jmpbase)/256,(f14-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f24-jmpbase)/256,(f24-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f25-jmpbase)/256,(f25-jmpbase)&255
	.dc.b -3
y26:
	.dc.b -2,(f4-jmpbase)/256,(f4-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f29-jmpbase)/256,(f29-jmpbase)&255
	.dc.b -4
y58:
	.dc.b -2,(f30-jmpbase)/256,(f30-jmpbase)&255
	.dc.b -3
y22:
	.dc.b -2,(f2-jmpbase)/256,(f2-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b -3
y28:
	.dc.b -2,(f6-jmpbase)/256,(f6-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f7-jmpbase)/256,(f7-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f8-jmpbase)/256,(f8-jmpbase)&255
	.dc.b -4
y30:
	.dc.b -2,(f30-jmpbase)/256,(f30-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f2-jmpbase)/256,(f2-jmpbase)&255
	.dc.b -4
y67:
	.dc.b -2,(f4-jmpbase)/256,(f4-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f24-jmpbase)/256,(f24-jmpbase)&255
	.dc.b -4
y27:
	.dc.b -2,(f4-jmpbase)/256,(f4-jmpbase)&255
	.dc.b -3
y25:
	.dc.b -2,(f24-jmpbase)/256,(f24-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f25-jmpbase)/256,(f25-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f26-jmpbase)/256,(f26-jmpbase)&255
	.dc.b -4
y144:
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -4
y99:
	.dc.b -1,(y58-jmpbase)/256,(y58-jmpbase)&255
	.dc.b -1,(y34-jmpbase)/256,(y34-jmpbase)&255
	.dc.b -4
y60:
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b 32
	.dc.b -3
y117:
	.dc.b -2,(f30-jmpbase)/256,(f30-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -2,(f8-jmpbase)/256,(f8-jmpbase)&255
	.dc.b 32
	.dc.b -3
y119:
	.dc.b -2,(f7-jmpbase)/256,(f7-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -2,(f2-jmpbase)/256,(f2-jmpbase)&255
	.dc.b 32
	.dc.b -3
y118:
	.dc.b -2,(f6-jmpbase)/256,(f6-jmpbase)&255
	.dc.b 32
	.dc.b -4
y48:
	.dc.b -2,(f4-jmpbase)/256,(f4-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f2-jmpbase)/256,(f2-jmpbase)&255
	.dc.b -1,(y34-jmpbase)/256,(y34-jmpbase)&255
	.dc.b -4
y57:
	.dc.b -2,(f24-jmpbase)/256,(f24-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f6-jmpbase)/256,(f6-jmpbase)&255
	.dc.b -1,(y34-jmpbase)/256,(y34-jmpbase)&255
	.dc.b -4
y54:
	.dc.b -2,(f29-jmpbase)/256,(f29-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f30-jmpbase)/256,(f30-jmpbase)&255
	.dc.b -1,(y34-jmpbase)/256,(y34-jmpbase)&255
	.dc.b -4
y43:
	.dc.b -2,(f14-jmpbase)/256,(f14-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b -1,(y34-jmpbase)/256,(y34-jmpbase)&255
	.dc.b -4
y56:
	.dc.b -2,(f25-jmpbase)/256,(f25-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f7-jmpbase)/256,(f7-jmpbase)&255
	.dc.b -1,(y34-jmpbase)/256,(y34-jmpbase)&255
	.dc.b -4
y55:
	.dc.b -2,(f26-jmpbase)/256,(f26-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f8-jmpbase)/256,(f8-jmpbase)&255
	.dc.b -1,(y34-jmpbase)/256,(y34-jmpbase)&255
	.dc.b -4
y139:
	.dc.b -1,(y59-jmpbase)/256,(y59-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y59-jmpbase)/256,(y59-jmpbase)&255
	.dc.b 33
y142:
	.dc.b -1,(y59-jmpbase)/256,(y59-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y59-jmpbase)/256,(y59-jmpbase)&255
	.dc.b -4
yERASE_args:
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b -1,(y61-jmpbase)/256,(y61-jmpbase)&255
	.dc.b 70
	.dc.b -4
y61:
	.dc.b 33
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b -1,(y61-jmpbase)/256,(y61-jmpbase)&255
	.dc.b -3
	.dc.b -4
y63:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -1,(y63-jmpbase)/256,(y63-jmpbase)&255
	.dc.b -3
	.dc.b -4
yLINE_args:
	.dc.b -6
	.dc.b 249,52
	.dc.b -1,(y41-jmpbase)/256,(y41-jmpbase)&255
	.dc.b -1,(y13-jmpbase)/256,(y13-jmpbase)&255
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -1,(y63-jmpbase)/256,(y63-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y41-jmpbase)/256,(y41-jmpbase)&255
	.dc.b -2,(f31-jmpbase)/256,(f31-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -1,(y63-jmpbase)/256,(y63-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -6
	.dc.b 249,54
yBOX_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
yBMOVE_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
yDPOKE_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
yBOUNDARY_args:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
yENDIF_args:
	.dc.b 70
	.dc.b -4
yINLINE_args:
	.dc.b -2,(f24-jmpbase)/256,(f24-jmpbase)&255
	.dc.b 33
	.dc.b -2,(f32-jmpbase)/256,(f32-jmpbase)&255
	.dc.b 70
	.dc.b -4
y35:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b 33
	.dc.b -4
yARECT_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
yALINE_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
yACHAR_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
yVGET_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(yBOX_args-jmpbase)/256,(yBOX_args-jmpbase)&255
	.dc.b -4
yAPOLY_args:
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b -1,(y65-jmpbase)/256,(y65-jmpbase)&255
yACLIP_args:
	.dc.b -1,(yVGET_args-jmpbase)/256,(yVGET_args-jmpbase)&255
	.dc.b -4
yCHDRIVE_args:
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(yCHDIR_args-jmpbase)/256,(yCHDIR_args-jmpbase)&255
	.dc.b -4
yFILL_args:
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(yBMOVE_args-jmpbase)/256,(yBMOVE_args-jmpbase)&255
	.dc.b -4
ySETMOUSE_args:
	.dc.b -1,(yBMOVE_args-jmpbase)/256,(yBMOVE_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -4
yVSETCOLOR_args:
	.dc.b -1,(yBOX_args-jmpbase)/256,(yBOX_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -4
y65:
	.dc.b 71
	.dc.b -3
	.dc.b 33
	.dc.b -5,71
	.dc.b -4
y*_args:
	.dc.b -1,(y67-jmpbase)/256,(y67-jmpbase)&255
	.dc.b 19
	.dc.b -5,69
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(y67-jmpbase)/256,(y67-jmpbase)&255
	.dc.b 19
	.dc.b -5,69
	.dc.b -1,(y36-jmpbase)/256,(y36-jmpbase)&255
	.dc.b -4
yEXEC_args:
	.dc.b -1,(y68-jmpbase)/256,(y68-jmpbase)&255
	.dc.b 70
	.dc.b -4
y68:
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b -1,(y69-jmpbase)/256,(y69-jmpbase)&255
	.dc.b -1,(y69-jmpbase)/256,(y69-jmpbase)&255
y69:
	.dc.b 33
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -4
y62:
	.dc.b 33
	.dc.b -3
	.dc.b 34
	.dc.b -4
y78:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -3
	.dc.b 249,33
	.dc.b -4
y79:
	.dc.b -1,(y70-jmpbase)/256,(y70-jmpbase)&255
	.dc.b 249,77
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -4
y70:
	.dc.b 77
	.dc.b -6
	.dc.b -3
	.dc.b -4
y72:
	.dc.b 77
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b 33
	.dc.b -3
	.dc.b -4
yFILES_args:
	.dc.b -2,(f33-jmpbase)/256,(f33-jmpbase)&255
	.dc.b -1,(y72-jmpbase)/256,(y72-jmpbase)&255
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f34-jmpbase)/256,(f34-jmpbase)&255
yDIR_args:
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b -1,(y73-jmpbase)/256,(y73-jmpbase)&255
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b 70
	.dc.b -4
y73:
	.dc.b 71
	.dc.b -3
	.dc.b 33
	.dc.b -5,71
	.dc.b -3
	.dc.b 34
	.dc.b -5,71
	.dc.b -3
	.dc.b 249,71
	.dc.b -4
yOPTION_args:
	.dc.b 182
	.dc.b 184
	.dc.b 70
	.dc.b -3
	.dc.b 182
	.dc.b 185
	.dc.b 70
	.dc.b -4
yRUN_args:
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
yCHDIR_args:
	.dc.b -1,(y36-jmpbase)/256,(y36-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f35-jmpbase)/256,(f35-jmpbase)&255
	.dc.b 70
	.dc.b -4
yDEFINT_args:
	.dc.b -1,(y74-jmpbase)/256,(y74-jmpbase)&255
	.dc.b -2,(f36-jmpbase)/256,(f36-jmpbase)&255
	.dc.b -4
y74:
	.dc.b -2,(f31-jmpbase)/256,(f31-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f35-jmpbase)/256,(f35-jmpbase)&255
	.dc.b 70
	.dc.b -4
yNAME_args:
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b -1,(y75-jmpbase)/256,(y75-jmpbase)&255
	.dc.b -1,(yCHDIR_args-jmpbase)/256,(yCHDIR_args-jmpbase)&255
	.dc.b -4
y71:
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f37-jmpbase)/256,(f37-jmpbase)&255
	.dc.b -4

ySETTIME_args:
	.dc.b -1,(y76-jmpbase)/256,(y76-jmpbase)&255
	.dc.b 33
	.dc.b -1,(yCHDIR_args-jmpbase)/256,(yCHDIR_args-jmpbase)&255
	.dc.b -4
y76:
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b -3
	.dc.b -4
yOPEN_args:
	.dc.b -2,(f38-jmpbase)/256,(f38-jmpbase)&255
	.dc.b -1,(y77-jmpbase)/256,(y77-jmpbase)&255
	.dc.b -3
	.dc.b -5,18
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b -1,(y78-jmpbase)/256,(y78-jmpbase)&255
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b -1,(y78-jmpbase)/256,(y78-jmpbase)&255
	.dc.b -1,(y71-jmpbase)/256,(y71-jmpbase)&255
	.dc.b -1,(y80-jmpbase)/256,(y80-jmpbase)&255
	.dc.b 70
	.dc.b -4
y77:
	.dc.b -5,20
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yBMOVE_args-jmpbase)/256,(yBMOVE_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,22
	.dc.b -1,(y70-jmpbase)/256,(y70-jmpbase)&255
	.dc.b -1,(yACHAR_args-jmpbase)/256,(yACHAR_args-jmpbase)&255
	.dc.b -4
yCLOSE_args:
	.dc.b -2,(f38-jmpbase)/256,(f38-jmpbase)&255
	.dc.b -1,(y81-jmpbase)/256,(y81-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,24
yCLS_args:
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b 70
	.dc.b -4
yTRON_args:
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 77
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -2,(f39-jmpbase)/256,(f39-jmpbase)&255
	.dc.b 70
	.dc.b -4
y81:
	.dc.b 77
	.dc.b -6
	.dc.b -5,28
	.dc.b -3
	.dc.b -5,26
	.dc.b -4
yCLEAR_args:
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f38-jmpbase)/256,(f38-jmpbase)&255
	.dc.b -1,(y82-jmpbase)/256,(y82-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
y82:
	.dc.b 77
	.dc.b -6
	.dc.b -5,34
	.dc.b -3
	.dc.b -5,32
	.dc.b -4
yFULLW_args:
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b 77
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yTOPW_args:
	.dc.b -1,(y70-jmpbase)/256,(y70-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yINFOW_args:
	.dc.b -1,(y70-jmpbase)/256,(y70-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(yCHDIR_args-jmpbase)/256,(yCHDIR_args-jmpbase)&255
	.dc.b -4
y!_args:
	.dc.b -2,(f40-jmpbase)/256,(f40-jmpbase)&255
	.dc.b -4
yMID$_args:
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -1,(y83-jmpbase)/256,(y83-jmpbase)&255
	.dc.b -1,(y80-jmpbase)/256,(y80-jmpbase)&255
	.dc.b 32
	.dc.b -1,(y37-jmpbase)/256,(y37-jmpbase)&255
	.dc.b -4
yELLIPSE_args:
	.dc.b -1,(yBOX_args-jmpbase)/256,(yBOX_args-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(yACHAR_args-jmpbase)/256,(yACHAR_args-jmpbase)&255
	.dc.b -4
yCIRCLE_args:
	.dc.b -1,(yBMOVE_args-jmpbase)/256,(yBMOVE_args-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(yVGET_args-jmpbase)/256,(yVGET_args-jmpbase)&255
	.dc.b -4
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
y85:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
y83:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -4
yDRAW_args:
	.dc.b -1,(y84-jmpbase)/256,(y84-jmpbase)&255
	.dc.b -1,(y85-jmpbase)/256,(y85-jmpbase)&255
	.dc.b -1,(y86-jmpbase)/256,(y86-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(y87-jmpbase)/256,(y87-jmpbase)&255
	.dc.b -4
y87:
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y88-jmpbase)/256,(y88-jmpbase)&255
	.dc.b -4
y88:
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y89-jmpbase)/256,(y89-jmpbase)&255
	.dc.b -1,(y90-jmpbase)/256,(y90-jmpbase)&255
	.dc.b -1,(y88-jmpbase)/256,(y88-jmpbase)&255
	.dc.b -4
y89:
	.dc.b 33
	.dc.b -3
	.dc.b 34
	.dc.b -3
	.dc.b 87
	.dc.b -3
	.dc.b 249,33
	.dc.b -4
y86:
	.dc.b 71
	.dc.b -1,(y85-jmpbase)/256,(y85-jmpbase)&255
	.dc.b -1,(y86-jmpbase)/256,(y86-jmpbase)&255
	.dc.b -3
	.dc.b 70
	.dc.b -4
y84:
	.dc.b 71
	.dc.b -3
	.dc.b -4
yBSAVE_args:
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y83-jmpbase)/256,(y83-jmpbase)&255
	.dc.b -1,(y83-jmpbase)/256,(y83-jmpbase)&255
	.dc.b 70
	.dc.b -4
yBLOAD_args:
	.dc.b -1,(y36-jmpbase)/256,(y36-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y80-jmpbase)/256,(y80-jmpbase)&255
	.dc.b 70
	.dc.b -4
yFIELD_args:
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b -1,(y91-jmpbase)/256,(y91-jmpbase)&255
	.dc.b -1,(y92-jmpbase)/256,(y92-jmpbase)&255
	.dc.b 70
	.dc.b -4
y91:
	.dc.b -1,(y83-jmpbase)/256,(y83-jmpbase)&255
	.dc.b -1,(y75-jmpbase)/256,(y75-jmpbase)&255
	.dc.b -2,(f14-jmpbase)/256,(f14-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y83-jmpbase)/256,(y83-jmpbase)&255
	.dc.b 89
	.dc.b -5,122
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -4
y92:
	.dc.b -1,(y91-jmpbase)/256,(y91-jmpbase)&255
	.dc.b -1,(y92-jmpbase)/256,(y92-jmpbase)&255
	.dc.b -3
	.dc.b -4
yGET_args:
	.dc.b -1,(y93-jmpbase)/256,(y93-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -5,4
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -5,6
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 33
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yPUT_args:
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -5,10
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b 33
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,12
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -5,14
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 33
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yDEFFILL_args:
	.dc.b -1,(yDEFMARK_args-jmpbase)/256,(yDEFMARK_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,60
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
	.dc.b -1,(yCHDIR_args-jmpbase)/256,(yCHDIR_args-jmpbase)&255
	.dc.b -4
yCLIP_args:
	.dc.b 175
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 77
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y95-jmpbase)/256,(y95-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(y93-jmpbase)/256,(y93-jmpbase)&255
	.dc.b -1,(y95-jmpbase)/256,(y95-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 71
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b -1,(y95-jmpbase)/256,(y95-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 109
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 70
	.dc.b -4
yDMASOUND_args:
	.dc.b -1,(yBOX_args-jmpbase)/256,(yBOX_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yBMOVE_args-jmpbase)/256,(yBMOVE_args-jmpbase)&255
	.dc.b -4
ySOUND_args:
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b 77
	.dc.b -1,(y96-jmpbase)/256,(y96-jmpbase)&255
	.dc.b -3
yWAVE_args:
	.dc.b -1,(yVGET_args-jmpbase)/256,(yVGET_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yBOX_args-jmpbase)/256,(yBOX_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yBMOVE_args-jmpbase)/256,(yBMOVE_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yENDIF_args-jmpbase)/256,(yENDIF_args-jmpbase)&255
	.dc.b -3
y96:
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yOUT_args:
	.dc.b -1,(y97-jmpbase)/256,(y97-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 77
	.dc.b -1,(y97-jmpbase)/256,(y97-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f41-jmpbase)/256,(f41-jmpbase)&255
	.dc.b 77
	.dc.b -1,(y97-jmpbase)/256,(y97-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f41-jmpbase)/256,(f41-jmpbase)&255
y97:
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b -1,(y98-jmpbase)/256,(y98-jmpbase)&255
	.dc.b 70
	.dc.b -4
y98:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y98-jmpbase)/256,(y98-jmpbase)&255
	.dc.b -3
	.dc.b -4
yRELSEEK_args:
	.dc.b -1,(y70-jmpbase)/256,(y70-jmpbase)&255
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -4
yRECORD_args:
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yDIM_args:
	.dc.b -1,(y99-jmpbase)/256,(y99-jmpbase)&255
	.dc.b -1,(y100-jmpbase)/256,(y100-jmpbase)&255
	.dc.b 70
	.dc.b -4
y100:
	.dc.b 33
	.dc.b -1,(y99-jmpbase)/256,(y99-jmpbase)&255
	.dc.b -1,(y100-jmpbase)/256,(y100-jmpbase)&255
	.dc.b -3
	.dc.b -4
y101:
	.dc.b 76
	.dc.b -3
	.dc.b 159
	.dc.b -5,76
	.dc.b -3
	.dc.b 249,76
	.dc.b -4
y102:
	.dc.b -1,(y101-jmpbase)/256,(y101-jmpbase)&255
y104:
	.dc.b -6
	.dc.b -2,(f39-jmpbase)/256,(f39-jmpbase)&255
	.dc.b 70
	.dc.b -4
y103:
	.dc.b 76
	.dc.b -3
	.dc.b 159
	.dc.b -5,76
	.dc.b -4
y105:
	.dc.b -1,(y101-jmpbase)/256,(y101-jmpbase)&255
	.dc.b -2,(f39-jmpbase)/256,(f39-jmpbase)&255
	.dc.b 70
	.dc.b -4
yON_args:
	.dc.b -6
	.dc.b -5,1
	.dc.b 249,0
	.dc.b 151
	.dc.b -6
	.dc.b 70
	.dc.b -3
	.dc.b -5,4
	.dc.b 153
	.dc.b -6
	.dc.b 70
	.dc.b -3
	.dc.b -5,6
	.dc.b 153
	.dc.b -6
	.dc.b 154
	.dc.b -6
	.dc.b 70
	.dc.b -3
	.dc.b -5,2
	.dc.b 151
	.dc.b -6
	.dc.b -1,(y102-jmpbase)/256,(y102-jmpbase)&255
	.dc.b -3
	.dc.b -5,8
	.dc.b 153
	.dc.b -6
	.dc.b -1,(y102-jmpbase)/256,(y102-jmpbase)&255
	.dc.b -3
	.dc.b -5,10
	.dc.b 167
	.dc.b -6
	.dc.b -1,(y103-jmpbase)/256,(y103-jmpbase)&255
	.dc.b -1,(y104-jmpbase)/256,(y104-jmpbase)&255
	.dc.b -3
	.dc.b -5,12
	.dc.b 167
	.dc.b -6
	.dc.b 174
	.dc.b -6
	.dc.b -1,(y102-jmpbase)/256,(y102-jmpbase)&255
	.dc.b -3
	.dc.b -5,14
	.dc.b 167
	.dc.b -6
	.dc.b 170
	.dc.b -6
	.dc.b -1,(y102-jmpbase)/256,(y102-jmpbase)&255
	.dc.b -3
	.dc.b -5,16
	.dc.b 167
	.dc.b -6
	.dc.b 171
	.dc.b -6
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b -1,(y105-jmpbase)/256,(y105-jmpbase)&255
	.dc.b -3
	.dc.b -5,220
	.dc.b 167
	.dc.b -6
	.dc.b 172
	.dc.b -6
	.dc.b -1,(y106-jmpbase)/256,(y106-jmpbase)&255
	.dc.b -1,(y105-jmpbase)/256,(y105-jmpbase)&255
	.dc.b -3
	.dc.b -5,222
	.dc.b 167
	.dc.b -6
	.dc.b 173
	.dc.b -6
	.dc.b -1,(y106-jmpbase)/256,(y106-jmpbase)&255
	.dc.b -1,(y105-jmpbase)/256,(y105-jmpbase)&255
	.dc.b -3
	.dc.b -5,20
	.dc.b 167
	.dc.b -6
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,18
	.dc.b 167
	.dc.b -6
	.dc.b 70
	.dc.b -3
	.dc.b -6
	.dc.b -5,0
	.dc.b 249,252
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y101-jmpbase)/256,(y101-jmpbase)&255
	.dc.b -1,(y107-jmpbase)/256,(y107-jmpbase)&255
	.dc.b -4
yAFTER_args:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y105-jmpbase)/256,(y105-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 152
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 154
	.dc.b 70
	.dc.b -4
y107:
	.dc.b -2,(f39-jmpbase)/256,(f39-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f39-jmpbase)/256,(f39-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y107-jmpbase)/256,(y107-jmpbase)&255
	.dc.b -4
yRESUME_args:
	.dc.b 70
	.dc.b -3
	.dc.b 168
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -2,(f42-jmpbase)/256,(f42-jmpbase)&255
	.dc.b 70
	.dc.b -4
yPROCEDURE_args:
	.dc.b -2,(f39-jmpbase)/256,(f39-jmpbase)&255
	.dc.b -1,(y108-jmpbase)/256,(y108-jmpbase)&255
	.dc.b 70
	.dc.b -4
yFUNCTION_args:
	.dc.b -2,(f43-jmpbase)/256,(f43-jmpbase)&255
	.dc.b -1,(y109-jmpbase)/256,(y109-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f44-jmpbase)/256,(f44-jmpbase)&255
	.dc.b -1,(y109-jmpbase)/256,(y109-jmpbase)&255
	.dc.b 70
	.dc.b -4
yDEFFN_args:
	.dc.b -2,(f43-jmpbase)/256,(f43-jmpbase)&255
	.dc.b -1,(y109-jmpbase)/256,(y109-jmpbase)&255
	.dc.b 19
	.dc.b -5,69
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f44-jmpbase)/256,(f44-jmpbase)&255
	.dc.b -1,(y109-jmpbase)/256,(y109-jmpbase)&255
	.dc.b 19
	.dc.b -5,69
	.dc.b -1,(y36-jmpbase)/256,(y36-jmpbase)&255
	.dc.b -4
y109:
	.dc.b 35
	.dc.b -1,(y110-jmpbase)/256,(y110-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -4
y108:
	.dc.b 35
	.dc.b -6
	.dc.b -1,(y110-jmpbase)/256,(y110-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -4
y110:
	.dc.b 50
	.dc.b -1,(y111-jmpbase)/256,(y111-jmpbase)&255
	.dc.b -1,(y112-jmpbase)/256,(y112-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b -1,(y114-jmpbase)/256,(y114-jmpbase)&255
	.dc.b -4
y114:
	.dc.b 33
	.dc.b 50
	.dc.b -1,(y111-jmpbase)/256,(y111-jmpbase)&255
	.dc.b -1,(y112-jmpbase)/256,(y112-jmpbase)&255
	.dc.b -3
	.dc.b 33
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b -1,(y114-jmpbase)/256,(y114-jmpbase)&255
	.dc.b -3
	.dc.b -4
y111:
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b -5,51
	.dc.b -4
y112:
	.dc.b 33
	.dc.b -1,(y111-jmpbase)/256,(y111-jmpbase)&255
	.dc.b -1,(y112-jmpbase)/256,(y112-jmpbase)&255
	.dc.b -3
	.dc.b -4
y@_args:
	.dc.b -2,(f39-jmpbase)/256,(f39-jmpbase)&255
	.dc.b -1,(y115-jmpbase)/256,(y115-jmpbase)&255
	.dc.b 70
	.dc.b -4
y115:
	.dc.b 35
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y116-jmpbase)/256,(y116-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 35
	.dc.b -5,157
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y116-jmpbase)/256,(y116-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 35
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b -5,51
	.dc.b -1,(y116-jmpbase)/256,(y116-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -4
y116:
	.dc.b 33
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y116-jmpbase)/256,(y116-jmpbase)&255
	.dc.b -3
	.dc.b 33
	.dc.b -5,156
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y116-jmpbase)/256,(y116-jmpbase)&255
	.dc.b -3
	.dc.b 33
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b -5,51
	.dc.b -1,(y116-jmpbase)/256,(y116-jmpbase)&255
	.dc.b -3
	.dc.b -4
	.dc.b -2,(f42-jmpbase)/256,(f42-jmpbase)&255
	.dc.b 124
	.dc.b 70
	.dc.b -4
yRESTORE_args:
	.dc.b 70
	.dc.b -3
yGOTO_args:
	.dc.b -2,(f42-jmpbase)/256,(f42-jmpbase)&255
	.dc.b 70
	.dc.b -4
ySWAP_args:
	.dc.b -1,(y48-jmpbase)/256,(y48-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y48-jmpbase)/256,(y48-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y57-jmpbase)/256,(y57-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y57-jmpbase)/256,(y57-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y54-jmpbase)/256,(y54-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y54-jmpbase)/256,(y54-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y56-jmpbase)/256,(y56-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y56-jmpbase)/256,(y56-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y55-jmpbase)/256,(y55-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y55-jmpbase)/256,(y55-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -2,(f2-jmpbase)/256,(f2-jmpbase)&255
	.dc.b 32
	.dc.b 33
	.dc.b -2,(f2-jmpbase)/256,(f2-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f6-jmpbase)/256,(f6-jmpbase)&255
	.dc.b 32
	.dc.b 33
	.dc.b -2,(f6-jmpbase)/256,(f6-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f30-jmpbase)/256,(f30-jmpbase)&255
	.dc.b 32
	.dc.b 33
	.dc.b -2,(f30-jmpbase)/256,(f30-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b 32
	.dc.b 33
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f7-jmpbase)/256,(f7-jmpbase)&255
	.dc.b 32
	.dc.b 33
	.dc.b -2,(f7-jmpbase)/256,(f7-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f8-jmpbase)/256,(f8-jmpbase)&255
	.dc.b 32
	.dc.b 33
	.dc.b -2,(f8-jmpbase)/256,(f8-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 7
	.dc.b -1,(y67-jmpbase)/256,(y67-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b 70
	.dc.b -4
yMENU_args:
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 175
	.dc.b -6
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b 176
	.dc.b -6
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -3
	.dc.b 249,55
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 70
	.dc.b -4
yARRAYFILL_args:
	.dc.b -1,(y117-jmpbase)/256,(y117-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 70
	.dc.b -4
yRCALL_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -2,(f6-jmpbase)/256,(f6-jmpbase)&255
	.dc.b 32
	.dc.b 70
	.dc.b -4
yBITBLT_args:
	.dc.b -1,(y118-jmpbase)/256,(y118-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y118-jmpbase)/256,(y118-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y118-jmpbase)/256,(y118-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(y118-jmpbase)/256,(y118-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yPOLYLINE_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y119-jmpbase)/256,(y119-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y119-jmpbase)/256,(y119-jmpbase)&255
	.dc.b -1,(y95-jmpbase)/256,(y95-jmpbase)&255
	.dc.b 70
	.dc.b -4
y95:
	.dc.b 109
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b -3
	.dc.b -4
yCLR_args:
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b -1,(y120-jmpbase)/256,(y120-jmpbase)&255
	.dc.b 70
	.dc.b -4
y120:
	.dc.b 33
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b -1,(y120-jmpbase)/256,(y120-jmpbase)&255
	.dc.b -3
	.dc.b -4
yMOUSE_args:
	.dc.b -1,(y121-jmpbase)/256,(y121-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y121-jmpbase)/256,(y121-jmpbase)&255
	.dc.b 33
yKEYTEST_args:
	.dc.b -1,(y121-jmpbase)/256,(y121-jmpbase)&255
	.dc.b 70
	.dc.b -4
yALERT_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y121-jmpbase)/256,(y121-jmpbase)&255
	.dc.b 70
	.dc.b -4
yKEYDEF_args:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y36-jmpbase)/256,(y36-jmpbase)&255
	.dc.b -4
yDEFTEXT_args:
	.dc.b -1,(yDEFMARK_args-jmpbase)/256,(yDEFMARK_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(yDEFLINE_args-jmpbase)/256,(yDEFLINE_args-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
yDEFLINE_args:
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 70
	.dc.b -3
yDEFMARK_args:
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 70
	.dc.b -3
yMONITOR_args:
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b 70
	.dc.b -4
yRESERVE_args:
	.dc.b 70
	.dc.b -3
	.dc.b -5,208
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
yBGET_args:
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 33
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -4
ySTORE_args:
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 33
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b 32
	.dc.b -1,(y122-jmpbase)/256,(y122-jmpbase)&255
	.dc.b 70
	.dc.b -4
yRECALL_args:
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 33
	.dc.b -2,(f5-jmpbase)/256,(f5-jmpbase)&255
	.dc.b 32
	.dc.b 33
	.dc.b -1,(y123-jmpbase)/256,(y123-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y124-jmpbase)/256,(y124-jmpbase)&255
	.dc.b 70
	.dc.b -4
y122:
	.dc.b 33
	.dc.b -1,(y123-jmpbase)/256,(y123-jmpbase)&255
	.dc.b -3
	.dc.b -4
y123:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y125-jmpbase)/256,(y125-jmpbase)&255
	.dc.b -4
y125:
	.dc.b 71
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -3
	.dc.b -4
yRC_COPY_args:
	.dc.b -1,(y106-jmpbase)/256,(y106-jmpbase)&255
	.dc.b -1,(y73-jmpbase)/256,(y73-jmpbase)&255
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b -1,(y80-jmpbase)/256,(y80-jmpbase)&255
	.dc.b 70
	.dc.b -4
ySETCOLOR_args:
	.dc.b -1,(yDPOKE_args-jmpbase)/256,(yDPOKE_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,168
	.dc.b -1,(yBOX_args-jmpbase)/256,(yBOX_args-jmpbase)&255
	.dc.b -4
yVDISYS_args:
	.dc.b 70
	.dc.b -3
	.dc.b -5,174
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,176
	.dc.b -1,(yBMOVE_args-jmpbase)/256,(yBMOVE_args-jmpbase)&255
	.dc.b -3
	.dc.b -5,178
	.dc.b -1,(yBOX_args-jmpbase)/256,(yBOX_args-jmpbase)&255
	.dc.b -4
yGEMSYS_args:
	.dc.b 70
	.dc.b -3
	.dc.b -5,182
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
y80:
	.dc.b 33
y94:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -3
	.dc.b -4
y8:
	.dc.b -2,(f32-jmpbase)/256,(f32-jmpbase)&255
	.dc.b -3
y3:
	.dc.b -1,(y126-jmpbase)/256,(y126-jmpbase)&255
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y127-jmpbase)/256,(y127-jmpbase)&255
	.dc.b -1,(y128-jmpbase)/256,(y128-jmpbase)&255
	.dc.b -4
y126:
	.dc.b 6
	.dc.b -5,29
	.dc.b -3
	.dc.b 5
	.dc.b -5,30
	.dc.b -3
	.dc.b 31
	.dc.b -4
y127:
	.dc.b -2,(f45-jmpbase)/256,(f45-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y129-jmpbase)/256,(y129-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y130-jmpbase)/256,(y130-jmpbase)&255
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y121-jmpbase)/256,(y121-jmpbase)&255
	.dc.b -4
y128:
	.dc.b -2,(f46-jmpbase)/256,(f46-jmpbase)&255
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b -3
	.dc.b -4
y129:
	.dc.b -2,(f47-jmpbase)/256,(f47-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y131-jmpbase)/256,(y131-jmpbase)&255
	.dc.b -2,(f43-jmpbase)/256,(f43-jmpbase)&255
	.dc.b -1,(y115-jmpbase)/256,(y115-jmpbase)&255
	.dc.b -4

y132:
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
y31:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y133-jmpbase)/256,(y133-jmpbase)&255
	.dc.b 32
	.dc.b -4
y133:
	.dc.b 33
	.dc.b -1,(y106-jmpbase)/256,(y106-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y106-jmpbase)/256,(y106-jmpbase)&255
	.dc.b -3
	.dc.b -4
	.dc.b -5,208
	.dc.b 35
	.dc.b -5,1
	.dc.b -1,(y134-jmpbase)/256,(y134-jmpbase)&255
	.dc.b -4
	.dc.b -5,208
	.dc.b 35
	.dc.b -5,4
	.dc.b -1,(y134-jmpbase)/256,(y134-jmpbase)&255
	.dc.b -4
	.dc.b -5,208
	.dc.b 35
	.dc.b -5,5
	.dc.b -1,(y134-jmpbase)/256,(y134-jmpbase)&255
	.dc.b -4
	.dc.b -5,208
	.dc.b 35
	.dc.b -5,6
	.dc.b -1,(y134-jmpbase)/256,(y134-jmpbase)&255
	.dc.b -4
	.dc.b -5,208
	.dc.b 35
	.dc.b -5,7
	.dc.b -1,(y134-jmpbase)/256,(y134-jmpbase)&255
	.dc.b -4
	.dc.b -5,208
	.dc.b 35
	.dc.b -5,8
	.dc.b -1,(y134-jmpbase)/256,(y134-jmpbase)&255
	.dc.b -4
	.dc.b -5,208
	.dc.b 35
	.dc.b -5,9
	.dc.b -1,(y134-jmpbase)/256,(y134-jmpbase)&255
	.dc.b -4
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
y134:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -4
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b 88
	.dc.b -4
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 112
	.dc.b -5,113
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -4
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b -1,(y135-jmpbase)/256,(y135-jmpbase)&255
	.dc.b 32
	.dc.b -4
y135:
	.dc.b 33
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b -1,(y135-jmpbase)/256,(y135-jmpbase)&255
	.dc.b -3
	.dc.b -4

y136:
	.dc.b -1,(y137-jmpbase)/256,(y137-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y137-jmpbase)/256,(y137-jmpbase)&255
	.dc.b -1,(y138-jmpbase)/256,(y138-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y93-jmpbase)/256,(y93-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y139-jmpbase)/256,(y139-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y140-jmpbase)/256,(y140-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b -1,(y141-jmpbase)/256,(y141-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y106-jmpbase)/256,(y106-jmpbase)&255
	.dc.b -1,(y141-jmpbase)/256,(y141-jmpbase)&255
	.dc.b 32
	.dc.b -4
y140:
	.dc.b 33
	.dc.b -1,(y142-jmpbase)/256,(y142-jmpbase)&255
y138:
	.dc.b 33
	.dc.b -1,(y142-jmpbase)/256,(y142-jmpbase)&255
y141:
	.dc.b 33
y143:
	.dc.b -1,(y139-jmpbase)/256,(y139-jmpbase)&255
	.dc.b -3
	.dc.b -4
	.dc.b -1,(y143-jmpbase)/256,(y143-jmpbase)&255
	.dc.b 32
	.dc.b -4
y147:
	.dc.b 33
	.dc.b -1,(y142-jmpbase)/256,(y142-jmpbase)&255
	.dc.b -3
	.dc.b -4
y145:
	.dc.b 33
	.dc.b -1,(y59-jmpbase)/256,(y59-jmpbase)&255
	.dc.b -3
	.dc.b -4
	.dc.b -1,(y144-jmpbase)/256,(y144-jmpbase)&255
	.dc.b -1,(y145-jmpbase)/256,(y145-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y144-jmpbase)/256,(y144-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y146-jmpbase)/256,(y146-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y124-jmpbase)/256,(y124-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y93-jmpbase)/256,(y93-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b -1,(y147-jmpbase)/256,(y147-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y59-jmpbase)/256,(y59-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y93-jmpbase)/256,(y93-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y141-jmpbase)/256,(y141-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y124-jmpbase)/256,(y124-jmpbase)&255
	.dc.b 32
	.dc.b -4
y149:
	.dc.b -1,(y146-jmpbase)/256,(y146-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -4
y148:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
y146:
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -4
	.dc.b -1,(y146-jmpbase)/256,(y146-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 208
	.dc.b 68
	.dc.b -5,69
	.dc.b -1,(y148-jmpbase)/256,(y148-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 208
	.dc.b 68
	.dc.b -5,70
	.dc.b -1,(y149-jmpbase)/256,(y149-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y146-jmpbase)/256,(y146-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 208
	.dc.b 209
	.dc.b -5,210
	.dc.b -1,(y148-jmpbase)/256,(y148-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 208
	.dc.b 209
	.dc.b -5,211
	.dc.b -1,(y149-jmpbase)/256,(y149-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y150-jmpbase)/256,(y150-jmpbase)&255
	.dc.b 32
	.dc.b -4
y150:
	.dc.b -1,(y151-jmpbase)/256,(y151-jmpbase)&255
	.dc.b -4
	.dc.b -1,(y152-jmpbase)/256,(y152-jmpbase)&255
	.dc.b -4
y152:
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -5,208
	.dc.b 249,189
	.dc.b -1,(y153-jmpbase)/256,(y153-jmpbase)&255
	.dc.b -4
	.dc.b -1,(y154-jmpbase)/256,(y154-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y68-jmpbase)/256,(y68-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -2,(f48-jmpbase)/256,(f48-jmpbase)&255
	.dc.b 35
	.dc.b -5,157
	.dc.b -1,(y155-jmpbase)/256,(y155-jmpbase)&255
	.dc.b 32
	.dc.b -4
	.dc.b -1,(y94-jmpbase)/256,(y94-jmpbase)&255
	.dc.b 32
	.dc.b -4
yABSOLUTE_args:
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b -1,(y156-jmpbase)/256,(y156-jmpbase)&255
	.dc.b -1,(yBOUNDARY_args-jmpbase)/256,(yBOUNDARY_args-jmpbase)&255
	.dc.b -4
y153:
	.dc.b -1,(y60-jmpbase)/256,(y60-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y113-jmpbase)/256,(y113-jmpbase)&255
	.dc.b -4
y156:
	.dc.b 33
	.dc.b -3
	.dc.b 19
	.dc.b -5,33
	.dc.b -4
y137:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
y106:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
y93:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
y64:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
y7:
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -4
y154:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y157-jmpbase)/256,(y157-jmpbase)&255
	.dc.b -4
y157:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
y155:
	.dc.b -1,(y158-jmpbase)/256,(y158-jmpbase)&255
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y157-jmpbase)/256,(y157-jmpbase)&255
	.dc.b -3
	.dc.b -4
y158:
	.dc.b 138
	.dc.b -3
	.dc.b 139
	.dc.b -3
	.dc.b -4
y161:
	.dc.b 117
	.dc.b -5,118
	.dc.b -3
	.dc.b 119
	.dc.b -5,120
	.dc.b -4
y33:
	.dc.b -1,(y159-jmpbase)/256,(y159-jmpbase)&255
	.dc.b -1,(y160-jmpbase)/256,(y160-jmpbase)&255
	.dc.b -4
y159:
	.dc.b -2,(f31-jmpbase)/256,(f31-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f49-jmpbase)/256,(f49-jmpbase)&255
	.dc.b -3
	.dc.b 135
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 58
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 58
	.dc.b -5,59
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b 60
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 60
	.dc.b -5,61
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b 62
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b 62
	.dc.b -5,63
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f50-jmpbase)/256,(f50-jmpbase)&255
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b 94
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b 94
	.dc.b -5,95
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -1,(y161-jmpbase)/256,(y161-jmpbase)&255
	.dc.b -1,(y162-jmpbase)/256,(y162-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 127
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 129
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b 129
	.dc.b -5,130
	.dc.b -1,(y35-jmpbase)/256,(y35-jmpbase)&255
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -1,(y131-jmpbase)/256,(y131-jmpbase)&255
	.dc.b -2,(f44-jmpbase)/256,(f44-jmpbase)&255
	.dc.b -1,(y115-jmpbase)/256,(y115-jmpbase)&255
	.dc.b -3
	.dc.b 208
	.dc.b 96
	.dc.b -6
	.dc.b -5,131
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 208
	.dc.b 97
	.dc.b -6
	.dc.b -5,133
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b 190
	.dc.b -1,(y163-jmpbase)/256,(y163-jmpbase)&255
	.dc.b -3
	.dc.b 193
	.dc.b -1,(y164-jmpbase)/256,(y164-jmpbase)&255
	.dc.b -3
	.dc.b 195
	.dc.b -1,(y165-jmpbase)/256,(y165-jmpbase)&255
	.dc.b -3
	.dc.b 115
	.dc.b -1,(y166-jmpbase)/256,(y166-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y43-jmpbase)/256,(y43-jmpbase)&255
	.dc.b -3
	.dc.b 97
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b 88
	.dc.b -4
y163:
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b -5,191
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 32
	.dc.b -3
	.dc.b -5,192
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b 32
	.dc.b -4
y164:
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b -5,194
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 32
	.dc.b -4
y165:
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b -5,196
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 32
	.dc.b -4
y166:
	.dc.b -1,(y31-jmpbase)/256,(y31-jmpbase)&255
	.dc.b -3
	.dc.b -5,116
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 32
	.dc.b -4
y131:
	.dc.b 158
	.dc.b -3
	.dc.b 159
	.dc.b -4
y162:
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y167-jmpbase)/256,(y167-jmpbase)&255
	.dc.b -4
y167:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y167-jmpbase)/256,(y167-jmpbase)&255
	.dc.b -3
	.dc.b -4
y160:
	.dc.b 6
	.dc.b -5,28
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -3
	.dc.b -4
y130:
	.dc.b 12
	.dc.b -5,20
	.dc.b -3
	.dc.b 13
	.dc.b -5,21
	.dc.b -3
	.dc.b 14
	.dc.b -5,22
	.dc.b -3
	.dc.b 15
	.dc.b -5,23
	.dc.b -3
	.dc.b 16
	.dc.b -5,24
	.dc.b -3
	.dc.b 17
	.dc.b -5,25
	.dc.b -3
	.dc.b 18
	.dc.b -5,26
	.dc.b -3
	.dc.b 19
	.dc.b -5,27
	.dc.b -4
y34:
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y168-jmpbase)/256,(y168-jmpbase)&255
	.dc.b 32
	.dc.b -4
y168:
	.dc.b 33
	.dc.b -1,(y8-jmpbase)/256,(y8-jmpbase)&255
	.dc.b -1,(y168-jmpbase)/256,(y168-jmpbase)&255
	.dc.b -3
	.dc.b -4
yTEXT_args:
	.dc.b -1,(y7-jmpbase)/256,(y7-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y90-jmpbase)/256,(y90-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
yATEXT_args:
	.dc.b -1,(y64-jmpbase)/256,(y64-jmpbase)&255
	.dc.b 33
	.dc.b -1,(y90-jmpbase)/256,(y90-jmpbase)&255
	.dc.b 70
	.dc.b -4
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y169-jmpbase)/256,(y169-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y3-jmpbase)/256,(y3-jmpbase)&255
	.dc.b -4
y169:
	.dc.b -1,(y130-jmpbase)/256,(y130-jmpbase)&255
	.dc.b -1,(y33-jmpbase)/256,(y33-jmpbase)&255
	.dc.b -1,(y128-jmpbase)/256,(y128-jmpbase)&255
	.dc.b -3
	.dc.b -4
yINPUT_args:
	.dc.b -2,(f31-jmpbase)/256,(f31-jmpbase)&255
	.dc.b -1,(y170-jmpbase)/256,(y170-jmpbase)&255
	.dc.b -3
	.dc.b -1,(y171-jmpbase)/256,(y171-jmpbase)&255
	.dc.b -3
	.dc.b -2,(f3-jmpbase)/256,(f3-jmpbase)&255
	.dc.b -1,(y79-jmpbase)/256,(y79-jmpbase)&255
y170:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
y171:
	.dc.b -1,(y151-jmpbase)/256,(y151-jmpbase)&255
	.dc.b -1,(y172-jmpbase)/256,(y172-jmpbase)&255
	.dc.b 70
	.dc.b -4
y172:
	.dc.b -1,(y62-jmpbase)/256,(y62-jmpbase)&255
	.dc.b -1,(y151-jmpbase)/256,(y151-jmpbase)&255
	.dc.b -1,(y172-jmpbase)/256,(y172-jmpbase)&255
	.dc.b -3
	.dc.b -4
yREAD_args:
	.dc.b -1,(y171-jmpbase)/256,(y171-jmpbase)&255
	.dc.b -4
yWRITE_args:
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y185-jmpbase)/256,(y185-jmpbase)&255
	.dc.b 70
	.dc.b -3
	.dc.b -1,(y13-jmpbase)/256,(y13-jmpbase)&255
	.dc.b -1,(y186-jmpbase)/256,(y186-jmpbase)&255
	.dc.b 70
	.dc.b -4
y186:
	.dc.b -1,(y90-jmpbase)/256,(y90-jmpbase)&255
	.dc.b -1,(y175-jmpbase)/256,(y175-jmpbase)&255
	.dc.b -4
y175:
	.dc.b -1,(y188-jmpbase)/256,(y188-jmpbase)&255
	.dc.b -1,(y90-jmpbase)/256,(y90-jmpbase)&255
	.dc.b -1,(y175-jmpbase)/256,(y175-jmpbase)&255
	.dc.b -3
	.dc.b 34
	.dc.b -3
	.dc.b -4
