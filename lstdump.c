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

#define jmpbase 0x13696

static int maptable[500];

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
		sprintf(used[offset]->name, "%d", maptable[label]);
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
				sprintf(used[dst]->name, "%d", maptable[label]);
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
				fprintf(out, "y%s:\n", l->name);
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
			fprintf(out, "\t.dc.b -2,((f%d-jmpbase)>>8)&255,(f%d-jmpbase)&255\n", funcused[dst], funcused[dst]);
			offset += 3;
			break;
		case 255:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			fprintf(out, "\t.dc.b -1,((y%s-jmpbase)>>8)&255,(y%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);
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
	fp = fopen("lst2gfa.ttp", "rb");
	if (fp == NULL)
		return 1;

	first_char = 0;
	offset = 0x1325c;
	fseek(fp, offset - 0x10000 + 28 + 228, SEEK_SET);
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
	offset = 0x11b58;
	fseek(fp, offset - 0x10000 + 28 + 228, SEEK_SET);
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
			case '$':
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
			l->name = strdup(name);
			l->next = used[dst];
			used[dst] = l;
		}
		fprintf(out, ",((y%s-jmpbase)>>8)&255,(y%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);

		offset += len + 6;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	if (0)
	{
	/* mat cmd table */
	offset = 0x13e02;
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
			strcat(name, "_args");
			used[dst] = malloc(sizeof(struct label));
			used[dst]->name = strdup(name);
			used[dst]->next = NULL;
		}
		fprintf(out, "\t\t.dc.b ((y%s-jmpbase)>>8)&255,(y%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);
	}
	fprintf(out, "\n");

	offset = 0x14c16;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x14c8e)
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
	maptable[182] = 191;
	maptable[181] = 190;
	maptable[180] = 189;
	maptable[179] = 188;
	maptable[178] = 187;
	maptable[177] = 186;
	maptable[176] = 185;
	maptable[175] = 184;
	maptable[174] = 183;
	maptable[173] = 182;
	maptable[172] = 181;
	maptable[171] = 180;
	maptable[170] = 179;
	maptable[169] = 9169;
	maptable[168] = 178;
	maptable[167] = 177;
	maptable[166] = 176;
	maptable[165] = 175;
	maptable[164] = 174;
	maptable[163] = 173;
	maptable[162] = 172;
	maptable[161] = 171;
	maptable[160] = 170;
	maptable[159] = 169;
	maptable[158] = 168;
	maptable[157] = 167;
	maptable[156] = 166;
	maptable[155] = 165;
	maptable[153] = 163;
	maptable[152] = 162;
	maptable[151] = 161;
	maptable[150] = 160;
	maptable[149] = 159;
	maptable[148] = 158;
	maptable[147] = 157;
	maptable[146] = 156;
	maptable[145] = 155;
	maptable[144] = 154;
	maptable[143] = 153;
	maptable[142] = 152;
	maptable[141] = 151;
	maptable[140] = 147;
	maptable[139] = 146;
	maptable[138] = 145;
	maptable[137] = 144;
	maptable[136] = 143;
	maptable[79] = 78;
	maptable[78] = 77;
	maptable[77] = 76;
	maptable[76] = 75;
	maptable[75] = 74;
	maptable[74] = 73;
	maptable[73] = 72;
	maptable[72] = 71;
	maptable[71] = 70;
	maptable[70] = 69;
	maptable[69] = 68;
	maptable[68] = 67;
	maptable[67] = 66;
	
	scan_table(fp, 0x13ed2, 0x140d6);
	scan_table(fp, 0x14116, 0x14578);
	scan_table(fp, 0x145c6, 0x14bde);
	scan_table(fp, 0x14c8e, 0x14d34);
	scan_table(fp, 0x14ee8, 0x152e4);
	
	dump_table(fp, 0x13ed2, 0x140d6, 0);
	fprintf(out, "\n");
	dump_table(fp, 0x14116, 0x14578, 0);
	fprintf(out, "\n");
	dump_table(fp, 0x145c6, 0x14bde, 0);
	fprintf(out, "\n");
	dump_table(fp, 0x14c8e, 0x14d34, 0);
	fprintf(out, "\n");
	dump_table(fp, 0x14ee8, 0x152e4, 0);
	fprintf(out, "\n");
	}

	return 0;
}
