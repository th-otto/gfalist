#include <stdio.h>
#include <stdarg.h>
#include <time.h>
#include <assert.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include "sky.h"
#include "tables.h"						/* gfarecl */
#include "version.h"					/* VERSION */

#ifndef FALSE
# define FALSE 0
# define TRUE 1
#endif


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
static unsigned char *rvsimp(struct gfainf *gi, unsigned short type, unsigned short var)
{
	static unsigned char vbuf[11];		/* vffff_ffff\0 */
	unsigned char *dst = vbuf;
	char *src = (char *)vbuf;

	sprintf(src, "v%x_%x", type, var);
	while (*src != '\0')
	{
		switch (*src++)
		{
		case '0':
			*dst++ = 0x30;
			break;
		case '1':
			*dst++ = 0x31;
			break;
		case '2':
			*dst++ = 0x32;
			break;
		case '3':
			*dst++ = 0x33;
			break;
		case '4':
			*dst++ = 0x34;
			break;
		case '5':
			*dst++ = 0x35;
			break;
		case '6':
			*dst++ = 0x36;
			break;
		case '7':
			*dst++ = 0x37;
			break;
		case '8':
			*dst++ = 0x38;
			break;
		case '9':
			*dst++ = 0x39;
			break;
		case 'a':
			*dst++ = 0x41;
			break;
		case 'b':
			*dst++ = 0x42;
			break;
		case 'c':
			*dst++ = 0x43;
			break;
		case 'd':
			*dst++ = 0x44;
			break;
		case 'e':
			*dst++ = 0x45;
			break;
		case 'f':
			*dst++ = 0x46;
			break;
		case 'v':
			*dst++ = 0x76;
			break;
		case '_':
			*dst++ = 0x5F;
			break;
		default:
			*dst++ = 0x3F;
			break;
		}
	}

	*dst = 0x00;

	return vbuf;
}


static int process(const char *program_name, FILE *ost, const char *filename, unsigned int flags)
{
	struct gfainf gi;
	struct gfahdr gh;
	struct gfalin gl;
	unsigned char libuf[2];				/* Line info block buffer */
	unsigned char gibuf[2];				/* General info block buffer */
	unsigned char dibuf[4 * 38 + 10];
	unsigned char slb[256];				/* Preallocated buffer for small lines */
	int32_t poolsize;
	int32_t fldsize;
	int32_t tokensize;
	FILE *ist;

	memset(&gi, 0, sizeof(gi));
	memset(&gh, 0, sizeof(gh));
	gi.hdr = &gh;
	gl.depth = 0;						/* Start with zero depth */

	if (filename == NULL)
	{
		ist = stdin;
	} else if ((ist = fopen(filename, "rb")) == NULL)
	{
		output("%s: Unable to open %s for reading.\n", program_name, filename);
		return FALSE;
	}

	if ((flags & TP_VERB) != 0x00)
		output("Scanning header (%i)\n", sizeof gh);

	/* Read one general info block */

	fread(gibuf, 2, 1, ist);

	if ((flags & TP_VERB) != 0x00)
		output("  Processing GI-Block\n");

	gf4tp_getgi(&gi, gibuf);

	fread(dibuf, gfarecl[gh.vers][1] * 4 + gfarecl[gh.vers][0], 1, ist);

	if ((flags & TP_VERB) != 0x00)
		output("  Processing DI-Block\n");

	gf4tp_getdi(&gi, dibuf);

	/* Cannot process files older than version 4 yet. */
	switch (gh.vers)
	{
	case 1:
	case 2:
	case 3:
		output("Version %d files not supported yet.\n", gh.vers);
		if (ist != stdin)
			fclose(ist);
		return FALSE;
	case 70:
		output("GF%.14s files not supported yet.\n", gh.mag);
		if (ist != stdin)
			fclose(ist);
		return FALSE;
	}

	poolsize = gh.sep[16] - gh.sep[0];

	if (poolsize > 0)
		gi.pool = malloc(poolsize);

	if ((flags & TP_VERB) != 0x00)
		output("  Reading identifiers (%i Bytes)\n", poolsize);

	/* Read identifier information block consisting of cnt characters */
	fread(gi.pool, 1, poolsize, ist);

	fldsize = gh.sep[35] - gh.sep[19];

	if (fldsize > 0)
		gi.fld = malloc(fldsize * sizeof(char *));

	if ((flags & TP_VERB) != 0x00)
		output("  Processing II-Block\n");

	gf4tp_getii(&gi, gi.pool, gi.fld);

	/* gf4tp_output("Searching lines\n");
	 * fseek(ist, gfarecl[gh.vers][1] * 4 + gfarecl[gh.vers][0] + 
	 *            gh.sep[16] + 2, SEEK_SET);
	 */

	tokensize = gh.sep[19] - gh.sep[16];

	if ((flags & TP_VERB) != 0x00)
		output("Analyzing listing (%i)\n", tokensize);

	gl.line = slb;
	gl.lineno = 0;

	while (tokensize > 0)
	{
		fread(libuf, 2, 1, ist);

		copy16b(gl.size, libuf);

		tokensize -= gl.size;

		gl.size -= 2;

		if (gl.size > 256)
			gl.line = malloc(gl.size);

		fread(gl.line, 1, gl.size, ist);

		gf4tp_tp(ost, &gi, &gl, flags);

		if (gl.size > 256)
		{
			free(gl.line);
			gl.line = slb;
		}
		gl.lineno++;
		if ((flags & TP_VERB) != 0x00 && gl.lineno % 0x100 == 0x00)
			output("Reached line %u\n", gl.lineno);
	}

	if (poolsize > 0)
		free(gi.pool);

	if (fldsize > 0)
		free(gi.fld);

	if (ist != stdin)
		fclose(ist);

	return TRUE;
}


int main(int argc, char *argv[])
{
	const char *outfile = NULL;
	unsigned int flags = 0;
	int opt;
	FILE *ost;							/* Input and output stream */
	int exitcode = EXIT_SUCCESS;
	
	gf4tp_init(output, rvsimp);

	while ((opt = getopt(argc, argv, "o:vcVih")) != -1)
	{
		switch (opt)
		{
		case 'o':						/* Output */
			if (outfile != NULL)
			{
				output("Error: multiple output files specified\n");
				return 1;
			}
			outfile = optarg;
			break;
		case 'v':						/* Verbose */
			flags |= TP_VERB;
			break;
		case 'c':						/* Conversion */
			flags |= TP_CONV;
			break;
		case 'i':						/* save INLINE data into .inl files */
			flags |= TP_SAVEINLINE;
			break;
		case 'h':						/* display short help and exit */
		case 'V':						/* display Version and exit */
			output("GFALIST, Copyright (C) 2001 by Peter Backes\n"
				   "Based on SKY version " VERSION " (c) 1992-2001 by Peter Backes\n"
				   "GFALIST comes with ABSOLUTELY NO WARRANTY.\n"
				   "This is free software, and you are welcome to redistribute it\n"
				   "under certain conditions; see the GNU GPL for details.\n");

			return 0;
		default:
			return EXIT_FAILURE;
		}
	}

	if (optind >= argc)
	{
		output("Usage: %s [ -o output -vct ] files [ ... ]\n", argv[0]);
		return 1;
	}

	if (outfile == NULL || (outfile[0] == '-' && outfile[1] == '\0'))
	{
		ost = stdout;
	} else if ((ost = fopen(outfile, flags & TP_CONV ? "w" : "wb")) == NULL)
	{
		output("%s: cannot open %s for output\n", argv[0], outfile);
		return 1;
	}

	if (optind >= argc)
	{
		if (!process(argv[0], ost, NULL, flags))
			exitcode = EXIT_FAILURE;
	} else
	{
		for (; optind < argc; optind++)
			if (!process(argv[0], ost, argv[optind], flags))
				exitcode = EXIT_FAILURE;
	}

	fflush(ost);
	if (ost != stdout)
		fclose(ost);

	return exitcode;
}
