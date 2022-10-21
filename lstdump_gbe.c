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

#define jmpbase 0x5701f

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
		used[offset]->name = malloc(20);
		used[offset]->next = NULL;
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


static void dump_table(FILE *fp, int offset, int end, int diffbase)
{
	int c;
	int c2;
	int dst;

	(void)diffbase;
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
			fprintf(out, "\t.dc.b -6\n");
			offset += 1;
			break;
		case 251:
			c = fgetc(fp);
			fprintf(out, "\t.dc.b -5,%d\n", c);
			offset += 2;
			break;
		case 252:
			fprintf(out, "\t.dc.b -4\n");
			offset += 1;
			break;
		case 253:
			fprintf(out, "\t.dc.b -3\n");
			offset += 1;
			break;
		case 254:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			if (functable[funcused[dst]])
				fprintf(out, "\t.dc.b -2,(%s-jmpbase)/256,(%s-jmpbase)&255\n", functable[funcused[dst]], functable[funcused[dst]]);
			else
				fprintf(out, "\t.dc.b -2,(f%d-jmpbase)/256,(f%d-jmpbase)&255\n", funcused[dst], funcused[dst]);
			offset += 3;
			break;
		case 255:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			fprintf(out, "\t.dc.b -1,(%s-jmpbase)/256,(%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);
			offset += 3;
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
			fprintf(out, "\t.dc.b %d,%d\n", c, c2);
			offset += 2;
			break;
		default:
			fprintf(out, "\t.dc.b %d\n", c);
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
	fp = fopen("gbe/gbe.prg", "rb");
	if (fp == NULL)
		return 1;

	first_char = 0;
	offset = 0x540f7;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x70000)
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

		offset += len + 6;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	first_char = 0;
	offset = 0x5292c;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x70000)
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
			case '$':
			case '.':
				c = '_';
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
		fprintf(out, "\t\t.dc.b ((%d*2)/256),((%d*2)&255)", c, c);

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
		fprintf(out, ",(%s-jmpbase)/256,(%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);

		offset += len + 6;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	/* mat cmd table */
	offset = 0x57794;
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
		fprintf(out, "\t\t.dc.b (%s-jmpbase)/256,(%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);
	}
	fprintf(out, "\n");

	offset = 0x586c4;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x58798)
	{
		c = getc(fp);
		c2 = getc(fp);
		c = c * 256 + c2;
		c = (short)c;
		dst = jmpbase + c;
		fprintf(out, "\t\t.dc.w x%05x-jmpbase\n", dst);
		offset += 2;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	for (i = 0; i < (int)(sizeof(maptable) / sizeof(maptable[0])); i++)
		maptable[i] = i;
	
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
	oldtable[15] = "x13fe4";
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
	oldtable[31] = 0;
	oldtable[32] = 0;
	oldtable[33] = 0;
	oldtable[34] = 0;
	oldtable[35] = 0;
	oldtable[36] = 0;
	oldtable[37] = 0;
	oldtable[38] = 0;
	oldtable[39] = 0;
	oldtable[40] = 0;
	oldtable[41] = 0;
	oldtable[42] = 0;
	oldtable[43] = 0;
	oldtable[44] = 0;
	oldtable[45] = 0;
	oldtable[46] = 0;
	oldtable[47] = 0;
	oldtable[48] = 0;
	oldtable[49] = 0;
	oldtable[50] = 0;
	oldtable[51] = 0;
	oldtable[52] = 0;
	oldtable[53] = 0;
	oldtable[54] = 0;
	oldtable[55] = 0;
	oldtable[56] = 0;
	oldtable[57] = 0;
	oldtable[58] = 0;
	oldtable[59] = 0;
	oldtable[60] = 0;
	oldtable[61] = 0;
	oldtable[62] = 0;
	oldtable[63] = 0;
	oldtable[64] = 0;
	oldtable[65] = 0;
	oldtable[66] = 0;
	oldtable[67] = 0;
	oldtable[68] = 0;
	oldtable[69] = 0;
	oldtable[70] = 0;
	oldtable[71] = 0;
	oldtable[72] = 0;
	oldtable[73] = 0;
	oldtable[74] = 0;
	oldtable[75] = 0;
	oldtable[76] = 0;
	oldtable[77] = 0;
	oldtable[78] = 0;
	oldtable[79] = 0;
	oldtable[80] = 0;
	oldtable[81] = 0;
	oldtable[82] = 0;
	oldtable[83] = 0;
	oldtable[84] = 0;
	oldtable[85] = 0;
	oldtable[86] = 0;
	oldtable[87] = 0;
	oldtable[88] = 0;
	oldtable[89] = 0;
	oldtable[90] = 0;
	oldtable[91] = 0;
	oldtable[92] = 0;
	oldtable[93] = 0;
	oldtable[94] = 0;
	oldtable[95] = 0;
	oldtable[96] = 0;
	oldtable[97] = 0;
	oldtable[98] = 0;
	oldtable[99] = 0;
	oldtable[100] = 0;
	oldtable[101] = 0;
	oldtable[102] = 0;
	oldtable[103] = 0;
	oldtable[104] = 0;
	oldtable[105] = 0;
	oldtable[106] = 0;
	oldtable[107] = 0;
	oldtable[108] = 0;
	oldtable[109] = 0;
	oldtable[110] = 0;
	oldtable[111] = 0;
	oldtable[112] = 0;
	oldtable[113] = 0;
	oldtable[114] = 0;
	oldtable[115] = 0;
	oldtable[116] = 0;
	oldtable[117] = 0;
	oldtable[118] = 0;
	oldtable[119] = 0;
	oldtable[120] = 0;
	oldtable[121] = 0;
	oldtable[122] = 0;
	oldtable[123] = 0;
	oldtable[124] = 0;
	oldtable[125] = 0;
	oldtable[126] = 0;
	oldtable[127] = 0;
	oldtable[128] = 0;
	oldtable[129] = 0;
	oldtable[130] = 0;
	oldtable[131] = 0;
	oldtable[132] = 0;
	oldtable[133] = 0;
	oldtable[134] = 0;
	oldtable[135] = 0;
	oldtable[136] = 0;
	oldtable[137] = 0;
	oldtable[138] = 0;
	oldtable[139] = 0;
	oldtable[140] = 0;
	oldtable[141] = 0;
	oldtable[142] = 0;
	oldtable[143] = 0;
	oldtable[144] = 0;
	oldtable[145] = 0;
	oldtable[146] = 0;
	oldtable[147] = 0;
	oldtable[148] = 0;
	oldtable[149] = 0;
	oldtable[150] = 0;
	oldtable[151] = 0;
	oldtable[152] = 0;
	oldtable[153] = 0;
	oldtable[154] = 0;
	oldtable[155] = 0;
	oldtable[156] = 0;
	oldtable[157] = 0;
	oldtable[158] = 0;
	oldtable[159] = 0;
	oldtable[160] = 0;
	oldtable[161] = 0;
	oldtable[162] = 0;
	oldtable[163] = 0;
	oldtable[164] = 0;
	oldtable[165] = 0;
	oldtable[166] = 0;
	oldtable[167] = 0;
	oldtable[168] = 0;
	oldtable[169] = 0;
	oldtable[170] = 0;
	oldtable[171] = 0;
	oldtable[172] = 0;
	oldtable[173] = 0;
	oldtable[174] = 0;
	oldtable[175] = 0;
	oldtable[176] = 0;
	oldtable[177] = 0;
	oldtable[178] = 0;
	oldtable[179] = 0;
	oldtable[180] = 0;
	oldtable[181] = 0;
	oldtable[182] = 0;
	oldtable[183] = 0;
	oldtable[184] = 0;
	
	functable[1] = "f13e8c";
	functable[2] = "f15474";
	functable[3] = "f13d64";
	functable[4] = "f15464";
	functable[5] = "f15478";
	functable[6] = "f1547c";
	functable[7] = "f1548c";
	functable[8] = "f15490";
	functable[9] = "f140e2";
	functable[10] = "f140d6";
	functable[11] = "f140ee";
	functable[12] = "f140fa";
	functable[13] = 0;
	functable[14] = 0;
	functable[15] = 0;
	functable[16] = 0;
	functable[17] = 0;
	functable[18] = 0;
	functable[19] = 0;
	functable[20] = 0;
	functable[21] = 0;
	functable[22] = 0;
	functable[23] = 0;
	functable[24] = 0;
	functable[25] = 0;
	functable[26] = 0;
	functable[27] = 0;
	functable[28] = 0;
	functable[29] = 0;
	functable[30] = 0;
	functable[31] = 0;
	functable[32] = 0;
	functable[33] = 0;
	functable[34] = 0;
	functable[35] = 0;
	functable[36] = 0;
	functable[37] = 0;
	functable[38] = 0;
	functable[39] = 0;
	functable[40] = 0;
	functable[41] = 0;
	functable[42] = 0;
	functable[43] = 0;
	functable[44] = 0;
	functable[45] = 0;
	functable[46] = 0;
	functable[47] = 0;
	functable[48] = 0;
	functable[49] = 0;
	functable[50] = 0;
	functable[51] = 0;
	
	scan_table(fp, 0x57864, 0x57a67);
	scan_table(fp, 0x57aa8, 0x57f20);
	scan_table(fp, 0x57f6e, 0x5862c);
	scan_table(fp, 0x58798, 0x5883e);
	scan_table(fp, 0x58d18, 0x592a8);

	dump_table(fp, 0x57864, 0x57a67, 0x43992);
	fprintf(out, "\n");
	dump_table(fp, 0x57aa8, 0x57f20, 0x43992);
	fprintf(out, "\n");
	dump_table(fp, 0x57f6e, 0x5862c, 0x439A8);
	fprintf(out, "\n");
	dump_table(fp, 0x58798, 0x5883e, 0x43B0A);
	fprintf(out, "\n");
	dump_table(fp, 0x58d18, 0x592a8, 0x43E30);
	fprintf(out, "\n");
	fprintf(out, "\n");

	/* detokenize table */
	offset = 0x610a8;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	i = 0;
	while (i < 639)
	{
		fprintf(out, "\t/* %3d */ \"", i);
		while ((c = getc(fp)) != 0)
			putc(c, out);
		fprintf(out, "\",\n");
		i++;
	}
	fprintf(out, "\n");
	
	return 0;
}
