# Makefile for GFALIST (c) Peter Backes
# Last modified by Markus Hoffmann 2014,2016

CC = gcc
# Cross-Compiler fuer MS WINDOWS
EVAL_MINGWCC := case `uname -s` in CYGWIN*) echo i686-w64-mingw32-gcc ;; MINGW*) echo gcc ;; *) echo i686-pc-mingw32-gcc;; esac
WINCC=$(shell $(EVAL_MINGWCC))
# Cross-Compiler fuer ATARI ST TOS
TOSCC=m68k-atari-mint-gcc

CFLAGS = -O2 -Wall -Wstrict-prototypes -Wmissing-prototypes -Wdeclaration-after-statement
LFLAGS = -s

# Directories
prefix=/usr
exec_prefix=${prefix}
BINDIR=${exec_prefix}/bin
MANDIR=${prefix}/share/man

# Precious targets
TARGETS = gfalist lst2gfa.ttp gfatok

GFALIST_OBJS = gfalist.o charset.o sky.o tables.o
GFATOK_OBJS = gfatok.o toktable.o

OBJS = $(GFALIST_OBJS) $(GFATOK_OBJS)

BINDIST= gfalist


TRASH = core

all: $(TARGETS)

gfalist: $(GFALIST_OBJS)
	$(CC) $(CFLAGS) $(LFLAGS) $+ -o $@ -lm
gfalist.exe: $(GFALIST_OBJS:.o=.c)
	$(WINCC)  $+ -o $@ -lm
gfalist.ttp: $(GFALIST_OBJS:.o=.c)
	$(TOSCC)  $+ -o $@ -lm

gfatok: $(GFATOK_OBJS)
	$(CC) $(CFLAGS) $(LFLAGS) $+ -o $@ -lm

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

lst2gfa.ttp: lst2gfa.s
	$(TOSCC) -Wall -W -s -nostdlib -nostartfiles -o $@ $<
	stripex $@
	@if grep -q "GBE = 0" $<; then echo "cmp -l -x lst2gfa_orig.ttp $@"; cmp -l -x lst2gfa_orig.ttp $@; fi

clean:
	rm -f $(OBJS) $(TARGETS) gfalist.exe gfalist.ttp $(TRASH)

distclean realclean: clean



install : gfalist gfalist.1
	install -s -m 755 gfalist $(BINDIR)/
	install -m 644 gfalist.1 $(MANDIR)/man1/gfalist.1

uninstall :
	rm -f $(BINDIR)/gfalist 
	rm -f $(MANDIR)/man1/gfalist.1

#DEPEND
sky.o: sky.c sky.h tables.h
gfalist.o: gfalist.c charset.h sky.h tables.h version.h
tables.o: tables.h
gfatok.o toktable.o: tables.h parse.h globals.h
