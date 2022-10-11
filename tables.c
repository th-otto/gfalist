#include <stddef.h>
#include "tables.h"

/* Line command text */
const char *const gfalct[520] = {
	/*    0 */ "DO",
	/*    4 */ "LOOP",
	/*    8 */ "REPEAT",
	/*   12 */ "UNTIL ",
	/*   16 */ "WHILE ",
	/*   20 */ "WEND",
	/*   24 */ "PROCEDURE ",
	/*   28 */ "RETURN",
	/*   32 */ "IF ",
	/*   36 */ "ENDIF",
	/*   40 */ "FUNCTION ",
	/*   44 */ "ENDFUNC",
	/*   48 */ "SELECT ",
	/*   52 */ "ENDSELECT",
	/*   56 */ "ELSE",
	/*   60 */ "DEFAULT",
	/*   64 */ "ELSE IF ",
	/*   68 */ "RETURN ",
	/*   72 */ "RETURN ",
	/*   76 */ "FOR ",						/* FOR x# */
	/*   80 */ "FOR ",						/* FOR x# */
	/*   84 */ "FOR ",						/* FOR x# */
	/*   88 */ "FOR ",						/* FOR x% */
	/*   92 */ "FOR ",						/* FOR x% */
	/*   96 */ "FOR ",						/* FOR x% */
	/*  100 */ "FOR ",						/* FOR x& */
	/*  104 */ "FOR ",						/* FOR x& */
	/*  108 */ "FOR ",						/* FOR x& */
	/*  112 */ "FOR ",						/* FOR x| */
	/*  116 */ "FOR ",						/* FOR x| */
	/*  120 */ "FOR ",						/* FOR x| */
	/*  124 */ "NEXT ",						/* NEXT x# */
	/*  128 */ "NEXT ",						/* NEXT x# */
	/*  132 */ "NEXT ",						/* NEXT x# */
	/*  136 */ "NEXT ",						/* NEXT x% */
	/*  140 */ "NEXT ",						/* NEXT x% */
	/*  144 */ "NEXT ",						/* NEXT x% */
	/*  148 */ "NEXT ",						/* NEXT x& */
	/*  152 */ "NEXT ",						/* NEXT x& */
	/*  156 */ "NEXT ",						/* NEXT x& */
	/*  160 */ "NEXT ",						/* NEXT x| */
	/*  164 */ "NEXT ",						/* NEXT x| */
	/*  168 */ "NEXT ",						/* NEXT x| */
	/*  172 */ "EXIT IF ",
	/*  176 */ "SELECT ",
	/*  180 */ "",							/* End of program */
	/*  184 */ "",
	/*  188 */ "",
	/*  192 */ "MONITOR",
	/*  196 */ "DO WHILE ",
	/*  200 */ "DO UNTIL ",
	/*  204 */ "LOOP WHILE ",
	/*  208 */ "LOOP UNTIL ",
	/*  212 */ "LOCAL ",
	/*  216 */ "> PROCEDURE ",
	/*  220 */ "EXIT IF ",
	/*  224 */ "CASE ",
	/*  228 */ "DEFFN ",
	/*  232 */ "GOTO ",
	/*  236 */ "RESTORE",
	/*  240 */ "",      					/* implicit @ */
	/*  244 */ "GOSUB ",
	/*  248 */ "@",
	/*  252 */ "",
	/*  256 */ "LET ",						/* LET x#= */
	/*  260 */ "LET ",						/* LET x$= */
	/*  264 */ "LET ",						/* LET x%= */
	/*  268 */ "LET ",						/* LET x!= */
	/*  272 */ "LET ",						/* LET x&= */
	/*  276 */ "LET ",						/* LET x|= */
	/*  280 */ "LET ",						/* LET x#()= */
	/*  284 */ "LET ",						/* LET x$()= */
	/*  288 */ "LET ",						/* LET x%()= */
	/*  292 */ "LET ",						/* LET x!()= */
	/*  296 */ "LET ",						/* LET x&()= */
	/*  300 */ "LET ",						/* LET x|()= */
	/*  304 */ "",							/* x#= */
	/*  308 */ "",							/* x$= */
	/*  312 */ "",							/* x%= */
	/*  316 */ "",							/* x!= */
	/*  320 */ "",							/* x&= */
	/*  324 */ "",							/* x|= */
	/*  328 */ "",							/* x#()= */
	/*  332 */ "",							/* x$()= */
	/*  336 */ "",							/* x%()= */
	/*  340 */ "",							/* x!()= */
	/*  344 */ "",							/* x&()= */
	/*  348 */ "",							/* x|()= */
	/*  352 */ "PLOT ",
	/*  356 */ "PSET ",
	/*  360 */ "ALINE ",
	/*  364 */ "HLINE ",
	/*  368 */ "ARECT ",
	/*  372 */ "APOLY ",
	/*  376 */ "ACHAR ",
	/*  380 */ "ACLIP ",
	/*  384 */ "COLOR ",
	/*  388 */ "POKE ",
	/*  392 */ "DPOKE ",
	/*  396 */ "LPOKE ",
	/*  400 */ "SPOKE ",
	/*  404 */ "SDPOKE ",
	/*  408 */ "SLPOKE ",
	/*  412 */ "RESERVE",
	/*  416 */ "RESERVE ",
	/*  420 */ "RESUME",
	/*  424 */ "RESUME ",
	/*  428 */ "RESUME ",
	/*  432 */ "",
	/*  436 */ "RECORD ",
	/*  440 */ "DELAY ",
	/*  444 */ "BGET ",
	/*  448 */ "BPUT ",
	/*  452 */ "ATEXT ",
	/*  456 */ "REM",     /* Append " " if at least one char long. */
	/*  460 */ "'",       /* Append " " if at least one char long. */
	/*  464 */ "==>",     /* Append " " if at least one char long. */
	/*  468 */ "DATA",    /* Append " " if at least one char long. */
	/*  472 */ "SWAP ",
	/*  476 */ "SWAP ",
	/*  480 */ "SWAP ",
	/*  484 */ "*",
	/*  488 */ "*",
	/*  492 */ "SINGLE{",
	/*  496 */ "END",
	/*  500 */ "LOCATE ",
	/*  504 */ "ON ",
	/*  508 */ "",
	/*  512 */ "ON ERROR",
	/*  516 */ "ON ERROR GOSUB ",
	/*  520 */ "ON BREAK",
	/*  524 */ "ON BREAK CONT",
	/*  528 */ "ON BREAK GOSUB ",
	/*  532 */ "ON MENU GOSUB ",
	/*  536 */ "ON MENU MESSAGE GOSUB ",
	/*  540 */ "ON MENU KEY GOSUB ",
	/*  544 */ "ON MENU BUTTON ",
	/*  548 */ "ON MENU",
	/*  552 */ "ON MENU ",
	/*  556 */ "MENU ",
	/*  560 */ "MENU OFF",
	/*  564 */ "MENU KILL",
	/*  568 */ "MENU ",
	/*  572 */ "TRON",
	/*  576 */ "TRON ",
	/*  580 */ "TRON ",
	/*  584 */ "TROFF",
	/*  588 */ "PRINT",  /* Append space if it has parameters */
	/*  592 */ "PRINT ", /* PRINT # */
	/*  596 */ "TEXT ",
	/*  600 */ "TEXT ",
	/*  604 */ "RCALL ",
	/*  608 */ "CALL ",
	/*  612 */ "FORM INPUT ",
	/*  616 */ "LINE INPUT ",
	/*  620 */ "LINE ",
	/*  624 */ "",
	/*  628 */ "",
	/*  632 */ "",
	/*  636 */ "",
	/*  640 */ "INC ",
	/*  644 */ "INC ",
	/*  648 */ "INC ",
	/*  652 */ "INC ",
	/*  656 */ "INC ",						/* INC x#() */
	/*  660 */ "INC ",						/* INC x%() */
	/*  664 */ "INC ",						/* INC x&() */
	/*  668 */ "INC ",						/* INC x|() */
	/*  672 */ "DEC ",
	/*  676 */ "DEC ",
	/*  680 */ "DEC ",
	/*  684 */ "DEC ",
	/*  688 */ "DEC ",						/* DEC x#() */
	/*  692 */ "DEC ",						/* DEC x%() */
	/*  696 */ "DEC ",						/* DEC x&() */
	/*  700 */ "DEC ",						/* DEC x|() */
	/*  704 */ "ADD ",
	/*  708 */ "ADD ",
	/*  712 */ "ADD ",
	/*  716 */ "ADD ",
	/*  720 */ "ADD ",						/* ADD x#() */
	/*  724 */ "ADD ",						/* ADD x%() */
	/*  728 */ "ADD ",						/* ADD x&() */
	/*  732 */ "ADD ",						/* ADD x|() */
	/*  736 */ "SUB ",
	/*  740 */ "SUB ",
	/*  744 */ "SUB ",
	/*  748 */ "SUB ",
	/*  752 */ "SUB ",						/* SUB x#() */
	/*  756 */ "SUB ",						/* SUB x%() */
	/*  760 */ "SUB ",						/* SUB x&() */
	/*  764 */ "SUB ",						/* SUB x|() */
	/*  768 */ "MUL ",
	/*  772 */ "MUL ",
	/*  776 */ "MUL ",
	/*  780 */ "MUL ",
	/*  784 */ "MUL ",						/* MUL x#() */
	/*  788 */ "MUL ",						/* MUL x%() */
	/*  792 */ "MUL ",						/* MUL x&() */
	/*  796 */ "MUL ",						/* MUL x|() */
	/*  800 */ "DIV ",
	/*  804 */ "DIV ",
	/*  808 */ "DIV ",
	/*  812 */ "DIV ",
	/*  816 */ "DIV ",						/* DIV x#() */
	/*  820 */ "DIV ",						/* DIV x%() */
	/*  824 */ "DIV ",						/* DIV x&() */
	/*  828 */ "DIV ",						/* DIV x|() */
	/*  832 */ "SEEK #",
	/*  836 */ "RELSEEK #",
	/*  840 */ "DIM ",
	/*  844 */ "SETCOLOR ",
	/*  848 */ "SETCOLOR ",
	/*  852 */ "BMOVE ",
	/*  856 */ "VDISYS",    /* No further tokens follow */
	/*  860 */ "VDISYS ",
	/*  864 */ "VDISYS ",
	/*  868 */ "VDISYS ",
	/*  872 */ "GEMSYS",
	/*  876 */ "GEMSYS ",
	/*  880 */ "PTSIN(",
	/*  884 */ "PTSOUT(",
	/*  888 */ "INTIN(",
	/*  892 */ "INTOUT(",
	/*  896 */ "ADDRIN(",
	/*  900 */ "ADDROUT(",
	/*  904 */ "GINTIN(",
	/*  908 */ "GINTOUT(",
	/*  912 */ "CONTRL(",
	/*  916 */ "GCONTRL(",
	/*  920 */ "{",
	/*  924 */ "LONG{",
	/*  928 */ "INT{",
	/*  932 */ "CARD{",
	/*  936 */ "BYTE{",
	/*  940 */ "CHAR{",
	/*  944 */ "FLOAT{",
	/*  948 */ "DOUBLE{",
	/*  952 */ "ON MENU IBOX ",
	/*  956 */ "ON MENU OBOX ",
	/*  960 */ "VOID ",
	/*  964 */ "~",
	/*  968 */ "OB_NEXT(",
	/*  972 */ "OB_HEAD(",
	/*  976 */ "OB_TAIL(",
	/*  980 */ "OB_TYPE(",
	/*  984 */ "OB_FLAGS(",
	/*  988 */ "OB_STATE(",
	/*  992 */ "OB_SPEC(",
	/*  996 */ "OB_X(",
	/* 1000 */ "OB_Y(",
	/* 1004 */ "OB_W(",
	/* 1008 */ "OB_H(",
	/* 1012 */ "ABSOLUTE ",
	/* 1016 */ ".",
	/* 1020 */ "RANDOMIZE",
	/* 1024 */ "ALERT ",
	/* 1028 */ "GET ",
	/* 1032 */ "GET ",
	/* 1036 */ "GET ",
	/* 1040 */ "PUT ",
	/* 1044 */ "PUT ",
	/* 1048 */ "PUT ",
	/* 1052 */ "PUT ",
	/* 1056 */ "",
	/* 1060 */ "OPEN ",
	/* 1064 */ "OPENW ",
	/* 1068 */ "OPENW #",
	/* 1072 */ "CLOSE",
	/* 1076 */ "CLOSEW ",
	/* 1080 */ "CLOSEW #",
	/* 1084 */ "CLEAR",
	/* 1088 */ "CLEARW ",
	/* 1092 */ "CLEARW #",
	/* 1096 */ "TOPW #",
	/* 1100 */ "TITLEW #",
	/* 1104 */ "INFOW #",
	/* 1108 */ "DEFLINE",
	/* 1112 */ "GRAPHMODE ",
	/* 1116 */ "DEFMOUSE ",
	/* 1120 */ "DEFMOUSE ",
	/* 1124 */ "DEFLIST ",
	/* 1128 */ "DEFMARK",
	/* 1132 */ "DEFNUM ",
	/* 1136 */ "DEFTEXT",
	/* 1140 */ "DEFFILL",
	/* 1144 */ "DEFFILL",
	/* 1148 */ "BOX ",
	/* 1152 */ "PBOX ",
	/* 1156 */ "RBOX ",
	/* 1160 */ "PRBOX ",
	/* 1164 */ "CIRCLE ",
	/* 1168 */ "CIRCLE ",
	/* 1172 */ "PCIRCLE ",
	/* 1176 */ "PCIRCLE ",
	/* 1180 */ "ELLIPSE ",
	/* 1184 */ "ELLIPSE ",
	/* 1188 */ "PELLIPSE ",
	/* 1192 */ "PELLIPSE ",
	/* 1196 */ "ERROR ",
	/* 1200 */ "FILL ",
	/* 1204 */ "FILL ",
	/* 1208 */ "HIDEM",
	/* 1212 */ "LPRINT",  /* Append space if it has parameters */
	/* 1216 */ "LSET ",
	/* 1220 */ "MID$(",
	/* 1224 */ "NEW",
	/* 1228 */ "OUT ",
	/* 1232 */ "OUT ",
	/* 1236 */ "QUIT",
	/* 1240 */ "",
	/* 1244 */ "CHDIR ",
	/* 1248 */ "CHDRIVE ",
	/* 1252 */ "CHDRIVE ",
	/* 1256 */ "CLR ",
	/* 1260 */ "CLS",     /* Append space if it has parameters */
	/* 1264 */ "",
	/* 1268 */ "CONT",
	/* 1272 */ "",
	/* 1276 */ "DIR",
	/* 1280 */ "HTAB ",
	/* 1284 */ "VTAB ",
	/* 1288 */ "ERASE ",
	/* 1292 */ "EXEC ",
	/* 1296 */ "FIELD ",
	/* 1300 */ "FILES",
	/* 1304 */ "TOUCH #",
	/* 1308 */ "",
	/* 1312 */ "EDIT",
	/* 1316 */ "FILESELECT ",
	/* 1320 */ "NAME ",
	/* 1324 */ "MKDIR ",
	/* 1328 */ "MOUSE ",
	/* 1332 */ "KILL ",
	/* 1336 */ "RMDIR ",
	/* 1340 */ "RSET ",
	/* 1344 */ "SETTIME ",
	/* 1348 */ "SGET ",
	/* 1352 */ "SHOWM",
	/* 1356 */ "SPUT ",
	/* 1360 */ "STOP",
	/* 1364 */ "SYSTEM",  /* Append " " if other tokens follow */
	/* 1368 */ "VSYNC",
	/* 1372 */ "HARDCOPY",
	/* 1376 */ "PAUSE ",
	/* 1380 */ "QSORT ",
	/* 1384 */ "SSORT ",
	/* 1388 */ "POLYLINE ",
	/* 1392 */ "POLYFILL ",
	/* 1396 */ "POLYMARK ",
	/* 1400 */ "INSERT ",
	/* 1404 */ "DELETE ",
	/* 1408 */ "RENAME ",
	/* 1412 */ "STICK ",
	/* 1416 */ "SOUND",
	/* 1420 */ "WAVE",
	/* 1424 */ "CLIP ",
	/* 1428 */ "CLIP ",
	/* 1432 */ "CLIP ",
	/* 1436 */ "CLIP ",
	/* 1440 */ "CLIP ",
	/* 1444 */ "FULLW ",
	/* 1448 */ "EVERY ",
	/* 1452 */ "EVERY ",
	/* 1456 */ "EVERY ",
	/* 1460 */ "AFTER ",
	/* 1464 */ "AFTER ",
	/* 1468 */ "AFTER ",
	/* 1472 */ "INPUT ",
	/* 1476 */ "INPUT ",
	/* 1480 */ "DRAW ",
	/* 1484 */ "DRAW ",
	/* 1488 */ "READ ",
	/* 1492 */ "",
	/* 1496 */ "SETMOUSE ",
	/* 1500 */ "KEYPAD ",
	/* 1504 */ "KEYTEST ",
	/* 1508 */ "KEYGET ",
	/* 1512 */ "KEYLOOK ",
	/* 1516 */ "KEYPRESS ",
	/* 1520 */ "KEYDEF ",
	/* 1524 */ "DEFINT ",
	/* 1528 */ "DEFFLT ",
	/* 1532 */ "DEFBYT ",
	/* 1536 */ "DEFWRD ",
	/* 1540 */ "DEFBIT ",
	/* 1544 */ "DEFSTR ",
	/* 1548 */ "BOUNDARY ",
	/* 1552 */ "LIST ",
	/* 1556 */ "LLIST ",
	/* 1560 */ "SAVE ",
	/* 1564 */ "PSAVE ",
	/* 1568 */ "CHAIN ",
	/* 1572 */ "RUN",
	/* 1576 */ "RUN ",
	/* 1580 */ "LOAD ",
	/* 1584 */ "SETDRAW ",
	/* 1588 */ "ARRAYFILL ",
	/* 1592 */ "DUMP",
	/* 1596 */ "BITBLT ",
	/* 1600 */ "BITBLT ",
	/* 1604 */ "BITBLT ",
	/* 1608 */ "STORE ",
	/* 1612 */ "RECALL ",
	/* 1616 */ "BSAVE ",
	/* 1620 */ "BLOAD ",
	/* 1624 */ "V~H=",
	/* 1628 */ "TIME$=",
	/* 1632 */ "DATE$=",
	/* 1636 */ "SPRITE ",
	/* 1640 */ "OPTION ",
	/* 1644 */ "$",
	/* 1648 */ "WINDTAB(",
	/* 1652 */ "RC_COPY ",
	/* 1656 */ "MODE ",
	/* 1660 */ "",
	/* 1664 */ "WRITE ",
	/* 1668 */ "INLINE ",
	/* 1672 */ "WORD{",
	/* 1676 */ "VSETCOLOR ",
	/* 1680 */ "OUT& ",
	/* 1684 */ "OUT% ",
	/* 1688 */ "CURVE ",
	/* 1692 */ "_DATA= ",
	/* 1696 */ "MAT ADD ",
	/* 1700 */ "MAT ADD ",
	/* 1704 */ "MAT SUB ",
	/* 1708 */ "MAT SUB ",
	/* 1712 */ "MAT CPY ",
	/* 1716 */ "MAT XCPY ",
	/* 1720 */ "MAT DET ",
	/* 1724 */ "MAT NEG ",
	/* 1728 */ "MAT ABS ",
	/* 1732 */ "MAT NORM ",
	/* 1736 */ "MAT READ ",
	/* 1740 */ "MAT PRINT ",
	/* 1744 */ "MAT TRANS ",
	/* 1748 */ "MAT CLR ",
	/* 1752 */ "MAT SET ",
	/* 1756 */ "MAT ONE ",
	/* 1760 */ "MAT BASE ",
	/* 1764 */ "MAT QDET ",
	/* 1768 */ "MAT INPUT ",
	/* 1772 */ "MAT RANG ",
	/* 1776 */ "MAT MUL ",
	/* 1780 */ "MAT MUL ",
	/* 1784 */ "MAT MUL ",
	/* 1788 */ "MAT MUL ",
	/* 1792 */ "MAT INV ",
	/* 1796 */ "> FUNCTION ",
	/* 1800 */ "DMASOUND ",
	/* 1804 */ "DMACONTROL ",
	/* 1808 */ "MW_OUT ",
	/* 1812 */ "MW_OUT ",
	/* 1816 */ "MW_OUT ",
	/* 1820 */ "MW_OUT ",
	/* 1824 */ "MW_OUT ",
	/* 1828 */ "MW_OUT ",
	/* 1832 */ "MW_OUT ",
	/* 1836 */ "MW_OUT ",
	/* 1840 */ "SET.MFDB ",
	/* 1844 */ "SET.PXYWH ",
	/* 1848 */ "BCLEAR ",
	/* 1852 */ "BFILL ",
	/* 1856 */ "BXLATE ",
	/* 1860 */ "BEEP",
	/* 1864 */ "GHIDEM",
	/* 1868 */ "GSHOWM",
	/* 1872 */ "GMOUSE",
	/* 1876 */ "VCURVE ",
	/* 1880 */ "VRC_COPY ",
	/* 1884 */ "VGET ",
	/* 1888 */ "VPLOT ",
	/* 1892 */ "TIMESTAMP",
	/* 1896 */ "AMOUSE ",
	/* 1900 */ "VLINE ",
	/* 1904 */ "CPUFLUSH",
	/* 1908 */ "BCRYPT ",
	/* 1912 */ "GSTICK ",
	/* 1916 */ "VSGET ",
	/* 1920 */ "VSPUT ",
	/* 1924 */ "VCLS ",
	/* 1928 */ "PALGET ",
	/* 1932 */ "PALSET ",
	/* 1936 */ "LOG_MSG ",
	/* 1940 */ "LOG_SET ",
	/* 1944 */ "LOG_FILE ",
	/* 1948 */ "LOG_KILL",
	/* 1952 */ "SET.PXYXY ",
	/* 1956 */ "VBOX ",
	/* 1960 */ "VBITBLT ",
	/* 1964 */ "SCALL ",
	/* 1968 */ "VPUT ",
	/* 1972 */ "VPUT ",
	/* 1976 */ "CHAR$ ",
	/* 1980 */ "SET.SOCKADDR ",
	/* 1984 */ "SET.SOCKADDR ",
	/* 1988 */ "SET.SOCKADDR ",
	/* 1992 */ "SET.SOCKADDR ",
	/* 1996 */ "SET.SOCKADDR ",
	/* 2000 */ "SET.SOCKADDR ",
	/* 2004 */ "SET.SOCKADDR ",
	/* 2008 */ "SET.SOCKADDR ",
	/* 2012 */ "SET.SOCKADDR ",
	/* 2016 */ "OB.STATE(",
	/* 2020 */ "OB.FLAGS(",
	/* 2024 */ "OB_SELECTED(",
	/* 2028 */ "OB_CROSSED(",
	/* 2032 */ "OB_CHECKED(",
	/* 2036 */ "OB_DISABLED(",
	/* 2040 */ "OB.RBUTTON(",
	/* 2044 */ "OB_TEXT$(",
	/* 2048 */ "OB_SELECTABLE(",
	/* 2052 */ "OB_DEFAULT(",
	/* 2056 */ "OB_EXIT(",
	/* 2060 */ "OB_EDITABLE(",
	/* 2064 */ "OB_RBUTTON(",
	/* 2068 */ "OB_LASTOB(",
	/* 2072 */ "OB_TOUCHEXIT(",
	/* 2076 */ "OB_HIDETREE("
};

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
	/*   12 */ "<>",
	/*   13 */ "<=",
	/*   14 */ "=<",
	/*   15 */ ">=",
	/*   16 */ "=>",
	/*   17 */ "<",
	/*   18 */ ">",
	/*   19 */ "=",
	/*   20 */ "<>",
	/*   21 */ "<=",
	/*   22 */ "=<",
	/*   23 */ ">=",
	/*   24 */ "=>",
	/*   25 */ "<",
	/*   26 */ ">",
	/*   27 */ "=",
	/*   28 */ "+",
	/*   29 */ "+",
	/*   30 */ "-",
	/*   31 */ "NOT ",
	/*   32 */ ")",
	/*   33 */ ",",
	/*   34 */ ";",
	/*   35 */ "(",
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
	/*   46 */ NULL, /* unknown */
	/*   47 */ "EXP(",
	/*   48 */ "LOG(",
	/*   49 */ "LOG10(",
	/*   50 */ "VAR ",
	/*   51 */ ")",
	/*   52 */ "INPAUX$",
	/*   53 */ "VAL(",
	/*   54 */ "INPMID$",
	/*   55 */ "",  /* Precedes functions that return a numeric value in PRINT statements */
	/*   56 */ "TIME$",
	/*   57 */ ")=",
	/*   58 */ "LEFT$(",
	/*   59 */ "LEFT$(",
	/*   60 */ "RIGHT$(",
	/*   61 */ "RIGHT$(",
	/*   62 */ "MID$(",
	/*   63 */ "MID$(",
	/*   64 */ NULL, /* , */
	/*   65 */ "ASIN(",
	/*   66 */ "CHR$(",
	/*   67 */ "}=",
	/*   68 */ NULL, /* ] */
	/*   69 */ "=",
	/*   70 */ NULL, /* INLINE */
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
	/*   84 */ "RND(",
	/*   85 */ "RND",
	/*   86 */ "RANDOM(",
	/*   87 */ "'",
	/*   88 */ "}",
	/*   89 */ "AT(",
	/*   90 */ "IF",
	/*   91 */ "\\",
	/*   92 */ "FLOAT{",
	/*   93 */ "DOUBLE{",
	/*   94 */ "INPUT$(",
	/*   95 */ "INPUT$(",
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
	/*  112 */ "ROUND(",
	/*  113 */ "ROUND(",
	/*  114 */ " WITH ",
	/*  115 */ "BIN$(",
	/*  116 */ "BIN$(",
	/*  117 */ "MIN(",
	/*  118 */ "MIN(",
	/*  119 */ "MAX(",
	/*  120 */ "MAX(",
	/*  121 */ "SINGLE{",
	/*  122 */ " AT(",
	/*  123 */ "SINQ(",
	/*  124 */ ":",
	/*  125 */ "COSQ(",
	/*  126 */ "DATE$",
	/*  127 */ "UPPER$(",
	/*  128 */ "SPACE$(",
	/*  129 */ "STRING$(",
	/*  130 */ "STRING$(",
	/*  131 */ "SUCC(",
	/*  132 */ "DIR$(",
	/*  133 */ "PRED(",
	/*  134 */ "DRAW(",
	/*  135 */ "TRIM$(",
	/*  136 */ "CMDLINE$",
	/*  137 */ "CMDLINE$",
	/*  138 */ "L:",
	/*  139 */ "W:",
	/*  140 */ "FACT(",
	/*  141 */ "COMBIN(",
	/*  142 */ "COMBIN(",
	/*  143 */ "VARIAT(",
	/*  144 */ "LTRIM$(",
	/*  145 */ "RTRIM$(",
	/*  146 */ "LCASE$(",
	/*  147 */ "UCASE$(",
	/*  148 */ "LOWER$(",
	/*  149 */ "OB_TEXT$(",
	/*  150 */ "ZTRIM$(",
	/*  151 */ "ERROR",
	/*  152 */ "STOP",
	/*  153 */ "BREAK",
	/*  154 */ " CONT",
	/*  155 */ "FIX(",
	/*  156 */ ",",
	/*  157 */ "(",
	/*  158 */ "FN ",
	/*  159 */ "@",
	/*  160 */ "MIRROR$(",
	/*  161 */ "TAB(",
	/*  162 */ "SPC(",
	/*  163 */ "USING ",
	/*  164 */ "DATE$(",
	/*  165 */ "TIME$(",
	/*  166 */ "TIMESTAMP$(",
	/*  167 */ "MENU",
	/*  168 */ "NEXT",
	/*  169 */ "CHAR$(",
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
	/*  183 */ "NULL",
	/*  184 */ "0",
	/*  185 */ "1",
	/*  186 */ "2",
	/*  187 */ "3",
	/*  188 */ "TRUE",
	/*  189 */ "FALSE",
	/*  190 */ "STR$(",
	/*  191 */ "STR$(",
	/*  192 */ "STR$(",
	/*  193 */ "HEX$(",
	/*  194 */ "HEX$(",
	/*  195 */ "OCT$(",
	/*  196 */ "OCT$(",
	/*  197 */ "OCT$(",
	/*  198 */ NULL, /* string constant */
	/*  199 */ NULL, /* string constant */
	/*  200 */ NULL, /* decimal constant */
	/*  201 */ NULL, /* decimal constant */
	/*  202 */ NULL, /* hexadecimal constant */
	/*  203 */ NULL, /* hexadecimal constant */
	/*  204 */ NULL, /* octal constant */
	/*  205 */ NULL, /* octal constant */
	/*  206 */ NULL, /* binary constant */
	/*  207 */ NULL, /* binary constant */
	/*  208 */ NULL, /* secondary function -> gfasft_208 */
	/*  209 */ NULL, /* secondary function -> gfasft_209 */
	/*  210 */ NULL, /* secondary function -> unknown */
	/*  211 */ NULL, /* secondary function -> unknown */
	/*  212 */ NULL, /* secondary function -> unknown */
	/*  213 */ NULL, /* secondary function -> unknown */
	/*  214 */ NULL, /* secondary function -> unknown */
	/*  215 */ NULL, /* octal double constant */
	/*  216 */ NULL, /* octal double constant */
	/*  217 */ NULL, /* binary double constant */
	/*  218 */ NULL, /* binary double constant */
	/*  219 */ NULL, /* hexadecimal double constant */
	/*  220 */ NULL, /* hexadecimal double constant */
	/*  221 */ NULL, /* decimal double constant */
	/*  222 */ NULL, /* string constant */
	/*  223 */ NULL, /* decimal double constant */
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

short const gfarecl[71][2] = {
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
