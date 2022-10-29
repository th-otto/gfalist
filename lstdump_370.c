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

#define jmpbase 0x53c6c

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
		used[offset]->name = malloc(30);
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
				fprintf(out, "y%s:\n", l->name);
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
			fprintf(out, "\t\t.dc.b -4\n");
			offset += 1;
			break;
		case 253:
			fprintf(out, "\t\t.dc.b -3\n");
			offset += 1;
			break;
		case 254:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			fprintf(out, "\t\t.dc.b -2,((f%d-jmpbase)>>8)&255,(f%d-jmpbase)&255\n", funcused[dst], funcused[dst]);
			offset += 3;
			break;
		case 255:
			c = getc(fp);
			c2 = getc(fp);
			c = c * 256 + c2;
			c = (short)c;
			dst = jmpbase + c;
			fprintf(out, "\t\t.dc.b -1,((y%s-jmpbase)>>8)&255,(y%s-jmpbase)&255\n", used[dst]->name, used[dst]->name);
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
			fprintf(out, "\t\t.dc.b %d,%d\n", c, c2);
			offset += 2;
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
	fp = fopen("gbe/gbe370.prg", "rb");
	if (fp == NULL)
		return 1;

	for (i = 0; i < (int)(sizeof(maptable) / sizeof(maptable[0])); i++)
		maptable[i] = i;

	first_char = 0;
	offset = 0x51c8a;
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
	offset = 0x50c42;
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

	if (1)
	{
	/* mat cmd table */
	offset = 0x543e0;
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

	offset = 0x55256;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x552f8)
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
	
	scan_table(fp, 0x544b0, 0x546b2);
	scan_table(fp, 0x546f4, 0x54b6c);
	scan_table(fp, 0x54bba, 0x551fe);
	scan_table(fp, 0x552f8, 0x553d4);
	scan_table(fp, 0x55714, 0x55b86);
	
	dump_table(fp, 0x544b0, 0x546b2);
	fprintf(out, "\n");
	dump_table(fp, 0x546f4, 0x54b6c);
	fprintf(out, "\n");
	dump_table(fp, 0x54bba, 0x551fe);
	fprintf(out, "\n");
	dump_table(fp, 0x552f8, 0x553d4);
	fprintf(out, "\n");
	dump_table(fp, 0x55714, 0x55b86);
	fprintf(out, "\n");
	}

	return 0;
}
