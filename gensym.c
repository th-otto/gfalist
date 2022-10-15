#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#ifndef O_BINARY
#  ifdef _O_BINARY
#    define O_BINARY _O_BINARY
#  else
#    define O_BINARY 0
#  endif
#endif 

#define NEWBUFSIZ	16384L

static unsigned char mybuf[NEWBUFSIZ];
static int verbose;

static char tmpname[1024];

#if defined(__atarist__) && defined(__GNUC__)
long _stksize = 30000;
#endif

struct aexec
{
	short a_magic;						/* magic number */
	unsigned long a_text;				/* size of text segment */
	unsigned long a_data;				/* size of initialized data */
	unsigned long a_bss;				/* size of uninitialized data */
	unsigned long a_syms;				/* size of symbol table */
	unsigned long a_AZero1;				/* always zero */
	unsigned long a_AZero2;				/* always zero */
	unsigned short a_isreloc;			/* is reloc info present */
};

#define	CMAGIC	0x601A					/* contiguous text */

#define SIZEOF_SHORT 2
#define SIZEOF_LONG  4

#define SIZEOF_AEXEC (SIZEOF_SHORT + (6 * SIZEOF_LONG) + SIZEOF_SHORT)


struct sym {
	struct sym *next;
	short flags;
	long addr;
	char *name;
};
static struct sym *syms;
static long newsymsize;
#define SIZEOF_ASYM 14


static char *f_basename(char *name)
{
	char *p1, *p2;

	p1 = strrchr(name, '/');
	p2 = strrchr(name, '\\');
	if (p1 == NULL || p2 > p1)
		p1 = p2;
	if (p1 == NULL)
		p1 = name;
	else
		p1++;
	return p1;
}


static unsigned short read_beword(const unsigned char *p)
{
	return (p[0] << 8) | p[1];
}


static unsigned long read_belong(const unsigned char *p)
{
	return ((unsigned long)read_beword(p) << 16) | read_beword(p + 2);
}


static void write_beword(unsigned char *p, unsigned short v)
{
	p[0] = (v >> 8) & 0xff;
	p[1] = (v     ) & 0xff;
}


static void write_belong(unsigned char *p, unsigned long v)
{
	p[0] = (unsigned char)((v >> 24) & 0xff);
	p[1] = (unsigned char)((v >> 16) & 0xff);
	p[2] = (unsigned char)((v >>  8) & 0xff);
	p[3] = (unsigned char)((v      ) & 0xff);
}


/*
 * read header -- return -1 on error
 */
static int read_head(int fd, struct aexec *a)
{
	unsigned char buf[SIZEOF_AEXEC];
	
	if (read(fd, buf, SIZEOF_AEXEC) != SIZEOF_AEXEC)
		return -1;
	a->a_magic = read_beword(buf);
	a->a_text = read_belong(buf + 2);
	a->a_data = read_belong(buf + 6);
	a->a_bss = read_belong(buf + 10);
	a->a_syms = read_belong(buf + 14);
	a->a_AZero1 = read_belong(buf + 18);
	a->a_AZero2 = read_belong(buf + 22);
	a->a_isreloc = read_beword(buf + 26);

	return SIZEOF_AEXEC;
}


static int write_head(int fd, const struct aexec *a)
{
	unsigned char buf[SIZEOF_AEXEC];
	
	write_beword(buf, a->a_magic);
	write_belong(buf + 2, a->a_text);
	write_belong(buf + 6, a->a_data);
	write_belong(buf + 10, a->a_bss);
	write_belong(buf + 14, a->a_syms);
	write_belong(buf + 18, a->a_AZero1);
	write_belong(buf + 22, a->a_AZero2);
	write_beword(buf + 26, a->a_isreloc);

	if (write(fd, buf, SIZEOF_AEXEC) != SIZEOF_AEXEC)
		return -1;
	return SIZEOF_AEXEC;
}


/*
 * copy from, to in NEWBUFSIZ chunks upto bytes or EOF whichever occurs first
 * returns # of bytes copied
 */
static long copy(int from, int to, long bytes)
{
	long todo;
	long done = 0L;
	long remaining = bytes;
	long actual;

	while (done != bytes)
	{
		todo = (remaining > NEWBUFSIZ) ? NEWBUFSIZ : remaining;
		if ((actual = read(from, mybuf, todo)) != todo)
		{
			if (actual < 0)
			{
				fprintf(stderr, "Error Reading\n");
				return -done;
			}
		}
		if (write(to, mybuf, actual) != actual)
		{
			fprintf(stderr, "Error Writing\n");
			return -done;
		}
		done += actual;
		if (actual != todo)				/* eof reached */
			return done;
		remaining -= actual;
	}
	return done;
}


/* copy TOS relocation table from `from` to `to`. Copy bytes until NUL byte or
   first 4 bytes if == 0l.
   returns length of relocation table or -1 in case of an error */

static long copy_relocs(const char *name, int from, int to)
{
	long res = 0;
	long bytes;
	long rbytes = 0;
	long first_relo;
	long reloc_pos;
	
	res = read(from, mybuf, SIZEOF_LONG);
	if (res != 0 && res != SIZEOF_LONG)
	{
		fprintf(stderr, "Error reading\n");
		return -1;
	}

	if (res == 0)
	{
		/* I think empty relocation tables are allowed,
		   but could cause trouble with certain programs */
		fprintf(stderr, "Warning: %s: No relocation table\n", name);
		return 0;
	}
	first_relo = read_belong(mybuf);
	if (first_relo != 0)
	{
		write_belong(mybuf, first_relo);
	}
	
	if (write(to, mybuf, res) != res)
	{
		fprintf(stderr, "%s: Error writing\n", name);
		return -1;
	}

	rbytes = SIZEOF_LONG;
	if (first_relo == 0)
		return rbytes;						/* This is a clean version of an empty
										   relocation table                   */

	reloc_pos = SIZEOF_AEXEC + first_relo;

	for (;;)
	{
		if ((bytes = read(from, mybuf, 1)) < 0)
		{
			fprintf(stderr, "%s: Error reading\n", name);
			return -1;
		}
		if (bytes == 0)
		{
			fprintf(stderr, "Warning: %s: Unterminated relocation table\n", name);
			return rbytes;
		}
		if (write(to, mybuf, bytes) != bytes)
		{
			fprintf(stderr, "%s: Error writing\n", name);
			return -1;
		}
		rbytes += bytes;
		if (mybuf[0] == 0)
			break;
		if (mybuf[0] == 1)
		{
			reloc_pos += 254;
		} else
		{
			reloc_pos += mybuf[0];
		}
	}
	return rbytes;
}


/* Type flags for struct asym/xsym.  This is really stupid.  No problem
   to define a symbol that belongs to the BSS as well as to the text
   section _and_ the data section.  Who invented this? */
#define A_UNDF   0x0000      /* Undefined. */
#define A_BSS    0x0100      /* BSS. */
#define A_TEXT   0x0200      /* Text segment. */
#define A_DATA   0x0400      /* Data segment. */
#define A_EXT    0x0800      /* External. */
#define A_EQREG  0x1000      /* Equated register. */
#define A_GLOBL  0x2000      /* Global. */
#define A_EQU    0x4000      /* Equated (absolute with GNU binutils). */
#define A_DEF    0x8000      /* Defined. */

#define A_LNAM   0x0048      /* GST compatible long name.  If the a_type
                                member of struct asym/xsym && A_LNAM is
                                non-zero it is a long name.  A maximum
                                of 14 bytes follow a_value. */

static int read_symbols(const char *filename)
{
	FILE *fp;
	char line[1024];
	int len;
	char *type;
	char *name;
	long lineno;
	int ret = 1;
	int flags;
	long addr;
	struct sym **last;
	struct sym *sym;
	char *end;

	fp = fopen(filename, "r");
	if (fp == NULL)
	{
		fprintf(stderr, "%s: %s\n", filename, strerror(errno));
		return 0;
	}
	lineno = 0;
	newsymsize = 0;
	syms = NULL;
	last = &syms;
	while (ret != 0 && fgets(line, sizeof(line), fp) != NULL)
	{
		lineno++;
		/* skip comments */
		if (*line == ';')
			continue;
		len = (int)strlen(line);
		while (len > 0 && (line[len-1] == 0x0d || line[len-1] == 0x0a || line[len-1] == ' ' || line[len-1] == '\t'))
			len--;
		/* skip empty lines */
		if (len == 0)
			continue;
		line[len] = '\0';
		addr = strtol(line, &end, 16);
		if (*end != ' ' && *end != '\t')
		{
			fprintf(stderr, "%s: %ld: invalid symbol address\n", filename, lineno);
			ret = 0;
			break;
		}
		type = strchr(line, ' ');
		if (type == NULL)
			type = strchr(line, '\t');
		if (type == NULL)
		{
			fprintf(stderr, "%s: %ld: missing symbol type\n", filename, lineno);
			ret = 0;
			break;
		}
		*type++ = '\0';
		while (*type == ' ' || *type == '\t')
			type++;
		switch (*type)
		{
		case 't':
			flags = A_TEXT | A_DEF;
			break;
		case 'T':
			flags = A_TEXT | A_GLOBL | A_DEF;
			break;
		case 'd':
			flags = A_DATA | A_DEF;
			break;
		case 'D':
			flags = A_DATA | A_GLOBL | A_DEF;
			break;
		case 'b':
			flags = A_BSS | A_DEF;
			break;
		case 'B':
			flags = A_BSS | A_GLOBL | A_DEF;
			break;
		case 'a':
			flags = A_EQU | A_DEF;
			break;
		case 'A':
			flags = A_EQU | A_GLOBL | A_DEF;
			break;
		default:
			fprintf(stderr, "%s: %ld: unsupported symtype %c\n", filename, lineno, *type);
			flags = 0;
			ret = 0;
			break;
		}
		if (ret == 0)
			break;
		type++;
		while (*type == ' ' || *type == '\t')
			type++;
		name = type;
		len = (int)strlen(name);
		if (len > 22)
		{
			fprintf(stderr, "warning: %s will be truncated\n", name);
			len = 22;
		}
		if (len == 0)
		{
			fprintf(stderr, "%s: %ld: missing symbol name\n", filename, lineno);
			ret = 0;
			break;
		}
		sym = (struct sym *)malloc(sizeof(*sym));
		if (sym == NULL)
		{
			fprintf(stderr, "%s\n", strerror(errno));
			ret = 0;
			break;
		}
		sym->flags = flags;
		sym->addr = addr;
		sym->name = strdup(name);
		sym->next = NULL;
		*last = sym;
		last = &sym->next;
		newsymsize += SIZEOF_ASYM;
		if (len > 8)
		{
			sym->flags |= A_LNAM;
			newsymsize += SIZEOF_ASYM;
		}
	}
	fclose(fp);
	return ret;
}


static int write_symbols(int fd)
{
	struct sym *sym;
	size_t len;
	unsigned char asym[SIZEOF_ASYM];
	
	for (sym = syms; sym != NULL; sym = sym->next)
	{
		len = strlen(sym->name);
		memset(asym, 0, sizeof(asym));
		memcpy(asym, sym->name, len > 8 ? 8 : len);
		write_beword(asym + 8, sym->flags);
		write_belong(asym + 10, sym->addr);
		if (write(fd, asym, SIZEOF_ASYM) != SIZEOF_ASYM)
			return -1;
		if (sym->flags & A_LNAM)
		{
			memset(asym, 0, sizeof(asym));
			len -= 8;
			memcpy(asym, sym->name + 8, len > SIZEOF_ASYM ? SIZEOF_ASYM : len);
			if (write(fd, asym, SIZEOF_ASYM) != SIZEOF_ASYM)
				return -1;
		}
	}
	
	return 1;
}


static int gensym(const char *name)
{
	int fd;
	int tfd;
	long count, rbytes, sbytes;
	struct aexec ahead;
	
	if ((fd = open(name, O_RDONLY | O_BINARY, 0755)) < 0)
	{
		perror(name);
		return 1;
	}
	if ((tfd = open(tmpname, O_RDWR | O_BINARY | O_TRUNC | O_CREAT, 0755)) < 0)
	{
		perror(tmpname);
		close(fd);
		return 1;
	}
	
	/*
	 * read g_jump_entry and first 6 longs of exec header
	 */
	if (read_head(fd, &ahead) < 0)
	{
		perror(name);
		close(tfd);
		close(fd);
		return 1;
	}
	if (ahead.a_magic != CMAGIC)
	{
		fprintf(stderr, "%s: Bad Magic number\n", name);
		close(tfd);
		close(fd);
		return 1;
	}
	sbytes = ahead.a_syms;
	if (verbose)
	{
		printf("%s: text=0x%lx, data=0x%lx, syms=0x%lx\n", name, ahead.a_text, ahead.a_data, ahead.a_syms);
	}

	ahead.a_syms = newsymsize;
	if (write_head(tfd, &ahead) < 0)
	{
		close(tfd);
		close(fd);
		return 1;
	}

	count = ahead.a_text + ahead.a_data;
	if (copy(fd, tfd, count) != count)
	{
		close(tfd);
		close(fd);
		return 1;
	}
	if (verbose)
	{
		printf("%s: copied 0x%lx bytes text+data\n", name, count);
	}
	if (lseek(fd, sbytes, SEEK_CUR) < 0)
	{
		fprintf(stderr, "%s: seek error\n", name);
		close(tfd);
		close(fd);
		return 1;
	}
	if (sbytes != 0 && verbose)
	{
		printf("%s: skipped 0x%lx bytes symbols\n", name, sbytes);
	}
	if (write_symbols(tfd) < 0)
	{
		close(tfd);
		close(fd);
		return 1;
	}
	if (newsymsize != 0 && verbose)
	{
		printf("%s: wrote 0x%lx bytes new symbols\n", name, newsymsize);
	}
	rbytes = 0;
	if (ahead.a_isreloc == 0)
	{
		if ((rbytes = copy_relocs(name, fd, tfd)) < 0)
		{
			close(tfd);
			close(fd);
			return 1;
		}
		if (verbose)
		{
			printf("%s: copied 0x%lx bytes relocation table\n", name, rbytes);
		}
	}
	if (verbose)
	{
		unsigned long pos, size;
		
		pos = lseek(fd, 0L, SEEK_CUR);
		lseek(fd, 0L, SEEK_END);
		size = lseek(fd, 0L, SEEK_CUR);
		lseek(fd, pos, SEEK_SET);
		if (size > pos)
		{
			printf("%s: skipped 0x%lx bytes trailer\n", name, size - pos);
		}
	}

	close(tfd);
	close(fd);
	if (rename(tmpname, name) == 0)
		return 0;						/* try to rename it */
	if ((fd = open(name, O_WRONLY | O_BINARY | O_TRUNC | O_CREAT, 0755)) < 0)
	{
		perror(name);
		return 1;
	}
	if ((tfd = open(tmpname, O_RDONLY | O_BINARY, 0755)) < 0)
	{
		perror(tmpname);
		close(fd);
		return 1;
	}

	count = SIZEOF_AEXEC + ahead.a_text + ahead.a_data + rbytes;
	if (copy(tfd, fd, count) != count)
	{
		close(tfd);
		close(fd);
		return 1;
	}
	close(tfd);
	close(fd);
	return 0;
}


static void usage(const char *s)
{
	fprintf(stderr, "%s", s);
	fprintf(stderr, "Usage: gensym <file> <symbols>\n");
	fprintf(stderr, "Generate symbols from text file\n");
	exit(1);
}


int main(int argc, char **argv)
{
	int status = 0;
	const char *filename;
	const char *symname;
	char *base;

	verbose = 0;
	
	/* process arguments */
	while (argv++, --argc)
	{
		if ('-' != **argv)
			break;
		(*argv)++;
		switch (**argv)
		{
		case 'v':
			verbose = 1;
			break;
		default:
			usage("");
			break;
		}
	}

	if (argc != 2)
	{
		usage("");
	}
	
	filename = *argv++;
	symname = *argv++;
	if (read_symbols(symname) == 0)
		return 1;
	strcpy(tmpname, filename);
	base = f_basename(tmpname);
	strcpy(base, "STXXXXXX");
	mktemp(tmpname);
	status |= gensym(filename);
	unlink(tmpname);

	return status;
}
