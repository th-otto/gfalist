/* Host character set */

unsigned char const charset[256] = {
	'\000', '\001', '\002', '\003', '\004', '\005', '\006', '\007',
	'\010', '\011', '\012', '\013', '\014', '\015', '\016', '\017',
	'\020', '\021', '\022', '\023', '\024', '\025', '\026', '\027',
	'\030', '\031', '\032', '\033', '\034', '\035', '\036', '\037',
	' ', '!', '"', '#', '$', '%', '&','\'',
	'(', ')', '*', '+', ',', '-', '.', '/',
	'0', '1', '2', '3', '4', '5', '6', '7',
	'8', '9', ':', ';', '<', '=', '>', '?',
	'@', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
	'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
	'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
	'X', 'Y', 'Z', '[','\\', ']', '^', '_',
	'`', 'a', 'b', 'c', 'd', 'e', 'f', 'g',
	'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
	'p', 'q', 'r', 's', 't', 'u', 'v', 'w',
	'x', 'y', 'z', '{', '|', '}', '~', '?',
	'\xC7', '\xFC', '\xE9', '\xE2', '\xE4', '\xE0', '\xE5', '\xE7',
	'\xEA', '\xEB', '\xE8', '\xEF', '\xEE', '\xEC', '\xC4', '\xC5',
	'\xC9', '\xE6', '\xC6', '\xF4', '\xF6', '\xF2', '\xFB', '\xF9',
	'\xFF', '\xF6', '\xDC', '\xA2', '\xA3', '\xA5', '\xDF', '\x83',
	'\xE1', '\xED', '\xF3', '\xFA', '\xF1', '\xD1', '\x3F', '\xba',
	'\xBF', '?',    '\xAC', '\xBD', '\xBC', '\xA1', '\xAB', '\xBB',
	'\xE3', '\xF5', '\xD8', '\xF8', '\x9C', '\x8C', '\xC0', '\xC3',
	'\xD5', '\xA8', '\xB4', '\x86', '\xB6', '\xA9', '\xAE', '\x99',
	'?', '?', '?', '?', '?', '?', '?', '?',
	'?', '?', '?', '?', '?', '?', '?', '?',
	'?', '?', '?', '?', '?', '?', '?', '?',
	'?', '?', '?', '?', '?', '?', '?', '?',
	'?', '?', '?', '?', '?', '?', '?', '?',
	'?', '?', '?', '?', '?', '?', '?', '?',
	'?', '\xb1', '?', '?', '?', '?', '\xf7', '?',
	'\xb0', '?', '\xb7', '?', '?', '\xb2', '\xb3', '\xaf'
};

unsigned short const charset_w[256] = {
/* 00 */	0x0000, 0x21e7, 0x21e9, 0x21e8, 0x21e6, 0x2610, 0x2611, 0x2666,
/* 08 */	0x2713, 0x0009, 0x237e, 0x266a, 0x240c, 0x240d, 0x240e, 0x240f,
/* 10 */	0x24ea, 0x2460, 0x2461, 0x2462, 0x2463, 0x2464, 0x2465, 0x2466,
/* 18 */	0x2467, 0x2468, 0x018f, 0x241b, 0x241c, 0x241d, 0x241e, 0x241f,
/* 20 */	0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x0027,
/* 28 */	0x0028, 0x0029, 0x002a, 0x002b, 0x002c, 0x002d, 0x002e, 0x002f,
/* 30 */	0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
/* 38 */	0x0038, 0x0039, 0x003a, 0x003b, 0x003c, 0x003d, 0x003e, 0x003f,
/* 40 */	0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
/* 48 */	0x0048, 0x0049, 0x004a, 0x004b, 0x004c, 0x004d, 0x004e, 0x004f,
/* 50 */	0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
/* 58 */	0x0058, 0x0059, 0x005a, 0x005b, 0x005c, 0x005d, 0x005e, 0x005f,
/* 60 */	0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
/* 68 */	0x0068, 0x0069, 0x006a, 0x006b, 0x006c, 0x006d, 0x006e, 0x006f,
/* 70 */	0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
/* 78 */	0x0078, 0x0079, 0x007a, 0x007b, 0x007c, 0x007d, 0x007e, 0x2206,
/* 80 */	0x00c7, 0x00fc, 0x00e9, 0x00e2, 0x00e4, 0x00e0, 0x00e5, 0x00e7,
/* 88 */	0x00ea, 0x00eb, 0x00e8, 0x00ef, 0x00ee, 0x00ec, 0x00c4, 0x00c5,
/* 90 */	0x00c9, 0x00e6, 0x00c6, 0x00f4, 0x00f6, 0x00f2, 0x00fb, 0x00f9,
/* 98 */	0x00ff, 0x00d6, 0x00dc, 0x00a2, 0x00a3, 0x00a5, 0x00df, 0x0192,
/* a0 */	0x00e1, 0x00ed, 0x00f3, 0x00fa, 0x00f1, 0x00d1, 0x00aa, 0x00ba,
/* a8 */	0x00bf, 0x2310, 0x00ac, 0x00bd, 0x00bc, 0x00a1, 0x00ab, 0x00bb,
/* b0 */	0x00e3, 0x00f5, 0x00d8, 0x00f8, 0x0153, 0x0152, 0x00c0, 0x00c3,
/* b8 */	0x00d5, 0x00a8, 0x00b4, 0x2020, 0x00b6, 0x00a9, 0x00ae, 0x2122,
/* c0 */	0x0133, 0x0132, 0x05d0, 0x05d1, 0x05d2, 0x05d3, 0x05d4, 0x05d5,
/* c8 */	0x05d6, 0x05d7, 0x05d8, 0x05d9, 0x05db, 0x05dc, 0x05de, 0x05e0,
/* d0 */	0x05e1, 0x05e2, 0x05e4, 0x05e6, 0x05e7, 0x05e8, 0x05e9, 0x05ea,
/* d8 */	0x05df, 0x05da, 0x05dd, 0x05e3, 0x05e5, 0x00a7, 0x2227, 0x221e,
/* e0 */	0x03b1, 0x03b2, 0x0393, 0x03c0, 0x03a3, 0x03c3, 0x00b5, 0x03c4,
/* e8 */	0x03a6, 0x0398, 0x03a9, 0x03b4, 0x222e, 0x03c6, 0x2208, 0x2229,
/* f0 */	0x2261, 0x00b1, 0x2265, 0x2264, 0x2320, 0x2321, 0x00f7, 0x2248,
/* f8 */	0x00b0, 0x2219, 0x00b7, 0x221a, 0x207f, 0x00b2, 0x00b3, 0x00af
};
