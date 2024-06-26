#include <stddef.h>
#include "tables.h"

static struct name_exception const cmd_462_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "BCLEAR " },
	{ TARGET_VER371, TARGET_LAST, "BZERO " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_473_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "TIMESTAMP " },
	{ TARGET_VER371, TARGET_LAST, "AVERAGE_RGB " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_474_exception[] = {
	{ TARGET_VER370, TARGET_VER372, "AMOUSE " },
	{ TARGET_VER373, TARGET_LAST, "TMOUSE " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_482_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "PALGET " },
	{ TARGET_VER371, TARGET_LAST, "VPALGET " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_483_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "PALSET " },
	{ TARGET_VER371, TARGET_LAST, "VPALSET " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_490_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "VBITBLT " },
	{ TARGET_VER371, TARGET_LAST, "TBITBLT " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_494_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "CHAR$ " },
	{ TARGET_VER371, TARGET_LAST, "STRPOKE " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_495_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "SET.SOCKADDR " },
	{ TARGET_VER371, TARGET_LAST, "SET.SOCKADDR_IN " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_498_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "MEMSWAP& " },
	{ TARGET_VER372, TARGET_LAST, "MEMSWAP& " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_499_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "MEMSWAP% " },
	{ TARGET_VER372, TARGET_LAST, "MEMSWAP% " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_506_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_SELECTED(" },
	{ TARGET_VER371, TARGET_LAST, "SBYTE{" },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_507_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_CROSSED(" },
	{ TARGET_VER371, TARGET_LAST, "C2P " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_508_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_CHECKED(" },
	{ TARGET_VER371, TARGET_LAST, "SET.SXYWH " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_509_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_DISABLED(" },
	{ TARGET_VER371, TARGET_LAST, "SET.DXYWH " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_510_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB.RBUTTON(" },
	{ TARGET_VER371, TARGET_LAST, "OB_RADIO(" },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_512_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_SELECTABLE(" },
	{ TARGET_VER371, TARGET_LAST, "WARMBOOT" },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_513_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_DEFAULT(" },
	{ TARGET_VER371, TARGET_LAST, "JOYPAD" },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_514_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_EXIT(" },
	{ TARGET_VER371, TARGET_LAST, "SLEEP" },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_515_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_EDITABLE(" },
	{ TARGET_VER371, TARGET_LAST, "MEMZERO& " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_516_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_RBUTTON(" },
	{ TARGET_VER371, TARGET_LAST, "MEMZERO% " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_517_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_LASTOB(" },
	{ TARGET_VER371, TARGET_LAST, "SET.SXYXY " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_518_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_TOUCHEXIT(" },
	{ TARGET_VER371, TARGET_LAST, "SET.DXYXY " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_519_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_HIDETREE(" },
	{ TARGET_VER371, TARGET_LAST, "SET.RXYWH " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_544_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "BFOBSPEC(" },
	{ TARGET_VER372, TARGET_LAST, "BMIRROR " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_545_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "BITBLK(" },
	{ TARGET_VER372, TARGET_LAST, "MEMMIRROR& " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_546_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "TEDINFO(" },
	{ TARGET_VER372, TARGET_LAST, "MEMMIRROR% " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_547_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "ICONBLK(" },
	{ TARGET_VER372, TARGET_LAST, "MEMMIRROR3 " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_548_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "CICONBLK(" },
	{ TARGET_VER372, TARGET_LAST, "MEMEXG& " },
	{ 0, 0, NULL }
};

static struct name_exception const cmd_549_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "USERBLK(" },
	{ TARGET_VER372, TARGET_LAST, "MEMEXG% " },
	{ 0, 0, NULL }
};

static struct name_exception const func_211_186_exception[] = {
	{ TARGET_VER373, TARGET_VER373, "CWRITE(" },
	{ TARGET_VER374, TARGET_LAST, "F_CWRITE(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_211_187_exception[] = {
	{ TARGET_VER373, TARGET_VER373, "CREAD(" },
	{ TARGET_VER374, TARGET_LAST, "F_CREAD(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_pft_166_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "TIMESTAMP$(" },
	{ TARGET_VER371, TARGET_LAST, "TIMESTAMP$(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_208_247_exception[] = {
	{ TARGET_VER370, TARGET_VER373, "GMOUSEK" },
	{ TARGET_VER374, TARGET_LAST, "GMOUSEX" },
	{ 0, 0, NULL }
};

static struct name_exception const func_208_248_exception[] = {
	{ TARGET_VER370, TARGET_VER373, "GMOUSEX" },
	{ TARGET_VER374, TARGET_LAST, "GMOUSEY" },
	{ 0, 0, NULL }
};

static struct name_exception const func_208_249_exception[] = {
	{ TARGET_VER370, TARGET_VER373, "GMOUSEY" },
	{ TARGET_VER374, TARGET_LAST, "GMOUSEK" },
	{ 0, 0, NULL }
};

static struct name_exception const func_208_254_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "HARDWARE?" },
	{ TARGET_VER371, TARGET_VER373, "EJP?" },
	{ TARGET_VER374, TARGET_LAST, "_P" },
	{ 0, 0, NULL }
};

static struct name_exception const func_208_255_exception[] = {
	{ TARGET_VER370, TARGET_VER373, "_P" },
	{ TARGET_VER374, TARGET_LAST, "EJP?" },
	{ 0, 0, NULL }
};

static struct name_exception const func_209_25_exception[] = {
	{ TARGET_VER370, TARGET_VER371, "FSEL_EXINPUT(" },
	{ TARGET_VER372, TARGET_LAST, "FSEL_EXINPUT(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_209_66_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "M_ALLOC(" },
	{ TARGET_VER371, TARGET_LAST, "ALLOC(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_209_91_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "F_PWRITE(" },
	{ TARGET_VER371, TARGET_VER373, "PWRITE(" },
	{ TARGET_VER374, TARGET_LAST, "F_PWRITE(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_209_92_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "F_PREAD(" },
	{ TARGET_VER371, TARGET_VER373, "PREAD(" },
	{ TARGET_VER374, TARGET_LAST, "F_PREAD(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_209_98_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "BREPLACE(" },
	{ TARGET_VER371, TARGET_LAST, "ISASCII(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_209_116_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "D_FREE(" },
	{ TARGET_VER371, TARGET_LAST, "DFREE%(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_3_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "SYSTAB(" },
	{ TARGET_VER371, TARGET_LAST, "SYSTAB(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_5_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "CFREE()" },
	{ TARGET_VER371, TARGET_LAST, "FREEFILE()" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_9_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "ALIGN()" },
	{ TARGET_VER371, TARGET_LAST, "MROUND()" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_18_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "F_LOAD()" },
	{ TARGET_VER371, TARGET_LAST, "LOADMEM()" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_21_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_SELECTED(" },
	{ TARGET_VER371, TARGET_LAST, "SETSTR(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_22_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_CROSSED(" },
	{ TARGET_VER371, TARGET_LAST, "INPUTBOX(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_23_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_CHECKED(" },
	{ TARGET_VER371, TARGET_LAST, "BCOUNT&(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_24_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_DISABLED(" },
	{ TARGET_VER371, TARGET_LAST, "BCOUNT%(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_25_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_SELECTABLE(" },
	{ TARGET_VER371, TARGET_LAST, "C_VDI(#" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_26_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_DEFAULT(" },
	{ TARGET_VER371, TARGET_LAST, "C_XBIOS(#" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_27_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_EXIT(" },
	{ TARGET_VER371, TARGET_LAST, "NETWORK?" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_28_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_EDITABLE(" },
	{ TARGET_VER371, TARGET_LAST, "SBYTE(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_29_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_RBUTTON(" },
	{ TARGET_VER371, TARGET_LAST, "SBYTE{" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_30_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_LASTOB(" },
	{ TARGET_VER371, TARGET_LAST, "INDEXCOUNT(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_31_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_TOUCHEXIT(" },
	{ TARGET_VER371, TARGET_LAST, "CALLOC(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_32_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB_HIDETREE(" },
	{ TARGET_VER371, TARGET_LAST, "ARRAYSIZE(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_33_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "OB.RBUTTON(" },
	{ TARGET_VER371, TARGET_LAST, "OB_RADIO(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_91_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "WEEKDAY(" },
	{ TARGET_VER371, TARGET_LAST, "WEEKDAY(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_92_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "WEEKDAY(" },
	{ TARGET_VER371, TARGET_LAST, "WEEKDAY(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_117_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "WORD2LONG(" },
	{ TARGET_VER371, TARGET_LAST, "MAKE%(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_118_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "NYBLE2BYTE(" },
	{ TARGET_VER371, TARGET_LAST, "MAKE|(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_129_exception[] = {
	{ TARGET_VER371, TARGET_VER372, "_PID" },
	{ TARGET_VER373, TARGET_LAST, "P~I" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_158_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "RGB256(" },
	{ TARGET_VER371, TARGET_LAST, "RGB256(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_159_exception[] = {
	{ TARGET_VER370, TARGET_VER370, "RGB1000(" },
	{ TARGET_VER371, TARGET_LAST, "RGB1000(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_206_exception[] = {
	{ TARGET_VER371, TARGET_VER371, "BFOBSPEC(" },
	{ TARGET_VER372, TARGET_LAST, "V_CTAB_VDI2IDX(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_207_exception[] = {
	{ TARGET_VER371, TARGET_VER371, "BITBLK(" },
	{ TARGET_VER372, TARGET_LAST, "V_CTAB_IDX2VALUE(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_208_exception[] = {
	{ TARGET_VER371, TARGET_VER371, "TEDINFO(" },
	{ TARGET_VER372, TARGET_LAST, "VQ_DFLT_CTAB(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_209_exception[] = {
	{ TARGET_VER371, TARGET_VER371, "ICONBLK(" },
	{ TARGET_VER372, TARGET_LAST, "V_COLOR2NEAREST(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_210_exception[] = {
	{ TARGET_VER371, TARGET_VER371, "CICONBLK(" },
	{ TARGET_VER372, TARGET_LAST, "V_VALUE2COLOR(" },
	{ 0, 0, NULL }
};

static struct name_exception const func_210_211_exception[] = {
	{ TARGET_VER371, TARGET_VER371, "USERBLK(" },
	{ TARGET_VER372, TARGET_LAST, "V_COLOR2VALUE(" },
	{ 0, 0, NULL }
};

/* Line command text */
struct nameversion const gfalct[] = {
	/*   0 */ { "DO", TARGET_VER36, NULL },
	/*   1 */ { "LOOP", TARGET_VER36, NULL },						/* or ENDDO */
	/*   2 */ { "REPEAT", TARGET_VER36, NULL },
	/*   3 */ { "UNTIL ", TARGET_VER36, NULL },						/* or ENDREPEAT */
	/*   4 */ { "WHILE ", TARGET_VER36, NULL },
	/*   5 */ { "WEND", TARGET_VER36, NULL },						/* or ENDWHILE */
	/*   6 */ { "PROCEDURE ", TARGET_VER36, NULL },
	/*   7 */ { "RETURN", TARGET_VER36, NULL },						/* or ENDPROC/ENDSUB; from PROCEDURE */
	/*   8 */ { "IF ", TARGET_VER36, NULL },
	/*   9 */ { "ENDIF", TARGET_VER36, NULL },
	/*  10 */ { "FUNCTION ", TARGET_VER36, NULL },
	/*  11 */ { "ENDFUNC", TARGET_VER36, NULL },
	/*  12 */ { "SELECT ", TARGET_VER36, NULL },					/* SWITCH/SELECT number */
	/*  13 */ { "ENDSELECT", TARGET_VER36, NULL },					/* or ENDSWITCH */
	/*  14 */ { "ELSE", TARGET_VER36, NULL },
	/*  15 */ { "DEFAULT", TARGET_VER36, NULL },					/* or OTHERWISE */
	/*  16 */ { "ELSE IF ", TARGET_VER36, NULL },
	/*  17 */ { "RETURN ", TARGET_VER36, NULL },					/* return number */
	/*  18 */ { "RETURN ", TARGET_VER36, NULL },					/* return string */
	/*  19 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x# */
	/*  20 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x# todo */
	/*  21 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x# */
	/*  22 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x% */
	/*  23 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x% */
	/*  24 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x% */
	/*  25 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x& */
	/*  26 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x& */
	/*  27 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x& */
	/*  28 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x| */
	/*  29 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x| */
	/*  30 */ { "FOR ", TARGET_VER36, NULL },						/* FOR x| */
	/*  31 */ { "NEXT ", TARGET_VER36, NULL },						/* ENDFOR, NEXT x# */
	/*  32 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x# todo */
	/*  33 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x# */
	/*  34 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x% */
	/*  35 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x% */
	/*  36 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x% */
	/*  37 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x& */
	/*  38 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x& */
	/*  39 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x& */
	/*  40 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x| */
	/*  41 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x| */
	/*  42 */ { "NEXT ", TARGET_VER36, NULL },						/* NEXT x| */
	/*  43 */ { "EXIT IF ", TARGET_VER36, NULL },
	/*  44 */ { "SELECT ", TARGET_VER36, NULL },					/* SELECT string */
	/*  45 */ { "", TARGET_VER36, NULL },							/* End of program */
	/*  46 */ { NULL, 0, NULL },
	/*  47 */ { NULL, 0, NULL },
	/*  48 */ { "MONITOR", TARGET_VER36, NULL },
	/*  49 */ { "DO WHILE ", TARGET_VER36, NULL },
	/*  50 */ { "DO UNTIL ", TARGET_VER36, NULL },
	/*  51 */ { "LOOP WHILE ", TARGET_VER36, NULL },
	/*  52 */ { "LOOP UNTIL ", TARGET_VER36, NULL },
	/*  53 */ { "LOCAL ", TARGET_VER36, NULL },
	/*  54 */ { "> PROCEDURE ", TARGET_VER36, NULL },
	/*  55 */ { "EXIT IF ", TARGET_VER36, NULL },					/* todo */
	/*  56 */ { "CASE ", TARGET_VER36, NULL },
	/*  57 */ { "DEFFN ", TARGET_VER36, NULL },
	/*  58 */ { "GOTO ", TARGET_VER36, NULL },
	/*  59 */ { "RESTORE", TARGET_VER36, NULL },
	/*  60 */ { "", TARGET_VER36, NULL },      						/* implicit @ */
	/*  61 */ { "GOSUB ", TARGET_VER36, NULL },
	/*  62 */ { "@", TARGET_VER36, NULL },
	/*  63 */ { "", TARGET_VER36, NULL },							/* label: */
	/*  64 */ { "LET ", TARGET_VER36, NULL },						/* LET x#= */
	/*  65 */ { "LET ", TARGET_VER36, NULL },						/* LET x$= */
	/*  66 */ { "LET ", TARGET_VER36, NULL },						/* LET x%= */
	/*  67 */ { "LET ", TARGET_VER36, NULL },						/* LET x!= */
	/*  68 */ { "LET ", TARGET_VER36, NULL },						/* LET x&= */
	/*  69 */ { "LET ", TARGET_VER36, NULL },						/* LET x|= */
	/*  70 */ { "LET ", TARGET_VER36, NULL },						/* LET x#()= */
	/*  71 */ { "LET ", TARGET_VER36, NULL },						/* LET x$()= */
	/*  72 */ { "LET ", TARGET_VER36, NULL },						/* LET x%()= */
	/*  73 */ { "LET ", TARGET_VER36, NULL },						/* LET x!()= */
	/*  74 */ { "LET ", TARGET_VER36, NULL },						/* LET x&()= */
	/*  75 */ { "LET ", TARGET_VER36, NULL },						/* LET x|()= */
	/*  76 */ { "", TARGET_VER36, NULL },							/* x#= */
	/*  77 */ { "", TARGET_VER36, NULL },							/* x$= */
	/*  78 */ { "", TARGET_VER36, NULL },							/* x%= */
	/*  79 */ { "", TARGET_VER36, NULL },							/* x!= */
	/*  80 */ { "", TARGET_VER36, NULL },							/* x&= */
	/*  81 */ { "", TARGET_VER36, NULL },							/* x|= */
	/*  82 */ { "", TARGET_VER36, NULL },							/* x#()= */
	/*  83 */ { "", TARGET_VER36, NULL },							/* x$()= */
	/*  84 */ { "", TARGET_VER36, NULL },							/* x%()= */
	/*  85 */ { "", TARGET_VER36, NULL },							/* x!()= */
	/*  86 */ { "", TARGET_VER36, NULL },							/* x&()= */
	/*  87 */ { "", TARGET_VER36, NULL },							/* x|()= */
	/*  88 */ { "PLOT ", TARGET_VER36, NULL },
	/*  89 */ { "PSET ", TARGET_VER36, NULL },
	/*  90 */ { "ALINE ", TARGET_VER36, NULL },
	/*  91 */ { "HLINE ", TARGET_VER36, NULL },
	/*  92 */ { "ARECT ", TARGET_VER36, NULL },
	/*  93 */ { "APOLY ", TARGET_VER36, NULL },
	/*  94 */ { "ACHAR ", TARGET_VER36, NULL },
	/*  95 */ { "ACLIP ", TARGET_VER36, NULL },
	/*  96 */ { "COLOR ", TARGET_VER36, NULL },
	/*  97 */ { "POKE ", TARGET_VER36, NULL },
	/*  98 */ { "DPOKE ", TARGET_VER36, NULL },
	/*  99 */ { "LPOKE ", TARGET_VER36, NULL },
	/* 100 */ { "SPOKE ", TARGET_VER36, NULL },
	/* 101 */ { "SDPOKE ", TARGET_VER36, NULL },
	/* 102 */ { "SLPOKE ", TARGET_VER36, NULL },
	/* 103 */ { "RESERVE", TARGET_VER36, NULL },					/* no arguments */
	/* 104 */ { "RESERVE ", TARGET_VER36, NULL },					/* 1 argument */
	/* 105 */ { "RESUME", TARGET_VER36, NULL },						/* no arguments or RESUME NEXT */
	/* 106 */ { "RESUME ", TARGET_VER36, NULL },					/* RESUME label */
	/* 107 */ { "RESUME ", TARGET_VER36, NULL },					/* todo */
	/* 108 */ { "", TARGET_VER36, NULL },							/* unused? */
	/* 109 */ { "RECORD ", TARGET_VER36, NULL },
	/* 110 */ { "DELAY ", TARGET_VER36, NULL },
	/* 111 */ { "BGET ", TARGET_VER36, NULL },
	/* 112 */ { "BPUT ", TARGET_VER36, NULL },
	/* 113 */ { "ATEXT ", TARGET_VER36, NULL },
	/* 114 */ { "REM", TARGET_VER36, NULL },						/* Append " " if at least one char long. */
	/* 115 */ { "'", TARGET_VER36, NULL },							/* also !, // and / *; Append " " if at least one char long. */
	/* 116 */ { "==>", TARGET_VER36, NULL },						/* Append " " if at least one char long. */
	/* 117 */ { "DATA", TARGET_VER36, NULL },						/* Append " " if at least one char long. */
	/* 118 */ { "SWAP ", TARGET_VER36, NULL },						/* SWAP a,b */
	/* 119 */ { "SWAP ", TARGET_VER36, NULL },						/* SWAP a(),b() */
	/* 120 */ { "SWAP ", TARGET_VER36, NULL },						/* SWAP *c,d() */
	/* 121 */ { "*", TARGET_VER36, NULL },							/* *c=a */
	/* 122 */ { "*", TARGET_VER36, NULL },							/* *c=a$ */
	/* 123 */ { "SINGLE{", TARGET_VER36, NULL },
	/* 124 */ { "END", TARGET_VER36, NULL },
	/* 125 */ { "LOCATE ", TARGET_VER36, NULL },
	/* 126 */ { "ON ", TARGET_VER36, NULL },
	/* 127 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 128 */ { "ON ERROR", TARGET_VER36, NULL },
	/* 129 */ { "ON ERROR GOSUB ", TARGET_VER36, NULL },
	/* 130 */ { "ON BREAK", TARGET_VER36, NULL },
	/* 131 */ { "ON BREAK CONT", TARGET_VER36, NULL },
	/* 132 */ { "ON BREAK GOSUB ", TARGET_VER36, NULL },
	/* 133 */ { "ON MENU GOSUB ", TARGET_VER36, NULL },
	/* 134 */ { "ON MENU MESSAGE GOSUB ", TARGET_VER36, NULL },
	/* 135 */ { "ON MENU KEY GOSUB ", TARGET_VER36, NULL },
	/* 136 */ { "ON MENU BUTTON ", TARGET_VER36, NULL },
	/* 137 */ { "ON MENU", TARGET_VER36, NULL },					/* no arguments */
	/* 138 */ { "ON MENU ", TARGET_VER36, NULL },					/* ON MENU n */
	/* 139 */ { "MENU ", TARGET_VER36, NULL },						/* MENU m$() */
	/* 140 */ { "MENU OFF", TARGET_VER36, NULL },
	/* 141 */ { "MENU KILL", TARGET_VER36, NULL },
	/* 142 */ { "MENU ", TARGET_VER36, NULL },						/* MENU x,y */
	/* 143 */ { "TRON", TARGET_VER36, NULL },						/* no arguments */
	/* 144 */ { "TRON ", TARGET_VER36, NULL },						/* TRON #n */
	/* 145 */ { "TRON ", TARGET_VER36, NULL },						/* TRON n */
	/* 146 */ { "TROFF", TARGET_VER36, NULL },
	/* 147 */ { "PRINT", TARGET_VER36, NULL },						/* Append space if it has parameters */
	/* 148 */ { "PRINT ", TARGET_VER36, NULL },						/* PRINT # */
	/* 149 */ { "TEXT ", TARGET_VER36, NULL },						/* TEXT x,y,expression */
	/* 150 */ { "TEXT ", TARGET_VER36, NULL },						/* TEXT x,y,l,expression */
	/* 151 */ { "RCALL ", TARGET_VER36, NULL },
	/* 152 */ { "CALL ", TARGET_VER36, NULL },
	/* 153 */ { "FORM INPUT ", TARGET_VER36, NULL },
	/* 154 */ { "LINE INPUT ", TARGET_VER36, NULL },
	/* 155 */ { "LINE ", TARGET_VER36, NULL },
	/* 156 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 157 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 158 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 159 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 160 */ { "INC ", TARGET_VER36, NULL },						/* INC x# */
	/* 161 */ { "INC ", TARGET_VER36, NULL },						/* INC x% */
	/* 162 */ { "INC ", TARGET_VER36, NULL },						/* INC x& */
	/* 163 */ { "INC ", TARGET_VER36, NULL },						/* INC x| */
	/* 164 */ { "INC ", TARGET_VER36, NULL },						/* INC x#() */
	/* 165 */ { "INC ", TARGET_VER36, NULL },						/* INC x%() */
	/* 166 */ { "INC ", TARGET_VER36, NULL },						/* INC x&() */
	/* 167 */ { "INC ", TARGET_VER36, NULL },						/* INC x|() */
	/* 168 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x# */
	/* 169 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x% */
	/* 170 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x& */
	/* 171 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x| */
	/* 172 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x#() */
	/* 173 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x%() */
	/* 174 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x&() */
	/* 175 */ { "DEC ", TARGET_VER36, NULL },						/* DEC x|() */
	/* 176 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x# */
	/* 177 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x% / */
	/* 178 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x& */
	/* 179 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x| */
	/* 180 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x#() */
	/* 181 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x%() */
	/* 182 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x&() */
	/* 183 */ { "ADD ", TARGET_VER36, NULL },						/* ADD x|() */
	/* 184 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x# */
	/* 185 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x% */
	/* 186 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x& */
	/* 187 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x|, */
	/* 188 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x#() */
	/* 189 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x%() */
	/* 190 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x&() */
	/* 191 */ { "SUB ", TARGET_VER36, NULL },						/* SUB x|() */
	/* 192 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x# */
	/* 193 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x% */
	/* 194 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x& */
	/* 195 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x| */
	/* 196 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x#() */
	/* 197 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x%() */
	/* 198 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x&() */
	/* 199 */ { "MUL ", TARGET_VER36, NULL },						/* MUL x|() */
	/* 200 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x# */
	/* 201 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x% */
	/* 202 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x& */
	/* 203 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x| */
	/* 204 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x#() */
	/* 205 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x%() */
	/* 206 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x&() */
	/* 207 */ { "DIV ", TARGET_VER36, NULL },						/* DIV x|() */
	/* 208 */ { "SEEK #", TARGET_VER36, NULL },
	/* 209 */ { "RELSEEK #", TARGET_VER36, NULL },
	/* 210 */ { "DIM ", TARGET_VER36, NULL },
	/* 211 */ { "SETCOLOR ", TARGET_VER36, NULL },					/* SETCOLOR reg,composite */
	/* 212 */ { "SETCOLOR ", TARGET_VER36, NULL },					/* SETCOLOR reg,r,g,b */
	/* 213 */ { "BMOVE ", TARGET_VER36, NULL },
	/* 214 */ { "VDISYS", TARGET_VER36, NULL },						/* No further tokens follow */
	/* 215 */ { "VDISYS ", TARGET_VER36, NULL },					/* VDISYS opcode */
	/* 216 */ { "VDISYS ", TARGET_VER36, NULL },					/* VDISYS opcode,int_cnt,pts_cnt */
	/* 217 */ { "VDISYS ", TARGET_VER36, NULL },					/* VDISYS opcode,int_cnt,pts_cnt,subopc */
	/* 218 */ { "GEMSYS", TARGET_VER36, NULL },						/* no arguments */
	/* 219 */ { "GEMSYS ", TARGET_VER36, NULL },					/* GEMSYS n */
	/* 220 */ { "PTSIN(", TARGET_VER36, NULL },
	/* 221 */ { "PTSOUT(", TARGET_VER36, NULL },
	/* 222 */ { "INTIN(", TARGET_VER36, NULL },
	/* 223 */ { "INTOUT(", TARGET_VER36, NULL },
	/* 224 */ { "ADDRIN(", TARGET_VER36, NULL },
	/* 225 */ { "ADDROUT(", TARGET_VER36, NULL },
	/* 226 */ { "GINTIN(", TARGET_VER36, NULL },
	/* 227 */ { "GINTOUT(", TARGET_VER36, NULL },
	/* 228 */ { "CONTRL(", TARGET_VER36, NULL },
	/* 229 */ { "GCONTRL(", TARGET_VER36, NULL },
	/* 230 */ { "{", TARGET_VER36, NULL },
	/* 231 */ { "LONG{", TARGET_VER36, NULL },
	/* 232 */ { "INT{", TARGET_VER36, NULL },
	/* 233 */ { "CARD{", TARGET_VER36, NULL },
	/* 234 */ { "BYTE{", TARGET_VER36, NULL },
	/* 235 */ { "CHAR{", TARGET_VER36, NULL },
	/* 236 */ { "FLOAT{", TARGET_VER36, NULL },
	/* 237 */ { "DOUBLE{", TARGET_VER36, NULL },
	/* 238 */ { "ON MENU IBOX ", TARGET_VER36, NULL },
	/* 239 */ { "ON MENU OBOX ", TARGET_VER36, NULL },
	/* 240 */ { "VOID ", TARGET_VER36, NULL },
	/* 241 */ { "~", TARGET_VER36, NULL },
	/* 242 */ { "OB_NEXT(", TARGET_VER36, NULL },
	/* 243 */ { "OB_HEAD(", TARGET_VER36, NULL },
	/* 244 */ { "OB_TAIL(", TARGET_VER36, NULL },
	/* 245 */ { "OB_TYPE(", TARGET_VER36, NULL },
	/* 246 */ { "OB_FLAGS(", TARGET_VER36, NULL },
	/* 247 */ { "OB_STATE(", TARGET_VER36, NULL },
	/* 248 */ { "OB_SPEC(", TARGET_VER36, NULL },
	/* 249 */ { "OB_X(", TARGET_VER36, NULL },
	/* 250 */ { "OB_Y(", TARGET_VER36, NULL },
	/* 251 */ { "OB_W(", TARGET_VER36, NULL },
	/* 252 */ { "OB_H(", TARGET_VER36, NULL },
	/* 253 */ { "ABSOLUTE ", TARGET_VER36, NULL },
	/* 254 */ { ".", TARGET_VER36, NULL },
	/* 255 */ { "RANDOMIZE", TARGET_VER36, NULL },
	/* 256 */ { "ALERT ", TARGET_VER36, NULL },
	/* 257 */ { "GET ", TARGET_VER36, NULL },						/* GET x1,y1,x2,y2,s$ */
	/* 258 */ { "GET ", TARGET_VER36, NULL },						/* GET #n */
	/* 259 */ { "GET ", TARGET_VER36, NULL },						/* GET #n,x */
	/* 260 */ { "PUT ", TARGET_VER36, NULL },						/* PUT x,y,s$ */
	/* 261 */ { "PUT ", TARGET_VER36, NULL },						/* PUT x,y,s$,mode */
	/* 262 */ { "PUT ", TARGET_VER36, NULL },						/* PUT #n */
	/* 263 */ { "PUT ", TARGET_VER36, NULL },						/* PUT #n,x */
	/* 264 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 265 */ { "OPEN ", TARGET_VER36, NULL },
	/* 266 */ { "OPENW ", TARGET_VER36, NULL },
	/* 267 */ { "OPENW #", TARGET_VER36, NULL },
	/* 268 */ { "CLOSE", TARGET_VER36, NULL },
	/* 269 */ { "CLOSEW ", TARGET_VER36, NULL },
	/* 270 */ { "CLOSEW #", TARGET_VER36, NULL },
	/* 271 */ { "CLEAR", TARGET_VER36, NULL },
	/* 272 */ { "CLEARW ", TARGET_VER36, NULL },
	/* 273 */ { "CLEARW #", TARGET_VER36, NULL },
	/* 274 */ { "TOPW #", TARGET_VER36, NULL },
	/* 275 */ { "TITLEW #", TARGET_VER36, NULL },
	/* 276 */ { "INFOW #", TARGET_VER36, NULL },
	/* 277 */ { "DEFLINE", TARGET_VER36, NULL },
	/* 278 */ { "GRAPHMODE ", TARGET_VER36, NULL },
	/* 279 */ { "DEFMOUSE ", TARGET_VER36, NULL },					/* DEFMOUSE sym */
	/* 280 */ { "DEFMOUSE ", TARGET_VER36, NULL },					/* DEFMOUSE pattern$ */
	/* 281 */ { "DEFLIST ", TARGET_VER36, NULL },
	/* 282 */ { "DEFMARK", TARGET_VER36, NULL },
	/* 283 */ { "DEFNUM ", TARGET_VER36, NULL },
	/* 284 */ { "DEFTEXT", TARGET_VER36, NULL },
	/* 285 */ { "DEFFILL", TARGET_VER36, NULL },					/* DEFFILL color,interior,style */
	/* 286 */ { "DEFFILL", TARGET_VER36, NULL },					/* DEFFILT color,pattern$ */
	/* 287 */ { "BOX ", TARGET_VER36, NULL },
	/* 288 */ { "PBOX ", TARGET_VER36, NULL },
	/* 289 */ { "RBOX ", TARGET_VER36, NULL },
	/* 290 */ { "PRBOX ", TARGET_VER36, NULL },
	/* 291 */ { "CIRCLE ", TARGET_VER36, NULL },					/* CIRCLE x,y,r */
	/* 292 */ { "CIRCLE ", TARGET_VER36, NULL },					/* CIRCLE x,y,r,w1,w2 */
	/* 293 */ { "PCIRCLE ", TARGET_VER36, NULL },					/* PCIRCLE x,y,r */
	/* 294 */ { "PCIRCLE ", TARGET_VER36, NULL },					/* PCIRCLE x,y,r,w1,w2 */
	/* 295 */ { "ELLIPSE ", TARGET_VER36, NULL },					/* ELLIPSE x,y,rx,ry */
	/* 296 */ { "ELLIPSE ", TARGET_VER36, NULL },					/* ELLIPSE x,y,rx,ry,w1,w2 */
	/* 297 */ { "PELLIPSE ", TARGET_VER36, NULL },					/* PELLIPSE x,y,rx,ry */
	/* 298 */ { "PELLIPSE ", TARGET_VER36, NULL },					/* PELLIPSE x,y,rx,ry,w1,w2 */
	/* 299 */ { "ERROR ", TARGET_VER36, NULL },
	/* 300 */ { "FILL ", TARGET_VER36, NULL },						/* FILL x,y */
	/* 301 */ { "FILL ", TARGET_VER36, NULL },						/* FILL x,y,f */
	/* 302 */ { "HIDEM", TARGET_VER36, NULL },
	/* 303 */ { "LPRINT", TARGET_VER36, NULL },						/* Append space if it has parameters */
	/* 304 */ { "LSET ", TARGET_VER36, NULL },
	/* 305 */ { "MID$(", TARGET_VER36, NULL },
	/* 306 */ { "NEW", TARGET_VER36, NULL },
	/* 307 */ { "OUT ", TARGET_VER36, NULL },						/* OUT n,x */
	/* 308 */ { "OUT ", TARGET_VER36, NULL },						/* OUT #n,x */
	/* 309 */ { "QUIT", TARGET_VER36, NULL },
	/* 310 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 311 */ { "CHDIR ", TARGET_VER36, NULL },
	/* 312 */ { "CHDRIVE ", TARGET_VER36, NULL },					/* CHDRIVE n */
	/* 313 */ { "CHDRIVE ", TARGET_VER36, NULL },					/* CHDRIVE n$ */
	/* 314 */ { "CLR ", TARGET_VER36, NULL },
	/* 315 */ { "CLS", TARGET_VER36, NULL },						/* Append space if it has parameters */
	/* 316 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 317 */ { "CONT", TARGET_VER36, NULL },
	/* 318 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 319 */ { "DIR", TARGET_VER36, NULL },
	/* 320 */ { "HTAB ", TARGET_VER36, NULL },
	/* 321 */ { "VTAB ", TARGET_VER36, NULL },
	/* 322 */ { "ERASE ", TARGET_VER36, NULL },
	/* 323 */ { "EXEC ", TARGET_VER36, NULL },
	/* 324 */ { "FIELD ", TARGET_VER36, NULL },
	/* 325 */ { "FILES", TARGET_VER36, NULL },
	/* 326 */ { "TOUCH #", TARGET_VER36, NULL },
	/* 327 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 328 */ { "EDIT", TARGET_VER36, NULL },
	/* 329 */ { "FILESELECT ", TARGET_VER36, NULL },
	/* 330 */ { "NAME ", TARGET_VER36, NULL },
	/* 331 */ { "MKDIR ", TARGET_VER36, NULL },
	/* 332 */ { "MOUSE ", TARGET_VER36, NULL },
	/* 333 */ { "KILL ", TARGET_VER36, NULL },
	/* 334 */ { "RMDIR ", TARGET_VER36, NULL },
	/* 335 */ { "RSET ", TARGET_VER36, NULL },
	/* 336 */ { "SETTIME ", TARGET_VER36, NULL },
	/* 337 */ { "SGET ", TARGET_VER36, NULL },
	/* 338 */ { "SHOWM", TARGET_VER36, NULL },
	/* 339 */ { "SPUT ", TARGET_VER36, NULL },
	/* 340 */ { "STOP", TARGET_VER36, NULL },
	/* 341 */ { "SYSTEM", TARGET_VER36, NULL },						/* Append " " if other tokens follow */
	/* 342 */ { "VSYNC", TARGET_VER36, NULL },
	/* 343 */ { "HARDCOPY", TARGET_VER36, NULL },
	/* 344 */ { "PAUSE ", TARGET_VER36, NULL },
	/* 345 */ { "QSORT ", TARGET_VER36, NULL },
	/* 346 */ { "SSORT ", TARGET_VER36, NULL },
	/* 347 */ { "POLYLINE ", TARGET_VER36, NULL },
	/* 348 */ { "POLYFILL ", TARGET_VER36, NULL },
	/* 349 */ { "POLYMARK ", TARGET_VER36, NULL },
	/* 350 */ { "INSERT ", TARGET_VER36, NULL },
	/* 351 */ { "DELETE ", TARGET_VER36, NULL },
	/* 352 */ { "RENAME ", TARGET_VER36, NULL },
	/* 353 */ { "STICK ", TARGET_VER36, NULL },
	/* 354 */ { "SOUND", TARGET_VER36, NULL },
	/* 355 */ { "WAVE", TARGET_VER36, NULL },
	/* 356 */ { "CLIP ", TARGET_VER36, NULL },						/* CLIP OFF */
	/* 357 */ { "CLIP ", TARGET_VER36, NULL },						/* CLIP #n */
	/* 358 */ { "CLIP ", TARGET_VER36, NULL },						/* CLIP x,y,w,h */
	/* 359 */ { "CLIP ", TARGET_VER36, NULL },						/* CLIP x,y TO x,y */
	/* 360 */ { "CLIP ", TARGET_VER36, NULL },						/* CLIP  OFFSET x,y */ /* NOTE: prints 2 spaces (same as in editor) */
	/* 361 */ { "FULLW ", TARGET_VER36, NULL },
	/* 362 */ { "EVERY ", TARGET_VER36, NULL },						/* EVERY n GOSUB proc */
	/* 363 */ { "EVERY ", TARGET_VER36, NULL },						/* EVERY STOP */
	/* 364 */ { "EVERY ", TARGET_VER36, NULL },						/* EVERY  CONT */ /* NOTE: prints 2 spaces (same as in editor) */
	/* 365 */ { "AFTER ", TARGET_VER36, NULL },						/* AFTER n GOSUB proc */
	/* 366 */ { "AFTER ", TARGET_VER36, NULL },						/* AFTER STOP */
	/* 367 */ { "AFTER ", TARGET_VER36, NULL },						/* AFTER  CONT */ /* NOTE: prints 2 spaces (same as in editor) */
	/* 368 */ { "INPUT ", TARGET_VER36, NULL },						/* INPUT x */
	/* 369 */ { "INPUT ", TARGET_VER36, NULL },						/* INPUT #n,x */
	/* 370 */ { "DRAW ", TARGET_VER36, NULL },						/* DRAW x,y */
	/* 371 */ { "DRAW ", TARGET_VER36, NULL },						/* DRAW s$ */
	/* 372 */ { "READ ", TARGET_VER36, NULL },
	/* 373 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 374 */ { "SETMOUSE ", TARGET_VER36, NULL },
	/* 375 */ { "KEYPAD ", TARGET_VER36, NULL },
	/* 376 */ { "KEYTEST ", TARGET_VER36, NULL },
	/* 377 */ { "KEYGET ", TARGET_VER36, NULL },
	/* 378 */ { "KEYLOOK ", TARGET_VER36, NULL },
	/* 379 */ { "KEYPRESS ", TARGET_VER36, NULL },
	/* 380 */ { "KEYDEF ", TARGET_VER36, NULL },
	/* 381 */ { "DEFINT ", TARGET_VER36, NULL },
	/* 382 */ { "DEFFLT ", TARGET_VER36, NULL },					/* also DEFSNG/DEFDBL */
	/* 383 */ { "DEFBYT ", TARGET_VER36, NULL },
	/* 384 */ { "DEFWRD ", TARGET_VER36, NULL },
	/* 385 */ { "DEFBIT ", TARGET_VER36, NULL },
	/* 386 */ { "DEFSTR ", TARGET_VER36, NULL },
	/* 387 */ { "BOUNDARY ", TARGET_VER36, NULL },
	/* 388 */ { "LIST ", TARGET_VER36, NULL },
	/* 389 */ { "LLIST ", TARGET_VER36, NULL },
	/* 390 */ { "SAVE ", TARGET_VER36, NULL },
	/* 391 */ { "PSAVE ", TARGET_VER36, NULL },
	/* 392 */ { "CHAIN ", TARGET_VER36, NULL },
	/* 393 */ { "RUN", TARGET_VER36, NULL },						/* no arguments */
	/* 394 */ { "RUN ", TARGET_VER36, NULL },						/* RUN f$ */
	/* 395 */ { "LOAD ", TARGET_VER36, NULL },
	/* 396 */ { "SETDRAW ", TARGET_VER36, NULL },
	/* 397 */ { "ARRAYFILL ", TARGET_VER36, NULL },
	/* 398 */ { "DUMP", TARGET_VER36, NULL },
	/* 399 */ { "BITBLT ", TARGET_VER36, NULL },					/* BITBLT src%(),dst%(),par%() */
	/* 400 */ { "BITBLT ", TARGET_VER36, NULL },					/* BITBLT src%() */
	/* 401 */ { "BITBLT ", TARGET_VER36, NULL },					/* BITBLT src% */
	/* 402 */ { "STORE ", TARGET_VER36, NULL },
	/* 403 */ { "RECALL ", TARGET_VER36, NULL },
	/* 404 */ { "BSAVE ", TARGET_VER36, NULL },
	/* 405 */ { "BLOAD ", TARGET_VER36, NULL },
	/* 406 */ { "V~H=", TARGET_VER36, NULL },
	/* 407 */ { "TIME$=", TARGET_VER36, NULL },
	/* 408 */ { "DATE$=", TARGET_VER36, NULL },
	/* 409 */ { "SPRITE ", TARGET_VER36, NULL },
	/* 410 */ { "OPTION ", TARGET_VER36, NULL },
	/* 411 */ { "$", TARGET_VER36, NULL },
	/* 412 */ { "WINDTAB(", TARGET_VER36, NULL },
	/* 413 */ { "RC_COPY ", TARGET_VER36, NULL },
	/* 414 */ { "MODE ", TARGET_VER36, NULL },
	/* 415 */ { "", TARGET_VER36, NULL },							/* todo */
	/* 416 */ { "WRITE ", TARGET_VER36, NULL },
	/* 417 */ { "INLINE ", TARGET_VER36, NULL },
	/* 418 */ { "WORD{", TARGET_VER36, NULL },
	/* 419 */ { "VSETCOLOR ", TARGET_VER36, NULL },
	/* 420 */ { "OUT& ", TARGET_VER36, NULL },
	/* 421 */ { "OUT% ", TARGET_VER36, NULL },
	/* 422 */ { "CURVE ", TARGET_VER36, NULL },
	/* 423 */ { "_DATA=", TARGET_VER36, NULL },
	/* 424 */ { "MAT ADD ", TARGET_VER36, NULL },					/* MAT ADD a(),b() */
	/* 425 */ { "MAT ADD ", TARGET_VER36, NULL },					/* MAT ADD a(),x */
	/* 426 */ { "MAT SUB ", TARGET_VER36, NULL },					/* MAT SUB a(),b() */
	/* 427 */ { "MAT SUB ", TARGET_VER36, NULL },					/* MAT SUB a(),x */
	/* 428 */ { "MAT CPY ", TARGET_VER36, NULL },
	/* 429 */ { "MAT XCPY ", TARGET_VER36, NULL },
	/* 430 */ { "MAT DET ", TARGET_VER36, NULL },
	/* 431 */ { "MAT NEG ", TARGET_VER36, NULL },
	/* 432 */ { "MAT ABS ", TARGET_VER36, NULL },
	/* 433 */ { "MAT NORM ", TARGET_VER36, NULL },
	/* 434 */ { "MAT READ ", TARGET_VER36, NULL },
	/* 435 */ { "MAT PRINT ", TARGET_VER36, NULL },
	/* 436 */ { "MAT TRANS ", TARGET_VER36, NULL },
	/* 437 */ { "MAT CLR ", TARGET_VER36, NULL },
	/* 438 */ { "MAT SET ", TARGET_VER36, NULL },
	/* 439 */ { "MAT ONE ", TARGET_VER36, NULL },
	/* 440 */ { "MAT BASE ", TARGET_VER36, NULL },
	/* 441 */ { "MAT QDET ", TARGET_VER36, NULL },
	/* 442 */ { "MAT INPUT ", TARGET_VER36, NULL },
	/* 443 */ { "MAT RANG ", TARGET_VER36, NULL },
	/* 444 */ { "MAT MUL ", TARGET_VER36, NULL },					/* MAT MUL a()=b()*c() */
	/* 445 */ { "MAT MUL ", TARGET_VER36, NULL },					/* MAT MUL x=a()*b() */
	/* 446 */ { "MAT MUL ", TARGET_VER36, NULL },					/* MAT MUL x=a()*b()*c() */
	/* 447 */ { "MAT MUL ", TARGET_VER36, NULL },					/* MAT MUL a(),x */
	/* 448 */ { "MAT INV ", TARGET_VER36, NULL },
	/* 449 */ { "> FUNCTION ", TARGET_VER36, NULL },
	/* 450 */ { "DMASOUND ", TARGET_VER36, NULL },
	/* 451 */ { "DMACONTROL ", TARGET_VER36, NULL },
	/* 452 */ { "MW_OUT ", TARGET_VER36, NULL },
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
	/* 460 */ { "SET.MFDB ", TARGET_VER370, NULL },
	/* 461 */ { "SET.PXYWH ", TARGET_VER370, NULL },
	/* 462 */ { "BZERO ", TARGET_VER370, cmd_462_exception },
	/* 463 */ { "BFILL ", TARGET_VER370, NULL },
	/* 464 */ { "BXLATE ", TARGET_VER370, NULL },
	/* 465 */ { "BEEP", TARGET_VER370, NULL },
	/* 466 */ { "GHIDEM", TARGET_VER370, NULL },
	/* 467 */ { "GSHOWM", TARGET_VER370, NULL },
	/* 468 */ { "GMOUSE ", TARGET_VER370, NULL },
	/* 469 */ { "VCURVE ", TARGET_VER370, NULL },
	/* 470 */ { "VRC_COPY ", TARGET_VER370, NULL },
	/* 471 */ { "VGET ", TARGET_VER370, NULL },
	/* 472 */ { "VPLOT ", TARGET_VER370, NULL },
	/* 473 */ { "AVERAGE_RGB ", TARGET_VER370, cmd_473_exception },
	/* 474 */ { "TMOUSE ", TARGET_VER370, cmd_474_exception },
	/* 475 */ { "VLINE ", TARGET_VER370, NULL },
	/* 476 */ { "CPUFLUSH", TARGET_VER370, NULL },
	/* 477 */ { "BCRYPT ", TARGET_VER370, NULL },
	/* 478 */ { "GSTICK ", TARGET_VER370, NULL },
	/* 479 */ { "VSGET ", TARGET_VER370, NULL },
	/* 480 */ { "VSPUT ", TARGET_VER370, NULL },
	/* 481 */ { "VCLS", TARGET_VER370, NULL },
	/* 482 */ { "VPALGET ", TARGET_VER370, cmd_482_exception },
	/* 483 */ { "VPALSET ", TARGET_VER370, cmd_483_exception },
	/* 484 */ { "LOG_MSG ", TARGET_VER370, NULL },
	/* 485 */ { "LOG_SET ", TARGET_VER370, NULL },
	/* 486 */ { "LOG_FILE ", TARGET_VER370, NULL },
	/* 487 */ { "LOG_KILL", TARGET_VER370, NULL },
	/* 488 */ { "SET.PXYXY ", TARGET_VER370, NULL },
	/* 489 */ { "VBOX ", TARGET_VER370, NULL },
	/* 490 */ { "TBITBLT ", TARGET_VER370, cmd_490_exception },
	/* 491 */ { "SCALL ", TARGET_VER370, NULL },
	/* 492 */ { "VPUT ", TARGET_VER370, NULL }, /* 3 arguments */
	/* 493 */ { "VPUT ", TARGET_VER370, NULL }, /* 4 arguments */
	/* 494 */ { "STRPOKE ", TARGET_VER370, cmd_494_exception },
	/* 495 */ { "SET.SOCKADDR_IN ", TARGET_VER370, cmd_495_exception },
	/* 496 */ { "TPUT ", TARGET_VER370, NULL },
	/* 497 */ { "SNDH ", TARGET_VER370, NULL },
	/* 498 */ { "MEMSWAP& ", TARGET_VER370, cmd_498_exception },	/* parameter change in 3.72 */
	/* 499 */ { "MEMSWAP% ", TARGET_VER370, cmd_499_exception },	/* parameter change in 3.72 */
	/* 500 */ { "MEMFILL& ", TARGET_VER370, NULL },
	/* 501 */ { "MEMFILL% ", TARGET_VER370, NULL },
	/* 502 */ { "PALGET ", TARGET_VER371, NULL },					/* PALGET was token 482 in 3.70 */
	/* 503 */ { "PALSET ", TARGET_VER371, NULL },					/* PALSET was token 483 in 3.70 */
	/* 504 */ { "OB.STATE(", TARGET_VER370, NULL },
	/* 505 */ { "OB.FLAGS(", TARGET_VER370, NULL },
	/* 506 */ { "SBYTE{", TARGET_VER370, cmd_506_exception },
	/* 507 */ { "C2P ", TARGET_VER370, cmd_507_exception },
	/* 508 */ { "SET.SXYWH ", TARGET_VER370, cmd_508_exception },
	/* 509 */ { "SET.DXYWH ", TARGET_VER370, cmd_509_exception },
	/* 510 */ { "OB_RADIO(", TARGET_VER370, cmd_510_exception },
	/* 511 */ { "OB_TEXT$(", TARGET_VER370, NULL },
	/* 512 */ { "WARMBOOT", TARGET_VER370, cmd_512_exception },
	/* 513 */ { "JOYPAD ", TARGET_VER370, cmd_513_exception },
	/* 514 */ { "SLEEP", TARGET_VER370, cmd_514_exception },
	/* 515 */ { "MEMZERO& ", TARGET_VER370, cmd_515_exception },
	/* 516 */ { "MEMZERO% ", TARGET_VER370, cmd_516_exception },
	/* 517 */ { "SET.SXYXY ", TARGET_VER370, cmd_517_exception },
	/* 518 */ { "SET.DXYXY ", TARGET_VER370, cmd_518_exception },
	/* 519 */ { "SET.RXYWH ", TARGET_VER370, cmd_519_exception },
	/* 520 */ { "ENDSEEK #", TARGET_VER370, NULL },
	/* 521 */ { "SET.GCBITMAP ", TARGET_VER370, NULL },
	/* 522 */ { "MEMAND ", TARGET_VER370, NULL },
	/* 523 */ { "MEMOR ", TARGET_VER370, NULL },
	/* 524 */ { "MEMXOR ", TARGET_VER370, NULL },
	/* 525 */ { "MEMBSET| ", TARGET_VER370, NULL },
	/* 526 */ { "MEMBSET& ", TARGET_VER370, NULL },
	/* 527 */ { "MEMBSET% ", TARGET_VER370, NULL },
	/* 528 */ { "MEMBCLR| ", TARGET_VER370, NULL },
	/* 529 */ { "MEMBCLR& ", TARGET_VER370, NULL },
	/* 530 */ { "MEMBCLR% ", TARGET_VER370, NULL },
	/* 531 */ { "MEMBCHG| ", TARGET_VER370, NULL },
	/* 532 */ { "MEMBCHG& ", TARGET_VER370, NULL },
	/* 533 */ { "MEMBCHG% ", TARGET_VER370, NULL },
	/* 534 */ { "SCREEN ", TARGET_VER370, NULL },
	/* 535 */ { "BREPLACE ", TARGET_VER370, NULL },
	/* 536 */ { "RGB ", TARGET_VER370, NULL },
	/* 537 */ { "STRARRAYFILL ", TARGET_VER370, NULL },
	/* 538 */ { "ENVIRON ", TARGET_VER370, NULL },
	/* 539 */ { "MEMREPLACE& ", TARGET_VER370, NULL },
	/* 540 */ { "MEMREPLACE% ", TARGET_VER370, NULL },
	/* 541 */ { "SET.MENU ", TARGET_VER370, NULL },
	/* 542 */ { "WAITVBL", TARGET_VER370, NULL },
	/* 543 */ { "COLDBOOT", TARGET_VER370, NULL },
	/* 544 */ { "BMIRROR ", TARGET_VER370, cmd_544_exception },
	/* 545 */ { "MEMMIRROR& ", TARGET_VER370, cmd_545_exception },
	/* 546 */ { "MEMMIRROR% ", TARGET_VER370, cmd_546_exception },
	/* 547 */ { "MEMMIRROR3 ", TARGET_VER370, cmd_547_exception },
	/* 548 */ { "MEMEXG& ", TARGET_VER370, cmd_548_exception },
	/* 549 */ { "MEMEXG% ", TARGET_VER370, cmd_549_exception },
	/* 550 */ { "_0=", TARGET_VER370, NULL },
	/* 551 */ { "_1=", TARGET_VER370, NULL },
	/* 552 */ { "_2=", TARGET_VER370, NULL },
	/* 553 */ { "_3=", TARGET_VER370, NULL },
	/* 554 */ { "_4=", TARGET_VER370, NULL },
	/* 555 */ { "_5=", TARGET_VER370, NULL },
	/* 556 */ { "_6=", TARGET_VER370, NULL },
	/* 557 */ { "_7=", TARGET_VER370, NULL },
	/* 558 */ { "_8=", TARGET_VER370, NULL },
	/* 559 */ { "_9=", TARGET_VER370, NULL },
	
	/*
	 * below are new in 3.72
	 */
	/* 560 */ { "OB_SELECTED(", TARGET_VER372, NULL },
	/* 561 */ { "OB_CROSSED(", TARGET_VER372, NULL },
	/* 562 */ { "OB_CHECKED(", TARGET_VER372, NULL },
	/* 563 */ { "OB_DISABLED(", TARGET_VER372, NULL },
	/* 564 */ { "OB_OUTLINED(", TARGET_VER372, NULL },
	/* 565 */ { "OB_SHADOWED(", TARGET_VER372, NULL },
	/* 566 */ { "OB_WHITEBAK(", TARGET_VER372, NULL },
	/* 567 */ { NULL, 0, NULL }, /* unused */
	/* 568 */ { "OB_SELECTABLE(", TARGET_VER372, NULL },
	/* 569 */ { "OB_DEFAULT(", TARGET_VER372, NULL },
	/* 570 */ { "OB_EXIT(", TARGET_VER372, NULL },
	/* 571 */ { "OB_EDITABLE(", TARGET_VER372, NULL },
	/* 572 */ { "OB_RBUTTON(", TARGET_VER372, NULL },
	/* 573 */ { "OB_LASTOB(", TARGET_VER372, NULL },
	/* 574 */ { "OB_TOUCHEXIT(", TARGET_VER372, NULL },
	/* 575 */ { "OB_HIDETREE(", TARGET_VER372, NULL },
	/* 576 */ { "OB_INDIRECT(", TARGET_VER372, NULL },
	/* 577 */ { "OB_FL3DIND(", TARGET_VER372, NULL },
	/* 578 */ { "OB_FL3DACT(", TARGET_VER372, NULL },
	/* 579 */ { "OB_SUBMENU(", TARGET_VER372, NULL },
	/* 580 */ { NULL, 0, NULL }, /* unused */
	/* 581 */ { "OB_FL3DBAK(", TARGET_VER372, NULL },
	/* 582 */ { "BF_OBSPEC(", TARGET_VER372, NULL },
	/* 583 */ { "BF_CHARACTER(", TARGET_VER372, NULL },
	/* 584 */ { "BF_FRAMESIZE(", TARGET_VER372, NULL },
	/* 585 */ { "BF_FRAMECOL(", TARGET_VER372, NULL },
	/* 586 */ { "BF_TEXTCOL(", TARGET_VER372, NULL },
	/* 587 */ { "BF_TEXTMODE(", TARGET_VER372, NULL },
	/* 588 */ { "BF_FILLPATTERN(", TARGET_VER372, NULL },
	/* 589 */ { "BF_INTERIORCOL(", TARGET_VER372, NULL },
	/* 590 */ { "BI_PDATA(", TARGET_VER372, NULL },
	/* 591 */ { "BI_WB(", TARGET_VER372, NULL },
	/* 592 */ { "BI_HL(", TARGET_VER372, NULL },
	/* 593 */ { "BI_X(", TARGET_VER372, NULL },
	/* 594 */ { "BI_Y(", TARGET_VER372, NULL },
	/* 595 */ { "BI_COLOR(", TARGET_VER372, NULL },
	/* 596 */ { "UB_CODE(", TARGET_VER372, NULL },
	/* 597 */ { "UB_PARM(", TARGET_VER372, NULL },
	/* 598 */ { "TE_PTEXT(", TARGET_VER372, NULL },
	/* 599 */ { "TE_PTMPLT(", TARGET_VER372, NULL },
	/* 600 */ { "TE_PVALID(", TARGET_VER372, NULL },
	/* 601 */ { "TE_FONT(", TARGET_VER372, NULL },
	/* 602 */ { "TE_FONTID(", TARGET_VER372, NULL },
	/* 603 */ { "TE_JUST(", TARGET_VER372, NULL },
	/* 604 */ { "TE_COLOR(", TARGET_VER372, NULL },
	/* 605 */ { "TE_FONTSIZE(", TARGET_VER372, NULL },
	/* 606 */ { "TE_THICKNESS(", TARGET_VER372, NULL },
	/* 607 */ { "TE_TXTLEN(", TARGET_VER372, NULL },
	/* 608 */ { "TE_TMPLEN(", TARGET_VER372, NULL },
	/* 609 */ { "TE_FRAMECOL(", TARGET_VER372, NULL },
	/* 610 */ { "TE_TEXTCOL(", TARGET_VER372, NULL },
	/* 611 */ { "TE_TEXTMODE(", TARGET_VER372, NULL },
	/* 612 */ { "TE_FILLPATTERN(", TARGET_VER372, NULL },
	/* 613 */ { "TE_INTERIORCOL(", TARGET_VER372, NULL },
	/* 614 */ { "IB_PMASK(", TARGET_VER372, NULL },
	/* 615 */ { "IB_PDATA(", TARGET_VER372, NULL },
	/* 616 */ { "IB_PTEXT(", TARGET_VER372, NULL },
	/* 617 */ { "IB_CHAR(", TARGET_VER372, NULL },
	/* 618 */ { "IB_XCHAR(", TARGET_VER372, NULL },
	/* 619 */ { "IB_YCHAR(", TARGET_VER372, NULL },
	/* 620 */ { "IB_XICON(", TARGET_VER372, NULL },
	/* 621 */ { "IB_YICON(", TARGET_VER372, NULL },
	/* 622 */ { "IB_WICON(", TARGET_VER372, NULL },
	/* 623 */ { "IB_HICON(", TARGET_VER372, NULL },
	/* 624 */ { "IB_XTEXT(", TARGET_VER372, NULL },
	/* 625 */ { "IB_YTEXT(", TARGET_VER372, NULL },
	/* 626 */ { "IB_WTEXT(", TARGET_VER372, NULL },
	/* 627 */ { "IB_HTEXT(", TARGET_VER372, NULL },
	/* 628 */ { "IB_FCOLOR(", TARGET_VER372, NULL },
	/* 629 */ { "IB_BCOLOR(", TARGET_VER372, NULL },
	/* 630 */ { "IB_LETTER(", TARGET_VER372, NULL },
	/* 631 */ { "CI_MAINLIST(", TARGET_VER372, NULL },
	/* 632 */ { "CI_NUM_PLANES(", TARGET_VER372, NULL },
	/* 633 */ { "CI_COL_DATA(", TARGET_VER372, NULL },
	/* 634 */ { "CI_COL_MASK(", TARGET_VER372, NULL },
	/* 635 */ { "CI_SEL_DATA(", TARGET_VER372, NULL },
	/* 636 */ { "CI_SEL_MASK(", TARGET_VER372, NULL },
	/* 637 */ { "CI_NEXT_RES(", TARGET_VER372, NULL },
	/* 638 */ { "BEXG ", TARGET_VER372, NULL },

	/*
	 * below are new in 3.73 (GBE)
	 */
	/* 639 */ { "SUPER ", TARGET_VER373, NULL },
	/* 640 */ { "PIXEL24 ", TARGET_VER373, NULL },					/* 5 arguments */
	/* 641 */ { "PIXEL24 ", TARGET_VER373, NULL },					/* 7 arguments */
	/* 642 */ { "PIXEL32 ", TARGET_VER373, NULL },					/* 5 arguments */
	/* 643 */ { "PIXEL32 ", TARGET_VER373, NULL },					/* 7 arguments */
	/* 644 */ { "PIXEL16 ", TARGET_VER373, NULL },					/* 5 arguments */
	/* 645 */ { "PIXEL16 ", TARGET_VER373, NULL },					/* 7 arguments */
	/* 646 */ { "PIXEL15 ", TARGET_VER373, NULL },					/* 5 arguments */
	/* 647 */ { "PIXEL15 ", TARGET_VER373, NULL },					/* 7 arguments */
	/* 648 */ { "BAR ", TARGET_VER373, NULL },
	/* 649 */ { "PBAR ", TARGET_VER373, NULL },
	/* 650 */ { "RBAR ", TARGET_VER373, NULL },
	/* 651 */ { "PRBAR ", TARGET_VER373, NULL },
	/* 652 */ { "VPBAR ", TARGET_VER373, NULL },
	/* 653 */ { "PIXEL8P ", TARGET_VER373, NULL },
	/* 654 */ { "PIXEL1M ", TARGET_VER373, NULL },
	/* 655 */ { "PIXEL8C ", TARGET_VER373, NULL },
	/* 656 */ { "STRUCT$(", TARGET_VER373, NULL },
	/* 657 */ { "STRUCT!(", TARGET_VER373, NULL },
	/* 658 */ { "STRUCT|(", TARGET_VER373, NULL },
	/* 659 */ { "STRUCT&(", TARGET_VER373, NULL },
	/* 660 */ { "STRUCT%(", TARGET_VER373, NULL },
	/* 661 */ { "STRUCT(", TARGET_VER373, NULL },
	/* 662 */ { "PIXEL4P ", TARGET_VER373, NULL },
	/* 663 */ { "PIXEL2P ", TARGET_VER373, NULL },
	/* 664 */ { "MDPOKE ", TARGET_VER373, NULL },
	/* 665 */ { "MLPOKE ", TARGET_VER373, NULL },
	/* 666 */ { "MNAM ", TARGET_VER373, NULL },
	/* 667 */ { "VER2STR ", TARGET_VER373, NULL },
	/* 668 */ { "IKBD ", TARGET_VER373, NULL },
	/* 669 */ { "_GLOBAL=", TARGET_VER373, NULL },
	/* 670 */ { "SFILL ", TARGET_VER373, NULL },
	/* 671 */ { "USERDEF!(", TARGET_VER373, NULL },
	/* 672 */ { "USERDEF|(", TARGET_VER373, NULL },
	/* 673 */ { "USERDEF&(", TARGET_VER373, NULL },
	/* 674 */ { "USERDEF%(", TARGET_VER373, NULL },
	/* 675 */ { "CRASTER ", TARGET_VER373, NULL },
	/* 676 */ { "RC_REDRAW", TARGET_VER373, NULL },					/* no arguments */
	/* 677 */ { "RC_REDRAW", TARGET_VER373, NULL },					/* 4 arguments */
	/* 678 */ { "PWRITE #", TARGET_VER374, NULL },
	/* 679 */ { "PREAD #", TARGET_VER374, NULL },
	/* 680 */ { "ARRAY!(", TARGET_VER373, NULL },
	/* 681 */ { "ARRAY|(", TARGET_VER373, NULL },
	/* 682 */ { "ARRAY&(", TARGET_VER373, NULL },
	/* 683 */ { "ARRAY%(", TARGET_VER373, NULL },
	/* 684 */ { "ARRAY(", TARGET_VER373, NULL },

	/*
	 * below are new in 3.74 (GBE)
	 */
	/* 685 */ { "CWRITE #", TARGET_VER374, NULL },
	/* 686 */ { "CREAD #", TARGET_VER374, NULL },
	/* 687 */ { "STEXT ", TARGET_VER374, NULL },
	/* 688 */ { "P3DBAR ", TARGET_VER374, NULL },
	/* 689 */ { "NYBLE{", TARGET_VER374, NULL },
	/* 690 */ { "HINYBLE{", TARGET_VER374, NULL },
	/* 691 */ { "KEYCLICK ", TARGET_VER374, NULL },
	/* 692 */ { "KEYREPEAT ", TARGET_VER374, NULL },
	/* 693 */ { "SYSBELL ", TARGET_VER374, NULL },
	/* 694 */ { "TRIANGLE ", TARGET_VER374, NULL },
	/* 695 */ { "PTRIANGLE ", TARGET_VER374, NULL },
	/* 696 */ { "OB_EXTYPE(", TARGET_VER374, NULL },
};
unsigned int const size_lct = (unsigned int)ARRAY_SIZE(gfalct);

/* Primary function text */
struct nameversion const gfapft[256] = {
	/*    0 */ { " AND ", TARGET_VER36, NULL },
	/*    1 */ { " OR ", TARGET_VER36, NULL },
	/*    2 */ { " XOR ", TARGET_VER36, NULL },
	/*    3 */ { " IMP ", TARGET_VER36, NULL },
	/*    4 */ { " EQV ", TARGET_VER36, NULL },
	/*    5 */ { "-", TARGET_VER36, NULL },
	/*    6 */ { "+", TARGET_VER36, NULL },
	/*    7 */ { "*", TARGET_VER36, NULL },
	/*    8 */ { "/", TARGET_VER36, NULL },
	/*    9 */ { "^", TARGET_VER36, NULL },
	/*   10 */ { " MOD ", TARGET_VER36, NULL },
	/*   11 */ { " DIV ", TARGET_VER36, NULL },
	/*   12 */ { "<>", TARGET_VER36, NULL }, /* numbers */
	/*   13 */ { "<=", TARGET_VER36, NULL }, /* numbers */
	/*   14 */ { "=<", TARGET_VER36, NULL }, /* numbers */
	/*   15 */ { ">=", TARGET_VER36, NULL }, /* numbers */
	/*   16 */ { "=>", TARGET_VER36, NULL }, /* numbers */
	/*   17 */ { "<", TARGET_VER36, NULL }, /* numbers */
	/*   18 */ { ">", TARGET_VER36, NULL }, /* numbers */
	/*   19 */ { "=", TARGET_VER36, NULL }, /* numbers */
	/*   20 */ { "<>", TARGET_VER36, NULL }, /* strings */
	/*   21 */ { "<=", TARGET_VER36, NULL }, /* strings */
	/*   22 */ { "=<", TARGET_VER36, NULL }, /* strings */
	/*   23 */ { ">=", TARGET_VER36, NULL }, /* strings */
	/*   24 */ { "=>", TARGET_VER36, NULL }, /* strings */
	/*   25 */ { "<", TARGET_VER36, NULL }, /* strings */
	/*   26 */ { ">", TARGET_VER36, NULL }, /* strings */
	/*   27 */ { "=", TARGET_VER36, NULL }, /* strings */
	/*   28 */ { "+", TARGET_VER36, NULL }, /* strings */
	/*   29 */ { "+", TARGET_VER36, NULL }, /* unary plus */
	/*   30 */ { "-", TARGET_VER36, NULL }, /* unary minus */
	/*   31 */ { "NOT ", TARGET_VER36, NULL },
	/*   32 */ { ")", TARGET_VER36, NULL }, /* end of parameter list (array ref, function call, dim) */
	/*   33 */ { ",", TARGET_VER36, NULL },
	/*   34 */ { ";", TARGET_VER36, NULL },
	/*   35 */ { "(", TARGET_VER36, NULL }, /* in expressions */
	/*   36 */ { "ERR$(", TARGET_VER36, NULL },
	/*   37 */ { "INT(", TARGET_VER36, NULL },
	/*   38 */ { "TRUNC(", TARGET_VER36, NULL },
	/*   39 */ { "FRAC(", TARGET_VER36, NULL },
	/*   40 */ { "ABS(", TARGET_VER36, NULL },
	/*   41 */ { "SIN(", TARGET_VER36, NULL },
	/*   42 */ { "COS(", TARGET_VER36, NULL },
	/*   43 */ { "TAN(", TARGET_VER36, NULL },
	/*   44 */ { "ATN(", TARGET_VER36, NULL },
	/*   45 */ { "==", TARGET_VER36, NULL },
	/*   46 */ { "(", TARGET_VER36, NULL }, /* unknown */
	/*   47 */ { "EXP(", TARGET_VER36, NULL },
	/*   48 */ { "LOG(", TARGET_VER36, NULL },
	/*   49 */ { "LOG10(", TARGET_VER36, NULL },
	/*   50 */ { "VAR ", TARGET_VER36, NULL },
	/*   51 */ { ")", TARGET_VER36, NULL }, /* appears in VAR a() */
	/*   52 */ { "INPAUX$", TARGET_VER36, NULL },
	/*   53 */ { "VAL(", TARGET_VER36, NULL },
	/*   54 */ { "INPMID$", TARGET_VER36, NULL },
	/*   55 */ { "", TARGET_VER36, NULL },  /* Precedes functions that return a numeric value in PRINT statements */
	/*   56 */ { "TIME$", TARGET_VER36, NULL }, /* no arguments */
	/*   57 */ { ")=", TARGET_VER36, NULL }, /* for array assignment */
	/*   58 */ { "LEFT$(", TARGET_VER36, NULL }, /* 1 argument */
	/*   59 */ { "LEFT$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*   60 */ { "RIGHT$(", TARGET_VER36, NULL }, /* 1 argument */
	/*   61 */ { "RIGHT$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*   62 */ { "MID$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*   63 */ { "MID$(", TARGET_VER36, NULL }, /* 3 arguments */
	/*   64 */ { ",", TARGET_VER36, NULL }, /* unknown */
	/*   65 */ { "ASIN(", TARGET_VER36, NULL },
	/*   66 */ { "CHR$(", TARGET_VER36, NULL },
	/*   67 */ { "}=", TARGET_VER36, NULL },
	/*   68 */ { "]=", TARGET_VER36, NULL }, /* unknown */
	/*   69 */ { "=", TARGET_VER36, NULL },
	/*   70 */ { NULL, TARGET_VER36, NULL }, /* comment */
	/*   71 */ { " TO ", TARGET_VER36, NULL },
	/*   72 */ { " STEP ", TARGET_VER36, NULL },
	/*   73 */ { " DOWNTO ", TARGET_VER36, NULL },
	/*   74 */ { " THEN", TARGET_VER36, NULL },
	/*   75 */ { " GOTO ", TARGET_VER36, NULL }, /* on x GOTO */
	/*   76 */ { " GOSUB ", TARGET_VER36, NULL }, /* on x GOSUB */
	/*   77 */ { "#", TARGET_VER36, NULL },
	/*   78 */ { "SQR(", TARGET_VER36, NULL },
	/*   79 */ { "PI", TARGET_VER36, NULL },
	/*   80 */ { "[", TARGET_VER36, NULL },
	/*   81 */ { "]", TARGET_VER36, NULL },
	/*   82 */ { "ACOS(", TARGET_VER36, NULL },
	/*   83 */ { "INKEY$", TARGET_VER36, NULL },
	/*   84 */ { "RND(", TARGET_VER36, NULL }, /* 1 argument */
	/*   85 */ { "RND", TARGET_VER36, NULL }, /* no arguments */
	/*   86 */ { "RANDOM(", TARGET_VER36, NULL },
	/*   87 */ { "'", TARGET_VER36, NULL }, /* in print statement */
	/*   88 */ { "}", TARGET_VER36, NULL },
	/*   89 */ { "AT(", TARGET_VER36, NULL },
	/*   90 */ { "IF", TARGET_VER36, NULL },
	/*   91 */ { "\\", TARGET_VER36, NULL }, /* integer DIV */
	/*   92 */ { "FLOAT{", TARGET_VER36, NULL },
	/*   93 */ { "DOUBLE{", TARGET_VER36, NULL },
	/*   94 */ { "INPUT$(", TARGET_VER36, NULL }, /* 1 argument */
	/*   95 */ { "INPUT$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*   96 */ { "INPUT", TARGET_VER36, NULL },
	/*   97 */ { "CHAR{", TARGET_VER36, NULL },
	/*   98 */ { "MKI$(", TARGET_VER36, NULL },
	/*   99 */ { "MKL$(", TARGET_VER36, NULL },
	/*  100 */ { "MKS$(", TARGET_VER36, NULL },
	/*  101 */ { "MKF$(", TARGET_VER36, NULL },
	/*  102 */ { "MKD$(", TARGET_VER36, NULL },
	/*  103 */ { "DEG(", TARGET_VER36, NULL },
	/*  104 */ { "RAD(", TARGET_VER36, NULL },
	/*  105 */ { "CVS(", TARGET_VER36, NULL },
	/*  106 */ { "CVF(", TARGET_VER36, NULL },
	/*  107 */ { "CVD(", TARGET_VER36, NULL },
	/*  108 */ { " AS ", TARGET_VER36, NULL },
	/*  109 */ { " OFFSET ", TARGET_VER36, NULL },
	/*  110 */ { "CFLOAT(", TARGET_VER36, NULL },
	/*  111 */ { "TRACE$", TARGET_VER36, NULL },
	/*  112 */ { "ROUND(", TARGET_VER36, NULL }, /* 1 argument */
	/*  113 */ { "ROUND(", TARGET_VER36, NULL }, /* 2 arguments */
	/*  114 */ { " WITH ", TARGET_VER36, NULL },
	/*  115 */ { "BIN$(", TARGET_VER36, NULL }, /* 1 argument */
	/*  116 */ { "BIN$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*  117 */ { "MIN(", TARGET_VER36, NULL }, /* numbers */
	/*  118 */ { "MIN(", TARGET_VER36, NULL }, /* strings */
	/*  119 */ { "MAX(", TARGET_VER36, NULL }, /* numbers */
	/*  120 */ { "MAX(", TARGET_VER36, NULL }, /* strings */
	/*  121 */ { "SINGLE{", TARGET_VER36, NULL },
	/*  122 */ { " AT(", TARGET_VER36, NULL }, /* FIELD #x,num AT(x) */
	/*  123 */ { "SINQ(", TARGET_VER36, NULL },
	/*  124 */ { ":", TARGET_VER36, NULL },
	/*  125 */ { "COSQ(", TARGET_VER36, NULL },
	/*  126 */ { "DATE$", TARGET_VER36, NULL }, /* no arguments */
	/*  127 */ { "UPPER$(", TARGET_VER36, NULL },
	/*  128 */ { "SPACE$(", TARGET_VER36, NULL },
	/*  129 */ { "STRING$(", TARGET_VER36, NULL }, /* 2nd argument code */
	/*  130 */ { "STRING$(", TARGET_VER36, NULL }, /* 2nd argument string */
	/*  131 */ { "SUCC(", TARGET_VER36, NULL },
	/*  132 */ { "DIR$(", TARGET_VER36, NULL },
	/*  133 */ { "PRED(", TARGET_VER36, NULL },
	/*  134 */ { "DRAW(", TARGET_VER36, NULL },
	/*  135 */ { "TRIM$(", TARGET_VER36, NULL },
	/*  136 */ { "CMDLINE$", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  137 */ { "CURDIR$", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  138 */ { "L:", TARGET_VER36, NULL },
	/*  139 */ { "W:", TARGET_VER36, NULL },
	/*  140 */ { "FACT(", TARGET_VER36, NULL },
	/*  141 */ { "COMBIN(", TARGET_VER36, NULL },
	/*  142 */ { "ENVIRON$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  143 */ { "VARIAT(", TARGET_VER36, NULL },
	/*  144 */ { "LTRIM$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  145 */ { "RTRIM$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  146 */ { "LCASE$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  147 */ { "UCASE$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  148 */ { "LOWER$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  149 */ { "OB_TEXT$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  150 */ { "ZTRIM$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  151 */ { "ERROR", TARGET_VER36, NULL },
	/*  152 */ { "STOP", TARGET_VER36, NULL },
	/*  153 */ { "BREAK", TARGET_VER36, NULL },
	/*  154 */ { " CONT", TARGET_VER36, NULL },		/* EVERY  CONT */
	/*  155 */ { "FIX(", TARGET_VER36, NULL },
	/*  156 */ { ",", TARGET_VER36, NULL }, /* precedes string parameter in parameter list */
	/*  157 */ { "(", TARGET_VER36, NULL }, /* starts parameter list of C: or CALL */
	/*  158 */ { "FN ", TARGET_VER36, NULL },
	/*  159 */ { "@", TARGET_VER36, NULL },
	/*  160 */ { "MIRROR$(", TARGET_VER36, NULL }, /* new in 3.70 */
	/*  161 */ { "TAB(", TARGET_VER36, NULL },
	/*  162 */ { "SPC(", TARGET_VER36, NULL },
	/*  163 */ { "USING ", TARGET_VER36, NULL },
	/*  164 */ { "CHAR$(", TARGET_VER370, NULL }, /* 1 argument */ /* new in 3.70 */
	/*  165 */ { "TIME$(", TARGET_VER370, NULL }, /* 1 argument */ /* new in 3.70 */
	/*  166 */ { "TIMESTAMP$(", TARGET_VER370, func_pft_166_exception }, /* new in 3.70 */ /* parameter change in 3.71 */
	/*  167 */ { "MENU", TARGET_VER36, NULL },
	/*  168 */ { "NEXT", TARGET_VER36, NULL }, /* RESUME NEXT */
	/*  169 */ { "STRPEEK$(", TARGET_VER370, NULL }, /* new in 3.70 */
	/*  170 */ { "KEY", TARGET_VER36, NULL },
	/*  171 */ { "BUTTON", TARGET_VER36, NULL },
	/*  172 */ { "IBOX", TARGET_VER36, NULL },
	/*  173 */ { "OBOX", TARGET_VER36, NULL },
	/*  174 */ { "MESSAGE", TARGET_VER36, NULL },
	/*  175 */ { "OFF", TARGET_VER36, NULL },
	/*  176 */ { "KILL", TARGET_VER36, NULL }, /* unknown */
	/*  177 */ { "DIGITAL$(", TARGET_VER372, NULL }, /* new in 3.72 */
	/*  178 */ { "REPLACE$(", TARGET_VER372, NULL },  /* new in 3.72 */
	/*  179 */ { "CRYPT$(", TARGET_VER372, NULL }, /* new in 3.72 */
	/*  180 */ { "XLATE$(", TARGET_VER372, NULL }, /* new in 3.72 */
	/*  181 */ { "STRUCT$(", TARGET_VER373, NULL }, /* new in 3.73 */
	/*  182 */ { "BASE ", TARGET_VER36, NULL },
	/*  183 */ { "NULL", TARGET_VER370, NULL }, /* new in 3.70 */
	/*  184 */ { "0", TARGET_VER36, NULL },
	/*  185 */ { "1", TARGET_VER36, NULL },
	/*  186 */ { "2", TARGET_VER370, NULL }, /* new in 3.70 */
	/*  187 */ { "3", TARGET_VER370, NULL }, /* new in 3.70 */
	/*  188 */ { "TRUE", TARGET_VER36, NULL },
	/*  189 */ { "FALSE", TARGET_VER36, NULL },
	/*  190 */ { "STR$(", TARGET_VER36, NULL }, /* 1 argument */
	/*  191 */ { "STR$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*  192 */ { "STR$(", TARGET_VER36, NULL }, /* 3 arguments */
	/*  193 */ { "HEX$(", TARGET_VER36, NULL }, /* 1 argument */
	/*  194 */ { "HEX$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*  195 */ { "OCT$(", TARGET_VER36, NULL }, /* 1 argument */
	/*  196 */ { "OCT$(", TARGET_VER36, NULL }, /* 2 arguments */
	/*  197 */ { NULL, TARGET_VER36, NULL }, /* unknown */
	/*  198 */ { NULL, TARGET_VER36, NULL }, /* string constant */
	/*  199 */ { NULL, TARGET_VER36, NULL }, /* string constant (pad byte) */
	/*  200 */ { NULL, TARGET_VER36, NULL }, /* decimal constant */
	/*  201 */ { NULL, TARGET_VER36, NULL }, /* decimal constant (pad byte) */
	/*  202 */ { NULL, TARGET_VER36, NULL }, /* hexadecimal constant */
	/*  203 */ { NULL, TARGET_VER36, NULL }, /* hexadecimal constant (pad byte) */
	/*  204 */ { NULL, TARGET_VER36, NULL }, /* octal constant */
	/*  205 */ { NULL, TARGET_VER36, NULL }, /* octal constant (pad byte) */
	/*  206 */ { NULL, TARGET_VER36, NULL }, /* binary constant */
	/*  207 */ { NULL, TARGET_VER36, NULL }, /* binary constant (pad byte) */
	/*  208 */ { NULL, TARGET_VER36, NULL }, /* secondary function -> gfasft_208 */
	/*  209 */ { NULL, TARGET_VER36, NULL }, /* secondary function -> gfasft_209 */
	/*  210 */ { NULL, TARGET_VER36, NULL }, /* secondary function -> gfasft_210 */
	/*  211 */ { NULL, TARGET_VER36, NULL }, /* secondary function -> gfasft_211 */
	/*  212 */ { NULL, TARGET_VER36, NULL }, /* secondary function -> gfasft_212 */
	/*  213 */ { NULL, TARGET_VER36, NULL }, /* secondary function -> gfasft_213 */
	/*  214 */ { NULL, TARGET_VER36, NULL }, /* secondary function -> gfasft_214 */
	/*  215 */ { NULL, TARGET_VER36, NULL }, /* octal double constant (pad byte) */
	/*  216 */ { NULL, TARGET_VER36, NULL }, /* octal double constant */
	/*  217 */ { NULL, TARGET_VER36, NULL }, /* binary double constant (pad byte) */
	/*  218 */ { NULL, TARGET_VER36, NULL }, /* binary double constant */
	/*  219 */ { NULL, TARGET_VER36, NULL }, /* hexadecimal double constant (pad byte) */
	/*  220 */ { NULL, TARGET_VER36, NULL }, /* hexadecimal double constant */
	/*  221 */ { NULL, TARGET_VER36, NULL }, /* decimal double constant (pad byte) */
	/*  222 */ { NULL, TARGET_VER36, NULL }, /* string constant */
	/*  223 */ { NULL, TARGET_VER36, NULL }, /* decimal double constant */
	/*  224 */ { NULL, TARGET_VER36, NULL }, /* variable access, 1 byte follows */
	/*  225 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  226 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  227 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  228 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  229 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  230 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  231 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  232 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  233 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  234 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  235 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  236 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  237 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  238 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  239 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  240 */ { NULL, TARGET_VER36, NULL }, /* variable access, 2 bytes follow */
	/*  241 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  242 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  243 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  244 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  245 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  246 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  247 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  248 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  249 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  250 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  251 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  252 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  253 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  254 */ { NULL, TARGET_VER36, NULL }, /* " */
	/*  255 */ { NULL, TARGET_VER36, NULL }  /* " */
};

/* Secondary function text */
struct nameversion const gfasft_208[256] = {
	/*    0 */ { "MUL(", TARGET_VER36, NULL },
	/*    1 */ { "DIV(", TARGET_VER36, NULL },
	/*    2 */ { "ADD(", TARGET_VER36, NULL },
	/*    3 */ { "SUB(", TARGET_VER36, NULL },
	/*    4 */ { "MOD(", TARGET_VER36, NULL },
	/*    5 */ { "AND(", TARGET_VER36, NULL },
	/*    6 */ { "OR(", TARGET_VER36, NULL },
	/*    7 */ { "XOR(", TARGET_VER36, NULL },
	/*    8 */ { "EQV(", TARGET_VER36, NULL },
	/*    9 */ { "IMP(", TARGET_VER36, NULL },
	/*   10 */ { "SHL(", TARGET_VER36, NULL },
	/*   11 */ { "SHR(", TARGET_VER36, NULL },
	/*   12 */ { "ROL(", TARGET_VER36, NULL },
	/*   13 */ { "ROR(", TARGET_VER36, NULL },
	/*   14 */ { "WORD(", TARGET_VER36, NULL },
	/*   15 */ { "CARD(", TARGET_VER36, NULL },
	/*   16 */ { "BYTE(", TARGET_VER36, NULL },
	/*   17 */ { "SWAP(", TARGET_VER36, NULL },
	/*   18 */ { "ADDRIN(", TARGET_VER36, NULL },
	/*   19 */ { "ADDRIN", TARGET_VER36, NULL },
	/*   20 */ { "ADDROUT(", TARGET_VER36, NULL },
	/*   21 */ { "ADDROUT", TARGET_VER36, NULL },
	/*   22 */ { "CONTRL(", TARGET_VER36, NULL },
	/*   23 */ { "CONTRL", TARGET_VER36, NULL },
	/*   24 */ { "GCONTRL(", TARGET_VER36, NULL },
	/*   25 */ { "GCONTRL", TARGET_VER36, NULL },
	/*   26 */ { "GINTIN(", TARGET_VER36, NULL },
	/*   27 */ { "GINTIN", TARGET_VER36, NULL },
	/*   28 */ { "GINTOUT(", TARGET_VER36, NULL },
	/*   29 */ { "GINTOUT", TARGET_VER36, NULL },
	/*   30 */ { "HIMEM", TARGET_VER36, NULL },
	/*   31 */ { "BASEPAGE", TARGET_VER36, NULL },
	/*   32 */ { "INTIN(", TARGET_VER36, NULL },
	/*   33 */ { "INTIN", TARGET_VER36, NULL },
	/*   34 */ { "INTOUT(", TARGET_VER36, NULL },
	/*   35 */ { "INTOUT", TARGET_VER36, NULL },
	/*   36 */ { "PTSIN(", TARGET_VER36, NULL },
	/*   37 */ { "PTSIN", TARGET_VER36, NULL },
	/*   38 */ { "PTSOUT(", TARGET_VER36, NULL },
	/*   39 */ { "PTSOUT", TARGET_VER36, NULL },
	/*   40 */ { "VDIBASE", TARGET_VER36, NULL },
	/*   41 */ { "WINDTAB(", TARGET_VER36, NULL },
	/*   42 */ { "WINDTAB", TARGET_VER36, NULL },
	/*   43 */ { "PTST(", TARGET_VER36, NULL },
	/*   44 */ { "BTST(", TARGET_VER36, NULL },
	/*   45 */ { "BSET(", TARGET_VER36, NULL },
	/*   46 */ { "BCLR(", TARGET_VER36, NULL },
	/*   47 */ { "BCHG(", TARGET_VER36, NULL },
	/*   48 */ { "SHL&(", TARGET_VER36, NULL },
	/*   49 */ { "SHR&(", TARGET_VER36, NULL },
	/*   50 */ { "ROL&(", TARGET_VER36, NULL },
	/*   51 */ { "ROR&(", TARGET_VER36, NULL },
	/*   52 */ { "SHL|(", TARGET_VER36, NULL },
	/*   53 */ { "SHR|(", TARGET_VER36, NULL },
	/*   54 */ { "ROL|(", TARGET_VER36, NULL },
	/*   55 */ { "ROR|(", TARGET_VER36, NULL },
	/*   56 */ { "CRSLIN", TARGET_VER36, NULL },
	/*   57 */ { "CRSCOL", TARGET_VER36, NULL },
	/*   58 */ { "MOUSEX", TARGET_VER36, NULL },
	/*   59 */ { "MOUSEY", TARGET_VER36, NULL },
	/*   60 */ { "MOUSEK", TARGET_VER36, NULL },
	/*   61 */ { "GB", TARGET_VER36, NULL },
	/*   62 */ { "TIMER", TARGET_VER36, NULL },
	/*   63 */ { "PEEK(", TARGET_VER36, NULL },
	/*   64 */ { "DPEEK(", TARGET_VER36, NULL },
	/*   65 */ { "LPEEK(", TARGET_VER36, NULL },
	/*   66 */ { "LEN(", TARGET_VER36, NULL },
	/*   67 */ { "ASC(", TARGET_VER36, NULL },
	/*   68 */ { "INSTR(", TARGET_VER36, NULL }, /* INSTR(a$,b$) */
	/*   69 */ { "INSTR(", TARGET_VER36, NULL }, /* INSTR(a$,b$,x) */
	/*   70 */ { "INSTR(", TARGET_VER36, NULL }, /* INSTR(x,a$,b$) */
	/*   71 */ { "FRE(", TARGET_VER36, NULL },
	/*   72 */ { "POINT(", TARGET_VER36, NULL },
	/*   73 */ { "VAL?(", TARGET_VER36, NULL },
	/*   74 */ { "INP(", TARGET_VER36, NULL },
	/*   75 */ { "CVI(", TARGET_VER36, NULL },
	/*   76 */ { "CVL(", TARGET_VER36, NULL },
	/*   77 */ { "INP(#", TARGET_VER36, NULL },
	/*   78 */ { "EOF(#", TARGET_VER36, NULL },
	/*   79 */ { "LOF(#", TARGET_VER36, NULL },
	/*   80 */ { "LOC(#", TARGET_VER36, NULL },
	/*   81 */ { "DIM?(", TARGET_VER36, NULL },
	/*   82 */ { "RAND(", TARGET_VER36, NULL },
	/*   83 */ { "DFREE(", TARGET_VER36, NULL },
	/*   84 */ { "EXIST(", TARGET_VER36, NULL },
	/*   85 */ { "BIOS(", TARGET_VER36, NULL },
	/*   86 */ { "XBIOS(", TARGET_VER36, NULL },
	/*   87 */ { "GEMDOS(", TARGET_VER36, NULL },
	/*   88 */ { "ERR", TARGET_VER36, NULL },
	/*   89 */ { "FATAL", TARGET_VER36, NULL },
	/*   90 */ { "POS(", TARGET_VER36, NULL },
	/*   91 */ { "LPOS(", TARGET_VER36, NULL },
	/*   92 */ { "MENU(", TARGET_VER36, NULL },
	/*   93 */ { "INP?(", TARGET_VER36, NULL },
	/*   94 */ { "OUT?(", TARGET_VER36, NULL },
	/*   95 */ { "EXEC(", TARGET_VER36, NULL },
	/*   96 */ { "SUCC(", TARGET_VER36, NULL },
	/*   97 */ { "PRED(", TARGET_VER36, NULL },
	/*   98 */ { "W_HAND(#", TARGET_VER36, NULL },
	/*   99 */ { "W_INDEX(#", TARGET_VER36, NULL },
	/*  100 */ { "SGN(", TARGET_VER36, NULL },
	/*  101 */ { "EVEN(", TARGET_VER36, NULL },
	/*  102 */ { "ODD(", TARGET_VER36, NULL },
	/*  103 */ { "CINT(", TARGET_VER36, NULL },
	/*  104 */ { "GDOS?", TARGET_VER36, NULL },
	/*  105 */ { "V_OPNWK(", TARGET_VER36, NULL },
	/*  106 */ { "V_CLSWK()", TARGET_VER36, NULL },
	/*  107 */ { "V_OPNVWK(", TARGET_VER36, NULL },
	/*  108 */ { "V_CLSVWK()", TARGET_VER36, NULL },
	/*  109 */ { "V_UPDWK()", TARGET_VER36, NULL },
	/*  110 */ { "VST_LOAD_FONTS(", TARGET_VER36, NULL },
	/*  111 */ { "VST_UNLOAD_FONTS(", TARGET_VER36, NULL },
	/*  112 */ { "{", TARGET_VER36, NULL },
	/*  113 */ { "LONG{", TARGET_VER36, NULL },
	/*  114 */ { "INT{", TARGET_VER36, NULL },
	/*  115 */ { "CARD{", TARGET_VER36, NULL },
	/*  116 */ { "BYTE{", TARGET_VER36, NULL },
	/*  117 */ { "C:", TARGET_VER36, NULL },
	/*  118 */ { "EVNT_KEYBD()", TARGET_VER36, NULL },
	/*  119 */ { "EVNT_BUTTON(", TARGET_VER36, NULL },
	/*  120 */ { "EVNT_MOUSE(", TARGET_VER36, NULL },
	/*  121 */ { "EVNT_MESAG(", TARGET_VER36, NULL },
	/*  122 */ { "EVNT_TIMER(", TARGET_VER36, NULL },
	/*  123 */ { "EVNT_MULTI(", TARGET_VER36, NULL },
	/*  124 */ { "RSRC_LOAD(", TARGET_VER36, NULL },
	/*  125 */ { "RSRC_FREE()", TARGET_VER36, NULL },
	/*  126 */ { "RSRC_GADDR(", TARGET_VER36, NULL },
	/*  127 */ { "RSRC_SADDR(", TARGET_VER36, NULL },
	/*  128 */ { "RSRC_OBFIX(", TARGET_VER36, NULL },
	/*  129 */ { "SHEL_READ(", TARGET_VER36, NULL },
	/*  130 */ { "SHEL_WRITE(", TARGET_VER36, NULL },
	/*  131 */ { "SHEL_GET(", TARGET_VER36, NULL },
	/*  132 */ { "SHEL_PUT(", TARGET_VER36, NULL },
	/*  133 */ { "SHEL_FIND(", TARGET_VER36, NULL },
	/*  134 */ { "SHEL_ENVRN(", TARGET_VER36, NULL },
	/*  135 */ { "APPL_INIT()", TARGET_VER36, NULL },
	/*  136 */ { "APPL_READ(", TARGET_VER36, NULL },
	/*  137 */ { "APPL_WRITE(", TARGET_VER36, NULL },
	/*  138 */ { "APPL_FIND(", TARGET_VER36, NULL },
	/*  139 */ { "APPL_TPLAY(", TARGET_VER36, NULL },
	/*  140 */ { "APPL_TRECORD(", TARGET_VER36, NULL },
	/*  141 */ { "APPL_EXIT()", TARGET_VER36, NULL },
	/*  142 */ { "EVNT_DCLICK(", TARGET_VER36, NULL },
	/*  143 */ { "MENU_BAR(", TARGET_VER36, NULL },
	/*  144 */ { "MENU_ICHECK(", TARGET_VER36, NULL },
	/*  145 */ { "MENU_IENABLE(", TARGET_VER36, NULL },
	/*  146 */ { "MENU_TNORMAL(", TARGET_VER36, NULL },
	/*  147 */ { "MENU_TEXT(", TARGET_VER36, NULL },
	/*  148 */ { "MENU_REGISTER(", TARGET_VER36, NULL },
	/*  149 */ { "OBJC_ADD(", TARGET_VER36, NULL },
	/*  150 */ { "OBJC_DELETE(", TARGET_VER36, NULL },
	/*  151 */ { "OBJC_DRAW(", TARGET_VER36, NULL },
	/*  152 */ { "OBJC_FIND(", TARGET_VER36, NULL },
	/*  153 */ { "OBJC_OFFSET(", TARGET_VER36, NULL },
	/*  154 */ { "OBJC_ORDER(", TARGET_VER36, NULL },
	/*  155 */ { "OBJC_EDIT(", TARGET_VER36, NULL },
	/*  156 */ { "OBJC_CHANGE(", TARGET_VER36, NULL },
	/*  157 */ { "FORM_DO(", TARGET_VER36, NULL },
	/*  158 */ { "FORM_DIAL(", TARGET_VER36, NULL },
	/*  159 */ { "FORM_ALERT(", TARGET_VER36, NULL },
	/*  160 */ { "FORM_ERROR(", TARGET_VER36, NULL },
	/*  161 */ { "FORM_CENTER(", TARGET_VER36, NULL },
	/*  162 */ { "GRAF_RUBBERBOX(", TARGET_VER36, NULL },
	/*  163 */ { "GRAF_DRAGBOX(", TARGET_VER36, NULL },
	/*  164 */ { "GRAF_MOVEBOX(", TARGET_VER36, NULL },
	/*  165 */ { "GRAF_GROWBOX(", TARGET_VER36, NULL },
	/*  166 */ { "GRAF_SHRINKBOX(", TARGET_VER36, NULL },
	/*  167 */ { "GRAF_WATCHBOX(", TARGET_VER36, NULL },
	/*  168 */ { "GRAF_SLIDEBOX(", TARGET_VER36, NULL },
	/*  169 */ { "GRAF_HANDLE(", TARGET_VER36, NULL },
	/*  170 */ { "GRAF_MOUSE(", TARGET_VER36, NULL },
	/*  171 */ { "GRAF_MKSTATE(", TARGET_VER36, NULL },
	/*  172 */ { "SCRP_READ(", TARGET_VER36, NULL },
	/*  173 */ { "SCRP_WRITE(", TARGET_VER36, NULL },
	/*  174 */ { "FSEL_INPUT(", TARGET_VER36, NULL },
	/*  175 */ { "WIND_CREATE(", TARGET_VER36, NULL },
	/*  176 */ { "WIND_OPEN(", TARGET_VER36, NULL },
	/*  177 */ { "WIND_CLOSE(", TARGET_VER36, NULL },
	/*  178 */ { "WIND_DELETE(", TARGET_VER36, NULL },
	/*  179 */ { "WIND_GET(", TARGET_VER36, NULL },
	/*  180 */ { "WIND_SET(", TARGET_VER36, NULL },
	/*  181 */ { "WIND_FIND(", TARGET_VER36, NULL },
	/*  182 */ { "WIND_UPDATE(", TARGET_VER36, NULL },
	/*  183 */ { "WIND_CALC(", TARGET_VER36, NULL },
	/*  184 */ { "MALLOC(", TARGET_VER36, NULL },
	/*  185 */ { "MFREE(", TARGET_VER36, NULL },
	/*  186 */ { "MSHRINK(", TARGET_VER36, NULL },
	/*  187 */ { "VARPTR(", TARGET_VER36, NULL },
	/*  188 */ { "ARRPTR(", TARGET_VER36, NULL },
	/*  189 */ { "*", TARGET_VER36, NULL },
	/*  190 */ { "TYPE(", TARGET_VER36, NULL },
	/*  191 */ { "OB_ADR(", TARGET_VER36, NULL },
	/*  192 */ { "OB_NEXT(", TARGET_VER36, NULL },
	/*  193 */ { "OB_HEAD(", TARGET_VER36, NULL },
	/*  194 */ { "OB_TAIL(", TARGET_VER36, NULL },
	/*  195 */ { "OB_TYPE(", TARGET_VER36, NULL },
	/*  196 */ { "OB_FLAGS(", TARGET_VER36, NULL },
	/*  197 */ { "OB_STATE(", TARGET_VER36, NULL },
	/*  198 */ { "OB_SPEC(", TARGET_VER36, NULL },
	/*  199 */ { "OB_X(", TARGET_VER36, NULL },
	/*  200 */ { "OB_Y(", TARGET_VER36, NULL },
	/*  201 */ { "OB_W(", TARGET_VER36, NULL },
	/*  202 */ { "OB_H(", TARGET_VER36, NULL },
	/*  203 */ { "V:", TARGET_VER36, NULL },
	/*  204 */ { "FORM_KEYBD(", TARGET_VER36, NULL },
	/*  205 */ { "FORM_BUTTON(", TARGET_VER36, NULL },
	/*  206 */ { "STICK(", TARGET_VER36, NULL },
	/*  207 */ { "STRIG(", TARGET_VER36, NULL },
	/*  208 */ { "WORK_OUT(", TARGET_VER36, NULL },
	/*  209 */ { "RINSTR(", TARGET_VER36, NULL }, /* RINSTR(a$,b$) */
	/*  210 */ { "RINSTR(", TARGET_VER36, NULL }, /* RINSTR(a$,b$,x) */
	/*  211 */ { "RINSTR(", TARGET_VER36, NULL }, /* RINSTR(x,a$,b$) */
	/*  212 */ { "L~A", TARGET_VER36, NULL },
	/*  213 */ { "V~H", TARGET_VER36, NULL },
	/*  214 */ { "V_CLRWK()", TARGET_VER36, NULL },
	/*  215 */ { "VQT_NAME(", TARGET_VER36, NULL },
	/*  216 */ { "VQT_EXTENT(", TARGET_VER36, NULL },
	/*  217 */ { "RC_INTERSECT(", TARGET_VER36, NULL },
	/*  218 */ { "FSFIRST(", TARGET_VER36, NULL },
	/*  219 */ { "FSNEXT()", TARGET_VER36, NULL },
	/*  220 */ { "FSETDTA(", TARGET_VER36, NULL },
	/*  221 */ { "FGETDTA()", TARGET_VER36, NULL },
	/*  222 */ { "WORD{", TARGET_VER36, NULL },
	/*  223 */ { "INP&(", TARGET_VER36, NULL },
	/*  224 */ { "INP&(#", TARGET_VER36, NULL },
	/*  225 */ { "INP%(", TARGET_VER36, NULL },
	/*  226 */ { "INP%(#", TARGET_VER36, NULL },
	/*  227 */ { "_DATA", TARGET_VER36, NULL },
	/*  228 */ { "PADX(", TARGET_VER36, NULL },
	/*  229 */ { "PADY(", TARGET_VER36, NULL },
	/*  230 */ { "PADT(", TARGET_VER36, NULL },
	/*  231 */ { "LPENX", TARGET_VER36, NULL },
	/*  232 */ { "LPENY", TARGET_VER36, NULL },
	/*  233 */ { "STE?", TARGET_VER36, NULL },
	/*  234 */ { "TT?", TARGET_VER36, NULL },
	/*  235 */ { "SCALE(", TARGET_VER36, NULL },
	/*  236 */ { "_X", TARGET_VER36, NULL },
	/*  237 */ { "_Y", TARGET_VER36, NULL },
	/*  238 */ { "_C", TARGET_VER36, NULL },
	/*  239 */ { "GETSIZE(", TARGET_VER36, NULL }, /* GETSIZE(x1,y1,x2,y2) */
	/*
	 * below are new in 3.70 (GBE)
	 */
	/*  240 */ { "GETSIZE(", TARGET_VER370, NULL }, /* GETSIZE(x1,y1,x2,y2,n) */
	/*  241 */ { "_B", TARGET_VER370, NULL },
	/*  242 */ { "_AES", TARGET_VER370, NULL },
	/*  243 */ { "_TOS", TARGET_VER370, NULL },
	/*  244 */ { "A~I", TARGET_VER370, NULL },
	/*  245 */ { "CPU020()", TARGET_VER370, NULL },
	/*  246 */ { "FPU882()", TARGET_VER370, NULL },
	/*  247 */ { "GMOUSEX", TARGET_VER370, func_208_247_exception }, /* WTF: different token in 3.74 */
	/*  248 */ { "GMOUSEY", TARGET_VER370, func_208_248_exception }, /* WTF: different token in 3.74 */
	/*  249 */ { "GMOUSEK", TARGET_VER370, func_208_249_exception }, /* WTF: different token in 3.74 */
	/*  250 */ { "GLOBAL(", TARGET_VER370, NULL },
	/*  251 */ { "GLOBAL", TARGET_VER370, NULL },
	/*  252 */ { "GETCOOKIE(", TARGET_VER370, NULL },
	/*  253 */ { "VS_COLOR(", TARGET_VER370, NULL },
	/*  254 */ { "_P", TARGET_VER370, func_208_254_exception }, /* WTF: swapped with _P in 3.74 */
	/*  255 */ { "EJP?", TARGET_VER370, func_208_255_exception } /* WTF: swapped with EJP? in 3.74 */
};

/* Secondary function text */
struct nameversion const gfasft_209[256] = {
	/*    0 */ { "VQ_COLOR(", TARGET_VER370, NULL },
	/*    1 */ { "_MINT", TARGET_VER370, NULL },
	/*    2 */ { "_SW", TARGET_VER370, NULL },
	/*    3 */ { "_SH", TARGET_VER370, NULL },
	/*    4 */ { "VRO_CPYFM(", TARGET_VER370, NULL },
	/*    5 */ { "VRT_CPYFM(", TARGET_VER370, NULL },
	/*    6 */ { "V_OPNBM(", TARGET_VER370, NULL },
	/*    7 */ { "V_CLSBM()", TARGET_VER370, NULL },
	/*    8 */ { "DOSOUND(", TARGET_VER370, NULL },
	/*    9 */ { "MXALLOC(", TARGET_VER370, NULL },
	/*   10 */ { "KBSHIFT(", TARGET_VER370, NULL },
	/*   11 */ { "DGETDRV(", TARGET_VER370, NULL },
	/*   12 */ { "SYSCONF(", TARGET_VER370, NULL },
	/*   13 */ { "SSYSTEM(", TARGET_VER370, NULL },
	/*   14 */ { "VQ_VGDOS()", TARGET_VER370, NULL },
	/*   15 */ { "VST_ALIGNMENT(", TARGET_VER370, NULL },
	/*   16 */ { "PEXEC(", TARGET_VER370, NULL },
	/*   17 */ { "PDOMAIN(", TARGET_VER370, NULL },
	/*   18 */ { "_GEMDOS", TARGET_VER370, NULL },
	/*   19 */ { "TGETDATE()", TARGET_VER370, NULL },
	/*   20 */ { "TGETTIME()", TARGET_VER370, NULL },
	/*   21 */ { "VST_POINT(", TARGET_VER370, NULL },
	/*   22 */ { "APPL_GETINFO(", TARGET_VER370, NULL },
	/*   23 */ { "APPL_CONTROL(", TARGET_VER370, NULL },
	/*   24 */ { "OBJC_SYSVAR(", TARGET_VER370, NULL },
	/*   25 */ { "FSEL_EXINPUT(", TARGET_VER370, func_209_25_exception }, /* parameter change in 3.72 */
	/*   26 */ { "KEYTBL(", TARGET_VER370, NULL },
	/*   27 */ { "LOCKSND()", TARGET_VER370, NULL },
	/*   28 */ { "UNLOCKSND()", TARGET_VER370, NULL },
	/*   29 */ { "SOUNDCMD(", TARGET_VER370, NULL },
	/*   30 */ { "SETBUFFER(", TARGET_VER370, NULL },
	/*   31 */ { "SETMODE(", TARGET_VER370, NULL },
	/*   32 */ { "SETTRACKS(", TARGET_VER370, NULL },
	/*   33 */ { "SETMONTRACKS(", TARGET_VER370, NULL },
	/*   34 */ { "SETINTERRUPT(", TARGET_VER370, NULL },
	/*   35 */ { "BUFFOPER(", TARGET_VER370, NULL },
	/*   36 */ { "DSPTRISTATE(", TARGET_VER370, NULL },
	/*   37 */ { "GPIO(", TARGET_VER370, NULL },
	/*   38 */ { "DEVCONNECT(", TARGET_VER370, NULL },
	/*   39 */ { "SNDSTATUS(", TARGET_VER370, NULL },
	/*   40 */ { "BUFFPTR(", TARGET_VER370, NULL },
	/*   41 */ { "VQT_WIDTH(", TARGET_VER370, NULL },
	/*   42 */ { "VQT_FONTINFO(", TARGET_VER370, NULL },
	/*   43 */ { "FOPEN(", TARGET_VER370, NULL },
	/*   44 */ { "FCLOSE(", TARGET_VER370, NULL },
	/*   45 */ { "FREAD(", TARGET_VER370, NULL },
	/*   46 */ { "FWRITE(", TARGET_VER370, NULL },
	/*   47 */ { "FCREATE(", TARGET_VER370, NULL },
	/*   48 */ { "FSEEK(", TARGET_VER370, NULL },
	/*   49 */ { "FDELETE(", TARGET_VER370, NULL },
	/*   50 */ { "SUPER(", TARGET_VER370, NULL },
	/*   51 */ { "F_BGET(", TARGET_VER370, NULL },
	/*   52 */ { "F_BPUT(", TARGET_VER370, NULL },
	/*   53 */ { "F_EOF(", TARGET_VER370, NULL },
	/*   54 */ { "F_LOC(", TARGET_VER370, NULL },
	/*   55 */ { "F_LOF(", TARGET_VER370, NULL },
	/*   56 */ { "DTA", TARGET_VER370, NULL },
	/*   57 */ { "_CPU", TARGET_VER370, NULL },
	/*   58 */ { "SND?", TARGET_VER370, NULL },
	/*   59 */ { "F_OPEN(", TARGET_VER370, NULL },
	/*   60 */ { "F_OUT(", TARGET_VER370, NULL },
	/*   61 */ { "F_OUT&(", TARGET_VER370, NULL },
	/*   62 */ { "F_OUT%(", TARGET_VER370, NULL },
	/*   63 */ { "F_INP(", TARGET_VER370, NULL },
	/*   64 */ { "F_INP&(", TARGET_VER370, NULL },
	/*   65 */ { "F_INP%(", TARGET_VER370, NULL },
	/*   66 */ { "ALLOC(", TARGET_VER370, func_209_66_exception },
	/*   67 */ { "F_LINE_OUTPUT(", TARGET_VER370, NULL },
	/*   68 */ { "F_LINE_INPUT(", TARGET_VER370, NULL },
	/*   69 */ { "F_BLOAD(", TARGET_VER370, NULL },
	/*   70 */ { "F_BSAVE(", TARGET_VER370, NULL },
	/*   71 */ { "F_SEEK(", TARGET_VER370, NULL },
	/*   72 */ { "F_RELSEEK(", TARGET_VER370, NULL },
	/*   73 */ { "V_GET_PIXEL(", TARGET_VER370, NULL },
	/*   74 */ { "GSTICK()", TARGET_VER370, NULL },
	/*   75 */ { "GSTRIG()", TARGET_VER370, NULL },
	/*   76 */ { "BLITMODE(", TARGET_VER370, NULL },
	/*   77 */ { "CACHECTRL(", TARGET_VER370, NULL },
	/*   78 */ { "CT60_CACHE(", TARGET_VER370, NULL },
	/*   79 */ { "CT60_FLUSH_CACHE()", TARGET_VER370, NULL },
	/*   80 */ { "CT60_READ_CORE_TEMPERATURE(", TARGET_VER370, NULL },
	/*   81 */ { "CT60_RW_PARAMETER(", TARGET_VER370, NULL },
	/*   82 */ { "CT60_VMALLOC(", TARGET_VER370, NULL },
	/*   83 */ { "FGETCHAR(", TARGET_VER370, NULL },
	/*   84 */ { "FPUTCHAR(", TARGET_VER370, NULL },
	/*   85 */ { "WIND_NEW()", TARGET_VER370, NULL },
	/*   86 */ { "APPL_YIELD()", TARGET_VER370, NULL },
	/*   87 */ { "V_SHOW_C()", TARGET_VER370, NULL },
	/*   88 */ { "V_HIDE_C()", TARGET_VER370, NULL },
	/*   89 */ { "F_INPUT(", TARGET_VER370, NULL },
	/*   90 */ { "F_OUTPUT(", TARGET_VER370, NULL },
	/*   91 */ { "F_PWRITE(", TARGET_VER370, func_209_91_exception }, /* WTF: F_PWRITE( again in 3.74 */
	/*   92 */ { "F_PREAD(", TARGET_VER370, func_209_92_exception }, /* WTF: F_PREAD( again in 3.74 */
	/*   93 */ { "JOYPAD(", TARGET_VER370, NULL },
	/*   94 */ { "UNPACK(", TARGET_VER370, NULL },
	/*   95 */ { "BINSTR(", TARGET_VER370, NULL },
	/*   96 */ { "BFIND(", TARGET_VER370, NULL },
	/*   97 */ { "BCOUNT(", TARGET_VER370, NULL },
	/*   98 */ { "ISASCII(", TARGET_VER370, func_209_98_exception },
	/*   99 */ { "BSWAP&(", TARGET_VER370, NULL },
	/*  100 */ { "BSWAP(", TARGET_VER370, NULL },
	/*  101 */ { "CCONWS(", TARGET_VER370, NULL },
	/*  102 */ { "DSETDRV(", TARGET_VER370, NULL },
	/*  103 */ { "DCREATE(", TARGET_VER370, NULL },
	/*  104 */ { "DDELETE(", TARGET_VER370, NULL },
	/*  105 */ { "TSETDATE(", TARGET_VER370, NULL },
	/*  106 */ { "TSETTIME(", TARGET_VER370, NULL },
	/*  107 */ { "DGETPATH(", TARGET_VER370, NULL },
	/*  108 */ { "DSETPATH(", TARGET_VER370, NULL },
	/*  109 */ { "GETTIME()", TARGET_VER370, NULL },
	/*  110 */ { "SETTIME(", TARGET_VER370, NULL },
	/*  111 */ { "FRENAME(", TARGET_VER370, NULL },
	/*  112 */ { "DRVMAP()", TARGET_VER370, NULL },
	/*  113 */ { "FDATIME(", TARGET_VER370, NULL },
	/*  114 */ { "DPATHCONF(", TARGET_VER370, NULL },
	/*  115 */ { "FATTRIB(", TARGET_VER370, NULL },
	/*  116 */ { "DFREE%(", TARGET_VER370, func_209_116_exception },
	/*  117 */ { "RANDOM%()", TARGET_VER370, NULL },
	/*  118 */ { "GETREZ()", TARGET_VER370, NULL },
	/*  119 */ { "LOGBASE()", TARGET_VER370, NULL },
	/*  120 */ { "PHYSBASE()", TARGET_VER370, NULL },
	/*  121 */ { "V_CURTEXT(", TARGET_VER370, NULL },
	/*  122 */ { "VST_COLOR(", TARGET_VER370, NULL },
	/*  123 */ { "VST_EFFECTS(", TARGET_VER370, NULL },
	/*  124 */ { "VST_ROTATION(", TARGET_VER370, NULL },
	/*  125 */ { "VST_HEIGHT(", TARGET_VER370, NULL },
	/*  126 */ { "VST_FONT(", TARGET_VER370, NULL },
	/*  127 */ { "VQF_ATTRIBUTES()", TARGET_VER370, NULL },
	/*  128 */ { "VQL_ATTRIBUTES()", TARGET_VER370, NULL },
	/*  129 */ { "VQM_ATTRIBUTES()", TARGET_VER370, NULL },
	/*  130 */ { "VQT_ATTRIBUTES()", TARGET_VER370, NULL },
	/*  131 */ { "VR_TRNFM(", TARGET_VER370, NULL },
	/*  132 */ { "VQ_EXTND(", TARGET_VER370, NULL },
	/*  133 */ { "VQ_SCRNINFO(", TARGET_VER370, NULL },
	/*  134 */ { "V_BEZ(", TARGET_VER370, NULL },
	/*  135 */ { "V_BEZ_QUAL(", TARGET_VER370, NULL },
	/*  136 */ { "VQ_MOUSE(", TARGET_VER370, NULL },
	/*  137 */ { "VSL_TYPE(", TARGET_VER370, NULL },
	/*  138 */ { "VSL_WIDTH(", TARGET_VER370, NULL },
	/*  139 */ { "VSL_ENDS(", TARGET_VER370, NULL },
	/*  140 */ { "VSL_UDSTY(", TARGET_VER370, NULL },
	/*  141 */ { "VSL_COLOR(", TARGET_VER370, NULL },
	/*  142 */ { "VSM_COLOR(", TARGET_VER370, NULL },
	/*  143 */ { "VSM_HEIGHT(", TARGET_VER370, NULL },
	/*  144 */ { "VSM_TYPE(", TARGET_VER370, NULL },
	/*  145 */ { "VSWR_MODE(", TARGET_VER370, NULL },
	/*  146 */ { "VSF_COLOR(", TARGET_VER370, NULL },
	/*  147 */ { "VSF_INTERIOR(", TARGET_VER370, NULL },
	/*  148 */ { "VSF_PERIMETER(", TARGET_VER370, NULL },
	/*  149 */ { "VSF_STYLE(", TARGET_VER370, NULL },
	/*  150 */ { "VSF_UDPAT(", TARGET_VER370, NULL },
	/*  151 */ { "BCONIN(", TARGET_VER370, NULL },
	/*  152 */ { "BCONOUT(", TARGET_VER370, NULL },
	/*  153 */ { "BCOSTAT(", TARGET_VER370, NULL },
	/*  154 */ { "BCONSTAT(", TARGET_VER370, NULL },
	/*  155 */ { "SETEXC(", TARGET_VER370, NULL },
	/*  156 */ { "TICKCAL(", TARGET_VER370, NULL },
	/*  157 */ { "MEDIACH(", TARGET_VER370, NULL },
	/*  158 */ { "GETBPB(", TARGET_VER370, NULL },
	/*  159 */ { "RWABS(", TARGET_VER370, NULL },
	/*  160 */ { "FORM_POPUP(", TARGET_VER370, NULL },
	/*  161 */ { "MENU_ATTACH(", TARGET_VER370, NULL },
	/*  162 */ { "MENU_ISTART(", TARGET_VER370, NULL },
	/*  163 */ { "MENU_POPUP(", TARGET_VER370, NULL },
	/*  164 */ { "MENU_SETTINGS(", TARGET_VER370, NULL },
	/*  165 */ { "OBJC_XFIND(", TARGET_VER370, NULL },
	/*  166 */ { "RSRC_RCFIX(", TARGET_VER370, NULL },
	/*  167 */ { "APPL_SEARCH(", TARGET_VER370, NULL },
	/*  168 */ { "GRAF_MULTIRUBBER(", TARGET_VER370, NULL },
	/*  169 */ { "VS_CLIP(", TARGET_VER370, NULL },
	/*  170 */ { "VSC_FORM()", TARGET_VER370, NULL },
	/*  171 */ { "FDUP(", TARGET_VER370, NULL },
	/*  172 */ { "FFORCE(", TARGET_VER370, NULL },
	/*  173 */ { "FLOCK(", TARGET_VER370, NULL },
	/*  174 */ { "SYIELD()", TARGET_VER370, NULL },
	/*  175 */ { "FINSTAT(", TARGET_VER370, NULL },
	/*  176 */ { "FOUTSTAT(", TARGET_VER370, NULL },
	/*  177 */ { "FCNTL(", TARGET_VER370, NULL },
	/*  178 */ { "FSELECT(", TARGET_VER370, NULL },
	/*  179 */ { "SHUTDOWN(", TARGET_VER370, NULL },
	/*  180 */ { "PSYSCTL(", TARGET_VER370, NULL },
	/*  181 */ { "V_BAR(", TARGET_VER370, NULL },
	/*  182 */ { "V_RBOX(", TARGET_VER370, NULL },
	/*  183 */ { "V_RFBOX(", TARGET_VER370, NULL },
	/*  184 */ { "VR_RECFL(", TARGET_VER370, NULL },
	/*  185 */ { "V_ARC(", TARGET_VER370, NULL },
	/*  186 */ { "V_CIRCLE(", TARGET_VER370, NULL },
	/*  187 */ { "V_ELLARC(", TARGET_VER370, NULL },
	/*  188 */ { "V_ELLPIE(", TARGET_VER370, NULL },
	/*  189 */ { "V_ELLIPSE(", TARGET_VER370, NULL },
	/*  190 */ { "V_PIESLICE(", TARGET_VER370, NULL },
	/*  191 */ { "V_CONTOURFILL(", TARGET_VER370, NULL },
	/*  192 */ { "V_GTEXT(", TARGET_VER370, NULL },
	/*  193 */ { "V_PLINE(", TARGET_VER370, NULL },
	/*  194 */ { "V_PMARKER(", TARGET_VER370, NULL },
	/*  195 */ { "V_FILLAREA(", TARGET_VER370, NULL },
	/*  196 */ { "V_JUSTIFIED(", TARGET_VER370, NULL },
	/*  197 */ { "VQ_KEY_S(", TARGET_VER370, NULL },
	/*  198 */ { "V_BEZ_FILL(", TARGET_VER370, NULL },
	/*  199 */ { "SETCOLOR(", TARGET_VER370, NULL },
	/*  200 */ { "SETSCREEN(", TARGET_VER370, NULL },
	/*  201 */ { "SETPALETTE(", TARGET_VER370, NULL },
	/*  202 */ { "SUPEXEC(", TARGET_VER370, NULL },
	/*  203 */ { "KBRATE(", TARGET_VER370, NULL },
	/*  204 */ { "RSCONF(", TARGET_VER370, NULL },
	/*  205 */ { "CURSCONF(", TARGET_VER370, NULL },
	/*  206 */ { "BCONMAP(", TARGET_VER370, NULL },
	/*  207 */ { "KBDVBASE()", TARGET_VER370, NULL },
	/*  208 */ { "NVMACCESS(", TARGET_VER370, NULL },
	/*  209 */ { "IOREC(", TARGET_VER370, NULL },
	/*  210 */ { "IKBDWS(", TARGET_VER370, NULL },
	/*  211 */ { "MIDIWS(", TARGET_VER370, NULL },
	/*  212 */ { "GIACCESS(", TARGET_VER370, NULL },
	/*  213 */ { "FLOPRD(", TARGET_VER370, NULL },
	/*  214 */ { "FLOPWR(", TARGET_VER370, NULL },
	/*  215 */ { "FLOPFMT(", TARGET_VER370, NULL },
	/*  216 */ { "FLOPVER(", TARGET_VER370, NULL },
	/*  217 */ { "FLOPRATE(", TARGET_VER370, NULL },
	/*  218 */ { "DMAREAD(", TARGET_VER370, NULL },
	/*  219 */ { "DMAWRITE(", TARGET_VER370, NULL },
	/*  220 */ { "ONGIBIT(", TARGET_VER370, NULL },
	/*  221 */ { "OFFGIBIT(", TARGET_VER370, NULL },
	/*  222 */ { "BIOSKEYS()", TARGET_VER370, NULL },
	/*  223 */ { "SETPRT(", TARGET_VER370, NULL },
	/*  224 */ { "JDISINT(", TARGET_VER370, NULL },
	/*  225 */ { "JENABINT(", TARGET_VER370, NULL },
	/*  226 */ { "PROTOBT(", TARGET_VER370, NULL },
	/*  227 */ { "WAKETIME(", TARGET_VER370, NULL },
	/*  228 */ { "PRTBLK(", TARGET_VER370, NULL },
	/*  229 */ { "VGETMONITOR()", TARGET_VER370, NULL },
	/*  230 */ { "VGETSIZE(", TARGET_VER370, NULL },
	/*  231 */ { "VSETMODE(", TARGET_VER370, NULL },
	/*  232 */ { "VCHECKMODE(", TARGET_VER370, NULL },
	/*  233 */ { "VSETSCREEN(", TARGET_VER370, NULL },
	/*  234 */ { "VGETRGB(", TARGET_VER370, NULL },
	/*  235 */ { "VSETRGB(", TARGET_VER370, NULL },
	/*  236 */ { "VSETMASK(", TARGET_VER370, NULL },
	/*  237 */ { "VSETSYNC(", TARGET_VER370, NULL },
	/*  238 */ { "EGETSHIFT()", TARGET_VER370, NULL },
	/*  239 */ { "ESETSHIFT(", TARGET_VER370, NULL },
	/*  240 */ { "ESETBANK(", TARGET_VER370, NULL },
	/*  241 */ { "ESETCOLOR(", TARGET_VER370, NULL },
	/*  242 */ { "ESETGRAY(", TARGET_VER370, NULL },
	/*  243 */ { "ESETSMEAR(", TARGET_VER370, NULL },
	/*  244 */ { "EGETPALETTE(", TARGET_VER370, NULL },
	/*  245 */ { "ESETPALETTE(", TARGET_VER370, NULL },
	/*  246 */ { "CRC16(", TARGET_VER370, NULL },
	/*  247 */ { "CRC32(", TARGET_VER370, NULL },
	/*  248 */ { "WF_NAME(", TARGET_VER370, NULL },
	/*  249 */ { "WF_INFO(", TARGET_VER370, NULL },
	/*  250 */ { "ALERT(", TARGET_VER370, NULL },
	/*  251 */ { "LRWABS(", TARGET_VER370, NULL },
	/*  252 */ { "AP_SEND(", TARGET_VER370, NULL },
	/*  253 */ { "SALERT(", TARGET_VER370, NULL },
	/*  254 */ { "FCHMOD(", TARGET_VER370, NULL },
	/*  255 */ { "PTERMRES(", TARGET_VER370, NULL }
};

/* Secondary function text */
struct nameversion const gfasft_210[256] = {
	/*    0 */ { "SUBPTR(", TARGET_VER370, NULL },
	/*    1 */ { "S:", TARGET_VER370, NULL },
	/*    2 */ { "ERL", TARGET_VER370, NULL },
	/*    3 */ { "SYSTAB(", TARGET_VER370, func_210_3_exception }, /* parameter change in 3.71 */
	/*    4 */ { "SYSTAB", TARGET_VER370, NULL },
	/*    5 */ { "FREEFILE()", TARGET_VER370, func_210_5_exception },
	/*    6 */ { "MENU.TEXT(", TARGET_VER370, NULL },
	/*    7 */ { "SHEL.WRITE(", TARGET_VER370, NULL },
	/*    8 */ { "SYSTAB?", TARGET_VER370, NULL },
	/*    9 */ { "MROUND(", TARGET_VER370,  func_210_9_exception },
	/*   10 */ { "BSWAP3(", TARGET_VER370, NULL },
	/*   11 */ { "MIRROR|(", TARGET_VER370, NULL },
	/*   12 */ { "MIRROR&(", TARGET_VER370, NULL },
	/*   13 */ { "MIRROR(", TARGET_VER370, NULL },
	/*   14 */ { "MIRROR3(", TARGET_VER370, NULL },
	/*   15 */ { "PCR?", TARGET_VER370, NULL },
	/*   16 */ { "CONTERM(", TARGET_VER370, NULL },
	/*   17 */ { "_PCR", TARGET_VER370, NULL },
	/*   18 */ { "LOADMEM(", TARGET_VER370, func_210_18_exception },
	/*   19 */ { "OB.STATE(", TARGET_VER370, NULL },
	/*   20 */ { "OB.FLAGS(", TARGET_VER370, NULL },
	/*
	 * below are new in 3.71
	 */
	/*   21 */ { "SETSTR(", TARGET_VER371, func_210_21_exception },
	/*   22 */ { "INPUTBOX(", TARGET_VER371, func_210_22_exception },
	/*   23 */ { "BCOUNT&(", TARGET_VER371, func_210_23_exception },
	/*   24 */ { "BCOUNT(%", TARGET_VER371, func_210_24_exception },
	/*   25 */ { "C_VDI(#", TARGET_VER371, func_210_25_exception },
	/*   26 */ { "C_XBIOS(#", TARGET_VER371, func_210_26_exception },
	/*   27 */ { "NETWORK?", TARGET_VER371, func_210_27_exception },
	/*   28 */ { "SBYTE(", TARGET_VER371, func_210_28_exception },
	/*   29 */ { "SBYTE{", TARGET_VER371, func_210_29_exception },
	/*   30 */ { "INDEXCOUNT(", TARGET_VER371, func_210_30_exception },
	/*   31 */ { "CALLOC(", TARGET_VER371, func_210_31_exception },
	/*   32 */ { "ARRAYSIZE(", TARGET_VER371, func_210_32_exception },
	/*   33 */ { "OB_RADIO(", TARGET_VER371, func_210_33_exception },
	/*   34 */ { "CHECKSUM(", TARGET_VER371, NULL },
	/*   35 */ { "FSOCKET(", TARGET_VER371, NULL },
	/*   36 */ { "FSOCKETPAIR(", TARGET_VER371, NULL },
	/*   37 */ { "FACCEPT(", TARGET_VER371, NULL },
	/*   38 */ { "FCONNECT(", TARGET_VER371, NULL },
	/*   39 */ { "FBIND(", TARGET_VER371, NULL },
	/*   40 */ { "FRECVMSG(", TARGET_VER371, NULL },
	/*   41 */ { "FSENDMSG(", TARGET_VER371, NULL },
	/*   42 */ { "FLISTEN(", TARGET_VER371, NULL },
	/*   43 */ { "FRECVFROM(", TARGET_VER371, NULL },
	/*   44 */ { "FSENDTO(", TARGET_VER371, NULL },
	/*   45 */ { "FSETSOCKOPT(", TARGET_VER371, NULL },
	/*   46 */ { "FGETSOCKOPT(", TARGET_VER371, NULL },
	/*   47 */ { "FGETPEERNAME(", TARGET_VER371, NULL },
	/*   48 */ { "FGETSOCKNAME(", TARGET_VER371, NULL },
	/*   49 */ { "FSHUTDOWN(", TARGET_VER371, NULL },
	/*   50 */ { "LDG_INIT()", TARGET_VER371, NULL },
	/*   51 */ { "LDG_OPEN(", TARGET_VER371, NULL },
	/*   52 */ { "LDG_FIND(", TARGET_VER371, NULL },
	/*   53 */ { "LDG_CLOSE(", TARGET_VER371, NULL },
	/*   54 */ { "LDG_LIBPATH(", TARGET_VER371, NULL },
	/*   55 */ { "LDG_ERROR()", TARGET_VER371, NULL },
	/*   56 */ { "STIK_INIT(", TARGET_VER371, NULL },
	/*   57 */ { "STIK_INIT(", TARGET_VER371, NULL },
	/*   58 */ { "STIK_KRFREE(", TARGET_VER371, NULL },
	/*   59 */ { "STIK_KRGETFREE(", TARGET_VER371, NULL },
	/*   60 */ { "STIK_KRGETFREE(", TARGET_VER371, NULL },
	/*   61 */ { "STIK_GET_ERR_TEXT(", TARGET_VER371, NULL },
	/*   62 */ { "STIK_GETVSTR(", TARGET_VER371, NULL },
	/*   63 */ { "STIK_GETVSTR(", TARGET_VER371, NULL },
	/*   64 */ { "STIK_TCP_OPEN(", TARGET_VER371, NULL },
	/*   65 */ { "STIK_TCP_CLOSE(", TARGET_VER371, NULL },
	/*   66 */ { "STIK_TCP_SEND(", TARGET_VER371, NULL },
	/*   67 */ { "STIK_TCP_WAIT_STATE(", TARGET_VER371, NULL },
	/*   68 */ { "STIK_TCP_WAIT_STATE(", TARGET_VER371, NULL },
	/*   69 */ { "STIK_TCP_WAIT_STATE(", TARGET_VER371, NULL },
	/*   70 */ { "STIK_TCP_WAIT_STATE(", TARGET_VER371, NULL },
	/*   71 */ { "STIK_TCP_WAIT_STATE(", TARGET_VER371, NULL },
	/*   72 */ { "STIK_CNKICK(", TARGET_VER371, NULL },
	/*   73 */ { "STIK_CNBYTE_COUNT(", TARGET_VER371, NULL },
	/*   74 */ { "STIK_CNGET_CHAR(", TARGET_VER371, NULL },
	/*   75 */ { NULL, 0, NULL }, /* unused */
	/*   76 */ { "STIK_CNGET_BLOCK(", TARGET_VER371, NULL },
	/*   77 */ { NULL, 0, NULL }, /* unused */
	/*   78 */ { "STIK_RESOLVE(", TARGET_VER371, NULL },
	/*   79 */ { NULL, 0, NULL }, /* unused */
	/*   80 */ { NULL, 0, NULL }, /* unused */
	/*   81 */ { NULL, 0, NULL }, /* unused */
	/*   82 */ { NULL, 0, NULL }, /* unused */
	/*   83 */ { "STIK_CNGETINFO(", TARGET_VER371, NULL },
	/*   84 */ { NULL, 0, NULL }, /* unused */
	/*   85 */ { NULL, 0, NULL }, /* unused */
	/*   86 */ { NULL, 0, NULL }, /* unused */
	/*   87 */ { NULL, 0, NULL }, /* unused */
	/*   88 */ { NULL, 0, NULL }, /* unused */
	/*   89 */ { "FONT_INIT()", TARGET_VER371, NULL },
	/*   90 */ { "FONT_SELECT(", TARGET_VER371, NULL },
	/*   91 */ { "WEEKDAY(", TARGET_VER370, func_210_91_exception }, /* parameter change in 3.71 */
	/*   92 */ { "WEEKDAY(", TARGET_VER370, func_210_92_exception },
	/*   93 */ { "AV_INIT()", TARGET_VER371, NULL },
	/*   94 */ { "AV_PROTOKOLL(", TARGET_VER371, NULL },
	/*   95 */ { NULL, 0, NULL }, /* unused */
	/*   96 */ { NULL, 0, NULL }, /* unused */
	/*   97 */ { "AV_SENDKEY(", TARGET_VER371, NULL },
	/*   98 */ { NULL, 0, NULL }, /* unused */
	/*   99 */ { NULL, 0, NULL }, /* unused */
	/*  100 */ { "AV_OPENWIND(", TARGET_VER371, NULL },
	/*  101 */ { "AV_STARTPROG(", TARGET_VER371, NULL },
	/*  102 */ { "AV_ACCWINDOPEN(", TARGET_VER371, NULL },
	/*  103 */ { "AV_ACCWINDCLOSED(", TARGET_VER371, NULL },
	/*  104 */ { NULL, 0, NULL }, /* unused */
	/*  105 */ { "AV_PATH_UPDATE(", TARGET_VER371, NULL },
	/*  106 */ { "AV_WHAT_IZIT(", TARGET_VER371, NULL },
	/*  107 */ { "AV_WHAT_IZIT(", TARGET_VER371, NULL },
	/*  108 */ { "AV_EXIT()", TARGET_VER371, NULL },
	/*  109 */ { "AV_STARTED(", TARGET_VER371, NULL },
	/*  110 */ { "AV_XWIND(", TARGET_VER371, NULL },
	/*  111 */ { NULL, 0, NULL }, /* unused */
	/*  112 */ { "AV_FILEINFO(", TARGET_VER371, NULL },
	/*  113 */ { "AV_COPYFILE(", TARGET_VER371, NULL },
	/*  114 */ { "AV_DELFILE(", TARGET_VER371, NULL },
	/*  115 */ { "VA_START(", TARGET_VER371, NULL },
	/*  116 */ { "MAKE&(", TARGET_VER371, NULL },
	/*  117 */ { "MAKE%(", TARGET_VER370, func_210_117_exception },
	/*  118 */ { "MAKE|(", TARGET_VER370, func_210_118_exception },
	/*  119 */ { "F_CLOSE(", TARGET_VER371, NULL },
	/*  120 */ { "APPL.FIND(", TARGET_VER371, NULL },
	/*  121 */ { "ENVIRON", TARGET_VER371, NULL },
	/*  122 */ { "SLBOPEN(", TARGET_VER371, NULL },
	/*  123 */ { "SLBCLOSE(", TARGET_VER371, NULL },
	/*  124 */ { "F_ENDSEEK(", TARGET_VER371, NULL },
	/*  125 */ { "POPUP(", TARGET_VER371, NULL },
	/*  126 */ { "FPOLL(", TARGET_VER371, NULL },
	/*  127 */ { "FILELEN(", TARGET_VER371, NULL },
	/*  128 */ { "PGETPID()", TARGET_VER371, NULL },
	/*  129 */ { "P~I", TARGET_VER371, func_210_129_exception },
	/*  130 */ { "SWAP|(", TARGET_VER371, NULL },
	/*  131 */ { "BROUND(", TARGET_VER371, NULL },
	/*  132 */ { "BCOMPARE(", TARGET_VER371, NULL },
	/*  133 */ { "SCRDMP()", TARGET_VER371, NULL },
	/*  134 */ { "FPIPE(", TARGET_VER371, NULL },
	/*  135 */ { "PRUSAGE(", TARGET_VER371, NULL },
	/*  136 */ { "SUPTIME(", TARGET_VER371, NULL },
	/*  137 */ { "FMIDIPIPE(", TARGET_VER371, NULL },
	/*  138 */ { "CONSTRAIN(", TARGET_VER371, NULL },
	/*  139 */ { "NYBLE(", TARGET_VER371, NULL },
	/*  140 */ { "MAKE(", TARGET_VER371, NULL },
	/*  141 */ { "MEMBTST|(", TARGET_VER371, NULL },
	/*  142 */ { "MEMBTST&(", TARGET_VER371, NULL },
	/*  143 */ { "MEMBTST%(", TARGET_VER371, NULL },
	/*  144 */ { "FCHOWN(", TARGET_VER371, NULL },
	/*  145 */ { "PNICE(", TARGET_VER371, NULL },
	/*  146 */ { "PRENICE(", TARGET_VER371, NULL },
	/*  147 */ { "PGETPPID()", TARGET_VER371, NULL },
	/*  148 */ { "DLOCK(", TARGET_VER371, NULL },
	/*  149 */ { "PGETPRIORITY(", TARGET_VER371, NULL },
	/*  150 */ { "PSETPRIORITY(", TARGET_VER371, NULL },
	/*  151 */ { "VSYNC()", TARGET_VER371, NULL },
	/*  152 */ { "FILECOPY(", TARGET_VER371, NULL },
	/*  153 */ { "ISBLANK(", TARGET_VER371, NULL },
	/*  154 */ { "ISCNTRL(", TARGET_VER371, NULL },
	/*  155 */ { "ISPRINT(", TARGET_VER371, NULL },
	/*  156 */ { "ISSPACE(", TARGET_VER371, NULL },
	/*  157 */ { "RGB(", TARGET_VER371, NULL },
	/*  158 */ { "RGB256(", TARGET_VER370, func_210_158_exception }, /* parameter change in 3.71 */
	/*  159 */ { "RGB1000(", TARGET_VER370, func_210_159_exception }, /* parameter change in 3.71 */
	/*  160 */ { "WF_TOP(", TARGET_VER371, NULL },
	/*  161 */ { "PUSRVAL(", TARGET_VER371, NULL },
	/*  162 */ { "PSETLIMIT(", TARGET_VER371, NULL },
	/*  163 */ { "DWRITELABEL(", TARGET_VER371, NULL },
	/*  164 */ { "DREADLABEL(", TARGET_VER371, NULL },
	/*  165 */ { "DGETCWD(", TARGET_VER371, NULL },
	/*  166 */ { "DCLOSEDIR(", TARGET_VER371, NULL },
	/*  167 */ { "DREWINDDIR(", TARGET_VER371, NULL },
	/*  168 */ { "DOPENDIR(", TARGET_VER371, NULL },
	/*  169 */ { "DREADDIR(", TARGET_VER371, NULL },
	/*  170 */ { "DXREADDIR(", TARGET_VER371, NULL },
	/*  171 */ { "FXATTR(", TARGET_VER371, NULL },
	/*  172 */ { "MACCESS(", TARGET_VER371, NULL },
	/*  173 */ { "MVALIDATE(", TARGET_VER371, NULL },
	/*  174 */ { "BFIND&", TARGET_VER371, NULL },
	/*  175 */ { "BFIND%", TARGET_VER371, NULL },
	/*  176 */ { "FEXIST(", TARGET_VER371, NULL },
	/*  177 */ { "SPLIT(", TARGET_VER371, NULL },
	/*  178 */ { "JOIN(", TARGET_VER371, NULL },
	/*  179 */ { "GETSTR(", TARGET_VER371, NULL },
	/*  180 */ { "BCOMPARE&(", TARGET_VER371, NULL },
	/*  181 */ { "BCOMPARE%(", TARGET_VER371, NULL },
	/*  182 */ { "WIND_SGET(", TARGET_VER371, NULL },
	/*  183 */ { "SHEL_HELP(", TARGET_VER371, NULL },
	/*  184 */ { "SHEL_WDEF(", TARGET_VER371, NULL },
	/*  185 */ { "SHEL_RDEF(", TARGET_VER371, NULL },
	/*  186 */ { "PKILL(", TARGET_VER371, NULL },
	/*  187 */ { "DHST_INIT()", TARGET_VER371, NULL },
	/*  188 */ { "DHST_ADD(", TARGET_VER371, NULL },
	/*  189 */ { NULL, 0, NULL }, /* unused */
	/*  190 */ { "PSIGNAL(", TARGET_VER371, NULL },
	/*  191 */ { "LOADSTR(", TARGET_VER371, NULL },
	/*  192 */ { "FILES(", TARGET_VER371, NULL },
	/*  193 */ { "MSG(", TARGET_VER371, NULL },
	/*  194 */ { "MSG", TARGET_VER371, NULL },
	/*  195 */ { "HINYBLE(", TARGET_VER371, NULL },
	/*  196 */ { "HIBYTE(", TARGET_VER371, NULL },
	/*  197 */ { "HIWORD(", TARGET_VER371, NULL },
	/*  198 */ { "HICARD(", TARGET_VER371, NULL },
	/*  199 */ { NULL, 0, NULL }, /* unused */
	/*  200 */ { NULL, 0, NULL }, /* unused */
	/*  201 */ { NULL, 0, NULL }, /* unused */
	/*  202 */ { NULL, 0, NULL }, /* unused */
	/*  203 */ { "SETCOOKIE(", TARGET_VER371, NULL },
	/*  204 */ { "DELCOOKIE(", TARGET_VER371, NULL },
	/*  205 */ { "FORM.KEYBD(", TARGET_VER371, NULL },
	/*  206 */ { "V_CTAB_VDI2IDX(", TARGET_VER371, func_210_206_exception },
	/*  207 */ { "V_CTAB_IDX2VALUE(", TARGET_VER371, func_210_207_exception },
	/*  208 */ { "VQ_DFLT_CTAB(", TARGET_VER371, func_210_208_exception },
	/*  209 */ { "V_COLOR2NEAREST(", TARGET_VER371, func_210_209_exception },
	/*  210 */ { "V_VALUE2COLOR(", TARGET_VER371, func_210_210_exception },
	/*  211 */ { "V_COLOR2VALUE(", TARGET_VER371, func_210_211_exception },
	/*  212 */ { "NEAREST_RGB(", TARGET_VER371, NULL },
	/*  213 */ { "GRAYSCALE(", TARGET_VER371, NULL },
	/*  214 */ { "DATE(", TARGET_VER371, NULL },
	/*  215 */ { "YEAR(", TARGET_VER371, NULL },
	/*  216 */ { "MONTH(", TARGET_VER371, NULL },
	/*  217 */ { "DAY(", TARGET_VER371, NULL },
	/*  218 */ { "HOUR24(", TARGET_VER371, NULL },
	/*  219 */ { "MINUTE(", TARGET_VER371, NULL },
	/*  220 */ { "SECOND(", TARGET_VER371, NULL },
	/*  221 */ { "TIME(", TARGET_VER371, NULL },
	/*  222 */ { "_FPU", TARGET_VER371, NULL },
	/*  223 */ { "_MCH", TARGET_VER371, NULL },
	/*  224 */ { "_CPUID", TARGET_VER371, NULL },
	/*  225 */ { "COMPILED?", TARGET_VER371, NULL },
	/*  226 */ { "M68K?", TARGET_VER371, NULL },
	/*  227 */ { "_VERSION", TARGET_VER371, NULL },
	/*  228 */ { "_CW", TARGET_VER371, NULL },
	/*  229 */ { "_CH", TARGET_VER371, NULL },
	/*  230 */ { "_0", TARGET_VER371, NULL },
	/*  231 */ { "_1", TARGET_VER371, NULL },
	/*  232 */ { "_2", TARGET_VER371, NULL },
	/*  233 */ { "_3", TARGET_VER371, NULL },
	/*  234 */ { "_4", TARGET_VER371, NULL },
	/*  235 */ { "_5", TARGET_VER371, NULL },
	/*  236 */ { "_6", TARGET_VER371, NULL },
	/*  237 */ { "_7", TARGET_VER371, NULL },
	/*  238 */ { "_8", TARGET_VER371, NULL },
	/*  239 */ { "_9", TARGET_VER371, NULL },
	/*  240 */ { "_BUILDINFO", TARGET_VER371, NULL },
	/*  241 */ { "_CF_", TARGET_VER371, NULL },
	/*  242 */ { "G~H", TARGET_VER371, NULL },
	/*  243 */ { "G~R", TARGET_VER371, NULL },
	/*  244 */ { "BMPSIZE(", TARGET_VER371, NULL },
	/*  245 */ { "_DX", TARGET_VER371, NULL },
	/*  246 */ { "_DY", TARGET_VER371, NULL },
	/*  247 */ { "_DW", TARGET_VER371, NULL },
	/*  248 */ { "_DH", TARGET_VER371, NULL },
	/*  249 */ { "ACC?", TARGET_VER371, NULL },
	/*  250 */ { "AUTO?", TARGET_VER371, NULL },
	/*  251 */ { "FPU?", TARGET_VER371, NULL },
	/*  252 */ { "CPU020?", TARGET_VER371, NULL },
	/*  253 */ { "DMASND?", TARGET_VER371, NULL },
	/*  254 */ { "DAYNO(", TARGET_VER371, NULL }, /* DAYNO(date) */
	/*  255 */ { "DAYNO(", TARGET_VER371, NULL } /* DAYNO(year,month,day) */
};

/* Secondary function text */
struct nameversion const gfasft_211[256] = {
	/*    0 */ { "LEAP(", TARGET_VER371, NULL },
	/*    1 */ { "WEEK(", TARGET_VER371, NULL },
	/*    2 */ { "WEEK(", TARGET_VER371, NULL },
	/*    3 */ { "HOUR12(", TARGET_VER371, NULL },
	/*    4 */ { "MERIDIEM(", TARGET_VER371, NULL },
	/*    5 */ { "JPEGD_INIT()", TARGET_VER371, NULL },
	/*    6 */ { "JPEGD_OPENDRIVER(", TARGET_VER371, NULL },
	/*    7 */ { "JPEGD_CLOSEDRIVER(", TARGET_VER371, NULL },
	/*    8 */ { "JPEGD_GETSTRUCTSIZE()", TARGET_VER371, NULL },
	/*    9 */ { "JPEGD_GETIMAGEINFO(", TARGET_VER371, NULL },
	/*   10 */ { "JPEGD_GETIMAGESIZE(", TARGET_VER371, NULL },
	/*   11 */ { "JPEGD_DECODEIMAGE(", TARGET_VER371, NULL },
	/*   12 */ { "DSP_DOBLOCK(", TARGET_VER371, NULL },
	/*   13 */ { "DSP_BLKHANDSHAKE(", TARGET_VER371, NULL },
	/*   14 */ { "DSP_BLKUNPACKED(", TARGET_VER371, NULL },
	/*   15 */ { "DSP_INSTREAM(", TARGET_VER371, NULL },
	/*   16 */ { "DSP_OUTSTREAM(", TARGET_VER371, NULL },
	/*   17 */ { "DSP_IOSTREAM(", TARGET_VER371, NULL },
	/*   18 */ { "DSP_REMOVEINTERRUPTS(", TARGET_VER371, NULL },
	/*   19 */ { "DSP_GETWORDSIZE()", TARGET_VER371, NULL },
	/*   20 */ { "DSP_LOCK()", TARGET_VER371, NULL },
	/*   21 */ { "DSP_UNLOCK()", TARGET_VER371, NULL },
	/*   22 */ { "DSP_AVAILABLE(", TARGET_VER371, NULL },
	/*   23 */ { "DSP_RESERVE(", TARGET_VER371, NULL },
	/*   24 */ { "DSP_LOADPROG(", TARGET_VER371, NULL },
	/*   25 */ { "DSP_EXECPROG(", TARGET_VER371, NULL },
	/*   26 */ { "DSP_EXECBOOT(", TARGET_VER371, NULL },
	/*   27 */ { "DSP_LODTOBINARY(", TARGET_VER371, NULL },
	/*   28 */ { "DSP_TRIGGERHC(", TARGET_VER371, NULL },
	/*   29 */ { "DSP_REQUESTUNIQUEABILITY()", TARGET_VER371, NULL },
	/*   30 */ { "DSP_GETPROGABILITY()", TARGET_VER371, NULL },
	/*   31 */ { "DSP_FLUSHSUBROUTINES()", TARGET_VER371, NULL },
	/*   32 */ { "DSP_LOADSUBROUTINE(", TARGET_VER371, NULL },
	/*   33 */ { "DSP_INQSUBRABILITY(", TARGET_VER371, NULL },
	/*   34 */ { "DSP_RUNSUBROUTINE(", TARGET_VER371, NULL },
	/*   35 */ { "DSP_HF0(", TARGET_VER371, NULL },
	/*   36 */ { "DSP_HF1(", TARGET_VER371, NULL },
	/*   37 */ { "DSP_HF2()", TARGET_VER371, NULL },
	/*   38 */ { "DSP_HF3()", TARGET_VER371, NULL },
	/*   39 */ { "DSP_BLKWORDS(", TARGET_VER371, NULL },
	/*   40 */ { "DSP_BLKBYTES(", TARGET_VER371, NULL },
	/*   41 */ { "DSP_HSTAT()", TARGET_VER371, NULL },
	/*   42 */ { "DSP_SETVECTORS(", TARGET_VER371, NULL },
	/*   43 */ { "DSP_MULTBLOCKS(", TARGET_VER371, NULL },
	/*   44 */ { "VR_TRANSFER_BITS(", TARGET_VER371, NULL },
	/*   45 */ { "V_CREATE_CTAB(", TARGET_VER371, NULL },
	/*   46 */ { "V_DELETE_CTAB(", TARGET_VER371, NULL },
	/*   47 */ { "V_CREATE_ITAB(", TARGET_VER371, NULL },
	/*   48 */ { "V_DELETE_ITAB(", TARGET_VER371, NULL },
	/*   49 */ { "VQ_PX_FORMAT(", TARGET_VER371, NULL },
	/*   50 */ { "V_GET_CTAB_ID()", TARGET_VER371, NULL },
	/*   51 */ { "VQT_EXT_NAME(", TARGET_VER371, NULL },
	/*   52 */ { "V_OPEN_BM(", TARGET_VER371, NULL },
	/*   53 */ { "V_RESIZE_BM(", TARGET_VER371, NULL },
	/*   54 */ { "V_HARDCOPY()", TARGET_VER371, NULL },
	/*   55 */ { "VST_NAME(", TARGET_VER371, NULL },
	/*   56 */ { "VQT_NAME_AND_ID(", TARGET_VER371, NULL },
	/*   57 */ { "VST_FG_COLOR(", TARGET_VER371, NULL },
	/*   58 */ { "VSF_FG_COLOR(", TARGET_VER371, NULL },
	/*   59 */ { "VSL_FG_COLOR(", TARGET_VER371, NULL },
	/*   60 */ { "VSM_FG_COLOR(", TARGET_VER371, NULL },
	/*   61 */ { "VSR_FG_COLOR(", TARGET_VER371, NULL },
	/*   62 */ { "VQT_FG_COLOR(", TARGET_VER371, NULL },
	/*   63 */ { "VQF_FG_COLOR(", TARGET_VER371, NULL },
	/*   64 */ { "VQL_FG_COLOR(", TARGET_VER371, NULL },
	/*   65 */ { "VQM_FG_COLOR(", TARGET_VER371, NULL },
	/*   66 */ { "VQR_FG_COLOR(", TARGET_VER371, NULL },
	/*   67 */ { "VST_BG_COLOR(", TARGET_VER371, NULL },
	/*   68 */ { "VSF_BG_COLOR(", TARGET_VER371, NULL },
	/*   69 */ { "VSL_BG_COLOR(", TARGET_VER371, NULL },
	/*   70 */ { "VSM_BG_COLOR(", TARGET_VER371, NULL },
	/*   71 */ { "VSR_BG_COLOR(", TARGET_VER371, NULL },
	/*   72 */ { "VQT_BG_COLOR(", TARGET_VER371, NULL },
	/*   73 */ { "VQF_BG_COLOR(", TARGET_VER371, NULL },
	/*   74 */ { "VQL_BG_COLOR(", TARGET_VER371, NULL },
	/*   75 */ { "VQM_BG_COLOR(", TARGET_VER371, NULL },
	/*   76 */ { "VQR_BG_COLOR(", TARGET_VER371, NULL },
	/*   77 */ { "VS_HILITE_COLOR(", TARGET_VER371, NULL },
	/*   78 */ { "VS_MIN_COLOR(", TARGET_VER371, NULL },
	/*   79 */ { "VS_MAX_COLOR(", TARGET_VER371, NULL },
	/*   80 */ { "VS_WEIGHT_COLOR(", TARGET_VER371, NULL },
	/*   81 */ { "VQ_HILITE_COLOR(", TARGET_VER371, NULL },
	/*   82 */ { "VQ_MIN_COLOR(", TARGET_VER371, NULL },
	/*   83 */ { "VQ_MAX_COLOR(", TARGET_VER371, NULL },
	/*   84 */ { "VQ_WEIGHT_COLOR(", TARGET_VER371, NULL },
	/*   85 */ { "V_SETRGB(", TARGET_VER371, NULL },
	/*   86 */ { "SUPERSCALAR(", TARGET_VER371, NULL },
	/*   87 */ { "VQT_XFNTINFO(", TARGET_VER371, NULL },
	/*   88 */ { "OB_SELECTED(", TARGET_VER371, NULL },
	/*   89 */ { "OB_CROSSED(", TARGET_VER371, NULL },
	/*   90 */ { "OB_CHECKED(", TARGET_VER371, NULL },
	/*   91 */ { "OB_DISABLED(", TARGET_VER371, NULL },
	/*   92 */ { "OB_OUTLINED(", TARGET_VER371, NULL },
	/*   93 */ { "OB_SHADOWED(", TARGET_VER371, NULL },
	/*   94 */ { "OB_WHITEBAK(", TARGET_VER371, NULL },
	/*   95 */ { NULL, 0, NULL }, /* unused */
	/*   96 */ { "OB_SELECTABLE(", TARGET_VER371, NULL },
	/*   97 */ { "OB_DEFAULT(", TARGET_VER371, NULL },
	/*   98 */ { "OB_EXIT(", TARGET_VER371, NULL },
	/*   99 */ { "OB_EDITABLE(", TARGET_VER371, NULL },
	/*  100 */ { "OB_RBUTTON(", TARGET_VER371, NULL },
	/*  101 */ { "OB_LASTOB(", TARGET_VER371, NULL },
	/*  102 */ { "OB_TOUCHEXIT(", TARGET_VER371, NULL },
	/*  103 */ { "OB_HIDETREE(", TARGET_VER371, NULL },
	/*  104 */ { "OB_INDIRECT(", TARGET_VER371, NULL },
	/*  105 */ { "OB_FL3DIND(", TARGET_VER371, NULL },
	/*  106 */ { "OB_FL3DACT(", TARGET_VER371, NULL },
	/*  107 */ { "OB_SUBMENU(", TARGET_VER371, NULL },
	/*  108 */ { NULL, TARGET_VER371, NULL }, /* unused */
	/*  109 */ { "OB_FL3DBAK(", TARGET_VER371, NULL },
	/*  110 */ { "BF_OBSPEC(", TARGET_VER371, NULL },
	/*  111 */ { "BF_CHARACTER(", TARGET_VER371, NULL },
	/*  112 */ { "BF_FRAMESIZE(", TARGET_VER371, NULL },
	/*  113 */ { "BF_FRAMECOL(", TARGET_VER371, NULL },
	/*  114 */ { "BF_TEXTCOL(", TARGET_VER371, NULL },
	/*  115 */ { "BF_TEXTMODE(", TARGET_VER371, NULL },
	/*  116 */ { "BF_FILLPATTERN(", TARGET_VER371, NULL },
	/*  117 */ { "BF_INTERIORCOL(", TARGET_VER371, NULL },
	/*  118 */ { "BI_PDATA(", TARGET_VER371, NULL },
	/*  119 */ { "BI_WB(", TARGET_VER371, NULL },
	/*  120 */ { "BI_HL(", TARGET_VER371, NULL },
	/*  121 */ { "BI_X(", TARGET_VER371, NULL },
	/*  122 */ { "BI_Y(", TARGET_VER371, NULL },
	/*  123 */ { "BI_COLOR(", TARGET_VER371, NULL },
	/*  124 */ { "UB_CODE(", TARGET_VER371, NULL },
	/*  125 */ { "UB_PARM(", TARGET_VER371, NULL },
	/*  126 */ { "TE_PTEXT(", TARGET_VER371, NULL },
	/*  127 */ { "TE_PTMPLT(", TARGET_VER371, NULL },
	/*  128 */ { "TE_PVALID(", TARGET_VER371, NULL },
	/*  129 */ { "TE_FONT(", TARGET_VER371, NULL },
	/*  130 */ { "TE_FONTID(", TARGET_VER371, NULL },
	/*  131 */ { "TE_JUST(", TARGET_VER371, NULL },
	/*  132 */ { "TE_COLOR(", TARGET_VER371, NULL },
	/*  133 */ { "TE_FONTSIZE(", TARGET_VER371, NULL },
	/*  134 */ { "TE_THICKNESS(", TARGET_VER371, NULL },
	/*  135 */ { "TE_TXTLEN(", TARGET_VER371, NULL },
	/*  136 */ { "TE_TMPLEN(", TARGET_VER371, NULL },
	/*  137 */ { "TE_FRAMECOL(", TARGET_VER371, NULL },
	/*  138 */ { "TE_TEXTCOL(", TARGET_VER371, NULL },
	/*  139 */ { "TE_TEXTMODE(", TARGET_VER371, NULL },
	/*  140 */ { "TE_FILLPATTERN(", TARGET_VER371, NULL },
	/*  141 */ { "TE_INTERIORCOL(", TARGET_VER371, NULL },
	/*  142 */ { "IB_PMASK(", TARGET_VER371, NULL },
	/*  143 */ { "IB_PDATA(", TARGET_VER371, NULL },
	/*  144 */ { "IB_PTEXT(", TARGET_VER371, NULL },
	/*  145 */ { "IB_CHAR(", TARGET_VER371, NULL },
	/*  146 */ { "IB_XCHAR(", TARGET_VER371, NULL },
	/*  147 */ { "IB_YCHAR(", TARGET_VER371, NULL },
	/*  148 */ { "IB_XICON(", TARGET_VER371, NULL },
	/*  149 */ { "IB_YICON(", TARGET_VER371, NULL },
	/*  150 */ { "IB_WICON(", TARGET_VER371, NULL },
	/*  151 */ { "IB_HICON(", TARGET_VER371, NULL },
	/*  152 */ { "IB_XTEXT(", TARGET_VER371, NULL },
	/*  153 */ { "IB_YTEXT(", TARGET_VER371, NULL },
	/*  154 */ { "IB_WTEXT(", TARGET_VER371, NULL },
	/*  155 */ { "IB_HTEXT(", TARGET_VER371, NULL },
	/*  156 */ { "IB_FCOLOR(", TARGET_VER371, NULL },
	/*  157 */ { "IB_BCOLOR(", TARGET_VER371, NULL },
	/*  158 */ { "IB_LETTER(", TARGET_VER371, NULL },
	/*  159 */ { "CI_MAINLIST(", TARGET_VER371, NULL },
	/*  160 */ { "CI_NUM_PLANES(", TARGET_VER371, NULL },
	/*  161 */ { "CI_COL_DATA(", TARGET_VER371, NULL },
	/*  162 */ { "CI_COL_MASK(", TARGET_VER371, NULL },
	/*  163 */ { "CI_SEL_DATA(", TARGET_VER371, NULL },
	/*  164 */ { "CI_SEL_MASK(", TARGET_VER371, NULL },
	/*  165 */ { "CI_NEXT_RES(", TARGET_VER371, NULL },
	/*  166 */ { "V_CTAB_IDX2VDI(", TARGET_VER371, NULL },
	/*  167 */ { "VQ_CTAB_ID()", TARGET_VER371, NULL },
	/*  168 */ { "VQ_CTAB_ENTRY(", TARGET_VER371, NULL },
	/*  169 */ { "VQ_CTAB(", TARGET_VER371, NULL },
	/*  170 */ { "VS_DFLT_CTAB()", TARGET_VER371, NULL },
	/*  171 */ { "VS_CTAB_ENTRY(", TARGET_VER371, NULL },
	/*  172 */ { "VS_CTAB(", TARGET_VER371, NULL },
	/*  173 */ { "VR_CLIP_RECTS_BY_DST()", TARGET_VER371, NULL },
	/*  174 */ { "VR_CLIP_RECTS_BY_SRC()", TARGET_VER371, NULL },
	/*  175 */ { "VQT_FONTHEADER(", TARGET_VER371, NULL },
	/*  176 */ { "VST_WIDTH(", TARGET_VER371, NULL },
	/*  177 */ { "V_CLEAR_DISP_LIST()", TARGET_VER371, NULL },
	/*  178 */ { "VEX_TIMV(", TARGET_VER371, NULL },
	/*  179 */ { "VEX_BUTV(", TARGET_VER371, NULL },
	/*  180 */ { "VEX_MOTV(", TARGET_VER371, NULL },
	/*  181 */ { "VEX_CURV(", TARGET_VER371, NULL },
	/*  182 */ { "INITMOUS(", TARGET_VER371, NULL },
	/*  183 */ { "FREADLINK(", TARGET_VER371, NULL },
	/*  184 */ { "INPUTRADIO(", TARGET_VER371, NULL },
	/*
	 * below are new in 3.73 (GBE)
	 */
	/*  185 */ { "PIXEL24(", TARGET_VER373, NULL },
	/*  186 */ { "F_CWRITE(", TARGET_VER373, func_211_186_exception },
	/*  187 */ { "F_CREAD(", TARGET_VER373, func_211_187_exception },
	/*  188 */ { "SUPER?", TARGET_VER373, NULL },
	/*  189 */ { "PIXEL32(", TARGET_VER373, NULL },
	/*  190 */ { "PIXEL16(", TARGET_VER373, NULL },
	/*  191 */ { "V_BEZ_ON()", TARGET_VER373, NULL },
	/*  192 */ { "V_BEZ_OFF()", TARGET_VER373, NULL },
	/*  193 */ { "VQ_CHCELLS(", TARGET_VER373, NULL },
	/*  194 */ { "RC_EQUAL(", TARGET_VER373, NULL },
	/*  195 */ { "OB_XYWH(", TARGET_VER373, NULL },
	/*  196 */ { "PIXEL15(", TARGET_VER373, NULL },
	/*  197 */ { "PUMASK(", TARGET_VER373, NULL },
	/*  198 */ { "FLINK(", TARGET_VER373, NULL },
	/*  199 */ { "FSYMLINK(", TARGET_VER373, NULL },
	/*  200 */ { "_BOOTDEV", TARGET_VER373, NULL },
	/*  201 */ { "STRUCT!(", TARGET_VER373, NULL },
	/*  202 */ { "STRUCT|(", TARGET_VER373, NULL },
	/*  203 */ { "STRUCT&(", TARGET_VER373, NULL },
	/*  204 */ { "STRUCT%(", TARGET_VER373, NULL },
	/*  205 */ { "STRUCT(", TARGET_VER373, NULL },
	/*  206 */ { "PIXEL8C(", TARGET_VER373, NULL },
	/*  207 */ { "PIXEL1M(", TARGET_VER373, NULL },
	/*  208 */ { "PIXEL8P(", TARGET_VER373, NULL },
	/*  209 */ { "PIXEL4P(", TARGET_VER373, NULL },
	/*  210 */ { "PIXEL2P(", TARGET_VER373, NULL },
	/*  211 */ { "MDPEEK(", TARGET_VER373, NULL },
	/*  212 */ { "MLPEEK(", TARGET_VER373, NULL },
	/*  213 */ { "_GLOBAL", TARGET_VER373, NULL },
	/*  214 */ { "MULTITASK?", TARGET_VER373, NULL },
	/*  215 */ { "USERDEF|(", TARGET_VER373, NULL },
	/*  216 */ { "USERDEFBYT", TARGET_VER373, NULL },
	/*  217 */ { "USERDEF&(", TARGET_VER373, NULL },
	/*  218 */ { "USERDEFWRD", TARGET_VER373, NULL },
	/*  219 */ { "USERDEF%(", TARGET_VER373, NULL },
	/*  220 */ { "USERDEFLNG", TARGET_VER373, NULL },
	/*  221 */ { "USERDEF!(", TARGET_VER373, NULL },
	/*  222 */ { "USERDEFBIT", TARGET_VER373, NULL },
	/*  223 */ { "_BMPSIZE", TARGET_VER373, NULL },
	/*  224 */ { "PSIGBLOCK(", TARGET_VER373, NULL },
	/*  225 */ { "PSIGSETMASK(", TARGET_VER373, NULL },
	/*  226 */ { "TALARM(", TARGET_VER373, NULL },
	/*  227 */ { "TMALARM(", TARGET_VER373, NULL },
	/*  228 */ { "PAUSE()", TARGET_VER373, NULL },
	/*  229 */ { "PSIGPENDING()", TARGET_VER373, NULL },
	/*  230 */ { "PSIGPAUSE(", TARGET_VER373, NULL },
	/*  231 */ { "PSIGACTION(", TARGET_VER373, NULL },
	/*  232 */ { "PTRACE(", TARGET_VER373, NULL },
	/*  233 */ { "SYNC()", TARGET_VER373, NULL },
	/*  234 */ { "FSYNC(", TARGET_VER373, NULL },
	/*  235 */ { "SREALLOC(", TARGET_VER373, NULL },
	/*  236 */ { "PMSG(", TARGET_VER373, NULL },
	/*  237 */ { "PFORK()", TARGET_VER373, NULL },
	/*  238 */ { "PVFORK()", TARGET_VER373, NULL },
	/*  239 */ { "PWAIT()", TARGET_VER373, NULL },
	/*  240 */ { "PWAIT3(", TARGET_VER373, NULL },
	/*  241 */ { "PWAITPID(", TARGET_VER373, NULL },
	/*  242 */ { "PGETGID()", TARGET_VER373, NULL },
	/*  243 */ { "PSETGID(", TARGET_VER373, NULL },
	/*  244 */ { "PGETUID()", TARGET_VER373, NULL },
	/*  245 */ { "PSETUID(", TARGET_VER373, NULL },
	/*  246 */ { "ARRAY!(", TARGET_VER373, NULL },
	/*  247 */ { "ARRAY|(", TARGET_VER373, NULL },
	/*  248 */ { "ARRAY&(", TARGET_VER373, NULL },
	/*  249 */ { "ARRAY%(", TARGET_VER373, NULL },
	/*  250 */ { "ARRAY(", TARGET_VER373, NULL },
	/*  251 */ { "_A3", TARGET_VER373, NULL },
	/*  252 */ { "_A4", TARGET_VER373, NULL },
	/*  253 */ { "_A5", TARGET_VER373, NULL },
	/*  254 */ { "_A6", TARGET_VER373, NULL },
	/*  255 */ { "_A7", TARGET_VER373, NULL }
};

/* Secondary function text */
struct nameversion const gfasft_212[256] = {
	/*    0 */ { "GETMPB(", TARGET_VER373, NULL },
	/*    1 */ { "MADDALT(", TARGET_VER373, NULL },
	/*    2 */ { "MFPINT(", TARGET_VER373, NULL },
	/*    3 */ { "XBTIMER(", TARGET_VER373, NULL },
	/*    4 */ { "PUNTAES()", TARGET_VER373, NULL },
	/*    5 */ { "SSBRK(", TARGET_VER373, NULL },
	/*    6 */ { "DBMSG(", TARGET_VER373, NULL },
	/*    7 */ { "FFCHMOD(", TARGET_VER373, NULL },
	/*    8 */ { "FFCHOWN(", TARGET_VER373, NULL },
	/*    9 */ { "SVERSION()", TARGET_VER373, NULL },
	/*   10 */ { "DCNTL(", TARGET_VER373, NULL },
	/*   11 */ { "CCONIN()", TARGET_VER373, NULL },
	/*   12 */ { "CCONOUT(", TARGET_VER373, NULL },
	/*   13 */ { "CAUXIN()", TARGET_VER373, NULL },
	/*   14 */ { "CAUXOUT(", TARGET_VER373, NULL },
	/*   15 */ { "CPRNOUT(", TARGET_VER373, NULL },
	/*   16 */ { "CRAWIO(", TARGET_VER373, NULL },
	/*   17 */ { "CRAWCIN()", TARGET_VER373, NULL },
	/*   18 */ { "CNECIN()", TARGET_VER373, NULL },
	/*   19 */ { "CCONIS()", TARGET_VER373, NULL },
	/*   20 */ { "CCONOS()", TARGET_VER373, NULL },
	/*   21 */ { "CAUXIS()", TARGET_VER373, NULL },
	/*   22 */ { "CAUXOS()", TARGET_VER373, NULL },
	/*   23 */ { "CPRNOS()", TARGET_VER373, NULL },
	/*   24 */ { "CCONRS(", TARGET_VER373, NULL },
	/*   25 */ { "PGETPGRP()", TARGET_VER373, NULL },
	/*   26 */ { "PSETPGRP(", TARGET_VER373, NULL },
	/*   27 */ { "PGETGROUPS(", TARGET_VER373, NULL },
	/*   28 */ { "PSETGROUPS(", TARGET_VER373, NULL },
	/*   29 */ { "PGETAUID()", TARGET_VER373, NULL },
	/*   30 */ { "PSETAUID(", TARGET_VER373, NULL },
	/*   31 */ { "PGETEUID()", TARGET_VER373, NULL },
	/*   32 */ { "PSETEUID(", TARGET_VER373, NULL },
	/*   33 */ { "PGETEGID()", TARGET_VER373, NULL },
	/*   34 */ { "PSETEGID(", TARGET_VER373, NULL },
	/*   35 */ { "PSETREUID(", TARGET_VER373, NULL },
	/*   36 */ { "PSETREGID(", TARGET_VER373, NULL },
	/*   37 */ { "PSEMAPHORE(", TARGET_VER373, NULL },
	/*   38 */ { "TSETITIMER(", TARGET_VER373, NULL },
	/*   39 */ { "TADJTIME(", TARGET_VER373, NULL },
	/*   40 */ { "TGETTIMEOFDAY(", TARGET_VER373, NULL },
	/*   41 */ { "TSETTIMEOFDAY(", TARGET_VER373, NULL },
	/*   42 */ { "PTERM0()", TARGET_VER373, NULL },
	/*   43 */ { "PTERM(", TARGET_VER373, NULL },
	/*   44 */ { "FREADV(", TARGET_VER373, NULL },
	/*   45 */ { "FWRITEV(", TARGET_VER373, NULL },
	/*   46 */ { "DCHROOT(", TARGET_VER373, NULL },
	/*   47 */ { "FSTAT64(", TARGET_VER373, NULL },
	/*   48 */ { "FFSTAT64(", TARGET_VER373, NULL },
	/*   49 */ { "FCHOWN16(", TARGET_VER373, NULL },
	/*   50 */ { "FCHDIR(", TARGET_VER373, NULL },
	/*   51 */ { "FFDOPENDIR(", TARGET_VER373, NULL },
	/*   52 */ { "FDIRFD(", TARGET_VER373, NULL },
	/*   53 */ { "REALLOC(", TARGET_VER373, NULL },
	/*   54 */ { "VQ_CURADDRESS(", TARGET_VER373, NULL },
	/*   55 */ { "V_CURADDRESS(", TARGET_VER373, NULL },
	/*   56 */ { "V_RVON()", TARGET_VER373, NULL },
	/*   57 */ { "V_RVOFF()", TARGET_VER373, NULL },
	/*   58 */ { "V_EXIT_CUR()", TARGET_VER373, NULL },
	/*   59 */ { "V_ENTER_CUR()", TARGET_VER373, NULL },
	/*   60 */ { "V_CURUP()", TARGET_VER373, NULL },
	/*   61 */ { "V_CURDOWN()", TARGET_VER373, NULL },
	/*   62 */ { "V_CURRIGHT()", TARGET_VER373, NULL },
	/*   63 */ { "V_CURLEFT()", TARGET_VER373, NULL },
	/*   64 */ { "V_CURHOME()", TARGET_VER373, NULL },
	/*   65 */ { "VQ_TABSTATUS()", TARGET_VER373, NULL },
	/*   66 */ { "V_EEOL()", TARGET_VER373, NULL },
	/*   67 */ { "V_EEOS()", TARGET_VER373, NULL },
	/*   68 */ { "V_RMCUR()", TARGET_VER373, NULL },
	/*   69 */ { "V_DSPCUR(", TARGET_VER373, NULL },
	/*
	 * below are new in 3.74 (GBE)
	 */
	/*   70 */ { "RGB64K(", TARGET_VER374, NULL },
	/*   71 */ { "CRC8(", TARGET_VER374, NULL },
	/*   72 */ { "PLUGIN_LOAD(", TARGET_VER374, NULL },
	/*   73 */ { "PLUGIN_UNLOAD(", TARGET_VER374, NULL },
	/*   74 */ { "PLUGIN_OPEN(", TARGET_VER374, NULL },
	/*   75 */ { "PLUGIN_RW(", TARGET_VER374, NULL },
	/*   76 */ { "PLUGIN_CLOSE(", TARGET_VER374, NULL },
	/*   77 */ { "PLUGIN_SET(", TARGET_VER374, NULL },
	/*   78 */ { "NYBLE{", TARGET_VER374, NULL },
	/*   79 */ { "HINYBLE{", TARGET_VER374, NULL },
	/*   80 */ { "GIST_INSTALL_INT()", TARGET_VER374, NULL },
	/*   81 */ { "GIST_REMOVE_INT()", TARGET_VER374, NULL },
	/*   82 */ { "GIST_INIT_SNDS()", TARGET_VER374, NULL },
	/*   83 */ { "GIST_SND_ON()", TARGET_VER374, NULL },
	/*   84 */ { "GIST_STOP_SND()", TARGET_VER374, NULL },
	/*   85 */ { "GIST_SND_OFF()", TARGET_VER374, NULL },
	/*   86 */ { "GIST_GET_PRIOR()", TARGET_VER374, NULL },
	/*   87 */ { "BPL(", TARGET_VER374, NULL },
	/*   88 */ { "BETWEEN(", TARGET_VER374, NULL },
	/*   89 */ { "WDWIDTH(", TARGET_VER374, NULL },
	/*   90 */ { "_NVDI", TARGET_VER374, NULL },
	/*   91 */ { "_NAES", TARGET_VER374, NULL },
	/*   92 */ { "DEXIST(", TARGET_VER374, NULL },
	/*   93 */ { "CLUT?", TARGET_VER374, NULL },
	/*   94 */ { "APPL.YIELD()", TARGET_VER374, NULL },
	/*   95 */ { "_PX_FORMAT", TARGET_VER374, NULL },
	/*   96 */ { "WORK.OUT(", TARGET_VER374, NULL },
	/*   97 */ { "OB_EXTYPE(", TARGET_VER374, NULL },
	/*   98 */ { "VDIPB", TARGET_VER374, NULL },
	/*   99 */ { "AESPB", TARGET_VER374, NULL },
	/*  100 */ { "TRNFM(", TARGET_VER374, NULL },
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

/* Secondary function text */
struct nameversion const gfasft_213[256] = {
	/*    0 */ { NULL, 0, NULL },
	/*    1 */ { NULL, 0, NULL },
	/*    2 */ { NULL, 0, NULL },
	/*    3 */ { NULL, 0, NULL },
	/*    4 */ { NULL, 0, NULL },
	/*    5 */ { NULL, 0, NULL },
	/*    6 */ { NULL, 0, NULL },
	/*    7 */ { NULL, 0, NULL },
	/*    8 */ { NULL, 0, NULL },
	/*    9 */ { NULL, 0, NULL },
	/*   10 */ { NULL, 0, NULL },
	/*   11 */ { NULL, 0, NULL },
	/*   12 */ { NULL, 0, NULL },
	/*   13 */ { NULL, 0, NULL },
	/*   14 */ { NULL, 0, NULL },
	/*   15 */ { NULL, 0, NULL },
	/*   16 */ { NULL, 0, NULL },
	/*   17 */ { NULL, 0, NULL },
	/*   18 */ { NULL, 0, NULL },
	/*   19 */ { NULL, 0, NULL },
	/*   20 */ { NULL, 0, NULL },
	/*   21 */ { NULL, 0, NULL },
	/*   22 */ { NULL, 0, NULL },
	/*   23 */ { NULL, 0, NULL },
	/*   24 */ { NULL, 0, NULL },
	/*   25 */ { NULL, 0, NULL },
	/*   26 */ { NULL, 0, NULL },
	/*   27 */ { NULL, 0, NULL },
	/*   28 */ { NULL, 0, NULL },
	/*   29 */ { NULL, 0, NULL },
	/*   30 */ { NULL, 0, NULL },
	/*   31 */ { NULL, 0, NULL },
	/*   32 */ { NULL, 0, NULL },
	/*   33 */ { NULL, 0, NULL },
	/*   34 */ { NULL, 0, NULL },
	/*   35 */ { NULL, 0, NULL },
	/*   36 */ { NULL, 0, NULL },
	/*   37 */ { NULL, 0, NULL },
	/*   38 */ { NULL, 0, NULL },
	/*   39 */ { NULL, 0, NULL },
	/*   40 */ { NULL, 0, NULL },
	/*   41 */ { NULL, 0, NULL },
	/*   42 */ { NULL, 0, NULL },
	/*   43 */ { NULL, 0, NULL },
	/*   44 */ { NULL, 0, NULL },
	/*   45 */ { NULL, 0, NULL },
	/*   46 */ { NULL, 0, NULL },
	/*   47 */ { NULL, 0, NULL },
	/*   48 */ { NULL, 0, NULL },
	/*   49 */ { NULL, 0, NULL },
	/*   50 */ { NULL, 0, NULL },
	/*   51 */ { NULL, 0, NULL },
	/*   52 */ { NULL, 0, NULL },
	/*   53 */ { NULL, 0, NULL },
	/*   54 */ { NULL, 0, NULL },
	/*   55 */ { NULL, 0, NULL },
	/*   56 */ { NULL, 0, NULL },
	/*   57 */ { NULL, 0, NULL },
	/*   58 */ { NULL, 0, NULL },
	/*   59 */ { NULL, 0, NULL },
	/*   60 */ { NULL, 0, NULL },
	/*   61 */ { NULL, 0, NULL },
	/*   62 */ { NULL, 0, NULL },
	/*   63 */ { NULL, 0, NULL },
	/*   64 */ { NULL, 0, NULL },
	/*   65 */ { NULL, 0, NULL },
	/*   66 */ { NULL, 0, NULL },
	/*   67 */ { NULL, 0, NULL },
	/*   68 */ { NULL, 0, NULL },
	/*   69 */ { NULL, 0, NULL },
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

/* Secondary function text */
struct nameversion const gfasft_214[256] = {
	/*    0 */ { NULL, 0, NULL },
	/*    1 */ { NULL, 0, NULL },
	/*    2 */ { NULL, 0, NULL },
	/*    3 */ { NULL, 0, NULL },
	/*    4 */ { NULL, 0, NULL },
	/*    5 */ { NULL, 0, NULL },
	/*    6 */ { NULL, 0, NULL },
	/*    7 */ { NULL, 0, NULL },
	/*    8 */ { NULL, 0, NULL },
	/*    9 */ { NULL, 0, NULL },
	/*   10 */ { NULL, 0, NULL },
	/*   11 */ { NULL, 0, NULL },
	/*   12 */ { NULL, 0, NULL },
	/*   13 */ { NULL, 0, NULL },
	/*   14 */ { NULL, 0, NULL },
	/*   15 */ { NULL, 0, NULL },
	/*   16 */ { NULL, 0, NULL },
	/*   17 */ { NULL, 0, NULL },
	/*   18 */ { NULL, 0, NULL },
	/*   19 */ { NULL, 0, NULL },
	/*   20 */ { NULL, 0, NULL },
	/*   21 */ { NULL, 0, NULL },
	/*   22 */ { NULL, 0, NULL },
	/*   23 */ { NULL, 0, NULL },
	/*   24 */ { NULL, 0, NULL },
	/*   25 */ { NULL, 0, NULL },
	/*   26 */ { NULL, 0, NULL },
	/*   27 */ { NULL, 0, NULL },
	/*   28 */ { NULL, 0, NULL },
	/*   29 */ { NULL, 0, NULL },
	/*   30 */ { NULL, 0, NULL },
	/*   31 */ { NULL, 0, NULL },
	/*   32 */ { NULL, 0, NULL },
	/*   33 */ { NULL, 0, NULL },
	/*   34 */ { NULL, 0, NULL },
	/*   35 */ { NULL, 0, NULL },
	/*   36 */ { NULL, 0, NULL },
	/*   37 */ { NULL, 0, NULL },
	/*   38 */ { NULL, 0, NULL },
	/*   39 */ { NULL, 0, NULL },
	/*   40 */ { NULL, 0, NULL },
	/*   41 */ { NULL, 0, NULL },
	/*   42 */ { NULL, 0, NULL },
	/*   43 */ { NULL, 0, NULL },
	/*   44 */ { NULL, 0, NULL },
	/*   45 */ { NULL, 0, NULL },
	/*   46 */ { NULL, 0, NULL },
	/*   47 */ { NULL, 0, NULL },
	/*   48 */ { NULL, 0, NULL },
	/*   49 */ { NULL, 0, NULL },
	/*   50 */ { NULL, 0, NULL },
	/*   51 */ { NULL, 0, NULL },
	/*   52 */ { NULL, 0, NULL },
	/*   53 */ { NULL, 0, NULL },
	/*   54 */ { NULL, 0, NULL },
	/*   55 */ { NULL, 0, NULL },
	/*   56 */ { NULL, 0, NULL },
	/*   57 */ { NULL, 0, NULL },
	/*   58 */ { NULL, 0, NULL },
	/*   59 */ { NULL, 0, NULL },
	/*   60 */ { NULL, 0, NULL },
	/*   61 */ { NULL, 0, NULL },
	/*   62 */ { NULL, 0, NULL },
	/*   63 */ { NULL, 0, NULL },
	/*   64 */ { NULL, 0, NULL },
	/*   65 */ { NULL, 0, NULL },
	/*   66 */ { NULL, 0, NULL },
	/*   67 */ { NULL, 0, NULL },
	/*   68 */ { NULL, 0, NULL },
	/*   69 */ { NULL, 0, NULL },
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
