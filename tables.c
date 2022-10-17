#include <stddef.h>
#include "tables.h"

/* Line command text */
const char *const gfalct[] = {
	/*   0 */ "DO",
	/*   1 */ "LOOP",						/* or ENDDO */
	/*   2 */ "REPEAT",
	/*   3 */ "UNTIL ",						/* or ENDREPEAT */
	/*   4 */ "WHILE ",
	/*   5 */ "WEND",						/* or ENDWHILE */
	/*   6 */ "PROCEDURE ",
	/*   7 */ "RETURN",						/* or ENDPROC/ENDSUB; from PROCEDURE */
	/*   8 */ "IF ",
	/*   9 */ "ENDIF",
	/*  10 */ "FUNCTION ",
	/*  11 */ "ENDFUNC",
	/*  12 */ "SELECT ",					/* SWITCH/SELECT number */
	/*  13 */ "ENDSELECT",					/* or ENDSWITCH */
	/*  14 */ "ELSE",
	/*  15 */ "DEFAULT",					/* or OTHERWISE */
	/*  16 */ "ELSE IF ",
	/*  17 */ "RETURN ",					/* return number */
	/*  18 */ "RETURN ",					/* return string */
	/*  19 */ "FOR ",						/* FOR x# */
	/*  20 */ "FOR ",						/* FOR x# todo */
	/*  21 */ "FOR ",						/* FOR x# */
	/*  22 */ "FOR ",						/* FOR x% */
	/*  23 */ "FOR ",						/* FOR x% */
	/*  24 */ "FOR ",						/* FOR x% */
	/*  25 */ "FOR ",						/* FOR x& */
	/*  26 */ "FOR ",						/* FOR x& */
	/*  27 */ "FOR ",						/* FOR x& */
	/*  28 */ "FOR ",						/* FOR x| */
	/*  29 */ "FOR ",						/* FOR x| */
	/*  30 */ "FOR ",						/* FOR x| */
	/*  31 */ "NEXT ",						/* ENDFOR, NEXT x# */
	/*  32 */ "NEXT ",						/* NEXT x# todo */
	/*  33 */ "NEXT ",						/* NEXT x# */
	/*  34 */ "NEXT ",						/* NEXT x% */
	/*  35 */ "NEXT ",						/* NEXT x% */
	/*  36 */ "NEXT ",						/* NEXT x% */
	/*  37 */ "NEXT ",						/* NEXT x& */
	/*  38 */ "NEXT ",						/* NEXT x& */
	/*  39 */ "NEXT ",						/* NEXT x& */
	/*  40 */ "NEXT ",						/* NEXT x| */
	/*  41 */ "NEXT ",						/* NEXT x| */
	/*  42 */ "NEXT ",						/* NEXT x| */
	/*  43 */ "EXIT IF ",
	/*  44 */ "SELECT ",					/* SELECT string */
	/*  45 */ "",							/* End of program */
	/*  46 */ "SELECT ",					/* SELECT ??? */
	/*  47 */ "SELECT ",					/* SELECT ??? */
	/*  48 */ "MONITOR",
	/*  49 */ "DO WHILE ",
	/*  50 */ "DO UNTIL ",
	/*  51 */ "LOOP WHILE ",
	/*  52 */ "LOOP UNTIL ",
	/*  53 */ "LOCAL ",
	/*  54 */ "> PROCEDURE ",
	/*  55 */ "EXIT IF ",					/* todo */
	/*  56 */ "CASE ",
	/*  57 */ "DEFFN ",
	/*  58 */ "GOTO ",
	/*  59 */ "RESTORE",
	/*  60 */ "",      						/* implicit @ */
	/*  61 */ "GOSUB ",
	/*  62 */ "@",
	/*  63 */ "",							/* label: */
	/*  64 */ "LET ",						/* LET x#= */
	/*  65 */ "LET ",						/* LET x$= */
	/*  66 */ "LET ",						/* LET x%= */
	/*  67 */ "LET ",						/* LET x!= */
	/*  68 */ "LET ",						/* LET x&= */
	/*  69 */ "LET ",						/* LET x|= */
	/*  70 */ "LET ",						/* LET x#()= */
	/*  71 */ "LET ",						/* LET x$()= */
	/*  72 */ "LET ",						/* LET x%()= */
	/*  73 */ "LET ",						/* LET x!()= */
	/*  74 */ "LET ",						/* LET x&()= */
	/*  75 */ "LET ",						/* LET x|()= */
	/*  76 */ "",							/* x#= */
	/*  77 */ "",							/* x$= */
	/*  78 */ "",							/* x%= */
	/*  79 */ "",							/* x!= */
	/*  80 */ "",							/* x&= */
	/*  81 */ "",							/* x|= */
	/*  82 */ "",							/* x#()= */
	/*  83 */ "",							/* x$()= */
	/*  84 */ "",							/* x%()= */
	/*  85 */ "",							/* x!()= */
	/*  86 */ "",							/* x&()= */
	/*  87 */ "",							/* x|()= */
	/*  88 */ "PLOT ",
	/*  89 */ "PSET ",
	/*  90 */ "ALINE ",
	/*  91 */ "HLINE ",
	/*  92 */ "ARECT ",
	/*  93 */ "APOLY ",
	/*  94 */ "ACHAR ",
	/*  95 */ "ACLIP ",
	/*  96 */ "COLOR ",
	/*  97 */ "POKE ",
	/*  98 */ "DPOKE ",
	/*  99 */ "LPOKE ",
	/* 100 */ "SPOKE ",
	/* 101 */ "SDPOKE ",
	/* 102 */ "SLPOKE ",
	/* 103 */ "RESERVE",
	/* 104 */ "RESERVE ",					/* todo */
	/* 105 */ "RESUME",
	/* 106 */ "RESUME ",					/* todo */
	/* 107 */ "RESUME ",					/* todo */
	/* 108 */ "",							/* todo */
	/* 109 */ "RECORD ",
	/* 110 */ "DELAY ",
	/* 111 */ "BGET ",
	/* 112 */ "BPUT ",
	/* 113 */ "ATEXT ",
	/* 114 */ "REM",						/* Append " " if at least one char long. */
	/* 115 */ "'",							/* also !, // and / *; Append " " if at least one char long. */
	/* 116 */ "==>",						/* Append " " if at least one char long. */
	/* 117 */ "DATA",						/* Append " " if at least one char long. */
	/* 118 */ "SWAP ",						/* todo */
	/* 119 */ "SWAP ",						/* todo */
	/* 120 */ "SWAP ",						/* todo */
	/* 121 */ "*",
	/* 122 */ "*",							/* todo */
	/* 123 */ "SINGLE{",
	/* 124 */ "END",
	/* 125 */ "LOCATE ",
	/* 126 */ "ON ",
	/* 127 */ "",							/* todo */
	/* 128 */ "ON ERROR",
	/* 129 */ "ON ERROR GOSUB ",
	/* 130 */ "ON BREAK",
	/* 131 */ "ON BREAK CONT",
	/* 132 */ "ON BREAK GOSUB ",
	/* 133 */ "ON MENU GOSUB ",
	/* 134 */ "ON MENU MESSAGE GOSUB ",
	/* 135 */ "ON MENU KEY GOSUB ",
	/* 136 */ "ON MENU BUTTON ",
	/* 137 */ "ON MENU",
	/* 138 */ "ON MENU ",					/* todo */
	/* 139 */ "MENU ",
	/* 140 */ "MENU OFF",
	/* 141 */ "MENU KILL",
	/* 142 */ "MENU ",						/* todo */
	/* 143 */ "TRON",
	/* 144 */ "TRON ",						/* todo */
	/* 145 */ "TRON ",						/* todo */
	/* 146 */ "TROFF",
	/* 147 */ "PRINT",						/* Append space if it has parameters */
	/* 148 */ "PRINT ",						/* PRINT # */
	/* 149 */ "TEXT ",
	/* 150 */ "TEXT ",						/* todo */
	/* 151 */ "RCALL ",
	/* 152 */ "CALL ",
	/* 153 */ "FORM INPUT ",
	/* 154 */ "LINE INPUT ",
	/* 155 */ "LINE ",
	/* 156 */ "",							/* todo */
	/* 157 */ "",							/* todo */
	/* 158 */ "",							/* todo */
	/* 159 */ "",							/* todo */
	/* 160 */ "INC ",						/* INC x# */
	/* 161 */ "INC ",						/* INC x% */
	/* 162 */ "INC ",						/* INC x& */
	/* 163 */ "INC ",						/* INC x| */
	/* 164 */ "INC ",						/* INC x#() */
	/* 165 */ "INC ",						/* INC x%() */
	/* 166 */ "INC ",						/* INC x&() */
	/* 167 */ "INC ",						/* INC x|() */
	/* 168 */ "DEC ",						/* DEC x# */
	/* 169 */ "DEC ",						/* DEC x% */
	/* 170 */ "DEC ",						/* DEC x& */
	/* 171 */ "DEC ",						/* DEC x| */
	/* 172 */ "DEC ",						/* DEC x#() */
	/* 173 */ "DEC ",						/* DEC x%() */
	/* 174 */ "DEC ",						/* DEC x&() */
	/* 175 */ "DEC ",						/* DEC x|() */
	/* 176 */ "ADD ",						/* ADD x# */
	/* 177 */ "ADD ",						/* ADD x% / */
	/* 178 */ "ADD ",						/* ADD x& */
	/* 179 */ "ADD ",						/* ADD x| */
	/* 180 */ "ADD ",						/* ADD x#() */
	/* 181 */ "ADD ",						/* ADD x%() */
	/* 182 */ "ADD ",						/* ADD x&() */
	/* 183 */ "ADD ",						/* ADD x|() */
	/* 184 */ "SUB ",						/* ADD x# */
	/* 185 */ "SUB ",						/* SUB x% */
	/* 186 */ "SUB ",						/* SUB x& */
	/* 187 */ "SUB ",						/* SUB x|, */
	/* 188 */ "SUB ",						/* SUB x#() */
	/* 189 */ "SUB ",						/* SUB x%() */
	/* 190 */ "SUB ",						/* SUB x&() */
	/* 191 */ "SUB ",						/* SUB x|() */
	/* 192 */ "MUL ",						/* MUL x# */
	/* 193 */ "MUL ",						/* MUL x% */
	/* 194 */ "MUL ",						/* MUL x& */
	/* 195 */ "MUL ",						/* MUL x| */
	/* 196 */ "MUL ",						/* MUL x#() */
	/* 197 */ "MUL ",						/* MUL x%() */
	/* 198 */ "MUL ",						/* MUL x&() */
	/* 199 */ "MUL ",						/* MUL x|() */
	/* 200 */ "DIV ",						/* DIV x# */
	/* 201 */ "DIV ",						/* DIV x% */
	/* 202 */ "DIV ",						/* DIV x& */
	/* 203 */ "DIV ",						/* DIV x| */
	/* 204 */ "DIV ",						/* DIV x#() */
	/* 205 */ "DIV ",						/* DIV x%() */
	/* 206 */ "DIV ",						/* DIV x&() */
	/* 207 */ "DIV ",						/* DIV x|() */
	/* 208 */ "SEEK #",
	/* 209 */ "RELSEEK #",
	/* 210 */ "DIM ",
	/* 211 */ "SETCOLOR ",
	/* 212 */ "SETCOLOR ",					/* todo */
	/* 213 */ "BMOVE ",
	/* 214 */ "VDISYS",						/* No further tokens follow */
	/* 215 */ "VDISYS ",					/* todo */
	/* 216 */ "VDISYS ",					/* todo */
	/* 217 */ "VDISYS ",					/* todo */
	/* 218 */ "GEMSYS",
	/* 219 */ "GEMSYS ",					/* todo */
	/* 220 */ "PTSIN(",
	/* 221 */ "PTSOUT(",
	/* 222 */ "INTIN(",
	/* 223 */ "INTOUT(",
	/* 224 */ "ADDRIN(",
	/* 225 */ "ADDROUT(",
	/* 226 */ "GINTIN(",
	/* 227 */ "GINTOUT(",
	/* 228 */ "CONTRL(",
	/* 229 */ "GCONTRL(",
	/* 230 */ "{",
	/* 231 */ "LONG{",
	/* 232 */ "INT{",
	/* 233 */ "CARD{",
	/* 234 */ "BYTE{",
	/* 235 */ "CHAR{",
	/* 236 */ "FLOAT{",
	/* 237 */ "DOUBLE{",
	/* 238 */ "ON MENU IBOX ",
	/* 239 */ "ON MENU OBOX ",
	/* 240 */ "VOID ",
	/* 241 */ "~",
	/* 242 */ "OB_NEXT(",
	/* 243 */ "OB_HEAD(",
	/* 244 */ "OB_TAIL(",
	/* 245 */ "OB_TYPE(",
	/* 246 */ "OB_FLAGS(",
	/* 247 */ "OB_STATE(",
	/* 248 */ "OB_SPEC(",
	/* 249 */ "OB_X(",
	/* 250 */ "OB_Y(",
	/* 251 */ "OB_W(",
	/* 252 */ "OB_H(",
	/* 253 */ "ABSOLUTE ",
	/* 254 */ ".",
	/* 255 */ "RANDOMIZE",
	/* 256 */ "ALERT ",
	/* 257 */ "GET ",
	/* 258 */ "GET ",						/* todo */
	/* 259 */ "GET ",						/* todo */
	/* 260 */ "PUT ",
	/* 261 */ "PUT ",						/* todo */
	/* 262 */ "PUT ",						/* todo */
	/* 263 */ "PUT ",						/* todo */
	/* 264 */ "",							/* todo */
	/* 265 */ "OPEN ",
	/* 266 */ "OPENW ",
	/* 267 */ "OPENW #",
	/* 268 */ "CLOSE",
	/* 269 */ "CLOSEW ",
	/* 270 */ "CLOSEW #",
	/* 271 */ "CLEAR",
	/* 272 */ "CLEARW ",
	/* 273 */ "CLEARW #",
	/* 274 */ "TOPW #",
	/* 275 */ "TITLEW #",
	/* 276 */ "INFOW #",
	/* 277 */ "DEFLINE",
	/* 278 */ "GRAPHMODE ",
	/* 279 */ "DEFMOUSE ",
	/* 280 */ "DEFMOUSE ",					/* todo */
	/* 281 */ "DEFLIST ",
	/* 282 */ "DEFMARK",
	/* 283 */ "DEFNUM ",
	/* 284 */ "DEFTEXT",
	/* 285 */ "DEFFILL",
	/* 286 */ "DEFFILL",					/* todo */
	/* 287 */ "BOX ",
	/* 288 */ "PBOX ",
	/* 289 */ "RBOX ",
	/* 290 */ "PRBOX ",
	/* 291 */ "CIRCLE ",
	/* 292 */ "CIRCLE ",					/* todo */
	/* 293 */ "PCIRCLE ",
	/* 294 */ "PCIRCLE ",					/* todo */
	/* 295 */ "ELLIPSE ",
	/* 296 */ "ELLIPSE ",					/* todo */
	/* 297 */ "PELLIPSE ",
	/* 298 */ "PELLIPSE ",					/* todo */
	/* 299 */ "ERROR ",
	/* 300 */ "FILL ",
	/* 301 */ "FILL ",						/* todo */
	/* 302 */ "HIDEM",
	/* 303 */ "LPRINT",						/* Append space if it has parameters */
	/* 304 */ "LSET ",
	/* 305 */ "MID$(",
	/* 306 */ "NEW",
	/* 307 */ "OUT ",
	/* 308 */ "OUT ",						/* todo */
	/* 309 */ "QUIT",
	/* 310 */ "",							/* todo */
	/* 311 */ "CHDIR ",
	/* 312 */ "CHDRIVE ",
	/* 313 */ "CHDRIVE ",					/* todo */
	/* 314 */ "CLR ",
	/* 315 */ "CLS",						/* Append space if it has parameters */
	/* 316 */ "",							/* todo */
	/* 317 */ "CONT",
	/* 318 */ "",							/* todo */
	/* 319 */ "DIR",
	/* 320 */ "HTAB ",
	/* 321 */ "VTAB ",
	/* 322 */ "ERASE ",
	/* 323 */ "EXEC ",
	/* 324 */ "FIELD ",
	/* 325 */ "FILES",
	/* 326 */ "TOUCH #",
	/* 327 */ "",							/* todo */
	/* 328 */ "EDIT",
	/* 329 */ "FILESELECT ",
	/* 330 */ "NAME ",
	/* 331 */ "MKDIR ",
	/* 332 */ "MOUSE ",
	/* 333 */ "KILL ",
	/* 334 */ "RMDIR ",
	/* 335 */ "RSET ",
	/* 336 */ "SETTIME ",
	/* 337 */ "SGET ",
	/* 338 */ "SHOWM",
	/* 339 */ "SPUT ",
	/* 340 */ "STOP",
	/* 341 */ "SYSTEM",						/* Append " " if other tokens follow */
	/* 342 */ "VSYNC",
	/* 343 */ "HARDCOPY",
	/* 344 */ "PAUSE ",
	/* 345 */ "QSORT ",
	/* 346 */ "SSORT ",
	/* 347 */ "POLYLINE ",
	/* 348 */ "POLYFILL ",
	/* 349 */ "POLYMARK ",
	/* 350 */ "INSERT ",
	/* 351 */ "DELETE ",
	/* 352 */ "RENAME ",
	/* 353 */ "STICK ",
	/* 354 */ "SOUND",
	/* 355 */ "WAVE",
	/* 356 */ "CLIP ",
	/* 357 */ "CLIP ",						/* todo */
	/* 358 */ "CLIP ",						/* todo */
	/* 359 */ "CLIP ",						/* todo */
	/* 360 */ "CLIP ",						/* todo */
	/* 361 */ "FULLW ",
	/* 362 */ "EVERY ",
	/* 363 */ "EVERY ",						/* todo */
	/* 364 */ "EVERY ",						/* todo */
	/* 365 */ "AFTER ",
	/* 366 */ "AFTER ",						/* todo */
	/* 367 */ "AFTER ",
	/* 368 */ "INPUT ",
	/* 369 */ "INPUT ",						/* todo */
	/* 370 */ "DRAW ",
	/* 371 */ "DRAW ",						/* todo */
	/* 372 */ "READ ",
	/* 373 */ "",							/* todo */
	/* 374 */ "SETMOUSE ",
	/* 375 */ "KEYPAD ",
	/* 376 */ "KEYTEST ",
	/* 377 */ "KEYGET ",
	/* 378 */ "KEYLOOK ",
	/* 379 */ "KEYPRESS ",
	/* 380 */ "KEYDEF ",
	/* 381 */ "DEFINT ",
	/* 382 */ "DEFFLT ",					/* also DEFSNG/DEFDBL */
	/* 383 */ "DEFBYT ",
	/* 384 */ "DEFWRD ",
	/* 385 */ "DEFBIT ",
	/* 386 */ "DEFSTR ",
	/* 387 */ "BOUNDARY ",
	/* 388 */ "LIST ",
	/* 389 */ "LLIST ",
	/* 390 */ "SAVE ",
	/* 391 */ "PSAVE ",
	/* 392 */ "CHAIN ",
	/* 393 */ "RUN",
	/* 394 */ "RUN ",						/* todo */
	/* 395 */ "LOAD ",
	/* 396 */ "SETDRAW ",
	/* 397 */ "ARRAYFILL ",
	/* 398 */ "DUMP",
	/* 399 */ "BITBLT ",
	/* 400 */ "BITBLT ",					/* todo */
	/* 401 */ "BITBLT ",					/* todo */
	/* 402 */ "STORE ",
	/* 403 */ "RECALL ",
	/* 404 */ "BSAVE ",
	/* 405 */ "BLOAD ",
	/* 406 */ "V~H=",
	/* 407 */ "TIME$=",
	/* 408 */ "DATE$=",
	/* 409 */ "SPRITE ",
	/* 410 */ "OPTION ",
	/* 411 */ "$",
	/* 412 */ "WINDTAB(",
	/* 413 */ "RC_COPY ",
	/* 414 */ "MODE ",
	/* 415 */ "",							/* todo */
	/* 416 */ "WRITE ",
	/* 417 */ "INLINE ",
	/* 418 */ "WORD{",
	/* 419 */ "VSETCOLOR ",
	/* 420 */ "OUT& ",
	/* 421 */ "OUT% ",
	/* 422 */ "CURVE ",
	/* 423 */ "_DATA= ",
	/* 424 */ "MAT ADD ",
	/* 425 */ "MAT ADD ",					/* todo */
	/* 426 */ "MAT SUB ",
	/* 427 */ "MAT SUB ",					/* todo */
	/* 428 */ "MAT CPY ",
	/* 429 */ "MAT XCPY ",
	/* 430 */ "MAT DET ",
	/* 431 */ "MAT NEG ",
	/* 432 */ "MAT ABS ",
	/* 433 */ "MAT NORM ",
	/* 434 */ "MAT READ ",
	/* 435 */ "MAT PRINT ",
	/* 436 */ "MAT TRANS ",
	/* 437 */ "MAT CLR ",
	/* 438 */ "MAT SET ",
	/* 439 */ "MAT ONE ",
	/* 440 */ "MAT BASE ",
	/* 441 */ "MAT QDET ",
	/* 442 */ "MAT INPUT ",
	/* 443 */ "MAT RANG ",
	/* 444 */ "MAT MUL ",
	/* 445 */ "MAT MUL ",					/* todo */
	/* 446 */ "MAT MUL ",					/* todo */
	/* 447 */ "MAT MUL ",					/* todo */
	/* 448 */ "MAT INV ",
	/* 449 */ "> FUNCTION ",
	/* 450 */ "DMASOUND ",
	/* 451 */ "DMACONTROL ",
	/* 452 */ "MW_OUT ",
	/* 453 */ "MW_OUT ",					/* todo */
	/* 454 */ "MW_OUT ",					/* todo */
	/* 455 */ "MW_OUT ",					/* todo */
	/* 456 */ "MW_OUT ",					/* todo */
	/* 457 */ "MW_OUT ",					/* todo */
	/* 458 */ "MW_OUT ",					/* todo */
	/* 459 */ "MW_OUT ",					/* todo */

	/*
	 * below are new in 3.7 (GBE)
	 */

	/* 460 */ "SET.MFDB ",
	/* 461 */ "SET.PXYWH ",
	/* 462 */ "BCLEAR ",
	/* 463 */ "BFILL ",
	/* 464 */ "BXLATE ",
	/* 465 */ "BEEP",
	/* 466 */ "GHIDEM",
	/* 467 */ "GSHOWM",
	/* 468 */ "GMOUSE",
	/* 469 */ "VCURVE ",
	/* 470 */ "VRC_COPY ",
	/* 471 */ "VGET ",
	/* 472 */ "VPLOT ",
	/* 473 */ "TIMESTAMP",
	/* 474 */ "AMOUSE ",
	/* 475 */ "VLINE ",
	/* 476 */ "CPUFLUSH",
	/* 477 */ "BCRYPT ",
	/* 478 */ "GSTICK ",
	/* 479 */ "VSGET ",
	/* 480 */ "VSPUT ",
	/* 481 */ "VCLS ",
	/* 482 */ "PALGET ",
	/* 483 */ "PALSET ",
	/* 484 */ "LOG_MSG ",
	/* 485 */ "LOG_SET ",
	/* 486 */ "LOG_FILE ",
	/* 487 */ "LOG_KILL",
	/* 488 */ "SET.PXYXY ",
	/* 489 */ "VBOX ",
	/* 490 */ "VBITBLT ",
	/* 491 */ "SCALL ",
	/* 492 */ "VPUT ",
	/* 493 */ "VPUT ",
	/* 494 */ "CHAR$ ",
	/* 495 */ "SET.SOCKADDR ",
	/* 496 */ "SET.SOCKADDR ",
	/* 497 */ "SET.SOCKADDR ",
	/* 498 */ "SET.SOCKADDR ",
	/* 499 */ "SET.SOCKADDR ",
	/* 500 */ "SET.SOCKADDR ",
	/* 501 */ "SET.SOCKADDR ",
	/* 502 */ "SET.SOCKADDR ",
	/* 503 */ "SET.SOCKADDR ",
	/* 504 */ "OB.STATE(",
	/* 505 */ "OB.FLAGS(",
	/* 506 */ "OB_SELECTED(",
	/* 507 */ "OB_CROSSED(",
	/* 508 */ "OB_CHECKED(",
	/* 509 */ "OB_DISABLED(",
	/* 510 */ "OB.RBUTTON(",
	/* 511 */ "OB_TEXT$(",
	/* 512 */ "OB_SELECTABLE(",
	/* 513 */ "OB_DEFAULT(",
	/* 514 */ "OB_EXIT(",
	/* 515 */ "OB_EDITABLE(",
	/* 516 */ "OB_RBUTTON(",
	/* 517 */ "OB_LASTOB(",
	/* 518 */ "OB_TOUCHEXIT(",
	/* 519 */ "OB_HIDETREE("
};
unsigned int const size_lct = sizeof(gfalct) / sizeof(gfalct[0]);

/* Primary function text */
const char *const gfapft[256] = {
	/*    0 */ " AND ",
	/*    1 */ " OR ",
	/*    2 */ " XOR ",
	/*    3 */ " IMP ",
	/*    4 */ " EQV ",
	/*    5 */ "-",
	/*    6 */ "+",
	/*    7 */ "*",
	/*    8 */ "/",
	/*    9 */ "^",
	/*   10 */ " MOD ",
	/*   11 */ " DIV ",
	/*   12 */ "<>", /* numbers */
	/*   13 */ "<=", /* numbers */
	/*   14 */ "=<", /* numbers */
	/*   15 */ ">=", /* numbers */
	/*   16 */ "=>", /* numbers */
	/*   17 */ "<", /* numbers */
	/*   18 */ ">", /* numbers */
	/*   19 */ "=", /* numbers */
	/*   20 */ "<>", /* strings */
	/*   21 */ "<=", /* strings */
	/*   22 */ "=<", /* strings */
	/*   23 */ ">=", /* strings */
	/*   24 */ "=>", /* strings */
	/*   25 */ "<", /* strings */
	/*   26 */ ">", /* strings */
	/*   27 */ "=", /* strings */
	/*   28 */ "+", /* strings */
	/*   29 */ "+", /* unary plus */
	/*   30 */ "-", /* unary minus */
	/*   31 */ "NOT ",
	/*   32 */ ")", /* end of parameter list (array ref, function call, dim) */
	/*   33 */ ",",
	/*   34 */ ";",
	/*   35 */ "(", /* in expressions */
	/*   36 */ "ERR$(",
	/*   37 */ "INT(",
	/*   38 */ "TRUNC(",
	/*   39 */ "FRAC(",
	/*   40 */ "ABS(",
	/*   41 */ "SIN(",
	/*   42 */ "COS(",
	/*   43 */ "TAN(",
	/*   44 */ "ATN(",
	/*   45 */ "==",
	/*   46 */ "(", /* unknown */
	/*   47 */ "EXP(",
	/*   48 */ "LOG(",
	/*   49 */ "LOG10(",
	/*   50 */ "VAR ",
	/*   51 */ ")",
	/*   52 */ "INPAUX$",
	/*   53 */ "VAL(",
	/*   54 */ "INPMID$",
	/*   55 */ "",  /* Precedes functions that return a numeric value in PRINT statements */
	/*   56 */ "TIME$", /* no arguments */
	/*   57 */ ")=", /* for array assignment */
	/*   58 */ "LEFT$(", /* 1 argument */
	/*   59 */ "LEFT$(", /* 2 arguments */
	/*   60 */ "RIGHT$(", /* 1 argument */
	/*   61 */ "RIGHT$(", /* 2 arguments */
	/*   62 */ "MID$(", /* 2 arguments */
	/*   63 */ "MID$(", /* 3 arguments */
	/*   64 */ ",", /* unknown */
	/*   65 */ "ASIN(",
	/*   66 */ "CHR$(",
	/*   67 */ "}=",
	/*   68 */ "]=", /* unknown */
	/*   69 */ "=",
	/*   70 */ NULL, /* comment */
	/*   71 */ " TO ",
	/*   72 */ " STEP ",
	/*   73 */ " DOWNTO ",
	/*   74 */ " THEN",
	/*   75 */ " GOTO ",
	/*   76 */ " GOSUB ",
	/*   77 */ "#",
	/*   78 */ "SQR(",
	/*   79 */ "PI",
	/*   80 */ "[",
	/*   81 */ "]",
	/*   82 */ "ACOS(",
	/*   83 */ "INKEY$",
	/*   84 */ "RND(", /* 1 argument */
	/*   85 */ "RND", /* no arguments */
	/*   86 */ "RANDOM(",
	/*   87 */ "'", /* in print statemtent */
	/*   88 */ "}",
	/*   89 */ "AT(",
	/*   90 */ "IF",
	/*   91 */ "\\", /* integer DIV */
	/*   92 */ "FLOAT{",
	/*   93 */ "DOUBLE{",
	/*   94 */ "INPUT$(", /* 1 argument */
	/*   95 */ "INPUT$(", /* 2 arguments */
	/*   96 */ "INPUT",
	/*   97 */ "CHAR{",
	/*   98 */ "MKI$(",
	/*   99 */ "MKL$(",
	/*  100 */ "MKS$(",
	/*  101 */ "MKF$(",
	/*  102 */ "MKD$(",
	/*  103 */ "DEG(",
	/*  104 */ "RAD(",
	/*  105 */ "CVS(",
	/*  106 */ "CVF(",
	/*  107 */ "CVD(",
	/*  108 */ " AS ",
	/*  109 */ " OFFSET ",
	/*  110 */ "CFLOAT(",
	/*  111 */ "TRACE$",
	/*  112 */ "ROUND(", /* 1 argument */
	/*  113 */ "ROUND(", /* 2 arguments */
	/*  114 */ " WITH ",
	/*  115 */ "BIN$(", /* 1 argument */
	/*  116 */ "BIN$(", /* 2 arguments */
	/*  117 */ "MIN(", /* numbers */
	/*  118 */ "MIN(", /* strings */
	/*  119 */ "MAX(", /* numbers */
	/*  120 */ "MAX(", /* strings */
	/*  121 */ "SINGLE{",
	/*  122 */ " AT(",
	/*  123 */ "SINQ(",
	/*  124 */ ":",
	/*  125 */ "COSQ(",
	/*  126 */ "DATE$", /* no arguments */
	/*  127 */ "UPPER$(",
	/*  128 */ "SPACE$(",
	/*  129 */ "STRING$(", /* 2nd argument code */
	/*  130 */ "STRING$(", /* 2nd argument string */
	/*  131 */ "SUCC(",
	/*  132 */ "DIR$(",
	/*  133 */ "PRED(",
	/*  134 */ "DRAW(",
	/*  135 */ "TRIM$(",
	/*  136 */ "CMDLINE$", /* new in 3.7 */
	/*  137 */ "CMDLINE$", /* new in 3.7 */
	/*  138 */ "L:",
	/*  139 */ "W:",
	/*  140 */ "FACT(",
	/*  141 */ "COMBIN(",
	/*  142 */ "COMBIN(",
	/*  143 */ "VARIAT(",
	/*  144 */ "LTRIM$(", /* new in 3.7 */
	/*  145 */ "RTRIM$(", /* new in 3.7 */
	/*  146 */ "LCASE$(", /* new in 3.7 */
	/*  147 */ "UCASE$(", /* new in 3.7 */
	/*  148 */ "LOWER$(", /* new in 3.7 */
	/*  149 */ "OB_TEXT$(", /* new in 3.7 */
	/*  150 */ "ZTRIM$(", /* new in 3.7 */
	/*  151 */ "ERROR",
	/*  152 */ "STOP",
	/*  153 */ "BREAK",
	/*  154 */ " CONT",
	/*  155 */ "FIX(",
	/*  156 */ ",",
	/*  157 */ "(",
	/*  158 */ "FN ",
	/*  159 */ "@",
	/*  160 */ "MIRROR$(", /* new in 3.7 */
	/*  161 */ "TAB(",
	/*  162 */ "SPC(",
	/*  163 */ "USING ",
	/*  164 */ "DATE$(", /* 1 argument */ /* new in 3.7 */
	/*  165 */ "TIME$(", /* 1 argument */ /* new in 3.7 */
	/*  166 */ "TIMESTAMP$(", /* new in 3.7 */
	/*  167 */ "MENU",
	/*  168 */ "NEXT",
	/*  169 */ "CHAR$(", /* new in 3.7 */
	/*  170 */ "KEY",
	/*  171 */ "BUTTON",
	/*  172 */ "IBOX",
	/*  173 */ "OBOX",
	/*  174 */ "MESSAGE",
	/*  175 */ "OFF",
	/*  176 */ "KILL",
	/*  177 */ "KILL",
	/*  178 */ "KILL",
	/*  179 */ "KILL",
	/*  180 */ "KILL",
	/*  181 */ "KILL",
	/*  182 */ "BASE ",
	/*  183 */ "NULL", /* new in 3.7 */
	/*  184 */ "0",
	/*  185 */ "1",
	/*  186 */ "2", /* new in 3.7 */
	/*  187 */ "3", /* new in 3.7 */
	/*  188 */ "TRUE",
	/*  189 */ "FALSE",
	/*  190 */ "STR$(", /* 1 argument */
	/*  191 */ "STR$(", /* 2 arguments */
	/*  192 */ "STR$(", /* 3 arguments */
	/*  193 */ "HEX$(", /* 1 argument */
	/*  194 */ "HEX$(", /* 2 arguments */
	/*  195 */ "OCT$(", /* 1 argument */
	/*  196 */ "OCT$(", /* 2 arguments */
	/*  197 */ "OCT$(", /* ??? */
	/*  198 */ NULL, /* string constant */
	/*  199 */ NULL, /* string constant (pad byte) */
	/*  200 */ NULL, /* decimal constant */
	/*  201 */ NULL, /* decimal constant (pad byte) */
	/*  202 */ NULL, /* hexadecimal constant */
	/*  203 */ NULL, /* hexadecimal constant (pad byte) */
	/*  204 */ NULL, /* octal constant */
	/*  205 */ NULL, /* octal constant (pad byte) */
	/*  206 */ NULL, /* binary constant */
	/*  207 */ NULL, /* binary constant (pad byte) */
	/*  208 */ NULL, /* secondary function -> gfasft_208 */
	/*  209 */ NULL, /* secondary function -> gfasft_209 */
	/*  210 */ NULL, /* secondary function -> gfasft_210 */
	/*  211 */ NULL, /* secondary function -> gfasft_211 */
	/*  212 */ NULL, /* secondary function -> gfasft_212 */
	/*  213 */ NULL, /* secondary function -> gfasft_213 */
	/*  214 */ NULL, /* secondary function -> gfasft_214 */
	/*  215 */ NULL, /* octal double constant (pad byte) */
	/*  216 */ NULL, /* octal double constant */
	/*  217 */ NULL, /* binary double constant (pad byte) */
	/*  218 */ NULL, /* binary double constant */
	/*  219 */ NULL, /* hexadecimal double constant (pad byte) */
	/*  220 */ NULL, /* hexadecimal double constant */
	/*  221 */ NULL, /* decimal double constant (pad byte) */
	/*  222 */ NULL, /* string constant */
	/*  223 */ NULL, /* decimal double constant */
	/*  224 */ NULL, /* variable access, 1 byte follows */
	/*  225 */ NULL, /* " */
	/*  226 */ NULL, /* " */
	/*  227 */ NULL, /* " */
	/*  228 */ NULL, /* " */
	/*  229 */ NULL, /* " */
	/*  230 */ NULL, /* " */
	/*  231 */ NULL, /* " */
	/*  232 */ NULL, /* " */
	/*  233 */ NULL, /* " */
	/*  234 */ NULL, /* " */
	/*  235 */ NULL, /* " */
	/*  236 */ NULL, /* " */
	/*  237 */ NULL, /* " */
	/*  238 */ NULL, /* " */
	/*  239 */ NULL, /* " */
	/*  240 */ NULL, /* variable access, 2 bytes follow */
	/*  241 */ NULL, /* " */
	/*  242 */ NULL, /* " */
	/*  243 */ NULL, /* " */
	/*  244 */ NULL, /* " */
	/*  245 */ NULL, /* " */
	/*  246 */ NULL, /* " */
	/*  247 */ NULL, /* " */
	/*  248 */ NULL, /* " */
	/*  249 */ NULL, /* " */
	/*  250 */ NULL, /* " */
	/*  251 */ NULL, /* " */
	/*  252 */ NULL, /* " */
	/*  253 */ NULL, /* " */
	/*  254 */ NULL, /* " */
	/*  255 */ NULL  /* " */
};

/* Secondary function text */
const char *const gfasft_208[256] = {
	/*    0 */ "MUL(",
	/*    1 */ "DIV(",
	/*    2 */ "ADD(",
	/*    3 */ "SUB(",
	/*    4 */ "MOD(",
	/*    5 */ "AND(",
	/*    6 */ "OR(",
	/*    7 */ "XOR(",
	/*    8 */ "EQV(",
	/*    9 */ "IMP(",
	/*   10 */ "SHL(",
	/*   11 */ "SHR(",
	/*   12 */ "ROL(",
	/*   13 */ "ROR(",
	/*   14 */ "WORD(",
	/*   15 */ "CARD(",
	/*   16 */ "BYTE(",
	/*   17 */ "SWAP(",
	/*   18 */ "ADDRIN(",
	/*   19 */ "ADDRIN",
	/*   20 */ "ADDROUT(",
	/*   21 */ "ADDROUT",
	/*   22 */ "CONTRL(",
	/*   23 */ "CONTRL",
	/*   24 */ "GCONTRL(",
	/*   25 */ "GCONTRL",
	/*   26 */ "GINTIN(",
	/*   27 */ "GINTIN",
	/*   28 */ "GINTOUT(",
	/*   29 */ "GINTOUT",
	/*   30 */ "HIMEM",
	/*   31 */ "BASEPAGE",
	/*   32 */ "INTIN(",
	/*   33 */ "INTIN",
	/*   34 */ "INTOUT(",
	/*   35 */ "INTOUT",
	/*   36 */ "PTSIN(",
	/*   37 */ "PTSIN",
	/*   38 */ "PTSOUT(",
	/*   39 */ "PTSOUT",
	/*   40 */ "VDIBASE",
	/*   41 */ "WINDTAB(",
	/*   42 */ "WINDTAB",
	/*   43 */ "PTST(",
	/*   44 */ "BTST(",
	/*   45 */ "BSET(",
	/*   46 */ "BCLR(",
	/*   47 */ "BCHG(",
	/*   48 */ "SHL&(",
	/*   49 */ "SHR&(",
	/*   50 */ "ROL&(",
	/*   51 */ "ROR&(",
	/*   52 */ "SHL|(",
	/*   53 */ "SHR|(",
	/*   54 */ "ROL|(",
	/*   55 */ "ROR|(",
	/*   56 */ "CRSLIN",
	/*   57 */ "CRSCOL",
	/*   58 */ "MOUSEX",
	/*   59 */ "MOUSEY",
	/*   60 */ "MOUSEK",
	/*   61 */ "GB",
	/*   62 */ "TIMER",
	/*   63 */ "PEEK(",
	/*   64 */ "DPEEK(",
	/*   65 */ "LPEEK(",
	/*   66 */ "LEN(",
	/*   67 */ "ASC(",
	/*   68 */ "INSTR(",
	/*   69 */ "INSTR(",
	/*   70 */ "INSTR(",
	/*   71 */ "FRE(",
	/*   72 */ "POINT(",
	/*   73 */ "VAL?(",
	/*   74 */ "INP(",
	/*   75 */ "CVI(",
	/*   76 */ "CVL(",
	/*   77 */ "INP(#",
	/*   78 */ "EOF(#",
	/*   79 */ "LOF(#",
	/*   80 */ "LOC(#",
	/*   81 */ "DIM?(",
	/*   82 */ "RAND(",
	/*   83 */ "DFREE(",
	/*   84 */ "EXIST(",
	/*   85 */ "BIOS(",
	/*   86 */ "XBIOS(",
	/*   87 */ "GEMDOS(",
	/*   88 */ "ERR",
	/*   89 */ "FATAL",
	/*   90 */ "POS(",
	/*   91 */ "LPOS(",
	/*   92 */ "MENU(",
	/*   93 */ "INP?(",
	/*   94 */ "OUT?(",
	/*   95 */ "EXEC(",
	/*   96 */ "SUCC(",
	/*   97 */ "PRED(",
	/*   98 */ "W_HAND(#",
	/*   99 */ "W_INDEX(#",
	/*  100 */ "SGN(",
	/*  101 */ "EVEN(",
	/*  102 */ "ODD(",
	/*  103 */ "CINT(",
	/*  104 */ "GDOS?",
	/*  105 */ "V_OPNWK(",
	/*  106 */ "V_CLSWK()",
	/*  107 */ "V_OPNVWK(",
	/*  108 */ "V_CLSVWK()",
	/*  109 */ "V_UPDWK()",
	/*  110 */ "VST_LOAD_FONTS(",
	/*  111 */ "VST_UNLOAD_FONTS(",
	/*  112 */ "{",
	/*  113 */ "LONG{",
	/*  114 */ "INT{",
	/*  115 */ "CARD{",
	/*  116 */ "BYTE{",
	/*  117 */ "C:",
	/*  118 */ "EVNT_KEYBD()",
	/*  119 */ "EVNT_BUTTON(",
	/*  120 */ "EVNT_MOUSE(",
	/*  121 */ "EVNT_MESAG(",
	/*  122 */ "EVNT_TIMER(",
	/*  123 */ "EVNT_MULTI(",
	/*  124 */ "RSRC_LOAD(",
	/*  125 */ "RSRC_FREE()",
	/*  126 */ "RSRC_GADDR(",
	/*  127 */ "RSRC_SADDR(",
	/*  128 */ "RSRC_OBFIX(",
	/*  129 */ "SHEL_READ(",
	/*  130 */ "SHEL_WRITE(",
	/*  131 */ "SHEL_GET(",
	/*  132 */ "SHEL_PUT(",
	/*  133 */ "SHEL_FIND(",
	/*  134 */ "SHEL_ENVRN(",
	/*  135 */ "APPL_INIT()",
	/*  136 */ "APPL_READ(",
	/*  137 */ "APPL_WRITE(",
	/*  138 */ "APPL_FIND(",
	/*  139 */ "APPL_TPLAY(",
	/*  140 */ "APPL_TRECORD(",
	/*  141 */ "APPL_EXIT()",
	/*  142 */ "EVNT_DCLICK(",
	/*  143 */ "MENU_BAR(",
	/*  144 */ "MENU_ICHECK(",
	/*  145 */ "MENU_IENABLE(",
	/*  146 */ "MENU_TNORMAL(",
	/*  147 */ "MENU_TEXT(",
	/*  148 */ "MENU_REGISTER(",
	/*  149 */ "OBJC_ADD(",
	/*  150 */ "OBJC_DELETE(",
	/*  151 */ "OBJC_DRAW(",
	/*  152 */ "OBJC_FIND(",
	/*  153 */ "OBJC_OFFSET(",
	/*  154 */ "OBJC_ORDER(",
	/*  155 */ "OBJC_EDIT(",
	/*  156 */ "OBJC_CHANGE(",
	/*  157 */ "FORM_DO(",
	/*  158 */ "FORM_DIAL(",
	/*  159 */ "FORM_ALERT(",
	/*  160 */ "FORM_ERROR(",
	/*  161 */ "FORM_CENTER(",
	/*  162 */ "GRAF_RUBBERBOX(",
	/*  163 */ "GRAF_DRAGBOX(",
	/*  164 */ "GRAF_MOVEBOX(",
	/*  165 */ "GRAF_GROWBOX(",
	/*  166 */ "GRAF_SHRINKBOX(",
	/*  167 */ "GRAF_WATCHBOX(",
	/*  168 */ "GRAF_SLIDEBOX(",
	/*  169 */ "GRAF_HANDLE(",
	/*  170 */ "GRAF_MOUSE(",
	/*  171 */ "GRAF_MKSTATE(",
	/*  172 */ "SCRP_READ(",
	/*  173 */ "SCRP_WRITE(",
	/*  174 */ "FSEL_INPUT(",
	/*  175 */ "WIND_CREATE(",
	/*  176 */ "WIND_OPEN(",
	/*  177 */ "WIND_CLOSE(",
	/*  178 */ "WIND_DELETE(",
	/*  179 */ "WIND_GET(",
	/*  180 */ "WIND_SET(",
	/*  181 */ "WIND_FIND(",
	/*  182 */ "WIND_UPDATE(",
	/*  183 */ "WIND_CALC(",
	/*  184 */ "MALLOC(",
	/*  185 */ "MFREE(",
	/*  186 */ "MSHRINK(",
	/*  187 */ "VARPTR(",
	/*  188 */ "ARRPTR(",
	/*  189 */ "*",
	/*  190 */ "TYPE(",
	/*  191 */ "OB_ADR(",
	/*  192 */ "OB_NEXT(",
	/*  193 */ "OB_HEAD(",
	/*  194 */ "OB_TAIL(",
	/*  195 */ "OB_TYPE(",
	/*  196 */ "OB_FLAGS(",
	/*  197 */ "OB_STATE(",
	/*  198 */ "OB_SPEC(",
	/*  199 */ "OB_X(",
	/*  200 */ "OB_Y(",
	/*  201 */ "OB_W(",
	/*  202 */ "OB_H(",
	/*  203 */ "V:",
	/*  204 */ "FORM_KEYBD(",
	/*  205 */ "FORM_BUTTON(",
	/*  206 */ "STICK(",
	/*  207 */ "STRIG(",
	/*  208 */ "WORK_OUT(",
	/*  209 */ "RINSTR(",
	/*  210 */ "RINSTR(",
	/*  211 */ "RINSTR(",
	/*  212 */ "L~A",
	/*  213 */ "V~H",
	/*  214 */ "V_CLRWK()",
	/*  215 */ "VQT_NAME(",
	/*  216 */ "VQT_EXTENT(",
	/*  217 */ "RC_INTERSECT(",
	/*  218 */ "FSFIRST(",
	/*  219 */ "FSNEXT()",
	/*  220 */ "FSETDTA(",
	/*  221 */ "FGETDTA()",
	/*  222 */ "WORD{",
	/*  223 */ "INP&(",
	/*  224 */ "INP&(#",
	/*  225 */ "INP%(",
	/*  226 */ "INP%(#",
	/*  227 */ "_DATA",
	/*  228 */ "PADX(",
	/*  229 */ "PADY(",
	/*  230 */ "PADT(",
	/*  231 */ "LPENX",
	/*  232 */ "LPENY",
	/*  233 */ "STE?",
	/*  234 */ "TT?",
	/*  235 */ "SCALE(",
	/*  236 */ "_X",
	/*  237 */ "_Y",
	/*  238 */ "_C",
	/*  239 */ "GETSIZE(",
	/*
	 * below are new in 3.7 (GBE)
	 */
	/*  240 */ "GETSIZE(",
	/*  241 */ "_B",
	/*  242 */ "_AES",
	/*  243 */ "_TOS",
	/*  244 */ "A~|",
	/*  245 */ "CPU020()",
	/*  246 */ "FPU882()",
	/*  247 */ "GMOUSEK",
	/*  248 */ "GMOUSEX",
	/*  249 */ "GMOUSEY",
	/*  250 */ "GLOBAL(",
	/*  251 */ "GLOBAL",
	/*  252 */ "GETCOOKIE(",
	/*  253 */ "VS_COLOR(",
	/*  254 */ "HARDWARE?",
	/*  255 */ "_P"
};

/* Secondary function text */
const char *const gfasft_209[256] = {
	/*    0 */ "VQ_COLOR(",
	/*    1 */ "_MINT",
	/*    2 */ "_SW",
	/*    3 */ "_SH",
	/*    4 */ "VRO_CPYFM(",
	/*    5 */ "VRT_CPYFM(",
	/*    6 */ "V_OPNBM(",
	/*    7 */ "V_CLSBM(",
	/*    8 */ "DOSOUND(",
	/*    9 */ "MXALLOC(",
	/*   10 */ "KBSHIFT(",
	/*   11 */ "DGETDRV(",
	/*   12 */ "SYSCONF(",
	/*   13 */ "SSYSTEM(",
	/*   14 */ "VQ_VGDOS()",
	/*   15 */ "VST_ALIGNMENT(",
	/*   16 */ "PEXEC(",
	/*   17 */ "PDOMAIN(",
	/*   18 */ "_GEMDOS",
	/*   19 */ "TGETDATE()",
	/*   20 */ "TGETTIME()",
	/*   21 */ "VST_POINT(",
	/*   22 */ "APPL_GETINFO(",
	/*   23 */ "APPL_CONTROL(",
	/*   24 */ "OBJC_SYSVAR(",
	/*   25 */ "FSEL_EXINPUT(",
	/*   26 */ "KEYTBL(",
	/*   27 */ "LOCKSND()",
	/*   28 */ "UNLOCKSND()",
	/*   29 */ "SOUNDCMD(",
	/*   30 */ "SETBUFFER(",
	/*   31 */ "SETMODE(",
	/*   32 */ "SETTRACKS(",
	/*   33 */ "SETMONTRACKS(",
	/*   34 */ "SETINTERRUPT(",
	/*   35 */ "BUFFOPER(",
	/*   36 */ "DSPTRISTATE(",
	/*   37 */ "GPIO(",
	/*   38 */ "DEVCONNECT(",
	/*   39 */ "SNDSTATUS(",
	/*   40 */ "BUFFPTR(",
	/*   41 */ "VQT_WIDTH(",
	/*   42 */ "VQT_FONTINFO(",
	/*   43 */ "FOPEN(",
	/*   44 */ "FCLOSE(",
	/*   45 */ "FREAD(",
	/*   46 */ "FWRITE(",
	/*   47 */ "FCREATE(",
	/*   48 */ "FSEEK(",
	/*   49 */ "FDELETE(",
	/*   50 */ "SUPER(",
	/*   51 */ "F_BGET(",
	/*   52 */ "F_BPUT(",
	/*   53 */ "F_EOF(",
	/*   54 */ "F_LOC(",
	/*   55 */ "F_LOF(",
	/*   56 */ "DTA",
	/*   57 */ "_CPU",
	/*   58 */ "SND?",
	/*   59 */ "F_OPEN(",
	/*   60 */ "F_OUT(",
	/*   61 */ "F_OUT&(",
	/*   62 */ "F_OUT%(",
	/*   63 */ "F_INP(",
	/*   64 */ "F_INP&(",
	/*   65 */ "F_INP%(",
	/*   66 */ "M_ALLOC(",
	/*   67 */ "F_LINE_OUTPUT(",
	/*   68 */ "F_LINE_INPUT(",
	/*   69 */ "F_BLOAD(",
	/*   70 */ "F_BSAVE(",
	/*   71 */ "F_SEEK(",
	/*   72 */ "F_RELSEEK(",
	/*   73 */ "V_GET_PIXEL(",
	/*   74 */ "GSTICK()",
	/*   75 */ "GSTRIG()",
	/*   76 */ "BLITMODE(",
	/*   77 */ "CACHECTRL(",
	/*   78 */ "CT60_CACHE(",
	/*   79 */ "CT60_FLUSH_CACHE()",
	/*   80 */ "CT60_READ_CORE_TEMPERATURE(",
	/*   81 */ "CT60_RW_PARAMETER(",
	/*   82 */ "CT60_VMALLOC(",
	/*   83 */ "FGETCHAR(",
	/*   84 */ "FPUTCHAR(",
	/*   85 */ "WIND_NEW()",
	/*   86 */ "APPL_YIELD()",
	/*   87 */ "V_SHOW_C()",
	/*   88 */ "V_HIDE_C()",
	/*   89 */ "F_INPUT(",
	/*   90 */ "F_OUTPUT(",
	/*   91 */ "F_PREAD(",
	/*   92 */ "F_PWRITE(",
	/*   93 */ "JOYPAD(",
	/*   94 */ "UNPACK(",
	/*   95 */ "BINSTR(",
	/*   96 */ "BFIND(",
	/*   97 */ "BCOUNT(",
	/*   98 */ "BREPLACE(",
	/*   99 */ "BSWAP&(",
	/*  100 */ "BSWAP(",
	/*  101 */ "CCONWS(",
	/*  102 */ "DSETDRV(",
	/*  103 */ "DCREATE(",
	/*  104 */ "DDELETE(",
	/*  105 */ "TSETDATE(",
	/*  106 */ "TSETTIME(",
	/*  107 */ "DGETPATH(",
	/*  108 */ "DSETPATH(",
	/*  109 */ "GETTIME()",
	/*  110 */ "SETTIME(",
	/*  111 */ "FRENAME(",
	/*  112 */ "DRVMAP()",
	/*  113 */ "FDATIME(",
	/*  114 */ "DPATHCONF(",
	/*  115 */ "FATTRIB(",
	/*  116 */ "D_FREE(",
	/*  117 */ "RANDOM%()",
	/*  118 */ "GETREZ()",
	/*  119 */ "LOGBASE()",
	/*  120 */ "PHYSBASE()",
	/*  121 */ "V_CURTEXT(",
	/*  122 */ "VST_COLOR(",
	/*  123 */ "VST_EFFECTS(",
	/*  124 */ "VST_ROTATION(",
	/*  125 */ "VST_HEIGHT(",
	/*  126 */ "VST_FONT(",
	/*  127 */ "VQF_ATTRIBUTES()",
	/*  128 */ "VQL_ATTRIBUTES()",
	/*  129 */ "VQM_ATTRIBUTES()",
	/*  130 */ "VQT_ATTRIBUTES()",
	/*  131 */ "VR_TRNFM(",
	/*  132 */ "VQ_EXTND(",
	/*  133 */ "VQ_SCRNINFO(",
	/*  134 */ "V_BEZ(",
	/*  135 */ "V_BEZ_QUAL(",
	/*  136 */ "VQ_MOUSE(",
	/*  137 */ "VSL_TYPE(",
	/*  138 */ "VSL_WIDTH(",
	/*  139 */ "VSL_ENDS(",
	/*  140 */ "VSL_UDSTY(",
	/*  141 */ "VSL_COLOR(",
	/*  142 */ "VSM_COLOR(",
	/*  143 */ "VSM_HEIGHT(",
	/*  144 */ "VSM_TYPE(",
	/*  145 */ "VSWR_MODE(",
	/*  146 */ "VSF_COLOR(",
	/*  147 */ "VSF_INTERIOR(",
	/*  148 */ "VSF_PERIMETER(",
	/*  149 */ "VSF_STYLE(",
	/*  150 */ "VSF_UDPAT(",
	/*  151 */ "BCONIN(",
	/*  152 */ "BCONOUT(",
	/*  153 */ "BCOSTAT(",
	/*  154 */ "BCONSTAT(",
	/*  155 */ "SETEXC(",
	/*  156 */ "TICKCAL(",
	/*  157 */ "MEDIACH(",
	/*  158 */ "GETBPB(",
	/*  159 */ "RWABS(",
	/*  160 */ "FORM_POPUP(",
	/*  161 */ "MENU_ATTACH(",
	/*  162 */ "MENU_ISTART(",
	/*  163 */ "MENU_POPUP(",
	/*  164 */ "MENU_SETTINGS(",
	/*  165 */ "OBJC_XFIND(",
	/*  166 */ "RSRC_RCFIX(",
	/*  167 */ "APPL_SEARCH(",
	/*  168 */ "GRAF_MULTIRUBBER(",
	/*  169 */ "VS_CLIP(",
	/*  170 */ "VSC_FORM()",
	/*  171 */ "FDUP(",
	/*  172 */ "FFORCE(",
	/*  173 */ "FLOCK(",
	/*  174 */ "SYIELD()",
	/*  175 */ "FINSTAT(",
	/*  176 */ "FOUTSTAT(",
	/*  177 */ "FCNTL(",
	/*  178 */ "FSELECT(",
	/*  179 */ "SHUTDOWN(",
	/*  180 */ "PSYSCTL(",
	/*  181 */ "V_BAR(",
	/*  182 */ "V_RBOX(",
	/*  183 */ "V_RFBOX(",
	/*  184 */ "VR_RECFL(",
	/*  185 */ "V_ARC(",
	/*  186 */ "V_CIRCLE(",
	/*  187 */ "V_ELLARC(",
	/*  188 */ "V_ELLPIE(",
	/*  189 */ "V_ELLIPSE(",
	/*  190 */ "V_PIESLICE(",
	/*  191 */ "V_CONTOURFILL(",
	/*  192 */ "V_GTEXT(",
	/*  193 */ "V_PLINE(",
	/*  194 */ "V_PMARKER(",
	/*  195 */ "V_FILLAREA(",
	/*  196 */ "V_JUSTIFIED(",
	/*  197 */ "VQ_KEY_S(",
	/*  198 */ "V_BEZ_FILL(",
	/*  199 */ "SETCOLOR(",
	/*  200 */ "SETSCREEN(",
	/*  201 */ "SETPALETTE(",
	/*  202 */ "SUPEXEC(",
	/*  203 */ "KBRATE(",
	/*  204 */ "RSCONF(",
	/*  205 */ "CURSCONF(",
	/*  206 */ "BCONMAP(",
	/*  207 */ "KBDVBASE()",
	/*  208 */ "NVMACCESS(",
	/*  209 */ "IOREC(",
	/*  210 */ "IKBDWS(",
	/*  211 */ "MIDIWS(",
	/*  212 */ "GIACCESS(",
	/*  213 */ "FLOPRD(",
	/*  214 */ "FLOPWR(",
	/*  215 */ "FLOPFMT(",
	/*  216 */ "FLOPVER(",
	/*  217 */ "FLOPRATE(",
	/*  218 */ "DMAREAD(",
	/*  219 */ "DMAWRITE(",
	/*  220 */ "ONGIBIT(",
	/*  221 */ "OFFGIBIT(",
	/*  222 */ "BIOSKEYS()",
	/*  223 */ "SETPRT(",
	/*  224 */ "JDISINT(",
	/*  225 */ "JENABINT(",
	/*  226 */ "PROTOBT(",
	/*  227 */ "WAKETIME(",
	/*  228 */ "PRTBLK(",
	/*  229 */ "VGETMONITOR()",
	/*  230 */ "VGETSIZE(",
	/*  231 */ "VSETMODE(",
	/*  232 */ "VCHECKMODE(",
	/*  233 */ "VSETSCREEN(",
	/*  234 */ "VGETRGB(",
	/*  235 */ "VSETRGB(",
	/*  236 */ "VSETMASK(",
	/*  237 */ "VSETSYNC(",
	/*  238 */ "EGETSHIFT()",
	/*  239 */ "ESETSHIFT(",
	/*  240 */ "ESETBANK(",
	/*  241 */ "ESETCOLOR(",
	/*  242 */ "ESETGRAY(",
	/*  243 */ "ESETSMEAR(",
	/*  244 */ "EGETPALETTE(",
	/*  245 */ "ESETPALETTE(",
	/*  246 */ "CRC16(",
	/*  247 */ "CRC32(",
	/*  248 */ "WF_NAME(",
	/*  249 */ "WF_INFO(",
	/*  250 */ "ALERT(",
	/*  251 */ "LRWABS(",
	/*  252 */ "AP_SEND(",
	/*  253 */ "SALERT(",
	/*  254 */ "FCHMOD(",
	/*  255 */ "PTERMRES("
};

/* Secondary function text */
const char *const gfasft_210[256] = {
	/*    0 */ "SUBPTR(",
	/*    1 */ "S:",
	/*    2 */ "ERL",
	/*    3 */ "SYSTAB(",
	/*    4 */ "SYSTAB",
	/*    5 */ "CFREE(",
	/*    6 */ "MENU.TEXT(",
	/*    7 */ "SHEL.WRITE(",
	/*    8 */ "SYSTAB?",
	/*    9 */ "ALIGN(",
	/*   10 */ "BSWAP3(",
	/*   11 */ "MIRROR|(",
	/*   12 */ "MIRROR&(",
	/*   13 */ "MIRROR(",
	/*   14 */ "MIRROR3(",
	/*   15 */ "PCR?",
	/*   16 */ "CONTERM(",
	/*   17 */ "_PCR",
	/*   18 */ "F_LOAD(",
	/*   19 */ "OB.STATE(",
	/*   20 */ "OB.FLAGS(",
	/*   21 */ "OB_SELECTED(",
	/*   22 */ "OB_CROSSED(",
	/*   23 */ "OB_CHECKED(",
	/*   24 */ "OB_DISABLED(",
	/*   25 */ "OB_SELECTABLE(",
	/*   26 */ "OB_DEFAULT(",
	/*   27 */ "OB_EXIT(",
	/*   28 */ "OB_EDITABLE(",
	/*   29 */ "OB_RBUTTON(",
	/*   30 */ "OB_LASTOB(",
	/*   31 */ "OB_TOUCHEXIT(",
	/*   32 */ "OB_HIDETREE(",
	/*   33 */ "OB.RBUTTON(",
	/*   34 */ "CHECKSUM(",
	/*   35 */ "FSOCKET(",
	/*   36 */ "FSOCKETPAIR(",
	/*   37 */ "FACCEPT(",
	/*   38 */ "FCONNECT(",
	/*   39 */ "FBIND(",
	/*   40 */ "FRECVMSG(",
	/*   41 */ "FSENDMSG(",
	/*   42 */ "FLISTEN(",
	/*   43 */ "FRECVFROM(",
	/*   44 */ "FSENDTO(",
	/*   45 */ "FSETSOCKOPT(",
	/*   46 */ "FGETSOCKOPT(",
	/*   47 */ "FGETPEERNAME(",
	/*   48 */ "FGETSOCKNAME(",
	/*   49 */ "FSHUTDOWN(",
	/*   50 */ "LDG_INIT()",
	/*   51 */ "LDG_OPEN(",
	/*   52 */ "LDG_FIND(",
	/*   53 */ "LDG_CLOSE(",
	/*   54 */ "LDG_LIBPATH(",
	/*   55 */ "LDG_ERROR()",
	/*   56 */ "STIK_INIT(",
	/*   57 */ "STIK_INIT(",
	/*   58 */ "STIK_KRFREE(",
	/*   59 */ "STIK_KRGETFREE(",
	/*   60 */ "STIK_KRGETFREE(",
	/*   61 */ "STIK_GET_ERR_TEXT(",
	/*   62 */ "STIK_GETVSTR(",
	/*   63 */ "STIK_GETVSTR(",
	/*   64 */ "STIK_TCP_OPEN(",
	/*   65 */ "STIK_TCP_CLOSE(",
	/*   66 */ "STIK_TCP_SEND(",
	/*   67 */ "STIK_TCP_WAIT_STATE(",
	/*   68 */ "STIK_TCP_WAIT_STATE(",
	/*   69 */ "STIK_TCP_WAIT_STATE(",
	/*   70 */ "STIK_TCP_WAIT_STATE(",
	/*   71 */ "STIK_TCP_WAIT_STATE(",
	/*   72 */ "STIK_CNKICK(",
	/*   73 */ "STIK_CNBYTE_COUNT(",
	/*   74 */ "STIK_CNGET_CHAR(",
	/*   75 */ "STIK_CNGET_CHAR(",
	/*   76 */ "STIK_CNGET_BLOCK(",
	/*   77 */ "STIK_CNGET_BLOCK(",
	/*   78 */ "STIK_RESOLVE(",
	/*   79 */ "STIK_RESOLVE(",
	/*   80 */ "STIK_RESOLVE(",
	/*   81 */ "STIK_RESOLVE(",
	/*   82 */ "STIK_RESOLVE(",
	/*   83 */ "STIK_CNGETINFO(",
	/*   84 */ "STIK_CNGETINFO(",
	/*   85 */ "STIK_CNGETINFO(",
	/*   86 */ "STIK_CNGETINFO(",
	/*   87 */ "STIK_CNGETINFO(",
	/*   88 */ "STIK_CNGETINFO(",
	/*   89 */ "FONT_INIT()",
	/*   90 */ "FONT_SELECT(",
	/*   91 */ "WEEKDAY(",
	/*   92 */ "WEEKDAY(",
	/*   93 */ "AV_INIT()",
	/*   94 */ "AV_PROTOKOLL(",
	/*   95 */ "AV_PROTOKOLL(",
	/*   96 */ "AV_PROTOKOLL(",
	/*   97 */ "AV_SENDKEY(",
	/*   98 */ "AV_SENDKEY(",
	/*   99 */ "AV_SENDKEY(",
	/*  100 */ "AV_SENDKEY(",
	/*  101 */ "AV_STARTPROG(",
	/*  102 */ "AV_ACCWINDOPEN(",
	/*  103 */ "AV_ACCWINDCLOSED(",
	/*  104 */ "AV_ACCWINDCLOSED(",
	/*  105 */ "AV_PATH_UPDATE(",
	/*  106 */ "AV_WHAT_IZIT(",
	/*  107 */ "AV_WHAT_IZIT(",
	/*  108 */ "AV_EXIT()",
	/*  109 */ "AV_STARTED(",
	/*  110 */ "AV_XWIND(",
	/*  111 */ "AV_XWIND(",
	/*  112 */ "AV_XWIND(",
	/*  113 */ "AV_XWIND(",
	/*  114 */ "AV_XWIND(",
	/*  115 */ "VA_START(",
	/*  116 */ "BYTE2WORD(",
	/*  117 */ "WORD2LONG(",
	/*  118 */ "NYBLE2BYTE(",
	/*  119 */ "F_CLOSE(",
	/*  120 */ "APPL.FIND(",
	/*  121 */ "ENVIRON",
	/*  122 */ NULL,
	/*  123 */ NULL,
	/*  124 */ NULL,
	/*  125 */ NULL,
	/*  126 */ NULL,
	/*  127 */ NULL,
	/*  128 */ NULL,
	/*  129 */ NULL,
	/*  130 */ NULL,
	/*  131 */ NULL,
	/*  132 */ NULL,
	/*  133 */ NULL,
	/*  134 */ NULL,
	/*  135 */ NULL,
	/*  136 */ NULL,
	/*  137 */ NULL,
	/*  138 */ NULL,
	/*  139 */ NULL,
	/*  140 */ NULL,
	/*  141 */ NULL,
	/*  142 */ NULL,
	/*  143 */ NULL,
	/*  144 */ NULL,
	/*  145 */ NULL,
	/*  146 */ NULL,
	/*  147 */ NULL,
	/*  148 */ NULL,
	/*  149 */ NULL,
	/*  150 */ NULL,
	/*  151 */ NULL,
	/*  152 */ NULL,
	/*  153 */ NULL,
	/*  154 */ NULL,
	/*  155 */ NULL,
	/*  156 */ NULL,
	/*  157 */ NULL,
	/*  158 */ NULL,
	/*  159 */ NULL,
	/*  160 */ NULL,
	/*  161 */ NULL,
	/*  162 */ NULL,
	/*  163 */ NULL,
	/*  164 */ NULL,
	/*  165 */ NULL,
	/*  166 */ NULL,
	/*  167 */ NULL,
	/*  168 */ NULL,
	/*  169 */ NULL,
	/*  170 */ NULL,
	/*  171 */ NULL,
	/*  172 */ NULL,
	/*  173 */ NULL,
	/*  174 */ NULL,
	/*  175 */ NULL,
	/*  176 */ NULL,
	/*  177 */ NULL,
	/*  178 */ NULL,
	/*  179 */ NULL,
	/*  180 */ NULL,
	/*  181 */ NULL,
	/*  182 */ NULL,
	/*  183 */ NULL,
	/*  184 */ NULL,
	/*  185 */ NULL,
	/*  186 */ NULL,
	/*  187 */ NULL,
	/*  188 */ NULL,
	/*  189 */ NULL,
	/*  190 */ NULL,
	/*  191 */ NULL,
	/*  192 */ NULL,
	/*  193 */ NULL,
	/*  194 */ NULL,
	/*  195 */ NULL,
	/*  196 */ NULL,
	/*  197 */ NULL,
	/*  198 */ NULL,
	/*  199 */ NULL,
	/*  200 */ NULL,
	/*  201 */ NULL,
	/*  202 */ NULL,
	/*  203 */ NULL,
	/*  204 */ NULL,
	/*  205 */ NULL,
	/*  206 */ NULL,
	/*  207 */ NULL,
	/*  208 */ NULL,
	/*  209 */ NULL,
	/*  210 */ NULL,
	/*  211 */ NULL,
	/*  212 */ NULL,
	/*  213 */ NULL,
	/*  214 */ NULL,
	/*  215 */ NULL,
	/*  216 */ NULL,
	/*  217 */ NULL,
	/*  218 */ NULL,
	/*  219 */ NULL,
	/*  220 */ NULL,
	/*  221 */ NULL,
	/*  222 */ NULL,
	/*  223 */ NULL,
	/*  224 */ NULL,
	/*  225 */ NULL,
	/*  226 */ NULL,
	/*  227 */ NULL,
	/*  228 */ NULL,
	/*  229 */ NULL,
	/*  230 */ NULL,
	/*  231 */ NULL,
	/*  232 */ NULL,
	/*  233 */ NULL,
	/*  234 */ NULL,
	/*  235 */ NULL,
	/*  236 */ NULL,
	/*  237 */ NULL,
	/*  238 */ NULL,
	/*  239 */ NULL,
	/*  240 */ NULL,
	/*  241 */ NULL,
	/*  242 */ NULL,
	/*  243 */ NULL,
	/*  244 */ NULL,
	/*  245 */ NULL,
	/*  246 */ NULL,
	/*  247 */ NULL,
	/*  248 */ NULL,
	/*  249 */ NULL,
	/*  250 */ NULL,
	/*  251 */ NULL,
	/*  252 */ NULL,
	/*  253 */ NULL,
	/*  254 */ NULL,
	/*  255 */ NULL
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
