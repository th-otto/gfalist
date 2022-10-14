#include <stdio.h>

FILE *out;

/* 13ed2-140d6 */
/* 14116-14570 */

int main(void)
{
	FILE *fp;
	int offset;
	int len, i;
	int c;
	int c2;
	int dst;
	int first_char;
	
	out = stdout;
	fp = fopen("lst2gfa.ttp", "rb");
	if (fp == NULL)
		return 1;
	offset = 0x1297e;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x16584)
	{
		len = fgetc(fp);
		if (len == 255)
			break;
		fprintf(out, "\t\t.dc.b %d\n", len);
		fprintf(out, "\t\t.ascii \"");
		for (i = 0; i <= len; i++)
		{
			c = fgetc(fp);
			putc(c, out);
		}
		fprintf(out, "\"\n");
		c = getc(fp);
		fprintf(out, "\t\t.dc.b %d", c);
		c = getc(fp);
		fprintf(out, ",%d\n", c);

		offset += len + 6;
	}
	fprintf(out, "offset = %05x\n", offset);

	first_char = 0;
	offset = 0x11afa;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x16584)
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
		}
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
		dst = 0x13696 + c;
		fprintf(out, ",(x%05x-x13696)/256,(x%05x-x13696)&255\n", dst, dst);

		offset += len + 6;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");

	offset = 0x14c16;
	fseek(fp, offset - 0x10000 + 28, SEEK_SET);
	while (offset < 0x14d16)
	{
		c = getc(fp);
		c2 = getc(fp);
		c = c * 256 + c2;
		c = (short)c;
		dst = 0x13696 + c;
		fprintf(out, "\t\t.dc.w x%05x-x13696\n", dst);
		offset += 2;
	}
	fprintf(out, "offset = %05x\n", offset);
	fprintf(out, "\n");
	
	return 0;
}
