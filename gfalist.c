#include <stdio.h>
#include <stdarg.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <unistd.h>
#include <getopt.h>
#include <string.h>
#include <errno.h>

#include "sky.h"
#include "tables.h"
#include "version.h"

static char const program_name[] = "gfalist";
static struct {
	const char *name;
	int number;
	int val;
} const version_names[] = {
	{ "3.6", 360, TARGET_VER36 },
	{ "3.70", 370, TARGET_VER370 },
	{ "3.71", 371, TARGET_VER371 },
	{ "3.72", 372, TARGET_VER372 },
	{ "3.73", 373, TARGET_VER373 },
	{ "3.74", 374, TARGET_VER374 }
};


__attribute__((format(printf, 1, 2)))
static int output(const char *format, ...)
{
	va_list ap;
	int result;

	va_start(ap, format);
	result = vfprintf(stderr, format, ap);
	va_end(ap);

	return result;
}


/* Simple variable resolver */
static char *rvsimp(struct gfainf *gi, unsigned short type, unsigned short var)
{
	static char vbuf[11];		/* vffff_ffff\0 */

	(void)gi;
	sprintf(vbuf, "v%x_%x", type, var);
	return vbuf;
}


static int process(struct gfainf *gi)
{
	struct gfalin gl;
	unsigned char libuf[2];				/* Line info block buffer */
	unsigned char gibuf[2];				/* General info block buffer */
	unsigned char dibuf[4 * 38 + 10];
	unsigned char slb[256];				/* Preallocated buffer for small lines */
	uint32_t fldsize;
	int32_t tokensize;
	FILE *ist;
	int retcode = TRUE;
	unsigned short maxlinesize;

	gl.depth = 0;						/* Start with zero depth */

	if (gi->filename == NULL)
	{
		ist = stdin;
	} else if ((ist = fopen(gi->filename, "rb")) == NULL)
	{
		output("%s: %s: %s\n", program_name, gi->filename, strerror(errno));
		return FALSE;
	}

	if ((gi->flags & TP_VERB) != 0x00)
		output("Scanning header (%i)\n", (int)sizeof(gi->hdr));

	/* Read one general info block */

	fread(gibuf, 2, 1, ist);

	if ((gi->flags & TP_VERB) != 0x00)
		output("  Processing GI-Block\n");

	gf4tp_getgi(gi, gibuf);

	/* Cannot process files older than version 4 yet. */
	switch (gi->hdr.vers)
	{
	case 1:
	case 2:
	case 70:
		output("Version %d files not supported yet.\n", gi->hdr.vers);
		if (ist != stdin)
			fclose(ist);
		return FALSE;
	case 3:
	case 4:
		break;
	default:
		output("Unknown version %d in header.\n", gi->hdr.vers);
		if (ist != stdin)
			fclose(ist);
		return FALSE;
	}

	fread(dibuf, gfarecl[gi->hdr.vers].num_offsets * 4 + gfarecl[gi->hdr.vers].len_magic, 1, ist);

	gf4tp_getdi(gi, dibuf);

	if (gi->flags & TP_VERB)
		output("  Processing DI-Block (%d, %s)\n", gi->hdr.vers, gi->hdr.mag);

	if (gi->hdr.sep[OFF_TYPE_FIRST + MAX_TYPES] < gi->hdr.sep[OFF_TYPE_FIRST])
	{
		output("invalid offsets: %lu < %lu\n", (unsigned long)gi->hdr.sep[OFF_TYPE_FIRST + MAX_TYPES], (unsigned long)gi->hdr.sep[OFF_TYPE_FIRST]);
		retcode = FALSE;
	} else
	{
		gi->poolsize = gi->hdr.sep[OFF_TYPE_FIRST + MAX_TYPES] - gi->hdr.sep[OFF_TYPE_FIRST];
	}

	if (gi->poolsize > 0)
	{
		gi->pool = malloc(gi->poolsize);
		if (gi->pool == NULL)
		{
			output("out of memory\n");
			retcode = FALSE;
		}
	}

	if (retcode)
	{
		if ((gi->flags & TP_VERB) != 0x00)
			output("  Reading identifiers (%lu Bytes)\n", (unsigned long)gi->poolsize);
	
		/* Read identifier information block consisting of cnt characters */
		fread(gi->pool, 1, gi->poolsize, ist);
	
		if (gi->hdr.sep[OFF_PTR_FIRST + MAX_TYPES] < gi->hdr.sep[OFF_PTR_FIRST])
		{
			output("invalid offsets: %lu < %lu\n", (unsigned long)gi->hdr.sep[OFF_PTR_FIRST + MAX_TYPES], (unsigned long)gi->hdr.sep[OFF_PTR_FIRST]);
			retcode = FALSE;
			fldsize = 0;
		} else
		{
			fldsize = gi->hdr.sep[OFF_PTR_FIRST + MAX_TYPES] - gi->hdr.sep[OFF_PTR_FIRST];
		}

		if (fldsize > 0)
		{
			gi->fld = malloc((fldsize / 4) * sizeof(gi->fld[0]));
			if (gi->fld == NULL)
			{
				output("out of memory\n");
				retcode = FALSE;
			}
		}
	}
	
	if (retcode)
	{
		if ((gi->flags & TP_VERB) != 0x00)
			output("  Processing II-Block\n");
	
		gf4tp_getii(gi);
	
		/* gf4tp_output("Searching lines\n");
		 * fseek(ist, gfarecl[gi->hdr.vers].num_offsets * 4 + gfarecl[gi->hdr.vers].len_magic + 
		 *            gi->hdr.sep[16] + 2, SEEK_SET);
		 */
		if (gi->hdr.sep[OFF_PROGRAMSTART + 3] < gi->hdr.sep[OFF_PROGRAMSTART])
		{
			output("invalid offsets: %lu < %lu\n", (unsigned long)gi->hdr.sep[OFF_PROGRAMSTART + 3], (unsigned long)gi->hdr.sep[OFF_PROGRAMSTART]);
			retcode = FALSE;
			tokensize = 0;
		} else
		{
			tokensize = gi->hdr.sep[OFF_PROGRAMSTART + 3] - gi->hdr.sep[OFF_PROGRAMSTART];
		}

		if ((gi->flags & TP_VERB) != 0x00)
			output("Analyzing listing (%i)\n", tokensize);

		gl.line = slb;
		gl.lineno = 0;
		maxlinesize = 0;
	
		while (tokensize > 0)
		{
			fread(libuf, 2, 1, ist);
	
			copy16b(gl.size, libuf);
	
			/* must have at least the length word */
			if (gl.size < 2)
			{
				output("Empty line at line %lu\n", gl.lineno);
				retcode = FALSE;
				break;
			}
			if (gl.size > tokensize)
			{
				output("warning: bogus line size at line %lu\n", gl.lineno);
				gl.size = tokensize;
			}

			/*
			 * should have at least the length word, and a statement token
			 */
			if (gl.size < 4 || (gl.size & 1))
			{
				output("warning: bogus line size at line %lu\n", gl.lineno);
			}

			tokensize -= gl.size;
			gl.size -= 2;
			if (gl.size > maxlinesize)
				maxlinesize = gl.size;

			if (gl.size > 256)
			{
				gl.line = malloc(gl.size);
				if (gl.line == NULL)
				{
					output("out of memory\n");
					retcode = FALSE;
					break;
				}
			}
	
			fread(gl.line, 1, gl.size, ist);
	
			retcode &= gf4tp_tp(gi, &gl);
	
			if (gl.size > 256)
			{
				free(gl.line);
				gl.line = slb;
			}
			gl.lineno++;
			if ((gi->flags & TP_VERB) && gl.lineno % 0x100 == 0)
				output("Reached line %lu\n", gl.lineno);
		}

		if (gi->flags & TP_VERB)
			output("Maximum line size: %u\n", maxlinesize);

		if (gi->flags & TP_VERB || (gi->gbe_ver > TARGET_VER36 && gi->max_used_gbe_ver > gi->gbe_ver))
		{
			const char *name = "???";
			int i;

			for (i = 0; i < (int)ARRAY_SIZE(version_names); i++)
			{
				if (version_names[i].val == gi->max_used_gbe_ver)
				{
					name = version_names[i].name;
					break;
				}
			}
			output("Maximum GFA version used: %s\n", name);
		}
	}
	
	free(gi->pool);
	gi->pool = NULL;
	free(gi->fld);
	gi->fld = NULL;

	if (ist != stdin)
		fclose(ist);

	return retcode;
}


static void version(FILE *fp)
{
	fprintf(fp,
		"GFALIST, Copyright (C) 2001 by Peter Backes\n"
		"Based on SKY version " VERSION " (c) 1992-2001 by Peter Backes\n"
		"GFALIST comes with ABSOLUTELY NO WARRANTY.\n"
		"This is free software, and you are welcome to redistribute it\n"
		"under certain conditions; see the GNU GPL for details.\n");
}


static void usage(FILE *fp)
{
	fprintf(fp, "Usage: %s [<options>] files [ ... ]\n", "gfalist");
	fprintf(fp, "options:\n");
	fprintf(fp, "  -o, --output <file>       specify output filename\n");
	fprintf(fp, "  -v, --verbose             be verbose\n");
	fprintf(fp, "  -c, --convert             convert charset to utf-8\n");
	fprintf(fp, "  -i, --inlines             save inline data\n");
	fprintf(fp, "  -n, --newlines            print newlines instead of CR/LF\n");
	fprintf(fp, "      --capitals            print names in Upcase\n");
	fprintf(fp, "      --postfix             omit default postfix from float variables\n");
	fprintf(fp, "      --c-comments          print comments with /*\n");
	fprintf(fp, "      --c++-comments        print comments with //\n");
	fprintf(fp, "      --varnames            list variables names\n");
	fprintf(fp, "      --gbe <version>       specify version in case of ambiguities\n");
	fprintf(fp, "  -h, --help                print this help and exit\n");
}


enum {
	OPT_VERBOSE = 'v',
	OPT_OUTPUT = 'o',
	OPT_CONVERT = 'c',
	OPT_INLINES = 'i',
	OPT_NEWLINES = 'n',
	OPT_HELP = 'h',
	OPT_VERSION = 'V',
	
	OPT_CAPITALS = 256,
	OPT_POSTFIX,
	OPT_C_COMMENTS,
	OPT_CPP_COMMENTS,
	OPT_VARNAMES,
	OPT_GBEVERSION,
};

static struct option const longopts[] = {
	{ "output", required_argument, NULL, OPT_OUTPUT },
	{ "verbose", no_argument, NULL, OPT_VERBOSE },
	{ "convert", no_argument, NULL, OPT_CONVERT },
	{ "inlines", no_argument, NULL, OPT_INLINES },
	{ "newlines", no_argument, NULL, OPT_NEWLINES },
	{ "capitals", no_argument, NULL, OPT_CAPITALS },
	{ "postfix", no_argument, NULL, OPT_POSTFIX },
	{ "varnames", no_argument, NULL, OPT_VARNAMES },
	{ "gbe", required_argument, NULL, OPT_GBEVERSION },
	{ "help", no_argument, NULL, OPT_HELP },
	{ "version", no_argument, NULL, OPT_VERSION },
};


int main(int argc, char *argv[])
{
	const char *outfile = NULL;
	int opt;
	int exitcode = EXIT_SUCCESS;
	struct gfainf gi;

	gf4tp_init(output, rvsimp);
	memset(&gi, 0, sizeof(gi));

	while ((opt = getopt_long(argc, argv, "o:vcVinh", longopts, NULL)) != -1)
	{
		switch (opt)
		{
		case OPT_OUTPUT:				/* Output */
			if (outfile != NULL)
			{
				output("Error: multiple output files specified\n");
				return EXIT_FAILURE;
			}
			outfile = optarg;
			break;

		case OPT_VERBOSE:				/* Verbose */
			gi.flags |= TP_VERB;
			break;

		case OPT_CONVERT:				/* Conversion */
			gi.flags |= TP_CONV;
			break;

		case OPT_INLINES:				/* save INLINE data into .inl files */
			gi.flags |= TP_SAVEINLINE;
			break;

		case OPT_NEWLINES:
			gi.flags |= TP_NEWLINES;
			break;

		case OPT_CAPITALS:
			gi.flags |= TP_DEFLIST_CAPITALS;
			break;
		
		case OPT_POSTFIX:
			gi.flags |= TP_DEFLIST_POSTFIX;
			break;
		
		case OPT_C_COMMENTS:
			gi.flags |= TP_DEFLIST_C_COMMENTS;
			break;
		
		case OPT_CPP_COMMENTS:
			gi.flags |= TP_DEFLIST_CPP_COMMENTS;
			break;
		
		case OPT_VARNAMES:
			gi.flags |= TP_VARNAMES;
			break;
		
		case OPT_GBEVERSION:
			{
				int i;
				int number;

				number = (int)strtol(optarg, NULL, 10);
				for (i = 0; i < (int)ARRAY_SIZE(version_names); i++)
				{
					if (strcmp(optarg, version_names[i].name) == 0 || number == version_names[i].number)
					{
						gi.gbe_ver = version_names[i].val;
						break;
					}
				}
				if (i >= (int)ARRAY_SIZE(version_names))
				{
					fprintf(stderr, "unknown GBE version %s\n", optarg);
					return EXIT_FAILURE;
				}
			}
			break;
		
		case OPT_HELP:					/* display short help and exit */
			version(stdout);
			usage(stdout);
			return EXIT_SUCCESS;

		case OPT_VERSION:				/* display Version and exit */
			version(stdout);
			return EXIT_SUCCESS;

		default:
			return EXIT_FAILURE;
		}
	}

	if (optind >= argc)
	{
		usage(stderr);
		return EXIT_FAILURE;
	}

	if (outfile == NULL || (outfile[0] == '-' && outfile[1] == '\0'))
	{
		if (gi.flags & TP_CONV)
			gi.ost = stdout;
		else
			gi.ost = freopen(NULL, "wb", stdout);
	} else if ((gi.ost = fopen(outfile, gi.flags & TP_CONV ? "w" : "wb")) == NULL)
	{
		output("%s: cannot open %s for output\n", argv[0], outfile);
		return EXIT_FAILURE;
	}

	if (optind >= argc)
	{
		if (!process(&gi))
			exitcode = EXIT_FAILURE;
	} else
	{
		for (; optind < argc; optind++)
		{
			gi.filename = argv[optind];
			if (!process(&gi))
				exitcode = EXIT_FAILURE;
		}
	}

	fflush(gi.ost);
	if (gi.ost != stdout)
		fclose(gi.ost);

	return exitcode;
}
