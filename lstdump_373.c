#include <stdio.h>
#include <string.h>
#include <stdlib.h>

FILE *out;
struct label {
	struct label *next;
	char *name;
};
struct label *used[1048576];
int funcused[1048576];
int label;
int funclabel;

#define jmpbase 0x57e10

static int maptable[500];
static char *oldtable[500];
static char *functable[100];

static void scan_table(FILE *fp, int offset, int end)
{
	int c;
	int c2;
	int dst;

	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	if (used[offset] == 0)
	{
		++label;
		used[offset] = malloc(sizeof(struct label));
		used[offset]->name = malloc(30);
		used[offset]->next = NULL;
		if (oldtable[label])
			used[offset]->name = oldtable[label];
		else
			sprintf(used[offset]->name, "y%d", maptable[label]);
	}
	while (offset < end)
	{
		c = fgetc(fp);
		switch (c)
		{
		case 250:
			offset += 1;
			break;
		case 251:
			c = fgetc(fp);
			offset += 2;
			break;
		case 252:
			offset += 1;
			break;
		case 253:
			offset += 1;
			break;
		case 254:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			if (funcused[dst] == 0)
			{
				++funclabel;
				funcused[dst] = funclabel;
			}
			offset += 3;
			break;
		case 255:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			if (used[dst] == 0)
			{
				++label;
				used[dst] = malloc(sizeof(struct label));
				used[dst]->name = malloc(20);
				used[dst]->next = NULL;
				if (oldtable[label])
					used[dst]->name = oldtable[label];
				else
					sprintf(used[dst]->name, "y%d", maptable[label]);
			}
			offset += 3;
			break;
		case 208:
		case 209:
		case 210:
		case 211:
		case 212:
		case 213:
		case 214:
		case 240:
		case 241:
		case 242:
		case 243:
		case 244:
		case 245:
		case 246:
		case 247:
		case 248:
		case 249:
			c2 = getc(fp);
			offset += 2;
			break;
		default:
			offset += 1;
			break;
		}
	}
}


static void dump_table(FILE *fp, int offset, int end)
{
	int c;
	int c2;
	int dst;

	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < end)
	{
		if (used[offset])
		{
			struct label *l;
			for (l = used[offset]; l; l = l->next)
				fprintf(out, "%s:\n", l->name);
		}
		c = fgetc(fp);
		switch (c)
		{
		case 250:
			fprintf(out, "\t\t.dc.b -6\n");
			offset += 1;
			break;
		case 251:
			c = fgetc(fp);
			fprintf(out, "\t\t.dc.b -5,%d\n", c);
			offset += 2;
			break;
		case 252:
			fprintf(out, "\t\t.dc.b ARG_END\n");
			offset += 1;
			break;
		case 253:
			fprintf(out, "\t\t.dc.b ARG_POP\n");
			offset += 1;
			break;
		case 254:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			if (functable[funcused[dst]])
				fprintf(out, "\t\t.dc.b ARG_CALL_FUNC,((%s-jmpbase)>>8)&255,(%s-jmpbase)&255\n", functable[funcused[dst]], functable[funcused[dst]]);
			else
				fprintf(out, "\t\t.dc.b ARG_CALL_FUNC,((f%d-jmpbase)>>8)&255,(f%d-jmpbase)&255\n", funcused[dst], funcused[dst]);
			offset += 3;
			break;
		case 255:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			if (used[dst])
				fprintf(out, "\t\t.dc.b ARG_PUSH,((%s-jmpbase)>>8)&255,(%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);
			else
				fprintf(out, "\t\t.dc.b ARG_PUSH,((x%05x-jmpbase)>>8)&255,(x%05x-jmpbase)&255\n", dst, dst);
			offset += 3;
			break;
		case 208:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b TOK_SUBFUNC_208,%d\n", c2);
			offset += 2;
			break;
		case 209:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b TOK_SUBFUNC_209,%d\n", c2);
			offset += 2;
			break;
		case 210:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b TOK_SUBFUNC_210,%d\n", c2);
			offset += 2;
			break;
		case 211:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b TOK_SUBFUNC_211,%d\n", c2);
			offset += 2;
			break;
		case 212:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b TOK_SUBFUNC_212,%d\n", c2);
			offset += 2;
			break;
		case 213:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b TOK_SUBFUNC_213,%d\n", c2);
			offset += 2;
			break;
		case 214:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b TOK_SUBFUNC_214,%d\n", c2);
			offset += 2;
			break;
		case 240:
		case 241:
		case 242:
		case 243:
		case 244:
		case 245:
		case 246:
		case 247:
		case 248:
		case 249:
			c2 = getc(fp);
			fprintf(out, "\t\t.dc.b %d,%d\n", c, c2);
			offset += 2;
			break;
		case 70:
			fprintf(out, "\t\t.dc.b TOK_LINE_COMMENT\n");
			offset += 1;
			break;
		default:
			fprintf(out, "\t\t.dc.b %d\n", c);
			offset += 1;
			break;
		}
	}
}


int main(void)
{
	FILE *fp;
	int offset;
	int len, i;
	int c;
	int c2;
	int dst;
	int first_char;
	char name[100];

	out = stdout;
	fp = fopen("gbe/gbe373.prg", "rb");
	if (fp == NULL)
		return 1;

	for (i = 0; i < (int)(sizeof(maptable) / sizeof(maptable[0])); i++)
		maptable[i] = i;

	if (1)
	{	
	oldtable[1] = "x13eec";
	oldtable[2] = "x13fd3";
	oldtable[3] = "x14b9a";
	oldtable[4] = "x13f0e";
	oldtable[5] = "x13f2a";
	oldtable[6] = "x13f77";
	oldtable[7] = "x1503f";
	oldtable[8] = "x14b96";
	oldtable[9] = "x13f6b";
	oldtable[10] = "x13f96";
	oldtable[11] = "x13fab";
	oldtable[12] = "x13faa";
	oldtable[13] = "x15252";
	oldtable[14] = "x13fbe";
	oldtable[15] = "x13fe4" ;
	oldtable[16] = "x1402b";
	oldtable[17] = "x14039";
	oldtable[18] = "x14066";
	oldtable[19] = "x14076";
	oldtable[20] = "x14054";
	oldtable[21] = "x1404d";
	oldtable[22] = "x1436a";
	oldtable[23] = "x1405a";
	oldtable[24] = "x1406f";
	oldtable[25] = "x14392";
	oldtable[26] = "x1435e";
	oldtable[27] = "x1438e";
	oldtable[28] = "x14372";
	oldtable[29] = "x14147";
	oldtable[30] = "x1437e";
	oldtable[31] = "x14c92";
	oldtable[32] = "x1413e";
	oldtable[33] = "x15068";
	oldtable[34] = "x1519e";
	oldtable[35] = "x14475";
	oldtable[36] = "x14139";
	oldtable[37] = "x14196";
	oldtable[38] = "x141b0";
	oldtable[39] = "x141b3";
	oldtable[40] = "x14228";
	oldtable[41] = "x14213";
	oldtable[42] = "x14217";
	oldtable[43] = "x143ec";
	oldtable[44] = "x14245";
	oldtable[45] = "x14264";
	oldtable[46] = "x14286";
	oldtable[47] = "x14276";
	oldtable[48] = "x143cb";
	oldtable[49] = "x14311";
	oldtable[50] = "x1433e";
	oldtable[51] = "x14319";
	oldtable[52] = "x14321";
	oldtable[53] = "x14329";
	oldtable[54] = "x143e1";
	oldtable[55] = "x14402";
	oldtable[56] = "x143f7";
	oldtable[57] = "x143d6";
	oldtable[58] = "x14366";
	oldtable[59] = "x14342";
	oldtable[60] = "x143ad";
	oldtable[61] = "x14425";
	oldtable[62] = "x144eb";
	oldtable[63] = "x1442e";
	oldtable[64] = "x1503c";
	oldtable[65] = "x144ba";
	oldtable[66] = "x14386";
	oldtable[67] = "x144dd";
	oldtable[68] = "x144e6";
	oldtable[69] = "x144ff";
	oldtable[70] = "x14570";
	oldtable[71] = "x14503";
	oldtable[72] = "x14532";
	oldtable[73] = "x1455c";
	oldtable[74] = "x1421f";
	oldtable[75] = "x145ce";
	oldtable[76] = "x145f0";
	oldtable[77] = "x144ef";
	oldtable[78] = "x144f6";
	oldtable[79] = "x14b90";
	oldtable[80] = "x14628";
	oldtable[81] = "x58db3_373";
	oldtable[82] = "x1463c";
	oldtable[83] = "x14695";
	oldtable[84] = "x146d3";
	oldtable[85] = "x14692";
	oldtable[86] = "x146c9";
	oldtable[87] = "x146ad";
	oldtable[88] = "x146b4";
	oldtable[89] = "x146c0";
	oldtable[90] = "x1529b";
	oldtable[91] = "x146f8";
	oldtable[92] = "x1470c";
	oldtable[93] = "x15039";
	oldtable[94] = "x14b91";
	oldtable[95] = "x14aa3";
	oldtable[96] = "x147b9";
	oldtable[97] = "x147d8";
	oldtable[98] = "x147e0";
	oldtable[99] = "x143a6";
	oldtable[100] = "x14804";
	oldtable[101] = "x1480d";
	oldtable[102] = "x14816";
	oldtable[103] = "x1481f";
	oldtable[104] = "x14819";
	oldtable[105] = "x14825";
	oldtable[106] = "x15036";
	oldtable[107] = "x148ca";
	oldtable[108] = "x1491e";
	oldtable[109] = "x14917";
	oldtable[110] = "x14926";
	oldtable[111] = "x14947";
	oldtable[112] = "x14951";
	oldtable[113] = "x1434e";
	oldtable[114] = "x14935";
	oldtable[115] = "x14962";
	oldtable[116] = "x14982";
	oldtable[117] = "x143b2";
	oldtable[118] = "x143c6";
	oldtable[119] = "x143bc";
	oldtable[120] = "x14ab1";
	oldtable[121] = "x1433a";
	oldtable[122] = "x14b49";
	oldtable[123] = "x14b4f";
	oldtable[124] = "x14346";
	oldtable[125] = "x14b56";
	oldtable[126] = "x14ba8";
	oldtable[127] = "x14bb2";
	oldtable[128] = "x14bc8";
	oldtable[129] = "x14bd0";
	oldtable[130] = "x1517e";
	oldtable[131] = "x15160";
	oldtable[132] = "y132";
	oldtable[133] = "x14c9f";
	oldtable[134] = "x14cfd";
	oldtable[135] = "x14cf7";
	oldtable[136] = "x14cf4";
	oldtable[137] = "x14d00";
	oldtable[138] = "x14cfa";
	oldtable[139] = "x14d2b";
	oldtable[140] = "x14ee8";
	oldtable[141] = "x1502d";
	oldtable[142] = "x14f19";
	oldtable[143] = "x1440d";
	oldtable[144] = "x14f15";
	oldtable[145] = "x58d5a_372";
	oldtable[146] = "x58d60_372";
	oldtable[147] = "x14411";
	oldtable[148] = "x14f1d";
	oldtable[149] = "x14415";
	oldtable[150] = "x14f1e";
	oldtable[151] = "x1439e";
	oldtable[152] = "x14f2e";
	oldtable[153] = "x14fa6";
	oldtable[154] = "x14f28";
	oldtable[155] = "x59d88_373";
	oldtable[156] = "x14fa3";
	oldtable[157] = "x14f9b";
	oldtable[158] = "x14fe1";
	oldtable[159] = "x14336";
	oldtable[160] = "x14fe9";
	oldtable[161] = "x1501f";
	oldtable[162] = "x15046";
	oldtable[163] = "x15050";
	oldtable[164] = "x15027";
	oldtable[165] = "x1504d";
	oldtable[166] = "x1505b";
	oldtable[167] = "x1506f";
	oldtable[168] = "x15176";
	oldtable[169] = "x15060";
	oldtable[170] = "x15164";
	oldtable[171] = "x1512d";
	oldtable[172] = "x1513f";
	oldtable[173] = "x1514a";
	oldtable[174] = "x15155";
	oldtable[175] = "x1516b";
	oldtable[176] = "x151a6";
	oldtable[177] = "x151eb";
	oldtable[178] = "x151ee";
	oldtable[179] = "x151f6";
	oldtable[180] = "x1524c";
	oldtable[181] = "x15214";
	oldtable[182] = "x1521b";
	oldtable[183] = "x15228";
	oldtable[184] = "x1525b";
	oldtable[185] = "x1523f";
	oldtable[186] = "x15297";
	oldtable[187] = "x152c7";
	oldtable[188] = "x152dc";
	oldtable[189] = "x152d3";
	
	functable[1] = "f13e8c";
	functable[2] = "expect_float_arr";
	functable[3] = "f13d64";
	functable[4] = "expect_float";
	functable[5] = "expect_string_arr";
	functable[6] = "expect_int_arr";
	functable[7] = "expect_word_arr";
	functable[8] = "expect_byte_arr";
	functable[9] = "f140e2";
	functable[10] = "f140d6";
	functable[11] = "f140ee";
	functable[12] = "f140fa";
	functable[13] = "f13da6";
	functable[14] = "expect_string";
	functable[15] = "f13b62";
	functable[16] = "f13d82";
	functable[17] = "f13b68";
	functable[18] = "f13b6c";
	functable[19] = "handle_form_input";
	functable[20] = "f15972";
	functable[21] = "f15976";
	functable[22] = "f1596e";
	functable[23] = "f1595a";
	functable[24] = "expect_int";
	functable[25] = "expect_word";
	functable[26] = "f15488";
	functable[27] = "f13d8e";
	functable[28] = "f13d9a";
	functable[29] = "expect_bool";
	functable[30] = "expect_bool_arr";
	functable[31] = "f13d22";
	functable[32] = "f158f8";
	functable[33] = "f13d6a";
	functable[34] = "f13d76";
	functable[35] = "f13d1c";
	functable[36] = "execute_defint";
	functable[37] = "f14578";
	functable[38] = "f13d5a";
	functable[39] = "f15444";
	functable[40] = "f13bca";
	functable[41] = "f13de4";
	functable[42] = "f15448";
	functable[43] = "f154c4";
	functable[44] = "f154da";
	functable[45] = "f13c9a";
	functable[46] = "f1369a";
	functable[47] = "f14bde";
	functable[48] = "f154aa";
	functable[49] = "f13696";
	functable[50] = "f1369e";
	functable[51] = "f15306";
	functable[52] = "f15310";
	functable[53] = "f152e6";
	}

	first_char = 0;
	offset = 0x5478b;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x80000)
	{
		len = fgetc(fp);
		if (len == 255)
			break;
		for (i = 0; i <= len; i++)
		{
			c = fgetc(fp);
			if (i == 0)
			{
				if (c != first_char)
				{
					if (c >= 'A' && c <= 'Z')
					{
						fprintf(out, "func_%c_table: /* %05x */\n", c - 'A' + 'a', offset);
					} else if (c == '\\')
					{
						fprintf(out, "func_other_table:\n");
					}
					first_char = c;
				}
				fprintf(out, "\t\t.dc.b %d", len);
			}
			fprintf(out, ",'%c'", c);
		}
		c = getc(fp);
		fprintf(out, ",%d", c);
		c = getc(fp);
		fprintf(out, ",%d\n", c);

		offset += len + 4;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	first_char = 0;
	offset = 0x52ebe;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x80000)
	{
		len = fgetc(fp);
		if (len == 255)
			break;
		for (i = 0; i <= len; i++)
		{
			c = fgetc(fp);
			if (i == 0)
			{
				if (c != first_char)
				{
					if (c >= 'A' && c <= 'Z')
					{
						fprintf(out, "cmd_%c_table: /* %05x */\n", c - 'A' + 'a', offset);
					} else if (c == '_')
					{
						fprintf(out, "cmd_other_table:\n");
					}
					first_char = c;
				}
				fprintf(out, "\t\t.dc.b %d\n", len);
				fprintf(out, "\t\t.ascii \"");
			}
			putc(c, out);
			switch (c)
			{
			case ' ':
			case '(':
			case '{':
			case '#':
			case '?':
			case '.':
				c = '_';
				break;
			case '$':
				c = 's';
				break;
			}
			name[i] = c;
		}
		name[len + 1] = '\0';
		if (name[len] == '_')
			name[len--] = '\0';
		if (name[len] == '_')
			name[len--] = '\0';
		fprintf(out, "\"\n");
		c = getc(fp);
		c2 = getc(fp);
		c = c * 256 + c2;
		c /= 2;
		fprintf(out, "\t\t.dc.b ((%d*2)>>8)&255,((%d*2)&255)", c, c);

		c = getc(fp);
		c2 = getc(fp);
		c = c * 256 + c2;
		c = (short)c;
		dst = jmpbase + c;
		{
			struct label *l;
			
			strcat(name, "_args");
			l = malloc(sizeof(struct label));
			l->name = malloc(strlen(name) + 2);
			sprintf(l->name, "y%s", name);
			l->next = used[dst];
			used[dst] = l;
		}
		fprintf(out, ",((%s-jmpbase)>>8)&255,(%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);

		offset += len + 6;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	/* mat cmd table */
	offset = 0x58584;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	for (;;)
	{
		c = getc(fp);
		if (c == 0)
			break;
		strcpy(name, "mat_");
		i = 4;
		name[i++] = c;
		fprintf(out, "\t\t.ascii \"%c", c);
		for (;;)
		{
			c = getc(fp);
			if (c == 0)
				break;
			putc(c, out);
			switch (c)
			{
			case ' ':
			case '(':
			case '{':
			case '#':
			case '?':
			case '$':
			case '.':
				c = '_';
				break;
			}
			name[i++] = c;
		}
		name[i] = '\0';
		fprintf(out, "\"\n\t\t.dc.b 0\n");
		c = getc(fp);
		c2 = getc(fp);
		c = c * 256 + c2;
		dst = jmpbase + c;
		if (used[dst] == 0)
		{
			struct label *l;
			
			strcat(name, "_args");
			l = malloc(sizeof(struct label));
			l->name = malloc(strlen(name) + 2);
			sprintf(l->name, "y%s", name);
			l->next = NULL;
			used[dst] = l;
		}
		fprintf(out, "\t\t.dc.b ((%s-jmpbase)>>8)&255,(%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);
	}
	fprintf(out, "\n");

	if (1)
	{
	scan_table(fp, 0x58654, 0x58857);
	scan_table(fp, 0x58898, 0x58d0f);
	scan_table(fp, 0x58d5e, 0x5944c);
	scan_table(fp, 0x595be, 0x596bf);
	scan_table(fp, 0x59bca, 0x5a18e);

	offset = 0x594e4;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x595be)
	{
		c = getc(fp);
		c2 = getc(fp);
		c = c * 256 + c2;
		c = (short)c;
		dst = jmpbase + c;
		if (used[dst])
		{
			fprintf(out, "\t\t.dc.w %s-jmpbase\n", used[dst]->name);
		} else
		{
			used[dst] = malloc(sizeof(struct label));
			used[dst]->name = malloc(30);
			used[dst]->next = NULL;
			sprintf(used[dst]->name, "x%05x_373", dst);
			fprintf(out, "\t\t.dc.w %s-jmpbase\n", used[dst]->name);
		}
		offset += 2;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	dump_table(fp, 0x58654, 0x58857);
	fprintf(out, "\n");
	dump_table(fp, 0x58898, 0x58d0f);
	fprintf(out, "\n");
	dump_table(fp, 0x58d5e, 0x5944c);
	fprintf(out, "\n");
	dump_table(fp, 0x595be, 0x596bf);
	fprintf(out, "\n");
	dump_table(fp, 0x59bca, 0x5a18e);
	fprintf(out, "\n");
	fprintf(out, "\n");

	/* detokenize table */
	offset = 0x61f96;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	i = 0;
	while (i < 685)
	{
		fprintf(out, "\t/* %3d */ \"", i);
		while ((c = getc(fp)) != 0)
			putc(c, out);
		fprintf(out, "\",\n");
		i++;
	}
	fprintf(out, "\n");
	}

	fprintf(stderr, "label: %d\n", label);
	fprintf(stderr, "funcs: %d\n", funclabel);
	return 0;
}
