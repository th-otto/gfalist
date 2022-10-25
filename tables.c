#include <stddef.h>
#include "tables.h"

/* Line command text */
struct nameversion const gfalct[] = {
	/*   0 */ { "DO", 0, NULL },
	/*   1 */ { "LOOP", 0, NULL },						/* or ENDDO */
	/*   2 */ { "REPEAT", 0, NULL },
	/*   3 */ { "UNTIL ", 0, NULL },					/* or ENDREPEAT */
	/*   4 */ { "WHILE ", 0, NULL },
	/*   5 */ { "WEND", 0, NULL },						/* or ENDWHILE */
	/*   6 */ { "PROCEDURE ", 0, NULL },
	/*   7 */ { "RETURN", 0, NULL },					/* or ENDPROC/ENDSUB; from PROCEDURE */
	/*   8 */ { "IF ", 0, NULL },
	/*   9 */ { "ENDIF", 0, NULL },
	/*  10 */ { "FUNCTION ", 0, NULL },
	/*  11 */ { "ENDFUNC", 0, NULL },
	/*  12 */ { "SELECT ", 0, NULL },					/* SWITCH/SELECT number */
	/*  13 */ { "ENDSELECT", 0, NULL },					/* or ENDSWITCH */
	/*  14 */ { "ELSE", 0, NULL },
	/*  15 */ { "DEFAULT", 0, NULL },					/* or OTHERWISE */
	/*  16 */ { "ELSE IF ", 0, NULL },
	/*  17 */ { "RETURN ", 0, NULL },					/* return number */
	/*  18 */ { "RETURN ", 0, NULL },					/* return string */
	/*  19 */ { "FOR ", 0, NULL },						/* FOR x# */
	/*  20 */ { "FOR ", 0, NULL },						/* FOR x# todo */
	/*  21 */ { "FOR ", 0, NULL },						/* FOR x# */
	/*  22 */ { "FOR ", 0, NULL },						/* FOR x% */
	/*  23 */ { "FOR ", 0, NULL },						/* FOR x% */
	/*  24 */ { "FOR ", 0, NULL },						/* FOR x% */
	/*  25 */ { "FOR ", 0, NULL },						/* FOR x& */
	/*  26 */ { "FOR ", 0, NULL },						/* FOR x& */
	/*  27 */ { "FOR ", 0, NULL },						/* FOR x& */
	/*  28 */ { "FOR ", 0, NULL },						/* FOR x| */
	/*  29 */ { "FOR ", 0, NULL },						/* FOR x| */
	/*  30 */ { "FOR ", 0, NULL },						/* FOR x| */
	/*  31 */ { "NEXT ", 0, NULL },						/* ENDFOR, NEXT x# */
	/*  32 */ { "NEXT ", 0, NULL },						/* NEXT x# todo */
	/*  33 */ { "NEXT ", 0, NULL },						/* NEXT x# */
	/*  34 */ { "NEXT ", 0, NULL },						/* NEXT x% */
	/*  35 */ { "NEXT ", 0, NULL },						/* NEXT x% */
	/*  36 */ { "NEXT ", 0, NULL },						/* NEXT x% */
	/*  37 */ { "NEXT ", 0, NULL },						/* NEXT x& */
	/*  38 */ { "NEXT ", 0, NULL },						/* NEXT x& */
	/*  39 */ { "NEXT ", 0, NULL },						/* NEXT x& */
	/*  40 */ { "NEXT ", 0, NULL },						/* NEXT x| */
	/*  41 */ { "NEXT ", 0, NULL },						/* NEXT x| */
	/*  42 */ { "NEXT ", 0, NULL },						/* NEXT x| */
	/*  43 */ { "EXIT IF ", 0, NULL },
	/*  44 */ { "SELECT ", 0, NULL },					/* SELECT string */
	/*  45 */ { "", 0, NULL },							/* End of program */
	/*  46 */ { NULL, 0, NULL },
	/*  47 */ { NULL, 0, NULL },
	/*  48 */ { "MONITOR", 0, NULL },
	/*  49 */ { "DO WHILE ", 0, NULL },
	/*  50 */ { "DO UNTIL ", 0, NULL },
	/*  51 */ { "LOOP WHILE ", 0, NULL },
	/*  52 */ { "LOOP UNTIL ", 0, NULL },
	/*  53 */ { "LOCAL ", 0, NULL },
	/*  54 */ { "> PROCEDURE ", 0, NULL },
	/*  55 */ { "EXIT IF ", 0, NULL },					/* todo */
	/*  56 */ { "CASE ", 0, NULL },
	/*  57 */ { "DEFFN ", 0, NULL },
	/*  58 */ { "GOTO ", 0, NULL },
	/*  59 */ { "RESTORE", 0, NULL },
	/*  60 */ { "", 0, NULL },      					/* implicit @ */
	/*  61 */ { "GOSUB ", 0, NULL },
	/*  62 */ { "@", 0, NULL },
	/*  63 */ { "", 0, NULL },							/* label: */
	/*  64 */ { "LET ", 0, NULL },						/* LET x#= */
	/*  65 */ { "LET ", 0, NULL },						/* LET x$= */
	/*  66 */ { "LET ", 0, NULL },						/* LET x%= */
	/*  67 */ { "LET ", 0, NULL },						/* LET x!= */
	/*  68 */ { "LET ", 0, NULL },						/* LET x&= */
	/*  69 */ { "LET ", 0, NULL },						/* LET x|= */
	/*  70 */ { "LET ", 0, NULL },						/* LET x#()= */
	/*  71 */ { "LET ", 0, NULL },						/* LET x$()= */
	/*  72 */ { "LET ", 0, NULL },						/* LET x%()= */
	/*  73 */ { "LET ", 0, NULL },						/* LET x!()= */
	/*  74 */ { "LET ", 0, NULL },						/* LET x&()= */
	/*  75 */ { "LET ", 0, NULL },						/* LET x|()= */
	/*  76 */ { "", 0, NULL },							/* x#= */
	/*  77 */ { "", 0, NULL },							/* x$= */
	/*  78 */ { "", 0, NULL },							/* x%= */
	/*  79 */ { "", 0, NULL },							/* x!= */
	/*  80 */ { "", 0, NULL },							/* x&= */
	/*  81 */ { "", 0, NULL },							/* x|= */
	/*  82 */ { "", 0, NULL },							/* x#()= */
	/*  83 */ { "", 0, NULL },							/* x$()= */
	/*  84 */ { "", 0, NULL },							/* x%()= */
	/*  85 */ { "", 0, NULL },							/* x!()= */
	/*  86 */ { "", 0, NULL },							/* x&()= */
	/*  87 */ { "", 0, NULL },							/* x|()= */
	/*  88 */ { "PLOT ", 0, NULL },
	/*  89 */ { "PSET ", 0, NULL },
	/*  90 */ { "ALINE ", 0, NULL },
	/*  91 */ { "HLINE ", 0, NULL },
	/*  92 */ { "ARECT ", 0, NULL },
	/*  93 */ { "APOLY ", 0, NULL },
	/*  94 */ { "ACHAR ", 0, NULL },
	/*  95 */ { "ACLIP ", 0, NULL },
	/*  96 */ { "COLOR ", 0, NULL },
	/*  97 */ { "POKE ", 0, NULL },
	/*  98 */ { "DPOKE ", 0, NULL },
	/*  99 */ { "LPOKE ", 0, NULL },
	/* 100 */ { "SPOKE ", 0, NULL },
	/* 101 */ { "SDPOKE ", 0, NULL },
	/* 102 */ { "SLPOKE ", 0, NULL },
	/* 103 */ { "RESERVE", 0, NULL },					/* no arguments */
	/* 104 */ { "RESERVE ", 0, NULL },					/* 1 argument */
	/* 105 */ { "RESUME", 0, NULL },					/* no arguments or RESUME NEXT */
	/* 106 */ { "RESUME ", 0, NULL },					/* RESUME label */
	/* 107 */ { "RESUME ", 0, NULL },					/* todo */
	/* 108 */ { "", 0, NULL },							/* unused? */
	/* 109 */ { "RECORD ", 0, NULL },
	/* 110 */ { "DELAY ", 0, NULL },
	/* 111 */ { "BGET ", 0, NULL },
	/* 112 */ { "BPUT ", 0, NULL },
	/* 113 */ { "ATEXT ", 0, NULL },
	/* 114 */ { "REM", 0, NULL },						/* Append " " if at least one char long. */
	/* 115 */ { "'", 0, NULL },							/* also !, // and / *; Append " " if at least one char long. */
	/* 116 */ { "==>", 0, NULL },						/* Append " " if at least one char long. */
	/* 117 */ { "DATA", 0, NULL },						/* Append " " if at least one char long. */
	/* 118 */ { "SWAP ", 0, NULL },						/* SWAP a,b */
	/* 119 */ { "SWAP ", 0, NULL },						/* SWAP a(),b() */
	/* 120 */ { "SWAP ", 0, NULL },						/* SWAP *c,d() */
	/* 121 */ { "*", 0, NULL },							/* *c=a */
	/* 122 */ { "*", 0, NULL },							/* *c=a$ */
	/* 123 */ { "SINGLE{", 0, NULL },
	/* 124 */ { "END", 0, NULL },
	/* 125 */ { "LOCATE ", 0, NULL },
	/* 126 */ { "ON ", 0, NULL },
	/* 127 */ { "", 0, NULL },							/* todo */
	/* 128 */ { "ON ERROR", 0, NULL },
	/* 129 */ { "ON ERROR GOSUB ", 0, NULL },
	/* 130 */ { "ON BREAK", 0, NULL },
	/* 131 */ { "ON BREAK CONT", 0, NULL },
	/* 132 */ { "ON BREAK GOSUB ", 0, NULL },
	/* 133 */ { "ON MENU GOSUB ", 0, NULL },
	/* 134 */ { "ON MENU MESSAGE GOSUB ", 0, NULL },
	/* 135 */ { "ON MENU KEY GOSUB ", 0, NULL },
	/* 136 */ { "ON MENU BUTTON ", 0, NULL },			/* todo */
	/* 137 */ { "ON MENU", 0, NULL },					/* no arguments */
	/* 138 */ { "ON MENU ", 0, NULL },					/* ON MENU n */
	/* 139 */ { "MENU ", 0, NULL },						/* MENU m$() */
	/* 140 */ { "MENU OFF", 0, NULL },
	/* 141 */ { "MENU KILL", 0, NULL },
	/* 142 */ { "MENU ", 0, NULL },						/* MENU x,y */
	/* 143 */ { "TRON", 0, NULL },						/* no arguments */
	/* 144 */ { "TRON ", 0, NULL },						/* TRON #n */
	/* 145 */ { "TRON ", 0, NULL },						/* TRON n */
	/* 146 */ { "TROFF", 0, NULL },
	/* 147 */ { "PRINT", 0, NULL },						/* Append space if it has parameters */
	/* 148 */ { "PRINT ", 0, NULL },					/* PRINT # */
	/* 149 */ { "TEXT ", 0, NULL },						/* TEXT x,y,expression */
	/* 150 */ { "TEXT ", 0, NULL },						/* TEXT x,y,l,expression */
	/* 151 */ { "RCALL ", 0, NULL },
	/* 152 */ { "CALL ", 0, NULL },
	/* 153 */ { "FORM INPUT ", 0, NULL },
	/* 154 */ { "LINE INPUT ", 0, NULL },
	/* 155 */ { "LINE ", 0, NULL },
	/* 156 */ { "", 0, NULL },							/* todo */
	/* 157 */ { "", 0, NULL },							/* todo */
	/* 158 */ { "", 0, NULL },							/* todo */
	/* 159 */ { "", 0, NULL },							/* todo */
	/* 160 */ { "INC ", 0, NULL },						/* INC x# */
	/* 161 */ { "INC ", 0, NULL },						/* INC x% */
	/* 162 */ { "INC ", 0, NULL },						/* INC x& */
	/* 163 */ { "INC ", 0, NULL },						/* INC x| */
	/* 164 */ { "INC ", 0, NULL },						/* INC x#() */
	/* 165 */ { "INC ", 0, NULL },						/* INC x%() */
	/* 166 */ { "INC ", 0, NULL },						/* INC x&() */
	/* 167 */ { "INC ", 0, NULL },						/* INC x|() */
	/* 168 */ { "DEC ", 0, NULL },						/* DEC x# */
	/* 169 */ { "DEC ", 0, NULL },						/* DEC x% */
	/* 170 */ { "DEC ", 0, NULL },						/* DEC x& */
	/* 171 */ { "DEC ", 0, NULL },						/* DEC x| */
	/* 172 */ { "DEC ", 0, NULL },						/* DEC x#() */
	/* 173 */ { "DEC ", 0, NULL },						/* DEC x%() */
	/* 174 */ { "DEC ", 0, NULL },						/* DEC x&() */
	/* 175 */ { "DEC ", 0, NULL },						/* DEC x|() */
	/* 176 */ { "ADD ", 0, NULL },						/* ADD x# */
	/* 177 */ { "ADD ", 0, NULL },						/* ADD x% / */
	/* 178 */ { "ADD ", 0, NULL },						/* ADD x& */
	/* 179 */ { "ADD ", 0, NULL },						/* ADD x| */
	/* 180 */ { "ADD ", 0, NULL },						/* ADD x#() */
	/* 181 */ { "ADD ", 0, NULL },						/* ADD x%() */
	/* 182 */ { "ADD ", 0, NULL },						/* ADD x&() */
	/* 183 */ { "ADD ", 0, NULL },						/* ADD x|() */
	/* 184 */ { "SUB ", 0, NULL },						/* SUB x# */
	/* 185 */ { "SUB ", 0, NULL },						/* SUB x% */
	/* 186 */ { "SUB ", 0, NULL },						/* SUB x& */
	/* 187 */ { "SUB ", 0, NULL },						/* SUB x|, */
	/* 188 */ { "SUB ", 0, NULL },						/* SUB x#() */
	/* 189 */ { "SUB ", 0, NULL },						/* SUB x%() */
	/* 190 */ { "SUB ", 0, NULL },						/* SUB x&() */
	/* 191 */ { "SUB ", 0, NULL },						/* SUB x|() */
	/* 192 */ { "MUL ", 0, NULL },						/* MUL x# */
	/* 193 */ { "MUL ", 0, NULL },						/* MUL x% */
	/* 194 */ { "MUL ", 0, NULL },						/* MUL x& */
	/* 195 */ { "MUL ", 0, NULL },						/* MUL x| */
	/* 196 */ { "MUL ", 0, NULL },						/* MUL x#() */
	/* 197 */ { "MUL ", 0, NULL },						/* MUL x%() */
	/* 198 */ { "MUL ", 0, NULL },						/* MUL x&() */
	/* 199 */ { "MUL ", 0, NULL },						/* MUL x|() */
	/* 200 */ { "DIV ", 0, NULL },						/* DIV x# */
	/* 201 */ { "DIV ", 0, NULL },						/* DIV x% */
	/* 202 */ { "DIV ", 0, NULL },						/* DIV x& */
	/* 203 */ { "DIV ", 0, NULL },						/* DIV x| */
	/* 204 */ { "DIV ", 0, NULL },						/* DIV x#() */
	/* 205 */ { "DIV ", 0, NULL },						/* DIV x%() */
	/* 206 */ { "DIV ", 0, NULL },						/* DIV x&() */
	/* 207 */ { "DIV ", 0, NULL },						/* DIV x|() */
	/* 208 */ { "SEEK #", 0, NULL },
	/* 209 */ { "RELSEEK #", 0, NULL },
	/* 210 */ { "DIM ", 0, NULL },
	/* 211 */ { "SETCOLOR ", 0, NULL },					/* SETCOLOR reg,composite */
	/* 212 */ { "SETCOLOR ", 0, NULL },					/* SETCOLOR reg,r,g,b */
	/* 213 */ { "BMOVE ", 0, NULL },
	/* 214 */ { "VDISYS", 0, NULL },					/* No further tokens follow */
	/* 215 */ { "VDISYS ", 0, NULL },					/* VDISYS opcode */
	/* 216 */ { "VDISYS ", 0, NULL },					/* VDISYS opcode,int_cnt,pts_cnt */
	/* 217 */ { "VDISYS ", 0, NULL },					/* VDISYS opcode,int_cnt,pts_cnt,subopc */
	/* 218 */ { "GEMSYS", 0, NULL },					/* no arguments */
	/* 219 */ { "GEMSYS ", 0, NULL },					/* GEMSYS n */
	/* 220 */ { "PTSIN(", 0, NULL },
	/* 221 */ { "PTSOUT(", 0, NULL },
	/* 222 */ { "INTIN(", 0, NULL },
	/* 223 */ { "INTOUT(", 0, NULL },
	/* 224 */ { "ADDRIN(", 0, NULL },
	/* 225 */ { "ADDROUT(", 0, NULL },
	/* 226 */ { "GINTIN(", 0, NULL },
	/* 227 */ { "GINTOUT(", 0, NULL },
	/* 228 */ { "CONTRL(", 0, NULL },
	/* 229 */ { "GCONTRL(", 0, NULL },
	/* 230 */ { "{", 0, NULL },
	/* 231 */ { "LONG{", 0, NULL },
	/* 232 */ { "INT{", 0, NULL },
	/* 233 */ { "CARD{", 0, NULL },
	/* 234 */ { "BYTE{", 0, NULL },
	/* 235 */ { "CHAR{", 0, NULL },
	/* 236 */ { "FLOAT{", 0, NULL },
	/* 237 */ { "DOUBLE{", 0, NULL },
	/* 238 */ { "ON MENU IBOX ", 0, NULL },
	/* 239 */ { "ON MENU OBOX ", 0, NULL },
	/* 240 */ { "VOID ", 0, NULL },
	/* 241 */ { "~", 0, NULL },
	/* 242 */ { "OB_NEXT(", 0, NULL },
	/* 243 */ { "OB_HEAD(", 0, NULL },
	/* 244 */ { "OB_TAIL(", 0, NULL },
	/* 245 */ { "OB_TYPE(", 0, NULL },
	/* 246 */ { "OB_FLAGS(", 0, NULL },
	/* 247 */ { "OB_STATE(", 0, NULL },
	/* 248 */ { "OB_SPEC(", 0, NULL },
	/* 249 */ { "OB_X(", 0, NULL },
	/* 250 */ { "OB_Y(", 0, NULL },
	/* 251 */ { "OB_W(", 0, NULL },
	/* 252 */ { "OB_H(", 0, NULL },
	/* 253 */ { "ABSOLUTE ", 0, NULL },
	/* 254 */ { ".", 0, NULL },
	/* 255 */ { "RANDOMIZE", 0, NULL },
	/* 256 */ { "ALERT ", 0, NULL },
	/* 257 */ { "GET ", 0, NULL },						/* GET x1,y1,x2,y2,s$ */
	/* 258 */ { "GET ", 0, NULL },						/* GET #n */
	/* 259 */ { "GET ", 0, NULL },						/* GET #n,x */
	/* 260 */ { "PUT ", 0, NULL },						/* PUT x,y,s$ */
	/* 261 */ { "PUT ", 0, NULL },						/* PUT x,y,s$,mode */
	/* 262 */ { "PUT ", 0, NULL },						/* PUT #n */
	/* 263 */ { "PUT ", 0, NULL },						/* PUT #n,x */
	/* 264 */ { "", 0, NULL },							/* todo */
	/* 265 */ { "OPEN ", 0, NULL },
	/* 266 */ { "OPENW ", 0, NULL },
	/* 267 */ { "OPENW #", 0, NULL },
	/* 268 */ { "CLOSE", 0, NULL },
	/* 269 */ { "CLOSEW ", 0, NULL },
	/* 270 */ { "CLOSEW #", 0, NULL },
	/* 271 */ { "CLEAR", 0, NULL },
	/* 272 */ { "CLEARW ", 0, NULL },
	/* 273 */ { "CLEARW #", 0, NULL },
	/* 274 */ { "TOPW #", 0, NULL },
	/* 275 */ { "TITLEW #", 0, NULL },
	/* 276 */ { "INFOW #", 0, NULL },
	/* 277 */ { "DEFLINE", 0, NULL },
	/* 278 */ { "GRAPHMODE ", 0, NULL },
	/* 279 */ { "DEFMOUSE ", 0, NULL },					/* DEFMOUSE sym */
	/* 280 */ { "DEFMOUSE ", 0, NULL },					/* DEFMOUSE pattern$ */
	/* 281 */ { "DEFLIST ", 0, NULL },
	/* 282 */ { "DEFMARK", 0, NULL },
	/* 283 */ { "DEFNUM ", 0, NULL },
	/* 284 */ { "DEFTEXT", 0, NULL },
	/* 285 */ { "DEFFILL", 0, NULL },					/* DEFFILL color,interior,style */
	/* 286 */ { "DEFFILL", 0, NULL },					/* DEFFILT color,pattern$ */
	/* 287 */ { "BOX ", 0, NULL },
	/* 288 */ { "PBOX ", 0, NULL },
	/* 289 */ { "RBOX ", 0, NULL },
	/* 290 */ { "PRBOX ", 0, NULL },
	/* 291 */ { "CIRCLE ", 0, NULL },					/* CIRCLE x,y,r */
	/* 292 */ { "CIRCLE ", 0, NULL },					/* CIRCLE x,y,r,w1,w2 */
	/* 293 */ { "PCIRCLE ", 0, NULL },					/* PCIRCLE x,y,r */
	/* 294 */ { "PCIRCLE ", 0, NULL },					/* PCIRCLE x,y,r,w1,w2 */
	/* 295 */ { "ELLIPSE ", 0, NULL },					/* ELLIPSE x,y,rx,ry */
	/* 296 */ { "ELLIPSE ", 0, NULL },					/* ELLIPSE x,y,rx,ry,w1,w2 */
	/* 297 */ { "PELLIPSE ", 0, NULL },					/* PELLIPSE x,y,rx,ry */
	/* 298 */ { "PELLIPSE ", 0, NULL },					/* PELLIPSE x,y,rx,ry,w1,w2 */
	/* 299 */ { "ERROR ", 0, NULL },
	/* 300 */ { "FILL ", 0, NULL },						/* FILL x,y */
	/* 301 */ { "FILL ", 0, NULL },						/* FILL x,y,f */
	/* 302 */ { "HIDEM", 0, NULL },
	/* 303 */ { "LPRINT", 0, NULL },					/* Append space if it has parameters */
	/* 304 */ { "LSET ", 0, NULL },
	/* 305 */ { "MID$(", 0, NULL },
	/* 306 */ { "NEW", 0, NULL },
	/* 307 */ { "OUT ", 0, NULL },						/* OUT n,x */
	/* 308 */ { "OUT ", 0, NULL },						/* OUT #n,x */
	/* 309 */ { "QUIT", 0, NULL },
	/* 310 */ { "", 0, NULL },							/* todo */
	/* 311 */ { "CHDIR ", 0, NULL },
	/* 312 */ { "CHDRIVE ", 0, NULL },					/* CHDRIVE n */
	/* 313 */ { "CHDRIVE ", 0, NULL },					/* CHDRIVE n$ */
	/* 314 */ { "CLR ", 0, NULL },
	/* 315 */ { "CLS", 0, NULL },						/* Append space if it has parameters */
	/* 316 */ { "", 0, NULL },							/* todo */
	/* 317 */ { "CONT", 0, NULL },
	/* 318 */ { "", 0, NULL },							/* todo */
	/* 319 */ { "DIR", 0, NULL },
	/* 320 */ { "HTAB ", 0, NULL },
	/* 321 */ { "VTAB ", 0, NULL },
	/* 322 */ { "ERASE ", 0, NULL },
	/* 323 */ { "EXEC ", 0, NULL },
	/* 324 */ { "FIELD ", 0, NULL },
	/* 325 */ { "FILES", 0, NULL },
	/* 326 */ { "TOUCH #", 0, NULL },
	/* 327 */ { "", 0, NULL },							/* todo */
	/* 328 */ { "EDIT", 0, NULL },
	/* 329 */ { "FILESELECT ", 0, NULL },
	/* 330 */ { "NAME ", 0, NULL },
	/* 331 */ { "MKDIR ", 0, NULL },
	/* 332 */ { "MOUSE ", 0, NULL },
	/* 333 */ { "KILL ", 0, NULL },
	/* 334 */ { "RMDIR ", 0, NULL },
	/* 335 */ { "RSET ", 0, NULL },
	/* 336 */ { "SETTIME ", 0, NULL },
	/* 337 */ { "SGET ", 0, NULL },
	/* 338 */ { "SHOWM", 0, NULL },
	/* 339 */ { "SPUT ", 0, NULL },
	/* 340 */ { "STOP", 0, NULL },
	/* 341 */ { "SYSTEM", 0, NULL },					/* Append " " if other tokens follow */
	/* 342 */ { "VSYNC", 0, NULL },
	/* 343 */ { "HARDCOPY", 0, NULL },
	/* 344 */ { "PAUSE ", 0, NULL },
	/* 345 */ { "QSORT ", 0, NULL },
	/* 346 */ { "SSORT ", 0, NULL },
	/* 347 */ { "POLYLINE ", 0, NULL },
	/* 348 */ { "POLYFILL ", 0, NULL },
	/* 349 */ { "POLYMARK ", 0, NULL },
	/* 350 */ { "INSERT ", 0, NULL },
	/* 351 */ { "DELETE ", 0, NULL },
	/* 352 */ { "RENAME ", 0, NULL },
	/* 353 */ { "STICK ", 0, NULL },
	/* 354 */ { "SOUND", 0, NULL },
	/* 355 */ { "WAVE", 0, NULL },
	/* 356 */ { "CLIP ", 0, NULL },						/* CLIP OFF */
	/* 357 */ { "CLIP ", 0, NULL },						/* CLIP #n */
	/* 358 */ { "CLIP ", 0, NULL },						/* CLIP x,y,w,h */
	/* 359 */ { "CLIP ", 0, NULL },						/* CLIP x,y TO x,y */
	/* 360 */ { "CLIP ", 0, NULL },						/* CLIP  OFFSET x,y */ /* NOTE: prints 2 spaces (same as in editor) */
	/* 361 */ { "FULLW ", 0, NULL },
	/* 362 */ { "EVERY ", 0, NULL },					/* EVERY n GOSUB proc */
	/* 363 */ { "EVERY ", 0, NULL },					/* EVERY STOP */
	/* 364 */ { "EVERY ", 0, NULL },					/* EVERY  CONT */ /* NOTE: prints 2 spaces (same as in editor) */
	/* 365 */ { "AFTER ", 0, NULL },					/* AFTER n GOSUB proc */
	/* 366 */ { "AFTER ", 0, NULL },					/* AFTER STOP */
	/* 367 */ { "AFTER ", 0, NULL },					/* AFTER  CONT */ /* NOTE: prints 2 spaces (same as in editor) */
	/* 368 */ { "INPUT ", 0, NULL },					/* INPUT x */
	/* 369 */ { "INPUT ", 0, NULL },					/* INPUT #n,x */
	/* 370 */ { "DRAW ", 0, NULL },						/* DRAW x,y */
	/* 371 */ { "DRAW ", 0, NULL },						/* todo */
	/* 372 */ { "READ ", 0, NULL },
	/* 373 */ { "", 0, NULL },							/* todo */
	/* 374 */ { "SETMOUSE ", 0, NULL },
	/* 375 */ { "KEYPAD ", 0, NULL },
	/* 376 */ { "KEYTEST ", 0, NULL },
	/* 377 */ { "KEYGET ", 0, NULL },
	/* 378 */ { "KEYLOOK ", 0, NULL },
	/* 379 */ { "KEYPRESS ", 0, NULL },
	/* 380 */ { "KEYDEF ", 0, NULL },
	/* 381 */ { "DEFINT ", 0, NULL },
	/* 382 */ { "DEFFLT ", 0, NULL },					/* also DEFSNG/DEFDBL */
	/* 383 */ { "DEFBYT ", 0, NULL },
	/* 384 */ { "DEFWRD ", 0, NULL },
	/* 385 */ { "DEFBIT ", 0, NULL },
	/* 386 */ { "DEFSTR ", 0, NULL },
	/* 387 */ { "BOUNDARY ", 0, NULL },
	/* 388 */ { "LIST ", 0, NULL },
	/* 389 */ { "LLIST ", 0, NULL },
	/* 390 */ { "SAVE ", 0, NULL },
	/* 391 */ { "PSAVE ", 0, NULL },
	/* 392 */ { "CHAIN ", 0, NULL },
	/* 393 */ { "RUN", 0, NULL },						/* no arguments */
	/* 394 */ { "RUN ", 0, NULL },						/* RUN f$ */
	/* 395 */ { "LOAD ", 0, NULL },
	/* 396 */ { "SETDRAW ", 0, NULL },
	/* 397 */ { "ARRAYFILL ", 0, NULL },
	/* 398 */ { "DUMP", 0, NULL },
	/* 399 */ { "BITBLT ", 0, NULL },
	/* 400 */ { "BITBLT ", 0, NULL },					/* todo */
	/* 401 */ { "BITBLT ", 0, NULL },					/* todo */
	/* 402 */ { "STORE ", 0, NULL },
	/* 403 */ { "RECALL ", 0, NULL },
	/* 404 */ { "BSAVE ", 0, NULL },
	/* 405 */ { "BLOAD ", 0, NULL },
	/* 406 */ { "V~H=", 0, NULL },
	/* 407 */ { "TIME$=", 0, NULL },
	/* 408 */ { "DATE$=", 0, NULL },
	/* 409 */ { "SPRITE ", 0, NULL },
	/* 410 */ { "OPTION ", 0, NULL },
	/* 411 */ { "$", 0, NULL },
	/* 412 */ { "WINDTAB(", 0, NULL },
	/* 413 */ { "RC_COPY ", 0, NULL },
	/* 414 */ { "MODE ", 0, NULL },
	/* 415 */ { "", 0, NULL },							/* todo */
	/* 416 */ { "WRITE ", 0, NULL },
	/* 417 */ { "INLINE ", 0, NULL },
	/* 418 */ { "WORD{", 0, NULL },
	/* 419 */ { "VSETCOLOR ", 0, NULL },
	/* 420 */ { "OUT& ", 0, NULL },
	/* 421 */ { "OUT% ", 0, NULL },
	/* 422 */ { "CURVE ", 0, NULL },
	/* 423 */ { "_DATA=", 0, NULL },
	/* 424 */ { "MAT ADD ", 0, NULL },					/* MAT ADD a(),b() */
	/* 425 */ { "MAT ADD ", 0, NULL },					/* MAT ADD A(),x */
	/* 426 */ { "MAT SUB ", 0, NULL },					/* MAT SUB a(),b() */
	/* 427 */ { "MAT SUB ", 0, NULL },					/* MAT SUB a(),x */
	/* 428 */ { "MAT CPY ", 0, NULL },
	/* 429 */ { "MAT XCPY ", 0, NULL },
	/* 430 */ { "MAT DET ", 0, NULL },
	/* 431 */ { "MAT NEG ", 0, NULL },
	/* 432 */ { "MAT ABS ", 0, NULL },
	/* 433 */ { "MAT NORM ", 0, NULL },
	/* 434 */ { "MAT READ ", 0, NULL },
	/* 435 */ { "MAT PRINT ", 0, NULL },
	/* 436 */ { "MAT TRANS ", 0, NULL },
	/* 437 */ { "MAT CLR ", 0, NULL },
	/* 438 */ { "MAT SET ", 0, NULL },
	/* 439 */ { "MAT ONE ", 0, NULL },
	/* 440 */ { "MAT BASE ", 0, NULL },
	/* 441 */ { "MAT QDET ", 0, NULL },
	/* 442 */ { "MAT INPUT ", 0, NULL },
	/* 443 */ { "MAT RANG ", 0, NULL },
	/* 444 */ { "MAT MUL ", 0, NULL },					/* MAT MUL a()=b()*c() */
	/* 445 */ { "MAT MUL ", 0, NULL },					/* MAT MUL x=a()*b() */
	/* 446 */ { "MAT MUL ", 0, NULL },					/* MAT MUL x=a()*b()*c() */
	/* 447 */ { "MAT MUL ", 0, NULL },					/* MAT MUL a(),x */
	/* 448 */ { "MAT INV ", 0, NULL },
	/* 449 */ { "> FUNCTION ", 0, NULL },
	/* 450 */ { "DMASOUND ", 0, NULL },
	/* 451 */ { "DMACONTROL ", 0, NULL },
	/* 452 */ { "MW_OUT ", 0, NULL },
	/* 453 */ { NULL, 0, NULL },						/* unused */
	/* 454 */ { NULL, 0, NULL },						/* unused */
	/* 455 */ { NULL, 0, NULL },						/* unused */
	/* 456 */ { NULL, 0, NULL },						/* unused */
	/* 457 */ { NULL, 0, NULL },						/* unused */
	/* 458 */ { NULL, 0, NULL },						/* unused */
	/* 459 */ { NULL, 0, NULL },						/* unused */

	/*
	 * below are new in 3.70 (GBE)
	 */
	/* 460 */ { "SET.MFDB ", 0, NULL },
	/* 461 */ { "SET.PXYWH ", 0, NULL },
	/* 462 */ { "BZERO ", TARGET_VER370, "BCLEAR " },
	/* 463 */ { "BFILL ", 0, NULL },
	/* 464 */ { "BXLATE ", 0, NULL },
	/* 465 */ { "BEEP", 0, NULL },
	/* 466 */ { "GHIDEM", 0, NULL },
	/* 467 */ { "GSHOWM", 0, NULL },
	/* 468 */ { "GMOUSE ", 0, NULL },
	/* 469 */ { "VCURVE ", 0, NULL },
	/* 470 */ { "VRC_COPY ", 0, NULL },
	/* 471 */ { "VGET ", 0, NULL },
	/* 472 */ { "VPLOT ", 0, NULL },
	/* 473 */ { "AVERAGE_RGB ", TARGET_VER370, "TIMESTAMP " },
	/* 474 */ { "TMOUSE ", TARGET_VER372, "AMOUSE " },
	/* 475 */ { "VLINE ", 0, NULL },
	/* 476 */ { "CPUFLUSH", 0, NULL },
	/* 477 */ { "BCRYPT ", 0, NULL },
	/* 478 */ { "GSTICK ", 0, NULL },
	/* 479 */ { "VSGET ", 0, NULL },
	/* 480 */ { "VSPUT ", 0, NULL },
	/* 481 */ { "VCLS", 0, NULL },
	/* 482 */ { "VPALGET ", TARGET_VER370, "PALGET " },
	/* 483 */ { "VPALSET ", TARGET_VER370, "PALSET " },
	/* 484 */ { "LOG_MSG ", 0, NULL },
	/* 485 */ { "LOG_SET ", 0, NULL },
	/* 486 */ { "LOG_FILE ", 0, NULL },
	/* 487 */ { "LOG_KILL", 0, NULL },
	/* 488 */ { "SET.PXYXY ", 0, NULL },
	/* 489 */ { "VBOX ", 0, NULL },
	/* 490 */ { "TBITBLT ", TARGET_VER370, "VBITBLT " },
	/* 491 */ { "SCALL ", 0, NULL },
	/* 492 */ { "VPUT ", 0, NULL }, /* 3 arguments */
	/* 493 */ { "VPUT ", 0, NULL }, /* 4 arguments */
	/* 494 */ { "STRPOKE ", TARGET_VER370, "CHAR$ " },
	/* 495 */ { "SET.SOCKADDR_IN ", TARGET_VER370, "SET.SOCKADDR " },
	/* 496 */ { "TPUT ", 0, NULL },
	/* 497 */ { "SNDH ", 0, NULL },
	/* 498 */ { "MEMSWAP& ", TARGET_VER371, NULL }, /* parameter change in 3.72 */
	/* 499 */ { "MEMSWAP% ", TARGET_VER371, NULL }, /* parameter change in 3.72 */
	/* 500 */ { "MEMFILL& ", 0, NULL },
	/* 501 */ { "MEMFILL% ", 0, NULL },
	/* 502 */ { "PALGET ", TARGET_VER370, NULL }, /* PALGET was token 482 in 3.70 */
	/* 503 */ { "PALSET ", TARGET_VER370, NULL }, /* PALSET was token 483 in 3.70 */
	/* 504 */ { "OB.STATE(", 0, NULL },
	/* 505 */ { "OB.FLAGS(", 0, NULL },
	/* 506 */ { "SBYTE{", TARGET_VER370, "OB_SELECTED(" },
	/* 507 */ { "C2P ", TARGET_VER370, "OB_CROSSED(" },
	/* 508 */ { "SET.SXYWH ", TARGET_VER370, "OB_CHECKED(" },
	/* 509 */ { "SET.DXYWH ", TARGET_VER370, "OB_DISABLED(" },
	/* 510 */ { "OB_RADIO(", TARGET_VER370, "OB.RBUTTON(" },
	/* 511 */ { "OB_TEXT$(", 0, NULL },
	/* 512 */ { "WARMBOOT", TARGET_VER370, "OB_SELECTABLE(" },
	/* 513 */ { "JOYPAD ", TARGET_VER370, "OB_DEFAULT(" },
	/* 514 */ { "SLEEP", TARGET_VER370, "OB_EXIT(" },
	/* 515 */ { "MEMZERO& ", TARGET_VER370, "OB_EDITABLE(" },
	/* 516 */ { "MEMZERO% ", TARGET_VER370, "OB_RBUTTON(" },
	/* 517 */ { "SET.SXYXY ", TARGET_VER370, "OB_LASTOB(" },
	/* 518 */ { "SET.DXYXY ", TARGET_VER370, "OB_TOUCHEXIT(" },
	/* 519 */ { "SET.RXYWH ", TARGET_VER370, "OB_HIDETREE(" },
	/* 520 */ { "ENDSEEK #", 0, NULL },
	/* 521 */ { "SET.GCBITMAP ", 0, NULL },
	/* 522 */ { "MEMAND ", 0, NULL },
	/* 523 */ { "MEMOR ", 0, NULL },
	/* 524 */ { "MEMXOR ", 0, NULL },
	/* 525 */ { "MEMBSET| ", 0, NULL },
	/* 526 */ { "MEMBSET& ", 0, NULL },
	/* 527 */ { "MEMBSET% ", 0, NULL },
	/* 528 */ { "MEMBCLR| ", 0, NULL },
	/* 529 */ { "MEMBCLR& ", 0, NULL },
	/* 530 */ { "MEMBCLR% ", 0, NULL },
	/* 531 */ { "MEMBCHG| ", 0, NULL },
	/* 532 */ { "MEMBCHG& ", 0, NULL },
	/* 533 */ { "MEMBCHG% ", 0, NULL },
	/* 534 */ { "SCREEN ", 0, NULL },
	/* 535 */ { "BREPLACE ", 0, NULL },
	/* 536 */ { "RGB ", 0, NULL },
	/* 537 */ { "STRARRAYFILL ", 0, NULL },
	/* 538 */ { "ENVIRON ", 0, NULL },
	/* 539 */ { "MEMREPLACE& ", 0, NULL },
	/* 540 */ { "MEMREPLACE% ", 0, NULL },
	/* 541 */ { "SET.MENU ", 0, NULL },
	/* 542 */ { "WAITVBL", 0, NULL },
	/* 543 */ { "COLDBOOT", 0, NULL },
	/* 544 */ { "BMIRROR ", TARGET_VER371, "BFOBSPEC(" },
	/* 545 */ { "MEMMIRROR& ", TARGET_VER371, "BITBLK(" },
	/* 546 */ { "MEMMIRROR% ", TARGET_VER371, "TEDINFO(" },
	/* 547 */ { "MEMMIRROR3 ", TARGET_VER371, "ICONBLK(" },
	/* 548 */ { "MEMEXG& ", TARGET_VER371, "CICONBLK(" },
	/* 549 */ { "MEMEXG% ", TARGET_VER371, "USERBLK(" },
	/* 550 */ { "_0=", 0, NULL },
	/* 551 */ { "_1=", 0, NULL },
	/* 552 */ { "_2=", 0, NULL },
	/* 553 */ { "_3=", 0, NULL },
	/* 554 */ { "_4=", 0, NULL },
	/* 555 */ { "_5=", 0, NULL },
	/* 556 */ { "_6=", 0, NULL },
	/* 557 */ { "_7=", 0, NULL },
	/* 558 */ { "_8=", 0, NULL },
	/* 559 */ { "_9=", 0, NULL },
	
	/*
	 * below are new in 3.72
	 */
	/* 560 */ { "OB_SELECTED(", 0, NULL },
	/* 561 */ { "OB_CROSSED(", 0, NULL },
	/* 562 */ { "OB_CHECKED(", 0, NULL },
	/* 563 */ { "OB_DISABLED(", 0, NULL },
	/* 564 */ { "OB_OUTLINED(", 0, NULL },
	/* 565 */ { "OB_SHADOWED(", 0, NULL },
	/* 566 */ { "OB_WHITEBAK(", 0, NULL },
	/* 567 */ { NULL, 0, NULL }, /* unused */
	/* 568 */ { "OB_SELECTABLE(", 0, NULL },
	/* 569 */ { "OB_DEFAULT(", 0, NULL },
	/* 570 */ { "OB_EXIT(", 0, NULL },
	/* 571 */ { "OB_EDITABLE(", 0, NULL },
	/* 572 */ { "OB_RBUTTON(", 0, NULL },
	/* 573 */ { "OB_LASTOB(", 0, NULL },
	/* 574 */ { "OB_TOUCHEXIT(", 0, NULL },
	/* 575 */ { "OB_HIDETREE(", 0, NULL },
	/* 576 */ { "OB_INDIRECT(", 0, NULL },
	/* 577 */ { "OB_FL3DIND(", 0, NULL },
	/* 578 */ { "OB_FL3DACT(", 0, NULL },
	/* 579 */ { "OB_SUBMENU(", 0, NULL },
	/* 580 */ { NULL, 0, NULL }, /* unused */
	/* 581 */ { "OB_FL3DBAK(", 0, NULL },
	/* 582 */ { "BF_OBSPEC(", 0, NULL },
	/* 583 */ { "BF_CHARACTER(", 0, NULL },
	/* 584 */ { "BF_FRAMESIZE(", 0, NULL },
	/* 585 */ { "BF_FRAMECOL(", 0, NULL },
	/* 586 */ { "BF_TEXTCOL(", 0, NULL },
	/* 587 */ { "BF_TEXTMODE(", 0, NULL },
	/* 588 */ { "BF_FILLPATTERN(", 0, NULL },
	/* 589 */ { "BF_INTERIORCOL(", 0, NULL },
	/* 590 */ { "BI_PDATA(", 0, NULL },
	/* 591 */ { "BI_WB(", 0, NULL },
	/* 592 */ { "BI_HL(", 0, NULL },
	/* 593 */ { "BI_X(", 0, NULL },
	/* 594 */ { "BI_Y(", 0, NULL },
	/* 595 */ { "BI_COLOR(", 0, NULL },
	/* 596 */ { "UB_CODE(", 0, NULL },
	/* 597 */ { "UB_PARM(", 0, NULL },
	/* 598 */ { "TE_PTEXT(", 0, NULL },
	/* 599 */ { "TE_PTMPLT(", 0, NULL },
	/* 600 */ { "TE_PVALID(", 0, NULL },
	/* 601 */ { "TE_FONT(", 0, NULL },
	/* 602 */ { "TE_FONTID(", 0, NULL },
	/* 603 */ { "TE_JUST(", 0, NULL },
	/* 604 */ { "TE_COLOR(", 0, NULL },
	/* 605 */ { "TE_FONTSIZE(", 0, NULL },
	/* 606 */ { "TE_THICKNESS(", 0, NULL },
	/* 607 */ { "TE_TXTLEN(", 0, NULL },
	/* 608 */ { "TE_TMPLEN(", 0, NULL },
	/* 609 */ { "TE_FRAMECOL(", 0, NULL },
	/* 610 */ { "TE_TEXTCOL(", 0, NULL },
	/* 611 */ { "TE_TEXTMODE(", 0, NULL },
	/* 612 */ { "TE_FILLPATTERN(", 0, NULL },
	/* 613 */ { "TE_INTERIORCOL(", 0, NULL },
	/* 614 */ { "IB_PMASK(", 0, NULL },
	/* 615 */ { "IB_PDATA(", 0, NULL },
	/* 616 */ { "IB_PTEXT(", 0, NULL },
	/* 617 */ { "IB_CHAR(", 0, NULL },
	/* 618 */ { "IB_XCHAR(", 0, NULL },
	/* 619 */ { "IB_YCHAR(", 0, NULL },
	/* 620 */ { "IB_XICON(", 0, NULL },
	/* 621 */ { "IB_YICON(", 0, NULL },
	/* 622 */ { "IB_WICON(", 0, NULL },
	/* 623 */ { "IB_HICON(", 0, NULL },
	/* 624 */ { "IB_XTEXT(", 0, NULL },
	/* 625 */ { "IB_YTEXT(", 0, NULL },
	/* 626 */ { "IB_WTEXT(", 0, NULL },
	/* 627 */ { "IB_HTEXT(", 0, NULL },
	/* 628 */ { "IB_FCOLOR(", 0, NULL },
	/* 629 */ { "IB_BCOLOR(", 0, NULL },
	/* 630 */ { "IB_LETTER(", 0, NULL },
	/* 631 */ { "CI_MAINLIST(", 0, NULL },
	/* 632 */ { "CI_NUM_PLANES(", 0, NULL },
	/* 633 */ { "CI_COL_DATA(", 0, NULL },
	/* 634 */ { "CI_COL_MASK(", 0, NULL },
	/* 635 */ { "CI_SEL_DATA(", 0, NULL },
	/* 636 */ { "CI_SEL_MASK(", 0, NULL },
	/* 637 */ { "CI_NEXT_RES(", 0, NULL },
	/* 638 */ { "BEXG ", 0, NULL },

	/*
	 * below are new in 3.73 (GBE)
	 */
	/* 639 */ { "SUPER ", 0, NULL },
	/* 640 */ { "PIXEL24 ", 0, NULL }, /* 5 arguments */
	/* 641 */ { "PIXEL24 ", 0, NULL }, /* 7 arguments */
	/* 642 */ { "PIXEL32 ", 0, NULL }, /* 5 arguments */
	/* 643 */ { "PIXEL32 ", 0, NULL }, /* 7 arguments */
	/* 644 */ { "PIXEL16 ", 0, NULL }, /* 5 arguments */
	/* 645 */ { "PIXEL16 ", 0, NULL }, /* 7 arguments */
	/* 646 */ { "PIXEL15 ", 0, NULL }, /* 5 arguments */
	/* 647 */ { "PIXEL15 ", 0, NULL }, /* 7 arguments */
	/* 648 */ { "BAR ", 0, NULL },
	/* 649 */ { "PBAR ", 0, NULL },
	/* 650 */ { "RBAR ", 0, NULL },
	/* 651 */ { "PRBAR ", 0, NULL },
	/* 652 */ { "VPBAR ", 0, NULL },
	/* 653 */ { "PIXEL8P ", 0, NULL },
	/* 654 */ { "PIXEL1M ", 0, NULL },
	/* 655 */ { "PIXEL8C ", 0, NULL },
	/* 656 */ { "STRUCT$(", 0, NULL },
	/* 657 */ { "STRUCT!(", 0, NULL },
	/* 658 */ { "STRUCT|(", 0, NULL },
	/* 659 */ { "STRUCT&(", 0, NULL },
	/* 660 */ { "STRUCT%(", 0, NULL },
	/* 661 */ { "STRUCT(", 0, NULL },
	/* 662 */ { "PIXEL4P ", 0, NULL },
	/* 663 */ { "PIXEL2P ", 0, NULL },
	/* 664 */ { "MDPOKE ", 0, NULL },
	/* 665 */ { "MLPOKE ", 0, NULL },
	/* 666 */ { "MNAM ", 0, NULL },
	/* 667 */ { "VER2STR ", 0, NULL },
	/* 668 */ { "IKBD ", 0, NULL },
	/* 669 */ { "_GLOBAL=", 0, NULL },
	/* 670 */ { "SFILL ", 0, NULL },
	/* 671 */ { "USERDEF!(", 0, NULL },
	/* 672 */ { "USERDEF|(", 0, NULL },
	/* 673 */ { "USERDEF&(", 0, NULL },
	/* 674 */ { "USERDEF%(", 0, NULL },
	/* 675 */ { "CRASTER ", 0, NULL },
	/* 676 */ { "RC_REDRAW", 0, NULL }, /* no arguments */
	/* 677 */ { "RC_REDRAW", 0, NULL }, /* 4 arguments */
	/* 678 */ { NULL, 0, NULL },
	/* 679 */ { NULL, 0, NULL },
	/* 680 */ { "ARRAY!(", 0, NULL },
	/* 681 */ { "ARRAY|(", 0, NULL },
	/* 682 */ { "ARRAY&(", 0, NULL },
	/* 683 */ { "ARRAY%(", 0, NULL },
	/* 684 */ { "ARRAY(", 0, NULL },
};
unsigned int const size_lct = sizeof(gfalct) / sizeof(gfalct[0]);

/* Primary function text */
struct nameversion const gfapft[256] = {
	/*    0 */ { " AND ", 0, NULL },
	/*    1 */ { " OR ", 0, NULL },
	/*    2 */ { " XOR ", 0, NULL },
	/*    3 */ { " IMP ", 0, NULL },
	/*    4 */ { " EQV ", 0, NULL },
	/*    5 */ { "-", 0, NULL },
	/*    6 */ { "+", 0, NULL },
	/*    7 */ { "*", 0, NULL },
	/*    8 */ { "/", 0, NULL },
	/*    9 */ { "^", 0, NULL },
	/*   10 */ { " MOD ", 0, NULL },
	/*   11 */ { " DIV ", 0, NULL },
	/*   12 */ { "<>", 0, NULL }, /* numbers */
	/*   13 */ { "<=", 0, NULL }, /* numbers */
	/*   14 */ { "=<", 0, NULL }, /* numbers */
	/*   15 */ { ">=", 0, NULL }, /* numbers */
	/*   16 */ { "=>", 0, NULL }, /* numbers */
	/*   17 */ { "<", 0, NULL }, /* numbers */
	/*   18 */ { ">", 0, NULL }, /* numbers */
	/*   19 */ { "=", 0, NULL }, /* numbers */
	/*   20 */ { "<>", 0, NULL }, /* strings */
	/*   21 */ { "<=", 0, NULL }, /* strings */
	/*   22 */ { "=<", 0, NULL }, /* strings */
	/*   23 */ { ">=", 0, NULL }, /* strings */
	/*   24 */ { "=>", 0, NULL }, /* strings */
	/*   25 */ { "<", 0, NULL }, /* strings */
	/*   26 */ { ">", 0, NULL }, /* strings */
	/*   27 */ { "=", 0, NULL }, /* strings */
	/*   28 */ { "+", 0, NULL }, /* strings */
	/*   29 */ { "+", 0, NULL }, /* unary plus */
	/*   30 */ { "-", 0, NULL }, /* unary minus */
	/*   31 */ { "NOT ", 0, NULL },
	/*   32 */ { ")", 0, NULL }, /* end of parameter list (array ref, function call, dim) */
	/*   33 */ { ",", 0, NULL },
	/*   34 */ { ";", 0, NULL },
	/*   35 */ { "(", 0, NULL }, /* in expressions */
	/*   36 */ { "ERR$(", 0, NULL },
	/*   37 */ { "INT(", 0, NULL },
	/*   38 */ { "TRUNC(", 0, NULL },
	/*   39 */ { "FRAC(", 0, NULL },
	/*   40 */ { "ABS(", 0, NULL },
	/*   41 */ { "SIN(", 0, NULL },
	/*   42 */ { "COS(", 0, NULL },
	/*   43 */ { "TAN(", 0, NULL },
	/*   44 */ { "ATN(", 0, NULL },
	/*   45 */ { "==", 0, NULL },
	/*   46 */ { "(", 0, NULL }, /* unknown */
	/*   47 */ { "EXP(", 0, NULL },
	/*   48 */ { "LOG(", 0, NULL },
	/*   49 */ { "LOG10(", 0, NULL },
	/*   50 */ { "VAR ", 0, NULL },
	/*   51 */ { ")", 0, NULL }, /* appears in VAR a() */
	/*   52 */ { "INPAUX$", 0, NULL },
	/*   53 */ { "VAL(", 0, NULL },
	/*   54 */ { "INPMID$", 0, NULL },
	/*   55 */ { "", 0, NULL },  /* Precedes functions that return a numeric value in PRINT statements */
	/*   56 */ { "TIME$", 0, NULL }, /* no arguments */
	/*   57 */ { ")=", 0, NULL }, /* for array assignment */
	/*   58 */ { "LEFT$(", 0, NULL }, /* 1 argument */
	/*   59 */ { "LEFT$(", 0, NULL }, /* 2 arguments */
	/*   60 */ { "RIGHT$(", 0, NULL }, /* 1 argument */
	/*   61 */ { "RIGHT$(", 0, NULL }, /* 2 arguments */
	/*   62 */ { "MID$(", 0, NULL }, /* 2 arguments */
	/*   63 */ { "MID$(", 0, NULL }, /* 3 arguments */
	/*   64 */ { ",", 0, NULL }, /* unknown */
	/*   65 */ { "ASIN(", 0, NULL },
	/*   66 */ { "CHR$(", 0, NULL },
	/*   67 */ { "}=", 0, NULL },
	/*   68 */ { "]=", 0, NULL }, /* unknown */
	/*   69 */ { "=", 0, NULL },
	/*   70 */ { NULL, 0, NULL }, /* comment */
	/*   71 */ { " TO ", 0, NULL },
	/*   72 */ { " STEP ", 0, NULL },
	/*   73 */ { " DOWNTO ", 0, NULL },
	/*   74 */ { " THEN", 0, NULL },
	/*   75 */ { " GOTO ", 0, NULL }, /* on x GOTO */
	/*   76 */ { " GOSUB ", 0, NULL }, /* on x GOSUB */
	/*   77 */ { "#", 0, NULL },
	/*   78 */ { "SQR(", 0, NULL },
	/*   79 */ { "PI", 0, NULL },
	/*   80 */ { "[", 0, NULL },
	/*   81 */ { "]", 0, NULL },
	/*   82 */ { "ACOS(", 0, NULL },
	/*   83 */ { "INKEY$", 0, NULL },
	/*   84 */ { "RND(", 0, NULL }, /* 1 argument */
	/*   85 */ { "RND", 0, NULL }, /* no arguments */
	/*   86 */ { "RANDOM(", 0, NULL },
	/*   87 */ { "'", 0, NULL }, /* in print statemtent */
	/*   88 */ { "}", 0, NULL },
	/*   89 */ { "AT(", 0, NULL },
	/*   90 */ { "IF", 0, NULL },
	/*   91 */ { "\\", 0, NULL }, /* integer DIV */
	/*   92 */ { "FLOAT{", 0, NULL },
	/*   93 */ { "DOUBLE{", 0, NULL },
	/*   94 */ { "INPUT$(", 0, NULL }, /* 1 argument */
	/*   95 */ { "INPUT$(", 0, NULL }, /* 2 arguments */
	/*   96 */ { "INPUT", 0, NULL },
	/*   97 */ { "CHAR{", 0, NULL },
	/*   98 */ { "MKI$(", 0, NULL },
	/*   99 */ { "MKL$(", 0, NULL },
	/*  100 */ { "MKS$(", 0, NULL },
	/*  101 */ { "MKF$(", 0, NULL },
	/*  102 */ { "MKD$(", 0, NULL },
	/*  103 */ { "DEG(", 0, NULL },
	/*  104 */ { "RAD(", 0, NULL },
	/*  105 */ { "CVS(", 0, NULL },
	/*  106 */ { "CVF(", 0, NULL },
	/*  107 */ { "CVD(", 0, NULL },
	/*  108 */ { " AS ", 0, NULL },
	/*  109 */ { " OFFSET ", 0, NULL },
	/*  110 */ { "CFLOAT(", 0, NULL },
	/*  111 */ { "TRACE$", 0, NULL },
	/*  112 */ { "ROUND(", 0, NULL }, /* 1 argument */
	/*  113 */ { "ROUND(", 0, NULL }, /* 2 arguments */
	/*  114 */ { " WITH ", 0, NULL },
	/*  115 */ { "BIN$(", 0, NULL }, /* 1 argument */
	/*  116 */ { "BIN$(", 0, NULL }, /* 2 arguments */
	/*  117 */ { "MIN(", 0, NULL }, /* numbers */
	/*  118 */ { "MIN(", 0, NULL }, /* strings */
	/*  119 */ { "MAX(", 0, NULL }, /* numbers */
	/*  120 */ { "MAX(", 0, NULL }, /* strings */
	/*  121 */ { "SINGLE{", 0, NULL },
	/*  122 */ { " AT(", 0, NULL }, /* FIELD #x,num AT(x) */
	/*  123 */ { "SINQ(", 0, NULL },
	/*  124 */ { ":", 0, NULL },
	/*  125 */ { "COSQ(", 0, NULL },
	/*  126 */ { "DATE$", 0, NULL }, /* no arguments */
	/*  127 */ { "UPPER$(", 0, NULL },
	/*  128 */ { "SPACE$(", 0, NULL },
	/*  129 */ { "STRING$(", 0, NULL }, /* 2nd argument code */
	/*  130 */ { "STRING$(", 0, NULL }, /* 2nd argument string */
	/*  131 */ { "SUCC(", 0, NULL },
	/*  132 */ { "DIR$(", 0, NULL },
	/*  133 */ { "PRED(", 0, NULL },
	/*  134 */ { "DRAW(", 0, NULL },
	/*  135 */ { "TRIM$(", 0, NULL },
	/*  136 */ { "CMDLINE$", 0, NULL }, /* new in 3.70 */
	/*  137 */ { "CURDIR$", 0, NULL }, /* new in 3.70 */
	/*  138 */ { "L:", 0, NULL },
	/*  139 */ { "W:", 0, NULL },
	/*  140 */ { "FACT(", 0, NULL },
	/*  141 */ { "COMBIN(", 0, NULL },
	/*  142 */ { "ENVIRON$(", 0, NULL }, /* new in 3.70 */
	/*  143 */ { "VARIAT(", 0, NULL },
	/*  144 */ { "LTRIM$(", 0, NULL }, /* new in 3.70 */
	/*  145 */ { "RTRIM$(", 0, NULL }, /* new in 3.70 */
	/*  146 */ { "LCASE$(", 0, NULL }, /* new in 3.70 */
	/*  147 */ { "UCASE$(", 0, NULL }, /* new in 3.70 */
	/*  148 */ { "LOWER$(", 0, NULL }, /* new in 3.70 */
	/*  149 */ { "OB_TEXT$(", 0, NULL }, /* new in 3.70 */
	/*  150 */ { "ZTRIM$(", 0, NULL }, /* new in 3.70 */
	/*  151 */ { "ERROR", 0, NULL },
	/*  152 */ { "STOP", 0, NULL },
	/*  153 */ { "BREAK", 0, NULL },
	/*  154 */ { " CONT", 0, NULL },		/* EVERY  CONT */
	/*  155 */ { "FIX(", 0, NULL },
	/*  156 */ { ",", 0, NULL }, /* precedes string parameter in parameter list */
	/*  157 */ { "(", 0, NULL }, /* starts parameter list of C: or CALL */
	/*  158 */ { "FN ", 0, NULL },
	/*  159 */ { "@", 0, NULL },
	/*  160 */ { "MIRROR$(", 0, NULL }, /* new in 3.70 */
	/*  161 */ { "TAB(", 0, NULL },
	/*  162 */ { "SPC(", 0, NULL },
	/*  163 */ { "USING ", 0, NULL },
	/*  164 */ { "CHAR$(", 0, NULL }, /* 1 argument */ /* new in 3.70 */
	/*  165 */ { "TIME$(", 0, NULL }, /* 1 argument */ /* new in 3.70 */
	/*  166 */ { "TIMESTAMP$(", TARGET_VER370, NULL }, /* new in 3.70 */ /* parameter change in 3.71 */
	/*  167 */ { "MENU", 0, NULL },
	/*  168 */ { "NEXT", 0, NULL }, /* RESUME NEXT */
	/*  169 */ { "STRPEEK$(", 0, NULL }, /* new in 3.70 */
	/*  170 */ { "KEY", 0, NULL },
	/*  171 */ { "BUTTON", 0, NULL },
	/*  172 */ { "IBOX", 0, NULL },
	/*  173 */ { "OBOX", 0, NULL },
	/*  174 */ { "MESSAGE", 0, NULL },
	/*  175 */ { "OFF", 0, NULL },
	/*  176 */ { "KILL", 0, NULL }, /* unknown */
	/*  177 */ { "DIGITAL$(", 0, NULL }, /* new in 3.72 */
	/*  178 */ { "REPLACE$(", 0, NULL },  /* new in 3.72 */
	/*  179 */ { "CRYPT$(", 0, NULL }, /* new in 3.72 */
	/*  180 */ { "XLATE$(", 0, NULL }, /* new in 3.72 */
	/*  181 */ { "STRUCT$(", 0, NULL }, /* new in 3.73 */
	/*  182 */ { "BASE ", 0, NULL },
	/*  183 */ { "NULL", 0, NULL }, /* new in 3.70 */
	/*  184 */ { "0", 0, NULL },
	/*  185 */ { "1", 0, NULL },
	/*  186 */ { "2", 0, NULL }, /* new in 3.70 */
	/*  187 */ { "3", 0, NULL }, /* new in 3.70 */
	/*  188 */ { "TRUE", 0, NULL },
	/*  189 */ { "FALSE", 0, NULL },
	/*  190 */ { "STR$(", 0, NULL }, /* 1 argument */
	/*  191 */ { "STR$(", 0, NULL }, /* 2 arguments */
	/*  192 */ { "STR$(", 0, NULL }, /* 3 arguments */
	/*  193 */ { "HEX$(", 0, NULL }, /* 1 argument */
	/*  194 */ { "HEX$(", 0, NULL }, /* 2 arguments */
	/*  195 */ { "OCT$(", 0, NULL }, /* 1 argument */
	/*  196 */ { "OCT$(", 0, NULL }, /* 2 arguments */
	/*  197 */ { NULL, 0, NULL }, /* unknown */
	/*  198 */ { NULL, 0, NULL }, /* string constant */
	/*  199 */ { NULL, 0, NULL }, /* string constant (pad byte) */
	/*  200 */ { NULL, 0, NULL }, /* decimal constant */
	/*  201 */ { NULL, 0, NULL }, /* decimal constant (pad byte) */
	/*  202 */ { NULL, 0, NULL }, /* hexadecimal constant */
	/*  203 */ { NULL, 0, NULL }, /* hexadecimal constant (pad byte) */
	/*  204 */ { NULL, 0, NULL }, /* octal constant */
	/*  205 */ { NULL, 0, NULL }, /* octal constant (pad byte) */
	/*  206 */ { NULL, 0, NULL }, /* binary constant */
	/*  207 */ { NULL, 0, NULL }, /* binary constant (pad byte) */
	/*  208 */ { NULL, 0, NULL }, /* secondary function -> gfasft_208 */
	/*  209 */ { NULL, 0, NULL }, /* secondary function -> gfasft_209 */
	/*  210 */ { NULL, 0, NULL }, /* secondary function -> gfasft_210 */
	/*  211 */ { NULL, 0, NULL }, /* secondary function -> gfasft_211 */
	/*  212 */ { NULL, 0, NULL }, /* secondary function -> gfasft_212 */
	/*  213 */ { NULL, 0, NULL }, /* secondary function -> gfasft_213 */
	/*  214 */ { NULL, 0, NULL }, /* secondary function -> gfasft_214 */
	/*  215 */ { NULL, 0, NULL }, /* octal double constant (pad byte) */
	/*  216 */ { NULL, 0, NULL }, /* octal double constant */
	/*  217 */ { NULL, 0, NULL }, /* binary double constant (pad byte) */
	/*  218 */ { NULL, 0, NULL }, /* binary double constant */
	/*  219 */ { NULL, 0, NULL }, /* hexadecimal double constant (pad byte) */
	/*  220 */ { NULL, 0, NULL }, /* hexadecimal double constant */
	/*  221 */ { NULL, 0, NULL }, /* decimal double constant (pad byte) */
	/*  222 */ { NULL, 0, NULL }, /* string constant */
	/*  223 */ { NULL, 0, NULL }, /* decimal double constant */
	/*  224 */ { NULL, 0, NULL }, /* variable access, 1 byte follows */
	/*  225 */ { NULL, 0, NULL }, /* " */
	/*  226 */ { NULL, 0, NULL }, /* " */
	/*  227 */ { NULL, 0, NULL }, /* " */
	/*  228 */ { NULL, 0, NULL }, /* " */
	/*  229 */ { NULL, 0, NULL }, /* " */
	/*  230 */ { NULL, 0, NULL }, /* " */
	/*  231 */ { NULL, 0, NULL }, /* " */
	/*  232 */ { NULL, 0, NULL }, /* " */
	/*  233 */ { NULL, 0, NULL }, /* " */
	/*  234 */ { NULL, 0, NULL }, /* " */
	/*  235 */ { NULL, 0, NULL }, /* " */
	/*  236 */ { NULL, 0, NULL }, /* " */
	/*  237 */ { NULL, 0, NULL }, /* " */
	/*  238 */ { NULL, 0, NULL }, /* " */
	/*  239 */ { NULL, 0, NULL }, /* " */
	/*  240 */ { NULL, 0, NULL }, /* variable access, 2 bytes follow */
	/*  241 */ { NULL, 0, NULL }, /* " */
	/*  242 */ { NULL, 0, NULL }, /* " */
	/*  243 */ { NULL, 0, NULL }, /* " */
	/*  244 */ { NULL, 0, NULL }, /* " */
	/*  245 */ { NULL, 0, NULL }, /* " */
	/*  246 */ { NULL, 0, NULL }, /* " */
	/*  247 */ { NULL, 0, NULL }, /* " */
	/*  248 */ { NULL, 0, NULL }, /* " */
	/*  249 */ { NULL, 0, NULL }, /* " */
	/*  250 */ { NULL, 0, NULL }, /* " */
	/*  251 */ { NULL, 0, NULL }, /* " */
	/*  252 */ { NULL, 0, NULL }, /* " */
	/*  253 */ { NULL, 0, NULL }, /* " */
	/*  254 */ { NULL, 0, NULL }, /* " */
	/*  255 */ { NULL, 0, NULL }  /* " */
};

/* Secondary function text */
struct nameversion const gfasft_208[256] = {
	/*    0 */ { "MUL(", 0, NULL },
	/*    1 */ { "DIV(", 0, NULL },
	/*    2 */ { "ADD(", 0, NULL },
	/*    3 */ { "SUB(", 0, NULL },
	/*    4 */ { "MOD(", 0, NULL },
	/*    5 */ { "AND(", 0, NULL },
	/*    6 */ { "OR(", 0, NULL },
	/*    7 */ { "XOR(", 0, NULL },
	/*    8 */ { "EQV(", 0, NULL },
	/*    9 */ { "IMP(", 0, NULL },
	/*   10 */ { "SHL(", 0, NULL },
	/*   11 */ { "SHR(", 0, NULL },
	/*   12 */ { "ROL(", 0, NULL },
	/*   13 */ { "ROR(", 0, NULL },
	/*   14 */ { "WORD(", 0, NULL },
	/*   15 */ { "CARD(", 0, NULL },
	/*   16 */ { "BYTE(", 0, NULL },
	/*   17 */ { "SWAP(", 0, NULL },
	/*   18 */ { "ADDRIN(", 0, NULL },
	/*   19 */ { "ADDRIN", 0, NULL },
	/*   20 */ { "ADDROUT(", 0, NULL },
	/*   21 */ { "ADDROUT", 0, NULL },
	/*   22 */ { "CONTRL(", 0, NULL },
	/*   23 */ { "CONTRL", 0, NULL },
	/*   24 */ { "GCONTRL(", 0, NULL },
	/*   25 */ { "GCONTRL", 0, NULL },
	/*   26 */ { "GINTIN(", 0, NULL },
	/*   27 */ { "GINTIN", 0, NULL },
	/*   28 */ { "GINTOUT(", 0, NULL },
	/*   29 */ { "GINTOUT", 0, NULL },
	/*   30 */ { "HIMEM", 0, NULL },
	/*   31 */ { "BASEPAGE", 0, NULL },
	/*   32 */ { "INTIN(", 0, NULL },
	/*   33 */ { "INTIN", 0, NULL },
	/*   34 */ { "INTOUT(", 0, NULL },
	/*   35 */ { "INTOUT", 0, NULL },
	/*   36 */ { "PTSIN(", 0, NULL },
	/*   37 */ { "PTSIN", 0, NULL },
	/*   38 */ { "PTSOUT(", 0, NULL },
	/*   39 */ { "PTSOUT", 0, NULL },
	/*   40 */ { "VDIBASE", 0, NULL },
	/*   41 */ { "WINDTAB(", 0, NULL },
	/*   42 */ { "WINDTAB", 0, NULL },
	/*   43 */ { "PTST(", 0, NULL },
	/*   44 */ { "BTST(", 0, NULL },
	/*   45 */ { "BSET(", 0, NULL },
	/*   46 */ { "BCLR(", 0, NULL },
	/*   47 */ { "BCHG(", 0, NULL },
	/*   48 */ { "SHL&(", 0, NULL },
	/*   49 */ { "SHR&(", 0, NULL },
	/*   50 */ { "ROL&(", 0, NULL },
	/*   51 */ { "ROR&(", 0, NULL },
	/*   52 */ { "SHL|(", 0, NULL },
	/*   53 */ { "SHR|(", 0, NULL },
	/*   54 */ { "ROL|(", 0, NULL },
	/*   55 */ { "ROR|(", 0, NULL },
	/*   56 */ { "CRSLIN", 0, NULL },
	/*   57 */ { "CRSCOL", 0, NULL },
	/*   58 */ { "MOUSEX", 0, NULL },
	/*   59 */ { "MOUSEY", 0, NULL },
	/*   60 */ { "MOUSEK", 0, NULL },
	/*   61 */ { "GB", 0, NULL },
	/*   62 */ { "TIMER", 0, NULL },
	/*   63 */ { "PEEK(", 0, NULL },
	/*   64 */ { "DPEEK(", 0, NULL },
	/*   65 */ { "LPEEK(", 0, NULL },
	/*   66 */ { "LEN(", 0, NULL },
	/*   67 */ { "ASC(", 0, NULL },
	/*   68 */ { "INSTR(", 0, NULL },
	/*   69 */ { "INSTR(", 0, NULL },
	/*   70 */ { "INSTR(", 0, NULL },
	/*   71 */ { "FRE(", 0, NULL },
	/*   72 */ { "POINT(", 0, NULL },
	/*   73 */ { "VAL?(", 0, NULL },
	/*   74 */ { "INP(", 0, NULL },
	/*   75 */ { "CVI(", 0, NULL },
	/*   76 */ { "CVL(", 0, NULL },
	/*   77 */ { "INP(#", 0, NULL },
	/*   78 */ { "EOF(#", 0, NULL },
	/*   79 */ { "LOF(#", 0, NULL },
	/*   80 */ { "LOC(#", 0, NULL },
	/*   81 */ { "DIM?(", 0, NULL },
	/*   82 */ { "RAND(", 0, NULL },
	/*   83 */ { "DFREE(", 0, NULL },
	/*   84 */ { "EXIST(", 0, NULL },
	/*   85 */ { "BIOS(", 0, NULL },
	/*   86 */ { "XBIOS(", 0, NULL },
	/*   87 */ { "GEMDOS(", 0, NULL },
	/*   88 */ { "ERR", 0, NULL },
	/*   89 */ { "FATAL", 0, NULL },
	/*   90 */ { "POS(", 0, NULL },
	/*   91 */ { "LPOS(", 0, NULL },
	/*   92 */ { "MENU(", 0, NULL },
	/*   93 */ { "INP?(", 0, NULL },
	/*   94 */ { "OUT?(", 0, NULL },
	/*   95 */ { "EXEC(", 0, NULL },
	/*   96 */ { "SUCC(", 0, NULL },
	/*   97 */ { "PRED(", 0, NULL },
	/*   98 */ { "W_HAND(#", 0, NULL },
	/*   99 */ { "W_INDEX(#", 0, NULL },
	/*  100 */ { "SGN(", 0, NULL },
	/*  101 */ { "EVEN(", 0, NULL },
	/*  102 */ { "ODD(", 0, NULL },
	/*  103 */ { "CINT(", 0, NULL },
	/*  104 */ { "GDOS?", 0, NULL },
	/*  105 */ { "V_OPNWK(", 0, NULL },
	/*  106 */ { "V_CLSWK()", 0, NULL },
	/*  107 */ { "V_OPNVWK(", 0, NULL },
	/*  108 */ { "V_CLSVWK()", 0, NULL },
	/*  109 */ { "V_UPDWK()", 0, NULL },
	/*  110 */ { "VST_LOAD_FONTS(", 0, NULL },
	/*  111 */ { "VST_UNLOAD_FONTS(", 0, NULL },
	/*  112 */ { "{", 0, NULL },
	/*  113 */ { "LONG{", 0, NULL },
	/*  114 */ { "INT{", 0, NULL },
	/*  115 */ { "CARD{", 0, NULL },
	/*  116 */ { "BYTE{", 0, NULL },
	/*  117 */ { "C:", 0, NULL },
	/*  118 */ { "EVNT_KEYBD()", 0, NULL },
	/*  119 */ { "EVNT_BUTTON(", 0, NULL },
	/*  120 */ { "EVNT_MOUSE(", 0, NULL },
	/*  121 */ { "EVNT_MESAG(", 0, NULL },
	/*  122 */ { "EVNT_TIMER(", 0, NULL },
	/*  123 */ { "EVNT_MULTI(", 0, NULL },
	/*  124 */ { "RSRC_LOAD(", 0, NULL },
	/*  125 */ { "RSRC_FREE()", 0, NULL },
	/*  126 */ { "RSRC_GADDR(", 0, NULL },
	/*  127 */ { "RSRC_SADDR(", 0, NULL },
	/*  128 */ { "RSRC_OBFIX(", 0, NULL },
	/*  129 */ { "SHEL_READ(", 0, NULL },
	/*  130 */ { "SHEL_WRITE(", 0, NULL },
	/*  131 */ { "SHEL_GET(", 0, NULL },
	/*  132 */ { "SHEL_PUT(", 0, NULL },
	/*  133 */ { "SHEL_FIND(", 0, NULL },
	/*  134 */ { "SHEL_ENVRN(", 0, NULL },
	/*  135 */ { "APPL_INIT()", 0, NULL },
	/*  136 */ { "APPL_READ(", 0, NULL },
	/*  137 */ { "APPL_WRITE(", 0, NULL },
	/*  138 */ { "APPL_FIND(", 0, NULL },
	/*  139 */ { "APPL_TPLAY(", 0, NULL },
	/*  140 */ { "APPL_TRECORD(", 0, NULL },
	/*  141 */ { "APPL_EXIT()", 0, NULL },
	/*  142 */ { "EVNT_DCLICK(", 0, NULL },
	/*  143 */ { "MENU_BAR(", 0, NULL },
	/*  144 */ { "MENU_ICHECK(", 0, NULL },
	/*  145 */ { "MENU_IENABLE(", 0, NULL },
	/*  146 */ { "MENU_TNORMAL(", 0, NULL },
	/*  147 */ { "MENU_TEXT(", 0, NULL },
	/*  148 */ { "MENU_REGISTER(", 0, NULL },
	/*  149 */ { "OBJC_ADD(", 0, NULL },
	/*  150 */ { "OBJC_DELETE(", 0, NULL },
	/*  151 */ { "OBJC_DRAW(", 0, NULL },
	/*  152 */ { "OBJC_FIND(", 0, NULL },
	/*  153 */ { "OBJC_OFFSET(", 0, NULL },
	/*  154 */ { "OBJC_ORDER(", 0, NULL },
	/*  155 */ { "OBJC_EDIT(", 0, NULL },
	/*  156 */ { "OBJC_CHANGE(", 0, NULL },
	/*  157 */ { "FORM_DO(", 0, NULL },
	/*  158 */ { "FORM_DIAL(", 0, NULL },
	/*  159 */ { "FORM_ALERT(", 0, NULL },
	/*  160 */ { "FORM_ERROR(", 0, NULL },
	/*  161 */ { "FORM_CENTER(", 0, NULL },
	/*  162 */ { "GRAF_RUBBERBOX(", 0, NULL },
	/*  163 */ { "GRAF_DRAGBOX(", 0, NULL },
	/*  164 */ { "GRAF_MOVEBOX(", 0, NULL },
	/*  165 */ { "GRAF_GROWBOX(", 0, NULL },
	/*  166 */ { "GRAF_SHRINKBOX(", 0, NULL },
	/*  167 */ { "GRAF_WATCHBOX(", 0, NULL },
	/*  168 */ { "GRAF_SLIDEBOX(", 0, NULL },
	/*  169 */ { "GRAF_HANDLE(", 0, NULL },
	/*  170 */ { "GRAF_MOUSE(", 0, NULL },
	/*  171 */ { "GRAF_MKSTATE(", 0, NULL },
	/*  172 */ { "SCRP_READ(", 0, NULL },
	/*  173 */ { "SCRP_WRITE(", 0, NULL },
	/*  174 */ { "FSEL_INPUT(", 0, NULL },
	/*  175 */ { "WIND_CREATE(", 0, NULL },
	/*  176 */ { "WIND_OPEN(", 0, NULL },
	/*  177 */ { "WIND_CLOSE(", 0, NULL },
	/*  178 */ { "WIND_DELETE(", 0, NULL },
	/*  179 */ { "WIND_GET(", 0, NULL },
	/*  180 */ { "WIND_SET(", 0, NULL },
	/*  181 */ { "WIND_FIND(", 0, NULL },
	/*  182 */ { "WIND_UPDATE(", 0, NULL },
	/*  183 */ { "WIND_CALC(", 0, NULL },
	/*  184 */ { "MALLOC(", 0, NULL },
	/*  185 */ { "MFREE(", 0, NULL },
	/*  186 */ { "MSHRINK(", 0, NULL },
	/*  187 */ { "VARPTR(", 0, NULL },
	/*  188 */ { "ARRPTR(", 0, NULL },
	/*  189 */ { "*", 0, NULL },
	/*  190 */ { "TYPE(", 0, NULL },
	/*  191 */ { "OB_ADR(", 0, NULL },
	/*  192 */ { "OB_NEXT(", 0, NULL },
	/*  193 */ { "OB_HEAD(", 0, NULL },
	/*  194 */ { "OB_TAIL(", 0, NULL },
	/*  195 */ { "OB_TYPE(", 0, NULL },
	/*  196 */ { "OB_FLAGS(", 0, NULL },
	/*  197 */ { "OB_STATE(", 0, NULL },
	/*  198 */ { "OB_SPEC(", 0, NULL },
	/*  199 */ { "OB_X(", 0, NULL },
	/*  200 */ { "OB_Y(", 0, NULL },
	/*  201 */ { "OB_W(", 0, NULL },
	/*  202 */ { "OB_H(", 0, NULL },
	/*  203 */ { "V:", 0, NULL },
	/*  204 */ { "FORM_KEYBD(", 0, NULL },
	/*  205 */ { "FORM_BUTTON(", 0, NULL },
	/*  206 */ { "STICK(", 0, NULL },
	/*  207 */ { "STRIG(", 0, NULL },
	/*  208 */ { "WORK_OUT(", 0, NULL },
	/*  209 */ { "RINSTR(", 0, NULL },
	/*  210 */ { "RINSTR(", 0, NULL },
	/*  211 */ { "RINSTR(", 0, NULL },
	/*  212 */ { "L~A", 0, NULL },
	/*  213 */ { "V~H", 0, NULL },
	/*  214 */ { "V_CLRWK()", 0, NULL },
	/*  215 */ { "VQT_NAME(", 0, NULL },
	/*  216 */ { "VQT_EXTENT(", 0, NULL },
	/*  217 */ { "RC_INTERSECT(", 0, NULL },
	/*  218 */ { "FSFIRST(", 0, NULL },
	/*  219 */ { "FSNEXT()", 0, NULL },
	/*  220 */ { "FSETDTA(", 0, NULL },
	/*  221 */ { "FGETDTA()", 0, NULL },
	/*  222 */ { "WORD{", 0, NULL },
	/*  223 */ { "INP&(", 0, NULL },
	/*  224 */ { "INP&(#", 0, NULL },
	/*  225 */ { "INP%(", 0, NULL },
	/*  226 */ { "INP%(#", 0, NULL },
	/*  227 */ { "_DATA", 0, NULL },
	/*  228 */ { "PADX(", 0, NULL },
	/*  229 */ { "PADY(", 0, NULL },
	/*  230 */ { "PADT(", 0, NULL },
	/*  231 */ { "LPENX", 0, NULL },
	/*  232 */ { "LPENY", 0, NULL },
	/*  233 */ { "STE?", 0, NULL },
	/*  234 */ { "TT?", 0, NULL },
	/*  235 */ { "SCALE(", 0, NULL },
	/*  236 */ { "_X", 0, NULL },
	/*  237 */ { "_Y", 0, NULL },
	/*  238 */ { "_C", 0, NULL },
	/*  239 */ { "GETSIZE(", 0, NULL },
	/*
	 * below are new in 3.70 (GBE)
	 */
	/*  240 */ { "GETSIZE(", 0, NULL },
	/*  241 */ { "_B", 0, NULL },
	/*  242 */ { "_AES", 0, NULL },
	/*  243 */ { "_TOS", 0, NULL },
	/*  244 */ { "A~I", 0, NULL },
	/*  245 */ { "CPU020()", 0, NULL },
	/*  246 */ { "FPU882()", 0, NULL },
	/*  247 */ { "GMOUSEK", 0, NULL },
	/*  248 */ { "GMOUSEX", 0, NULL },
	/*  249 */ { "GMOUSEY", 0, NULL },
	/*  250 */ { "GLOBAL(", 0, NULL },
	/*  251 */ { "GLOBAL", 0, NULL },
	/*  252 */ { "GETCOOKIE(", 0, NULL },
	/*  253 */ { "VS_COLOR(", 0, NULL },
	/*  254 */ { "EJP?", TARGET_VER370, "HARDWARE?" },
	/*  255 */ { "_P", 0, NULL }
};

/* Secondary function text */
struct nameversion const gfasft_209[256] = {
	/*    0 */ { "VQ_COLOR(", 0, NULL },
	/*    1 */ { "_MINT", 0, NULL },
	/*    2 */ { "_SW", 0, NULL },
	/*    3 */ { "_SH", 0, NULL },
	/*    4 */ { "VRO_CPYFM(", 0, NULL },
	/*    5 */ { "VRT_CPYFM(", 0, NULL },
	/*    6 */ { "V_OPNBM(", 0, NULL },
	/*    7 */ { "V_CLSBM(", 0, NULL },
	/*    8 */ { "DOSOUND(", 0, NULL },
	/*    9 */ { "MXALLOC(", 0, NULL },
	/*   10 */ { "KBSHIFT(", 0, NULL },
	/*   11 */ { "DGETDRV(", 0, NULL },
	/*   12 */ { "SYSCONF(", 0, NULL },
	/*   13 */ { "SSYSTEM(", 0, NULL },
	/*   14 */ { "VQ_VGDOS()", 0, NULL },
	/*   15 */ { "VST_ALIGNMENT(", 0, NULL },
	/*   16 */ { "PEXEC(", 0, NULL },
	/*   17 */ { "PDOMAIN(", 0, NULL },
	/*   18 */ { "_GEMDOS", 0, NULL },
	/*   19 */ { "TGETDATE()", 0, NULL },
	/*   20 */ { "TGETTIME()", 0, NULL },
	/*   21 */ { "VST_POINT(", 0, NULL },
	/*   22 */ { "APPL_GETINFO(", 0, NULL },
	/*   23 */ { "APPL_CONTROL(", 0, NULL },
	/*   24 */ { "OBJC_SYSVAR(", 0, NULL },
	/*   25 */ { "FSEL_EXINPUT(", TARGET_VER371, NULL }, /* parameter change in 3.72 */
	/*   26 */ { "KEYTBL(", 0, NULL },
	/*   27 */ { "LOCKSND()", 0, NULL },
	/*   28 */ { "UNLOCKSND()", 0, NULL },
	/*   29 */ { "SOUNDCMD(", 0, NULL },
	/*   30 */ { "SETBUFFER(", 0, NULL },
	/*   31 */ { "SETMODE(", 0, NULL },
	/*   32 */ { "SETTRACKS(", 0, NULL },
	/*   33 */ { "SETMONTRACKS(", 0, NULL },
	/*   34 */ { "SETINTERRUPT(", 0, NULL },
	/*   35 */ { "BUFFOPER(", 0, NULL },
	/*   36 */ { "DSPTRISTATE(", 0, NULL },
	/*   37 */ { "GPIO(", 0, NULL },
	/*   38 */ { "DEVCONNECT(", 0, NULL },
	/*   39 */ { "SNDSTATUS(", 0, NULL },
	/*   40 */ { "BUFFPTR(", 0, NULL },
	/*   41 */ { "VQT_WIDTH(", 0, NULL },
	/*   42 */ { "VQT_FONTINFO(", 0, NULL },
	/*   43 */ { "FOPEN(", 0, NULL },
	/*   44 */ { "FCLOSE(", 0, NULL },
	/*   45 */ { "FREAD(", 0, NULL },
	/*   46 */ { "FWRITE(", 0, NULL },
	/*   47 */ { "FCREATE(", 0, NULL },
	/*   48 */ { "FSEEK(", 0, NULL },
	/*   49 */ { "FDELETE(", 0, NULL },
	/*   50 */ { "SUPER(", 0, NULL },
	/*   51 */ { "F_BGET(", 0, NULL },
	/*   52 */ { "F_BPUT(", 0, NULL },
	/*   53 */ { "F_EOF(", 0, NULL },
	/*   54 */ { "F_LOC(", 0, NULL },
	/*   55 */ { "F_LOF(", 0, NULL },
	/*   56 */ { "DTA", 0, NULL },
	/*   57 */ { "_CPU", 0, NULL },
	/*   58 */ { "SND?", 0, NULL },
	/*   59 */ { "F_OPEN(", 0, NULL },
	/*   60 */ { "F_OUT(", 0, NULL },
	/*   61 */ { "F_OUT&(", 0, NULL },
	/*   62 */ { "F_OUT%(", 0, NULL },
	/*   63 */ { "F_INP(", 0, NULL },
	/*   64 */ { "F_INP&(", 0, NULL },
	/*   65 */ { "F_INP%(", 0, NULL },
	/*   66 */ { "ALLOC(", TARGET_VER370, "M_ALLOC(" },
	/*   67 */ { "F_LINE_OUTPUT(", 0, NULL },
	/*   68 */ { "F_LINE_INPUT(", 0, NULL },
	/*   69 */ { "F_BLOAD(", 0, NULL },
	/*   70 */ { "F_BSAVE(", 0, NULL },
	/*   71 */ { "F_SEEK(", 0, NULL },
	/*   72 */ { "F_RELSEEK(", 0, NULL },
	/*   73 */ { "V_GET_PIXEL(", 0, NULL },
	/*   74 */ { "GSTICK()", 0, NULL },
	/*   75 */ { "GSTRIG()", 0, NULL },
	/*   76 */ { "BLITMODE(", 0, NULL },
	/*   77 */ { "CACHECTRL(", 0, NULL },
	/*   78 */ { "CT60_CACHE(", 0, NULL },
	/*   79 */ { "CT60_FLUSH_CACHE()", 0, NULL },
	/*   80 */ { "CT60_READ_CORE_TEMPERATURE(", 0, NULL },
	/*   81 */ { "CT60_RW_PARAMETER(", 0, NULL },
	/*   82 */ { "CT60_VMALLOC(", 0, NULL },
	/*   83 */ { "FGETCHAR(", 0, NULL },
	/*   84 */ { "FPUTCHAR(", 0, NULL },
	/*   85 */ { "WIND_NEW()", 0, NULL },
	/*   86 */ { "APPL_YIELD()", 0, NULL },
	/*   87 */ { "V_SHOW_C()", 0, NULL },
	/*   88 */ { "V_HIDE_C()", 0, NULL },
	/*   89 */ { "F_INPUT(", 0, NULL },
	/*   90 */ { "F_OUTPUT(", 0, NULL },
	/*   91 */ { "PREAD(", TARGET_VER370, "F_PREAD(" },
	/*   92 */ { "PWRITE(", TARGET_VER370, "F_PWRITE(" },
	/*   93 */ { "JOYPAD(", 0, NULL },
	/*   94 */ { "UNPACK(", 0, NULL },
	/*   95 */ { "BINSTR(", 0, NULL },
	/*   96 */ { "BFIND(", 0, NULL },
	/*   97 */ { "BCOUNT(", 0, NULL },
	/*   98 */ { "ISASCII(", 0, "BREPLACE(" },
	/*   99 */ { "BSWAP&(", 0, NULL },
	/*  100 */ { "BSWAP(", 0, NULL },
	/*  101 */ { "CCONWS(", 0, NULL },
	/*  102 */ { "DSETDRV(", 0, NULL },
	/*  103 */ { "DCREATE(", 0, NULL },
	/*  104 */ { "DDELETE(", 0, NULL },
	/*  105 */ { "TSETDATE(", 0, NULL },
	/*  106 */ { "TSETTIME(", 0, NULL },
	/*  107 */ { "DGETPATH(", 0, NULL },
	/*  108 */ { "DSETPATH(", 0, NULL },
	/*  109 */ { "GETTIME()", 0, NULL },
	/*  110 */ { "SETTIME(", 0, NULL },
	/*  111 */ { "FRENAME(", 0, NULL },
	/*  112 */ { "DRVMAP()", 0, NULL },
	/*  113 */ { "FDATIME(", 0, NULL },
	/*  114 */ { "DPATHCONF(", 0, NULL },
	/*  115 */ { "FATTRIB(", 0, NULL },
	/*  116 */ { "DFREE%(", TARGET_VER370, "D_FREE(" },
	/*  117 */ { "RANDOM%()", 0, NULL },
	/*  118 */ { "GETREZ()", 0, NULL },
	/*  119 */ { "LOGBASE()", 0, NULL },
	/*  120 */ { "PHYSBASE()", 0, NULL },
	/*  121 */ { "V_CURTEXT(", 0, NULL },
	/*  122 */ { "VST_COLOR(", 0, NULL },
	/*  123 */ { "VST_EFFECTS(", 0, NULL },
	/*  124 */ { "VST_ROTATION(", 0, NULL },
	/*  125 */ { "VST_HEIGHT(", 0, NULL },
	/*  126 */ { "VST_FONT(", 0, NULL },
	/*  127 */ { "VQF_ATTRIBUTES()", 0, NULL },
	/*  128 */ { "VQL_ATTRIBUTES()", 0, NULL },
	/*  129 */ { "VQM_ATTRIBUTES()", 0, NULL },
	/*  130 */ { "VQT_ATTRIBUTES()", 0, NULL },
	/*  131 */ { "VR_TRNFM(", 0, NULL },
	/*  132 */ { "VQ_EXTND(", 0, NULL },
	/*  133 */ { "VQ_SCRNINFO(", 0, NULL },
	/*  134 */ { "V_BEZ(", 0, NULL },
	/*  135 */ { "V_BEZ_QUAL(", 0, NULL },
	/*  136 */ { "VQ_MOUSE(", 0, NULL },
	/*  137 */ { "VSL_TYPE(", 0, NULL },
	/*  138 */ { "VSL_WIDTH(", 0, NULL },
	/*  139 */ { "VSL_ENDS(", 0, NULL },
	/*  140 */ { "VSL_UDSTY(", 0, NULL },
	/*  141 */ { "VSL_COLOR(", 0, NULL },
	/*  142 */ { "VSM_COLOR(", 0, NULL },
	/*  143 */ { "VSM_HEIGHT(", 0, NULL },
	/*  144 */ { "VSM_TYPE(", 0, NULL },
	/*  145 */ { "VSWR_MODE(", 0, NULL },
	/*  146 */ { "VSF_COLOR(", 0, NULL },
	/*  147 */ { "VSF_INTERIOR(", 0, NULL },
	/*  148 */ { "VSF_PERIMETER(", 0, NULL },
	/*  149 */ { "VSF_STYLE(", 0, NULL },
	/*  150 */ { "VSF_UDPAT(", 0, NULL },
	/*  151 */ { "BCONIN(", 0, NULL },
	/*  152 */ { "BCONOUT(", 0, NULL },
	/*  153 */ { "BCOSTAT(", 0, NULL },
	/*  154 */ { "BCONSTAT(", 0, NULL },
	/*  155 */ { "SETEXC(", 0, NULL },
	/*  156 */ { "TICKCAL(", 0, NULL },
	/*  157 */ { "MEDIACH(", 0, NULL },
	/*  158 */ { "GETBPB(", 0, NULL },
	/*  159 */ { "RWABS(", 0, NULL },
	/*  160 */ { "FORM_POPUP(", 0, NULL },
	/*  161 */ { "MENU_ATTACH(", 0, NULL },
	/*  162 */ { "MENU_ISTART(", 0, NULL },
	/*  163 */ { "MENU_POPUP(", 0, NULL },
	/*  164 */ { "MENU_SETTINGS(", 0, NULL },
	/*  165 */ { "OBJC_XFIND(", 0, NULL },
	/*  166 */ { "RSRC_RCFIX(", 0, NULL },
	/*  167 */ { "APPL_SEARCH(", 0, NULL },
	/*  168 */ { "GRAF_MULTIRUBBER(", 0, NULL },
	/*  169 */ { "VS_CLIP(", 0, NULL },
	/*  170 */ { "VSC_FORM()", 0, NULL },
	/*  171 */ { "FDUP(", 0, NULL },
	/*  172 */ { "FFORCE(", 0, NULL },
	/*  173 */ { "FLOCK(", 0, NULL },
	/*  174 */ { "SYIELD()", 0, NULL },
	/*  175 */ { "FINSTAT(", 0, NULL },
	/*  176 */ { "FOUTSTAT(", 0, NULL },
	/*  177 */ { "FCNTL(", 0, NULL },
	/*  178 */ { "FSELECT(", 0, NULL },
	/*  179 */ { "SHUTDOWN(", 0, NULL },
	/*  180 */ { "PSYSCTL(", 0, NULL },
	/*  181 */ { "V_BAR(", 0, NULL },
	/*  182 */ { "V_RBOX(", 0, NULL },
	/*  183 */ { "V_RFBOX(", 0, NULL },
	/*  184 */ { "VR_RECFL(", 0, NULL },
	/*  185 */ { "V_ARC(", 0, NULL },
	/*  186 */ { "V_CIRCLE(", 0, NULL },
	/*  187 */ { "V_ELLARC(", 0, NULL },
	/*  188 */ { "V_ELLPIE(", 0, NULL },
	/*  189 */ { "V_ELLIPSE(", 0, NULL },
	/*  190 */ { "V_PIESLICE(", 0, NULL },
	/*  191 */ { "V_CONTOURFILL(", 0, NULL },
	/*  192 */ { "V_GTEXT(", 0, NULL },
	/*  193 */ { "V_PLINE(", 0, NULL },
	/*  194 */ { "V_PMARKER(", 0, NULL },
	/*  195 */ { "V_FILLAREA(", 0, NULL },
	/*  196 */ { "V_JUSTIFIED(", 0, NULL },
	/*  197 */ { "VQ_KEY_S(", 0, NULL },
	/*  198 */ { "V_BEZ_FILL(", 0, NULL },
	/*  199 */ { "SETCOLOR(", 0, NULL },
	/*  200 */ { "SETSCREEN(", 0, NULL },
	/*  201 */ { "SETPALETTE(", 0, NULL },
	/*  202 */ { "SUPEXEC(", 0, NULL },
	/*  203 */ { "KBRATE(", 0, NULL },
	/*  204 */ { "RSCONF(", 0, NULL },
	/*  205 */ { "CURSCONF(", 0, NULL },
	/*  206 */ { "BCONMAP(", 0, NULL },
	/*  207 */ { "KBDVBASE()", 0, NULL },
	/*  208 */ { "NVMACCESS(", 0, NULL },
	/*  209 */ { "IOREC(", 0, NULL },
	/*  210 */ { "IKBDWS(", 0, NULL },
	/*  211 */ { "MIDIWS(", 0, NULL },
	/*  212 */ { "GIACCESS(", 0, NULL },
	/*  213 */ { "FLOPRD(", 0, NULL },
	/*  214 */ { "FLOPWR(", 0, NULL },
	/*  215 */ { "FLOPFMT(", 0, NULL },
	/*  216 */ { "FLOPVER(", 0, NULL },
	/*  217 */ { "FLOPRATE(", 0, NULL },
	/*  218 */ { "DMAREAD(", 0, NULL },
	/*  219 */ { "DMAWRITE(", 0, NULL },
	/*  220 */ { "ONGIBIT(", 0, NULL },
	/*  221 */ { "OFFGIBIT(", 0, NULL },
	/*  222 */ { "BIOSKEYS()", 0, NULL },
	/*  223 */ { "SETPRT(", 0, NULL },
	/*  224 */ { "JDISINT(", 0, NULL },
	/*  225 */ { "JENABINT(", 0, NULL },
	/*  226 */ { "PROTOBT(", 0, NULL },
	/*  227 */ { "WAKETIME(", 0, NULL },
	/*  228 */ { "PRTBLK(", 0, NULL },
	/*  229 */ { "VGETMONITOR()", 0, NULL },
	/*  230 */ { "VGETSIZE(", 0, NULL },
	/*  231 */ { "VSETMODE(", 0, NULL },
	/*  232 */ { "VCHECKMODE(", 0, NULL },
	/*  233 */ { "VSETSCREEN(", 0, NULL },
	/*  234 */ { "VGETRGB(", 0, NULL },
	/*  235 */ { "VSETRGB(", 0, NULL },
	/*  236 */ { "VSETMASK(", 0, NULL },
	/*  237 */ { "VSETSYNC(", 0, NULL },
	/*  238 */ { "EGETSHIFT()", 0, NULL },
	/*  239 */ { "ESETSHIFT(", 0, NULL },
	/*  240 */ { "ESETBANK(", 0, NULL },
	/*  241 */ { "ESETCOLOR(", 0, NULL },
	/*  242 */ { "ESETGRAY(", 0, NULL },
	/*  243 */ { "ESETSMEAR(", 0, NULL },
	/*  244 */ { "EGETPALETTE(", 0, NULL },
	/*  245 */ { "ESETPALETTE(", 0, NULL },
	/*  246 */ { "CRC16(", 0, NULL },
	/*  247 */ { "CRC32(", 0, NULL },
	/*  248 */ { "WF_NAME(", 0, NULL },
	/*  249 */ { "WF_INFO(", 0, NULL },
	/*  250 */ { "ALERT(", 0, NULL },
	/*  251 */ { "LRWABS(", 0, NULL },
	/*  252 */ { "AP_SEND(", 0, NULL },
	/*  253 */ { "SALERT(", 0, NULL },
	/*  254 */ { "FCHMOD(", 0, NULL },
	/*  255 */ { "PTERMRES(", 0, NULL }
};

/* Secondary function text */
struct nameversion const gfasft_210[256] = {
	/*    0 */ { "SUBPTR(", 0, NULL },
	/*    1 */ { "S:", 0, NULL },
	/*    2 */ { "ERL", 0, NULL },
	/*    3 */ { "SYSTAB(", TARGET_VER370, NULL }, /* parameter change in 3.71 */
	/*    4 */ { "SYSTAB", 0, NULL },
	/*    5 */ { "FREEFILE()", TARGET_VER370, "CFREE(" },
	/*    6 */ { "MENU.TEXT(", 0, NULL },
	/*    7 */ { "SHEL.WRITE(", 0, NULL },
	/*    8 */ { "SYSTAB?", 0, NULL },
	/*    9 */ { "MROUND(", TARGET_VER370, "ALIGN(" },
	/*   10 */ { "BSWAP3(", 0, NULL },
	/*   11 */ { "MIRROR|(", 0, NULL },
	/*   12 */ { "MIRROR&(", 0, NULL },
	/*   13 */ { "MIRROR(", 0, NULL },
	/*   14 */ { "MIRROR3(", 0, NULL },
	/*   15 */ { "PCR?", 0, NULL },
	/*   16 */ { "CONTERM(", 0, NULL },
	/*   17 */ { "_PCR", 0, NULL },
	/*   18 */ { "LOADMEM(", TARGET_VER370, "F_LOAD(" },
	/*   19 */ { "OB.STATE(", 0, NULL },
	/*   20 */ { "OB.FLAGS(", 0, NULL },
	/*
	 * below are new in 3.71
	 */
	/*   21 */ { "SETSTR(", TARGET_VER370, "OB_SELECTED(" },
	/*   22 */ { "INPUTBOX(", TARGET_VER370, "OB_CROSSED(" },
	/*   23 */ { "BCOUNT&(", TARGET_VER370, "OB_CHECKED(" },
	/*   24 */ { "BCOUNT(%", TARGET_VER370, "OB_DISABLED(" },
	/*   25 */ { "C_VDI(#", TARGET_VER370, "OB_SELECTABLE(" },
	/*   26 */ { "C_XBIOS(#", TARGET_VER370, "OB_DEFAULT(" },
	/*   27 */ { "NETWORK?", TARGET_VER370, "OB_EXIT(" },
	/*   28 */ { "SBYTE(", TARGET_VER370, "OB_EDITABLE(" },
	/*   29 */ { "SBYTE{", TARGET_VER370, "OB_RBUTTON(" },
	/*   30 */ { "INDEXCOUNT(", TARGET_VER370, "OB_LASTOB(" },
	/*   31 */ { "CALLOC(", TARGET_VER370, "OB_TOUCHEXIT(" },
	/*   32 */ { "ARRAYSIZE(", TARGET_VER370, "OB_HIDETREE(" },
	/*   33 */ { "OB_RADIO(", TARGET_VER370, "OB.RBUTTON(" },
	/*   34 */ { "CHECKSUM(", 0, NULL },
	/*   35 */ { "FSOCKET(", 0, NULL },
	/*   36 */ { "FSOCKETPAIR(", 0, NULL },
	/*   37 */ { "FACCEPT(", 0, NULL },
	/*   38 */ { "FCONNECT(", 0, NULL },
	/*   39 */ { "FBIND(", 0, NULL },
	/*   40 */ { "FRECVMSG(", 0, NULL },
	/*   41 */ { "FSENDMSG(", 0, NULL },
	/*   42 */ { "FLISTEN(", 0, NULL },
	/*   43 */ { "FRECVFROM(", 0, NULL },
	/*   44 */ { "FSENDTO(", 0, NULL },
	/*   45 */ { "FSETSOCKOPT(", 0, NULL },
	/*   46 */ { "FGETSOCKOPT(", 0, NULL },
	/*   47 */ { "FGETPEERNAME(", 0, NULL },
	/*   48 */ { "FGETSOCKNAME(", 0, NULL },
	/*   49 */ { "FSHUTDOWN(", 0, NULL },
	/*   50 */ { "LDG_INIT()", 0, NULL },
	/*   51 */ { "LDG_OPEN(", 0, NULL },
	/*   52 */ { "LDG_FIND(", 0, NULL },
	/*   53 */ { "LDG_CLOSE(", 0, NULL },
	/*   54 */ { "LDG_LIBPATH(", 0, NULL },
	/*   55 */ { "LDG_ERROR()", 0, NULL },
	/*   56 */ { "STIK_INIT(", 0, NULL },
	/*   57 */ { "STIK_INIT(", 0, NULL },
	/*   58 */ { "STIK_KRFREE(", 0, NULL },
	/*   59 */ { "STIK_KRGETFREE(", 0, NULL },
	/*   60 */ { "STIK_KRGETFREE(", 0, NULL },
	/*   61 */ { "STIK_GET_ERR_TEXT(", 0, NULL },
	/*   62 */ { "STIK_GETVSTR(", 0, NULL },
	/*   63 */ { "STIK_GETVSTR(", 0, NULL },
	/*   64 */ { "STIK_TCP_OPEN(", 0, NULL },
	/*   65 */ { "STIK_TCP_CLOSE(", 0, NULL },
	/*   66 */ { "STIK_TCP_SEND(", 0, NULL },
	/*   67 */ { "STIK_TCP_WAIT_STATE(", 0, NULL },
	/*   68 */ { "STIK_TCP_WAIT_STATE(", 0, NULL },
	/*   69 */ { "STIK_TCP_WAIT_STATE(", 0, NULL },
	/*   70 */ { "STIK_TCP_WAIT_STATE(", 0, NULL },
	/*   71 */ { "STIK_TCP_WAIT_STATE(", 0, NULL },
	/*   72 */ { "STIK_CNKICK(", 0, NULL },
	/*   73 */ { "STIK_CNBYTE_COUNT(", 0, NULL },
	/*   74 */ { "STIK_CNGET_CHAR(", 0, NULL },
	/*   75 */ { NULL, 0, NULL }, /* unused */
	/*   76 */ { "STIK_CNGET_BLOCK(", 0, NULL },
	/*   77 */ { NULL, 0, NULL }, /* unused */
	/*   78 */ { "STIK_RESOLVE(", 0, NULL },
	/*   79 */ { NULL, 0, NULL }, /* unused */
	/*   80 */ { NULL, 0, NULL }, /* unused */
	/*   81 */ { NULL, 0, NULL }, /* unused */
	/*   82 */ { NULL, 0, NULL }, /* unused */
	/*   83 */ { "STIK_CNGETINFO(", 0, NULL },
	/*   84 */ { NULL, 0, NULL }, /* unused */
	/*   85 */ { NULL, 0, NULL }, /* unused */
	/*   86 */ { NULL, 0, NULL }, /* unused */
	/*   87 */ { NULL, 0, NULL }, /* unused */
	/*   88 */ { NULL, 0, NULL }, /* unused */
	/*   89 */ { "FONT_INIT()", 0, NULL },
	/*   90 */ { "FONT_SELECT(", 0, NULL },
	/*   91 */ { "WEEKDAY(", TARGET_VER370, NULL }, /* parameter change in 3.71 */
	/*   92 */ { NULL, 0, NULL }, /* unused */
	/*   93 */ { "AV_INIT()", 0, NULL },
	/*   94 */ { "AV_PROTOKOLL(", 0, NULL },
	/*   95 */ { NULL, 0, NULL }, /* unused */
	/*   96 */ { NULL, 0, NULL }, /* unused */
	/*   97 */ { "AV_SENDKEY(", 0, NULL },
	/*   98 */ { NULL, 0, NULL }, /* unused */
	/*   99 */ { NULL, 0, NULL }, /* unused */
	/*  100 */ { "AV_OPENWIND(", 0, NULL },
	/*  101 */ { "AV_STARTPROG(", 0, NULL },
	/*  102 */ { "AV_ACCWINDOPEN(", 0, NULL },
	/*  103 */ { "AV_ACCWINDCLOSED(", 0, NULL },
	/*  104 */ { NULL, 0, NULL }, /* unused */
	/*  105 */ { "AV_PATH_UPDATE(", 0, NULL },
	/*  106 */ { "AV_WHAT_IZIT(", 0, NULL },
	/*  107 */ { "AV_WHAT_IZIT(", 0, NULL },
	/*  108 */ { "AV_EXIT()", 0, NULL },
	/*  109 */ { "AV_STARTED(", 0, NULL },
	/*  110 */ { "AV_XWIND(", 0, NULL },
	/*  111 */ { NULL, 0, NULL }, /* unused */
	/*  112 */ { "AV_FILEINFO(", 0, NULL },
	/*  113 */ { "AV_COPYFILE(", 0, NULL },
	/*  114 */ { "AV_DELFILE(", 0, NULL },
	/*  115 */ { "VA_START(", 0, NULL },
	/*  116 */ { "MAKE&(", 0, NULL },
	/*  117 */ { "MAKE%(", TARGET_VER370, "WORD2LONG(" },
	/*  118 */ { "MAKE|(", TARGET_VER370, "NYBLE2BYTE(" },
	/*  119 */ { "F_CLOSE(", 0, NULL },
	/*  120 */ { "APPL.FIND(", 0, NULL },
	/*  121 */ { "ENVIRON", 0, NULL },
	/*  122 */ { "SLBOPEN(", 0, NULL },
	/*  123 */ { "SLBCLOSE(", 0, NULL },
	/*  124 */ { "F_ENDSEEK(", 0, NULL },
	/*  125 */ { "POPUP(", 0, NULL },
	/*  126 */ { "FPOLL(", 0, NULL },
	/*  127 */ { "FILELEN(", 0, NULL },
	/*  128 */ { "PGETPID()", 0, NULL },
	/*  129 */ { "P~I", TARGET_VER372, "_PID" },
	/*  130 */ { "SWAP|(", 0, NULL },
	/*  131 */ { "BROUND(", 0, NULL },
	/*  132 */ { "BCOMPARE(", 0, NULL },
	/*  133 */ { "SCRDMP()", 0, NULL },
	/*  134 */ { "FPIPE(", 0, NULL },
	/*  135 */ { "PRUSAGE(", 0, NULL },
	/*  136 */ { "SUPTIME(", 0, NULL },
	/*  137 */ { "FMIDIPIPE(", 0, NULL },
	/*  138 */ { "CONSTRAIN(", 0, NULL },
	/*  139 */ { "NYBLE(", 0, NULL },
	/*  140 */ { "MAKE(", 0, NULL },
	/*  141 */ { "MEMBTST|(", 0, NULL },
	/*  142 */ { "MEMBTST&(", 0, NULL },
	/*  143 */ { "MEMBTST%(", 0, NULL },
	/*  144 */ { "FCHOWN(", 0, NULL },
	/*  145 */ { "PNICE(", 0, NULL },
	/*  146 */ { "PRENICE(", 0, NULL },
	/*  147 */ { "PGETPPID()", 0, NULL },
	/*  148 */ { "DLOCK(", 0, NULL },
	/*  149 */ { "PGETPRIORITY(", 0, NULL },
	/*  150 */ { "PSETPRIORITY(", 0, NULL },
	/*  151 */ { "VSYNC()", 0, NULL },
	/*  152 */ { "FILECOPY(", 0, NULL },
	/*  153 */ { "ISBLANK(", 0, NULL },
	/*  154 */ { "ISCNTRL(", 0, NULL },
	/*  155 */ { "ISPRINT(", 0, NULL },
	/*  156 */ { "ISSPACE(", 0, NULL },
	/*  157 */ { "RGB(", 0, NULL },
	/*  158 */ { "RGB256(", TARGET_VER370, NULL }, /* parameter change in 3.71 */
	/*  159 */ { "RGB1000(", TARGET_VER370, NULL }, /* parameter change in 3.71 */
	/*  160 */ { "WF_TOP(", 0, NULL },
	/*  161 */ { "PUSRVAL(", 0, NULL },
	/*  162 */ { "PSETLIMIT(", 0, NULL },
	/*  163 */ { "DWRITELABEL(", 0, NULL },
	/*  164 */ { "DREADLABEL(", 0, NULL },
	/*  165 */ { "DGETCWD(", 0, NULL },
	/*  166 */ { "DCLOSEDIR(", 0, NULL },
	/*  167 */ { "DREWINDDIR(", 0, NULL },
	/*  168 */ { "DOPENDIR(", 0, NULL },
	/*  169 */ { "DREADDIR(", 0, NULL },
	/*  170 */ { "DXREADDIR(", 0, NULL },
	/*  171 */ { "FXATTR(", 0, NULL },
	/*  172 */ { "MACCESS(", 0, NULL },
	/*  173 */ { "MVALIDATE(", 0, NULL },
	/*  174 */ { "BFIND&", 0, NULL },
	/*  175 */ { "BFIND%", 0, NULL },
	/*  176 */ { "FEXIST(", 0, NULL },
	/*  177 */ { "SPLIT(", 0, NULL },
	/*  178 */ { "JOIN(", 0, NULL },
	/*  179 */ { "GETSTR(", 0, NULL },
	/*  180 */ { "BCOMPARE&(", 0, NULL },
	/*  181 */ { "BCOMPARE%(", 0, NULL },
	/*  182 */ { "WIND_SGET(", 0, NULL },
	/*  183 */ { "SHEL_HELP(", 0, NULL },
	/*  184 */ { "SHEL_WDEF(", 0, NULL },
	/*  185 */ { "SHEL_RDEF(", 0, NULL },
	/*  186 */ { "PKILL(", 0, NULL },
	/*  187 */ { "DHST_INIT()", 0, NULL },
	/*  188 */ { "DHST_ADD(", 0, NULL },
	/*  189 */ { NULL, 0, NULL }, /* unused */
	/*  190 */ { "PSIGNAL(", 0, NULL },
	/*  191 */ { "LOADSTR(", 0, NULL },
	/*  192 */ { "FILES(", 0, NULL },
	/*  193 */ { "MSG(", 0, NULL },
	/*  194 */ { "MSG", 0, NULL },
	/*  195 */ { "HINYBLE(", 0, NULL },
	/*  196 */ { "HIBYTE(", 0, NULL },
	/*  197 */ { "HIWORD(", 0, NULL },
	/*  198 */ { "HICARD(", 0, NULL },
	/*  199 */ { NULL, 0, NULL }, /* unused */
	/*  200 */ { NULL, 0, NULL }, /* unused */
	/*  201 */ { NULL, 0, NULL }, /* unused */
	/*  202 */ { NULL, 0, NULL }, /* unused */
	/*  203 */ { "SETCOOKIE(", 0, NULL },
	/*  204 */ { "DELCOOKIE(", 0, NULL },
	/*  205 */ { "FORM.KEYBD(", 0, NULL },
	/*  206 */ { "V_CTAB_VDI2IDX(", TARGET_VER371, "BFOBSPEC(" },
	/*  207 */ { "V_CTAB_IDX2VALUE(", TARGET_VER371, "BITBLK(" },
	/*  208 */ { "VQ_DFLT_CTAB(", TARGET_VER371, "TEDINFO(" },
	/*  209 */ { "V_COLOR2NEAREST(", TARGET_VER371, "ICONBLK(" },
	/*  210 */ { "V_VALUE2COLOR(", TARGET_VER371, "CICONBLK(" },
	/*  211 */ { "V_COLOR2VALUE(", TARGET_VER371, "USERBLK(" },
	/*  212 */ { "NEAREST_RGB(", 0, NULL },
	/*  213 */ { "GRAYSCALE(", 0, NULL },
	/*  214 */ { "DATE(", 0, NULL },
	/*  215 */ { "YEAR(", 0, NULL },
	/*  216 */ { "MONTH(", 0, NULL },
	/*  217 */ { "DAY(", 0, NULL },
	/*  218 */ { "HOUR24(", 0, NULL },
	/*  219 */ { "MINUTE(", 0, NULL },
	/*  220 */ { "SECOND(", 0, NULL },
	/*  221 */ { "TIME(", 0, NULL },
	/*  222 */ { "_FPU", 0, NULL },
	/*  223 */ { "_MCH", 0, NULL },
	/*  224 */ { "_CPUID", 0, NULL },
	/*  225 */ { "COMPILED?", 0, NULL },
	/*  226 */ { "M68K?", 0, NULL },
	/*  227 */ { "_VERSION", 0, NULL },
	/*  228 */ { "_CW", 0, NULL },
	/*  229 */ { "_CH", 0, NULL },
	/*  230 */ { "_0", 0, NULL },
	/*  231 */ { "_1", 0, NULL },
	/*  232 */ { "_2", 0, NULL },
	/*  233 */ { "_3", 0, NULL },
	/*  234 */ { "_4", 0, NULL },
	/*  235 */ { "_5", 0, NULL },
	/*  236 */ { "_6", 0, NULL },
	/*  237 */ { "_7", 0, NULL },
	/*  238 */ { "_8", 0, NULL },
	/*  239 */ { "_9", 0, NULL },
	/*  240 */ { "_BUILDINFO", 0, NULL },
	/*  241 */ { "_CF_", 0, NULL },
	/*  242 */ { "G~H", 0, NULL },
	/*  243 */ { "G~R", 0, NULL },
	/*  244 */ { "BMPSIZE(", 0, NULL },
	/*  245 */ { "_DX", 0, NULL },
	/*  246 */ { "_DY", 0, NULL },
	/*  247 */ { "_DW", 0, NULL },
	/*  248 */ { "_DH", 0, NULL },
	/*  249 */ { "ACC?", 0, NULL },
	/*  250 */ { "AUTO?", 0, NULL },
	/*  251 */ { "FPU?", 0, NULL },
	/*  252 */ { "CPU020?", 0, NULL },
	/*  253 */ { "DMASND?", 0, NULL },
	/*  254 */ { "DAYNO(", 0, NULL },
	/*  255 */ { NULL, 0, NULL } /* unused */
};

/* Secondary function text */
struct nameversion const gfasft_211[256] = {
	/*    0 */ { "LEAP(", 0, NULL },
	/*    1 */ { "WEEK(", 0, NULL },
	/*    2 */ { NULL, 0, NULL }, /* unused */
	/*    3 */ { "HOUR12(", 0, NULL },
	/*    4 */ { "MERIDIEM(", 0, NULL },
	/*    5 */ { "JPEGD_INIT()", 0, NULL },
	/*    6 */ { "JPEGD_OPENDRIVER(", 0, NULL },
	/*    7 */ { "JPEGD_CLOSEDRIVER(", 0, NULL },
	/*    8 */ { "JPEGD_GETSTRUCTSIZE()", 0, NULL },
	/*    9 */ { "JPEGD_GETIMAGEINFO(", 0, NULL },
	/*   10 */ { "JPEGD_GETIMAGESIZE(", 0, NULL },
	/*   11 */ { "JPEGD_DECODEIMAGE(", 0, NULL },
	/*   12 */ { "DSP_DOBLOCK(", 0, NULL },
	/*   13 */ { "DSP_BLKHANDSHAKE(", 0, NULL },
	/*   14 */ { "DSP_BLKUNPACKED(", 0, NULL },
	/*   15 */ { "DSP_INSTREAM(", 0, NULL },
	/*   16 */ { "DSP_OUTSTREAM(", 0, NULL },
	/*   17 */ { "DSP_IOSTREAM(", 0, NULL },
	/*   18 */ { "DSP_REMOVEINTERRUPTS(", 0, NULL },
	/*   19 */ { "DSP_GETWORDSIZE()", 0, NULL },
	/*   20 */ { "DSP_LOCK()", 0, NULL },
	/*   21 */ { "DSP_UNLOCK()", 0, NULL },
	/*   22 */ { "DSP_AVAILABLE(", 0, NULL },
	/*   23 */ { "DSP_RESERVE(", 0, NULL },
	/*   24 */ { "DSP_LOADPROG(", 0, NULL },
	/*   25 */ { "DSP_EXECPROG(", 0, NULL },
	/*   26 */ { "DSP_EXECBOOT(", 0, NULL },
	/*   27 */ { "DSP_LODTOBINARY(", 0, NULL },
	/*   28 */ { "DSP_TRIGGERHC(", 0, NULL },
	/*   29 */ { "DSP_REQUESTUNIQUEABILITY()", 0, NULL },
	/*   30 */ { "DSP_GETPROGABILITY()", 0, NULL },
	/*   31 */ { "DSP_FLUSHSUBROUTINES()", 0, NULL },
	/*   32 */ { "DSP_LOADSUBROUTINE(", 0, NULL },
	/*   33 */ { "DSP_INQSUBRABILITY(", 0, NULL },
	/*   34 */ { "DSP_RUNSUBROUTINE(", 0, NULL },
	/*   35 */ { "DSP_HF0(", 0, NULL },
	/*   36 */ { "DSP_HF1(", 0, NULL },
	/*   37 */ { "DSP_HF2()", 0, NULL },
	/*   38 */ { "DSP_HF3()", 0, NULL },
	/*   39 */ { "DSP_BLKWORDS(", 0, NULL },
	/*   40 */ { "DSP_BLKBYTES(", 0, NULL },
	/*   41 */ { "DSP_HSTAT()", 0, NULL },
	/*   42 */ { "DSP_SETVECTORS(", 0, NULL },
	/*   43 */ { "DSP_MULTBLOCKS(", 0, NULL },
	/*   44 */ { "VR_TRANSFER_BITS(", 0, NULL },
	/*   45 */ { "V_CREATE_CTAB(", 0, NULL },
	/*   46 */ { "V_DELETE_CTAB(", 0, NULL },
	/*   47 */ { "V_CREATE_ITAB(", 0, NULL },
	/*   48 */ { "V_DELETE_ITAB(", 0, NULL },
	/*   49 */ { "VQ_PX_FORMAT(", 0, NULL },
	/*   50 */ { "V_GET_CTAB_ID()", 0, NULL },
	/*   51 */ { "VQT_EXT_NAME(", 0, NULL },
	/*   52 */ { "V_OPEN_BM(", 0, NULL },
	/*   53 */ { "V_RESIZE_BM(", 0, NULL },
	/*   54 */ { "V_HARDCOPY()", 0, NULL },
	/*   55 */ { "VST_NAME(", 0, NULL },
	/*   56 */ { "VQT_NAME_AND_ID(", 0, NULL },
	/*   57 */ { "VST_FG_COLOR(", 0, NULL },
	/*   58 */ { "VSF_FG_COLOR(", 0, NULL },
	/*   59 */ { "VSL_FG_COLOR(", 0, NULL },
	/*   60 */ { "VSM_FG_COLOR(", 0, NULL },
	/*   61 */ { "VSR_FG_COLOR(", 0, NULL },
	/*   62 */ { "VQT_FG_COLOR(", 0, NULL },
	/*   63 */ { "VQF_FG_COLOR(", 0, NULL },
	/*   64 */ { "VQL_FG_COLOR(", 0, NULL },
	/*   65 */ { "VQM_FG_COLOR(", 0, NULL },
	/*   66 */ { "VQR_FG_COLOR(", 0, NULL },
	/*   67 */ { "VST_BG_COLOR(", 0, NULL },
	/*   68 */ { "VSF_BG_COLOR(", 0, NULL },
	/*   69 */ { "VSL_BG_COLOR(", 0, NULL },
	/*   70 */ { "VSM_BG_COLOR(", 0, NULL },
	/*   71 */ { "VSR_BG_COLOR(", 0, NULL },
	/*   72 */ { "VQT_BG_COLOR(", 0, NULL },
	/*   73 */ { "VQF_BG_COLOR(", 0, NULL },
	/*   74 */ { "VQL_BG_COLOR(", 0, NULL },
	/*   75 */ { "VQM_BG_COLOR(", 0, NULL },
	/*   76 */ { "VQR_BG_COLOR(", 0, NULL },
	/*   77 */ { "VS_HILITE_COLOR(", 0, NULL },
	/*   78 */ { "VS_MIN_COLOR(", 0, NULL },
	/*   79 */ { "VS_MAX_COLOR(", 0, NULL },
	/*   80 */ { "VS_WEIGHT_COLOR(", 0, NULL },
	/*   81 */ { "VQ_HILITE_COLOR(", 0, NULL },
	/*   82 */ { "VQ_MIN_COLOR(", 0, NULL },
	/*   83 */ { "VQ_MAX_COLOR(", 0, NULL },
	/*   84 */ { "VQ_WEIGHT_COLOR(", 0, NULL },
	/*   85 */ { "V_SETRGB(", 0, NULL },
	/*   86 */ { "SUPERSCALAR(", 0, NULL },
	/*   87 */ { "VQT_XFNTINFO(", 0, NULL },
	/*   88 */ { "OB_SELECTED(", 0, NULL },
	/*   89 */ { "OB_CROSSED(", 0, NULL },
	/*   90 */ { "OB_CHECKED(", 0, NULL },
	/*   91 */ { "OB_DISABLED(", 0, NULL },
	/*   92 */ { "OB_OUTLINED(", 0, NULL },
	/*   93 */ { "OB_SHADOWED(", 0, NULL },
	/*   94 */ { "OB_WHITEBAK(", 0, NULL },
	/*   95 */ { NULL, 0, NULL }, /* unused */
	/*   96 */ { "OB_SELECTABLE(", 0, NULL },
	/*   97 */ { "OB_DEFAULT('", 0, NULL },
	/*   98 */ { "OB_EXIT(", 0, NULL },
	/*   99 */ { "OB_EDITABLE(", 0, NULL },
	/*  100 */ { "OB_RBUTTON(", 0, NULL },
	/*  101 */ { "OB_LASTOB(", 0, NULL },
	/*  102 */ { "OB_TOUCHEXIT(", 0, NULL },
	/*  103 */ { "OB_HIDETREE(", 0, NULL },
	/*  104 */ { "OB_INDIRECT(", 0, NULL },
	/*  105 */ { "OB_FL3DIND(", 0, NULL },
	/*  106 */ { "OB_FL3DACT(", 0, NULL },
	/*  107 */ { "OB_SUBMENU(", 0, NULL },
	/*  108 */ { NULL, 0, NULL }, /* unused */
	/*  109 */ { "OB_FL3DBAK(", 0, NULL },
	/*  110 */ { "BF_OBSPEC(", 0, NULL },
	/*  111 */ { "BF_CHARACTER(", 0, NULL },
	/*  112 */ { "BF_FRAMESIZE(", 0, NULL },
	/*  113 */ { "BF_FRAMECOL(", 0, NULL },
	/*  114 */ { "BF_TEXTCOL(", 0, NULL },
	/*  115 */ { "BF_TEXTMODE(", 0, NULL },
	/*  116 */ { "BF_FILLPATTERN(", 0, NULL },
	/*  117 */ { "BF_INTERIORCOL(", 0, NULL },
	/*  118 */ { "BI_PDATA(", 0, NULL },
	/*  119 */ { "BI_WB(", 0, NULL },
	/*  120 */ { "BI_HL(", 0, NULL },
	/*  121 */ { "BI_X(", 0, NULL },
	/*  122 */ { "BI_Y(", 0, NULL },
	/*  123 */ { "BI_COLOR(", 0, NULL },
	/*  124 */ { "UB_CODE(", 0, NULL },
	/*  125 */ { "UB_PARM(", 0, NULL },
	/*  126 */ { "TE_PTEXT(", 0, NULL },
	/*  127 */ { "TE_PTMPLT(", 0, NULL },
	/*  128 */ { "TE_PVALID(", 0, NULL },
	/*  129 */ { "TE_FONT(", 0, NULL },
	/*  130 */ { "TE_FONTID(", 0, NULL },
	/*  131 */ { "TE_JUST(", 0, NULL },
	/*  132 */ { "TE_COLOR(", 0, NULL },
	/*  133 */ { "TE_FONTSIZE(", 0, NULL },
	/*  134 */ { "TE_THICKNESS(", 0, NULL },
	/*  135 */ { "TE_TXTLEN(", 0, NULL },
	/*  136 */ { "TE_TMPLEN(", 0, NULL },
	/*  137 */ { "TE_FRAMECOL(", 0, NULL },
	/*  138 */ { "TE_TEXTCOL(", 0, NULL },
	/*  139 */ { "TE_TEXTMODE(", 0, NULL },
	/*  140 */ { "TE_FILLPATTERN(", 0, NULL },
	/*  141 */ { "TE_INTERIORCOL(", 0, NULL },
	/*  142 */ { "IB_PMASK(", 0, NULL },
	/*  143 */ { "IB_PDATA(", 0, NULL },
	/*  144 */ { "IB_PTEXT(", 0, NULL },
	/*  145 */ { "IB_CHAR(", 0, NULL },
	/*  146 */ { "IB_XCHAR(", 0, NULL },
	/*  147 */ { "IB_YCHAR(", 0, NULL },
	/*  148 */ { "IB_XICON(", 0, NULL },
	/*  149 */ { "IB_YICON(", 0, NULL },
	/*  150 */ { "IB_WICON(", 0, NULL },
	/*  151 */ { "IB_HICON(", 0, NULL },
	/*  152 */ { "IB_XTEXT(", 0, NULL },
	/*  153 */ { "IB_YTEXT(", 0, NULL },
	/*  154 */ { "IB_WTEXT(", 0, NULL },
	/*  155 */ { "IB_HTEXT(", 0, NULL },
	/*  156 */ { "IB_FCOLOR(", 0, NULL },
	/*  157 */ { "IB_BCOLOR(", 0, NULL },
	/*  158 */ { "IB_LETTER(", 0, NULL },
	/*  159 */ { "CI_MAINLIST(", 0, NULL },
	/*  160 */ { "CI_NUM_PLANES(", 0, NULL },
	/*  161 */ { "CI_COL_DATA(", 0, NULL },
	/*  162 */ { "CI_COL_MASK(", 0, NULL },
	/*  163 */ { "CI_SEL_DATA(", 0, NULL },
	/*  164 */ { "CI_SEL_MASK(", 0, NULL },
	/*  165 */ { "CI_NEXT_RES(", 0, NULL },
	/*  166 */ { "V_CTAB_IDX2VDI(", 0, NULL },
	/*  167 */ { "VQ_CTAB_ID()", 0, NULL },
	/*  168 */ { "VQ_CTAB_ENTRY(", 0, NULL },
	/*  169 */ { "VQ_CTAB(", 0, NULL },
	/*  170 */ { "VS_DFLT_CTAB()", 0, NULL },
	/*  171 */ { "VS_CTAB_ENTRY(", 0, NULL },
	/*  172 */ { "VS_CTAB(", 0, NULL },
	/*  173 */ { "VR_CLIP_RECTS_BY_DST()", 0, NULL },
	/*  174 */ { "VR_CLIP_RECTS_BY_SRC()", 0, NULL },
	/*  175 */ { "VQT_FONTHEADER(", 0, NULL },
	/*  176 */ { "VST_WIDTH(", 0, NULL },
	/*  177 */ { "V_CLEAR_DISP_LIST()", 0, NULL },
	/*  178 */ { "VEX_TIMV(", 0, NULL },
	/*  179 */ { "VEX_BUTV(", 0, NULL },
	/*  180 */ { "VEX_MOTV(", 0, NULL },
	/*  181 */ { "VEX_CURV(", 0, NULL },
	/*  182 */ { "INITMOUS(", 0, NULL },
	/*  183 */ { "FREADLINK(", 0, NULL },
	/*  184 */ { "INPUTRADIO(", 0, NULL },
	/*
	 * below are new in 3.73 (GBE)
	 */
	/*  185 */ { "PIXEL24(", 0, NULL },
	/*  186 */ { "CWRITE(", 0, NULL },
	/*  187 */ { "CREAD(", 0, NULL },
	/*  188 */ { "SUPER?", 0, NULL },
	/*  189 */ { "PIXEL32(", 0, NULL },
	/*  190 */ { "PIXEL16(", 0, NULL },
	/*  191 */ { "V_BEZ_ON()", 0, NULL },
	/*  192 */ { "V_BEZ_OFF()", 0, NULL },
	/*  193 */ { "VQ_CHCELLS(", 0, NULL },
	/*  194 */ { "RC_EQUAL(", 0, NULL },
	/*  195 */ { "OB_XYWH(", 0, NULL },
	/*  196 */ { "PIXEL15(", 0, NULL },
	/*  197 */ { "PUMASK(", 0, NULL },
	/*  198 */ { "FLINK(", 0, NULL },
	/*  199 */ { "FSYMLINK(", 0, NULL },
	/*  200 */ { "_BOOTDEV", 0, NULL },
	/*  201 */ { "STRUCT!(", 0, NULL },
	/*  202 */ { "STRUCT|(", 0, NULL },
	/*  203 */ { "STRUCT&(", 0, NULL },
	/*  204 */ { "STRUCT%(", 0, NULL },
	/*  205 */ { "STRUCT(", 0, NULL },
	/*  206 */ { "PIXEL8C(", 0, NULL },
	/*  207 */ { "PIXEL1M(", 0, NULL },
	/*  208 */ { "PIXEL8P(", 0, NULL },
	/*  209 */ { "PIXEL4P(", 0, NULL },
	/*  210 */ { "PIXEL2P(", 0, NULL },
	/*  211 */ { "MDPEEK(", 0, NULL },
	/*  212 */ { "MLPEEK(", 0, NULL },
	/*  213 */ { "_GLOBAL", 0, NULL },
	/*  214 */ { "MULTITASK?", 0, NULL },
	/*  215 */ { "USERDEF|(", 0, NULL },
	/*  216 */ { "USERDEFBYT", 0, NULL },
	/*  217 */ { "USERDEF&(", 0, NULL },
	/*  218 */ { "USERDEFWRD", 0, NULL },
	/*  219 */ { "USERDEF%(", 0, NULL },
	/*  220 */ { "USERDEFLNG", 0, NULL },
	/*  221 */ { "USERDEF!(", 0, NULL },
	/*  222 */ { "USERDEFBIT", 0, NULL },
	/*  223 */ { "_BMPSIZE", 0, NULL },
	/*  224 */ { "PSIGBLOCK(", 0, NULL },
	/*  225 */ { "PSIGSETMASK(", 0, NULL },
	/*  226 */ { "TALARM(", 0, NULL },
	/*  227 */ { "TMALARM(", 0, NULL },
	/*  228 */ { "PAUSE()", 0, NULL },
	/*  229 */ { "PSIGPENDING()", 0, NULL },
	/*  230 */ { "PSIGPAUSE(", 0, NULL },
	/*  231 */ { "PSIGACTION(", 0, NULL },
	/*  232 */ { "PTRACE(", 0, NULL },
	/*  233 */ { "SYNC()", 0, NULL },
	/*  234 */ { "FSYNC(", 0, NULL },
	/*  235 */ { "SREALLOC(", 0, NULL },
	/*  236 */ { "PMSG(", 0, NULL },
	/*  237 */ { "PFORK()", 0, NULL },
	/*  238 */ { "PVFORK()", 0, NULL },
	/*  239 */ { "PWAIT()", 0, NULL },
	/*  240 */ { "PWAIT3(", 0, NULL },
	/*  241 */ { "PWAITPID(", 0, NULL },
	/*  242 */ { "PGETGID()", 0, NULL },
	/*  243 */ { "PSETGID(", 0, NULL },
	/*  244 */ { "PGETUID()", 0, NULL },
	/*  245 */ { "PSETUID(", 0, NULL },
	/*  246 */ { "ARRAY!(", 0, NULL },
	/*  247 */ { "ARRAY|(", 0, NULL },
	/*  248 */ { "ARRAY&(", 0, NULL },
	/*  249 */ { "ARRAY%(", 0, NULL },
	/*  250 */ { "ARRAY(", 0, NULL },
	/*  251 */ { "_A3", 0, NULL },
	/*  252 */ { "_A4", 0, NULL },
	/*  253 */ { "_A5", 0, NULL },
	/*  254 */ { "_A6", 0, NULL },
	/*  255 */ { "_A7", 0, NULL }
};

/* Secondary function text */
struct nameversion const gfasft_212[256] = {
	/*    0 */ { "GETMPB(", 0, NULL },
	/*    1 */ { "MADDALT(", 0, NULL },
	/*    2 */ { "MFPINT(", 0, NULL },
	/*    3 */ { "XBTIMER(", 0, NULL },
	/*    4 */ { "PUNTAES()", 0, NULL },
	/*    5 */ { "SSBRK(", 0, NULL },
	/*    6 */ { "DBMSG(", 0, NULL },
	/*    7 */ { "FFCHMOD(", 0, NULL },
	/*    8 */ { "FFCHOWN(", 0, NULL },
	/*    9 */ { "SVERSION()", 0, NULL },
	/*   10 */ { "DCNTL(", 0, NULL },
	/*   11 */ { "CCONIN()", 0, NULL },
	/*   12 */ { "CCONOUT(", 0, NULL },
	/*   13 */ { "CAUXIN()", 0, NULL },
	/*   14 */ { "CAUXOUT(", 0, NULL },
	/*   15 */ { "CPRNOUT(", 0, NULL },
	/*   16 */ { "CRAWIO(", 0, NULL },
	/*   17 */ { "CRAWCIN()", 0, NULL },
	/*   18 */ { "CNECIN()", 0, NULL },
	/*   19 */ { "CCONIS()", 0, NULL },
	/*   20 */ { "CCONOS()", 0, NULL },
	/*   21 */ { "CAUXIS()", 0, NULL },
	/*   22 */ { "CAUXOS()", 0, NULL },
	/*   23 */ { "CPRNOS()", 0, NULL },
	/*   24 */ { "CCONRS(", 0, NULL },
	/*   25 */ { "PGETPGRP()", 0, NULL },
	/*   26 */ { "PSETPGRP(", 0, NULL },
	/*   27 */ { "PGETGROUPS(", 0, NULL },
	/*   28 */ { "PSETGROUPS(", 0, NULL },
	/*   29 */ { "PGETAUID()", 0, NULL },
	/*   30 */ { "PSETAUID(", 0, NULL },
	/*   31 */ { "PGETEUID()", 0, NULL },
	/*   32 */ { "PSETEUID(", 0, NULL },
	/*   33 */ { "PGETEGID()", 0, NULL },
	/*   34 */ { "PSETEGID(", 0, NULL },
	/*   35 */ { "PSETREUID(", 0, NULL },
	/*   36 */ { "PSETREGID(", 0, NULL },
	/*   37 */ { "PSEMAPHORE(", 0, NULL },
	/*   38 */ { "TSETITIMER(", 0, NULL },
	/*   39 */ { "TADJTIME(", 0, NULL },
	/*   40 */ { "TGETTIMEOFDAY(", 0, NULL },
	/*   41 */ { "TSETTIMEOFDAY(", 0, NULL },
	/*   42 */ { "PTERM0()", 0, NULL },
	/*   43 */ { "PTERM(", 0, NULL },
	/*   44 */ { "FREADV(", 0, NULL },
	/*   45 */ { "FWRITEV(", 0, NULL },
	/*   46 */ { "DCHROOT(", 0, NULL },
	/*   47 */ { "FSTAT64(", 0, NULL },
	/*   48 */ { "FFSTAT64(", 0, NULL },
	/*   49 */ { "FCHOWN16(", 0, NULL },
	/*   50 */ { "FCHDIR(", 0, NULL },
	/*   51 */ { "FFDOPENDIR(", 0, NULL },
	/*   52 */ { "FDIRFD(", 0, NULL },
	/*   53 */ { "REALLOC(", 0, NULL },
	/*   54 */ { "VQ_CURADDRESS(", 0, NULL },
	/*   55 */ { "V_CURADDRESS(", 0, NULL },
	/*   56 */ { "V_RVON()", 0, NULL },
	/*   57 */ { "V_RVOFF()", 0, NULL },
	/*   58 */ { "V_EXIT_CUR()", 0, NULL },
	/*   59 */ { "V_ENTER_CUR()", 0, NULL },
	/*   60 */ { "V_CURUP()", 0, NULL },
	/*   61 */ { "V_CURDOWN()", 0, NULL },
	/*   62 */ { "V_CURRIGHT()", 0, NULL },
	/*   63 */ { "V_CURLEFT()", 0, NULL },
	/*   64 */ { "V_CURHOME()", 0, NULL },
	/*   65 */ { "VQ_TABSTATUS()", 0, NULL },
	/*   66 */ { "V_EEOL()", 0, NULL },
	/*   67 */ { "V_EEOS()", 0, NULL },
	/*   68 */ { "V_RMCUR()", 0, NULL },
	/*   69 */ { "V_DSPCUR(", 0, NULL },
	/*   70 */ { NULL, 0, NULL },
	/*   71 */ { NULL, 0, NULL },
	/*   72 */ { NULL, 0, NULL },
	/*   73 */ { NULL, 0, NULL },
	/*   74 */ { NULL, 0, NULL },
	/*   75 */ { NULL, 0, NULL },
	/*   76 */ { NULL, 0, NULL },
	/*   77 */ { NULL, 0, NULL },
	/*   78 */ { NULL, 0, NULL },
	/*   79 */ { NULL, 0, NULL },
	/*   80 */ { NULL, 0, NULL },
	/*   81 */ { NULL, 0, NULL },
	/*   82 */ { NULL, 0, NULL },
	/*   83 */ { NULL, 0, NULL },
	/*   84 */ { NULL, 0, NULL },
	/*   85 */ { NULL, 0, NULL },
	/*   86 */ { NULL, 0, NULL },
	/*   87 */ { NULL, 0, NULL },
	/*   88 */ { NULL, 0, NULL },
	/*   89 */ { NULL, 0, NULL },
	/*   90 */ { NULL, 0, NULL },
	/*   91 */ { NULL, 0, NULL },
	/*   92 */ { NULL, 0, NULL },
	/*   93 */ { NULL, 0, NULL },
	/*   94 */ { NULL, 0, NULL },
	/*   95 */ { NULL, 0, NULL },
	/*   96 */ { NULL, 0, NULL },
	/*   97 */ { NULL, 0, NULL },
	/*   98 */ { NULL, 0, NULL },
	/*   99 */ { NULL, 0, NULL },
	/*  100 */ { NULL, 0, NULL },
	/*  101 */ { NULL, 0, NULL },
	/*  102 */ { NULL, 0, NULL },
	/*  103 */ { NULL, 0, NULL },
	/*  104 */ { NULL, 0, NULL },
	/*  105 */ { NULL, 0, NULL },
	/*  106 */ { NULL, 0, NULL },
	/*  107 */ { NULL, 0, NULL },
	/*  108 */ { NULL, 0, NULL },
	/*  109 */ { NULL, 0, NULL },
	/*  110 */ { NULL, 0, NULL },
	/*  111 */ { NULL, 0, NULL },
	/*  112 */ { NULL, 0, NULL },
	/*  113 */ { NULL, 0, NULL },
	/*  114 */ { NULL, 0, NULL },
	/*  115 */ { NULL, 0, NULL },
	/*  116 */ { NULL, 0, NULL },
	/*  117 */ { NULL, 0, NULL },
	/*  118 */ { NULL, 0, NULL },
	/*  119 */ { NULL, 0, NULL },
	/*  120 */ { NULL, 0, NULL },
	/*  121 */ { NULL, 0, NULL },
	/*  122 */ { NULL, 0, NULL },
	/*  123 */ { NULL, 0, NULL },
	/*  124 */ { NULL, 0, NULL },
	/*  125 */ { NULL, 0, NULL },
	/*  126 */ { NULL, 0, NULL },
	/*  127 */ { NULL, 0, NULL },
	/*  128 */ { NULL, 0, NULL },
	/*  129 */ { NULL, 0, NULL },
	/*  130 */ { NULL, 0, NULL },
	/*  131 */ { NULL, 0, NULL },
	/*  132 */ { NULL, 0, NULL },
	/*  133 */ { NULL, 0, NULL },
	/*  134 */ { NULL, 0, NULL },
	/*  135 */ { NULL, 0, NULL },
	/*  136 */ { NULL, 0, NULL },
	/*  137 */ { NULL, 0, NULL },
	/*  138 */ { NULL, 0, NULL },
	/*  139 */ { NULL, 0, NULL },
	/*  140 */ { NULL, 0, NULL },
	/*  141 */ { NULL, 0, NULL },
	/*  142 */ { NULL, 0, NULL },
	/*  143 */ { NULL, 0, NULL },
	/*  144 */ { NULL, 0, NULL },
	/*  145 */ { NULL, 0, NULL },
	/*  146 */ { NULL, 0, NULL },
	/*  147 */ { NULL, 0, NULL },
	/*  148 */ { NULL, 0, NULL },
	/*  149 */ { NULL, 0, NULL },
	/*  150 */ { NULL, 0, NULL },
	/*  151 */ { NULL, 0, NULL },
	/*  152 */ { NULL, 0, NULL },
	/*  153 */ { NULL, 0, NULL },
	/*  154 */ { NULL, 0, NULL },
	/*  155 */ { NULL, 0, NULL },
	/*  156 */ { NULL, 0, NULL },
	/*  157 */ { NULL, 0, NULL },
	/*  158 */ { NULL, 0, NULL },
	/*  159 */ { NULL, 0, NULL },
	/*  160 */ { NULL, 0, NULL },
	/*  161 */ { NULL, 0, NULL },
	/*  162 */ { NULL, 0, NULL },
	/*  163 */ { NULL, 0, NULL },
	/*  164 */ { NULL, 0, NULL },
	/*  165 */ { NULL, 0, NULL },
	/*  166 */ { NULL, 0, NULL },
	/*  167 */ { NULL, 0, NULL },
	/*  168 */ { NULL, 0, NULL },
	/*  169 */ { NULL, 0, NULL },
	/*  170 */ { NULL, 0, NULL },
	/*  171 */ { NULL, 0, NULL },
	/*  172 */ { NULL, 0, NULL },
	/*  173 */ { NULL, 0, NULL },
	/*  174 */ { NULL, 0, NULL },
	/*  175 */ { NULL, 0, NULL },
	/*  176 */ { NULL, 0, NULL },
	/*  177 */ { NULL, 0, NULL },
	/*  178 */ { NULL, 0, NULL },
	/*  179 */ { NULL, 0, NULL },
	/*  180 */ { NULL, 0, NULL },
	/*  181 */ { NULL, 0, NULL },
	/*  182 */ { NULL, 0, NULL },
	/*  183 */ { NULL, 0, NULL },
	/*  184 */ { NULL, 0, NULL },
	/*  185 */ { NULL, 0, NULL },
	/*  186 */ { NULL, 0, NULL },
	/*  187 */ { NULL, 0, NULL },
	/*  188 */ { NULL, 0, NULL },
	/*  189 */ { NULL, 0, NULL },
	/*  190 */ { NULL, 0, NULL },
	/*  191 */ { NULL, 0, NULL },
	/*  192 */ { NULL, 0, NULL },
	/*  193 */ { NULL, 0, NULL },
	/*  194 */ { NULL, 0, NULL },
	/*  195 */ { NULL, 0, NULL },
	/*  196 */ { NULL, 0, NULL },
	/*  197 */ { NULL, 0, NULL },
	/*  198 */ { NULL, 0, NULL },
	/*  199 */ { NULL, 0, NULL },
	/*  200 */ { NULL, 0, NULL },
	/*  201 */ { NULL, 0, NULL },
	/*  202 */ { NULL, 0, NULL },
	/*  203 */ { NULL, 0, NULL },
	/*  204 */ { NULL, 0, NULL },
	/*  205 */ { NULL, 0, NULL },
	/*  206 */ { NULL, 0, NULL },
	/*  207 */ { NULL, 0, NULL },
	/*  208 */ { NULL, 0, NULL },
	/*  209 */ { NULL, 0, NULL },
	/*  210 */ { NULL, 0, NULL },
	/*  211 */ { NULL, 0, NULL },
	/*  212 */ { NULL, 0, NULL },
	/*  213 */ { NULL, 0, NULL },
	/*  214 */ { NULL, 0, NULL },
	/*  215 */ { NULL, 0, NULL },
	/*  216 */ { NULL, 0, NULL },
	/*  217 */ { NULL, 0, NULL },
	/*  218 */ { NULL, 0, NULL },
	/*  219 */ { NULL, 0, NULL },
	/*  220 */ { NULL, 0, NULL },
	/*  221 */ { NULL, 0, NULL },
	/*  222 */ { NULL, 0, NULL },
	/*  223 */ { NULL, 0, NULL },
	/*  224 */ { NULL, 0, NULL },
	/*  225 */ { NULL, 0, NULL },
	/*  226 */ { NULL, 0, NULL },
	/*  227 */ { NULL, 0, NULL },
	/*  228 */ { NULL, 0, NULL },
	/*  229 */ { NULL, 0, NULL },
	/*  230 */ { NULL, 0, NULL },
	/*  231 */ { NULL, 0, NULL },
	/*  232 */ { NULL, 0, NULL },
	/*  233 */ { NULL, 0, NULL },
	/*  234 */ { NULL, 0, NULL },
	/*  235 */ { NULL, 0, NULL },
	/*  236 */ { NULL, 0, NULL },
	/*  237 */ { NULL, 0, NULL },
	/*  238 */ { NULL, 0, NULL },
	/*  239 */ { NULL, 0, NULL },
	/*  240 */ { NULL, 0, NULL },
	/*  241 */ { NULL, 0, NULL },
	/*  242 */ { NULL, 0, NULL },
	/*  243 */ { NULL, 0, NULL },
	/*  244 */ { NULL, 0, NULL },
	/*  245 */ { NULL, 0, NULL },
	/*  246 */ { NULL, 0, NULL },
	/*  247 */ { NULL, 0, NULL },
	/*  248 */ { NULL, 0, NULL },
	/*  249 */ { NULL, 0, NULL },
	/*  250 */ { NULL, 0, NULL },
	/*  251 */ { NULL, 0, NULL },
	/*  252 */ { NULL, 0, NULL },
	/*  253 */ { NULL, 0, NULL },
	/*  254 */ { NULL, 0, NULL },
	/*  255 */ { NULL, 0, NULL }
};

struct gfaversinfo const gfarecl[71] = {
	{ 0,  0},
	{ 8, 29},
	{ 8, 29},
	{10, 38},
	{10, 38},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0}, { 0,  0},
	{ 0,  0}, { 0,  0},
	{18,  0}
};
