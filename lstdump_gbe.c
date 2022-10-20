#include <stdio.h>
#include <string.h>
#include <stdlib.h>

FILE *out;
char *used[1048576];
int funcused[1048576];
int label;
int funclabel;

#define jmpbase 0x5701f

static void scan_table(FILE *fp, int offset, int end)
{
	int c;
	int c2;
	int dst;

	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	if (used[offset] == 0)
	{
		++label;
		used[offset] = malloc(20);
		sprintf(used[offset], "%d", label);
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
				used[dst] = malloc(20);
				sprintf(used[dst], "%d", label);
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
			fprintf(out, "y%s:\n", used[offset]);
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
			fprintf(out, "\t.dc.b -2,(f%d-jmpbase)/256,(f%d-jmpbase)&255\n", funcused[dst], funcused[dst]);
			offset += 3;
			break;
		case 255:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			fprintf(out, "\t.dc.b -1,(y%s-jmpbase)/256,(y%s-jmpbase)&255\n", used[dst], used[dst]);
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
		if (used[dst] == 0)
		{
			strcat(name, "_args");
			used[dst] = strdup(name);
		}
		fprintf(out, ",(y%s-jmpbase)/256,(y%s-jmpbase)&255\n", used[dst], used[dst]);

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
			used[dst] = strdup(name);
		}
		fprintf(out, "\t\t.dc.b (y%s-jmpbase)/256,(y%s-jmpbase)&255\n", used[dst], used[dst]);
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
	
	scan_table(fp, 0x57864, 0x57a67);
	scan_table(fp, 0x57aa8, 0x57f20);
	scan_table(fp, 0x57f6e, 0x592aa);
	scan_table(fp, 0x58798, 0x5883e);
	scan_table(fp, 0x58d18, 0x592a8);

	dump_table(fp, 0x57864, 0x57a67, 0x43992);
	fprintf(out, "\n");
	dump_table(fp, 0x57aa8, 0x57f20, 0x43992);
	fprintf(out, "\n");
	dump_table(fp, 0x57f6e, 0x592aa, 0x439A8);
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
