# Makefile for GFALIST (c) Peter Backes
# Last modified by Markus Hoffmann 2014,2016

DISTRIB = ons
LIBNO=0.01
RELEASE=1

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
TARGETS = gfalist

GFALIST_OBJS = gfalist.o charset.o sky.o tables.o

OBJS = $(GFALIST_OBJS)

# Headerfiles which should be added to the distribution
HSRC=charset.h  sky.h  tables.h
CSRC= $(OBJS:.o=.c) 
BINDIST= gfalist


TRASH = core ons.spec.OLD

all: $(TARGETS)

gfalist: $(GFALIST_OBJS)
	$(CC) $(LFLAGS) $+ -o $@ -lm
gfalist.exe: $(CSRC)
	$(WINCC)  $+ -o $@ -lm
gfalist.ttp: $(CSRC)
	$(TOSCC)  $+ -o $@ -lm

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGETS) gfalist.exe gfalist.ttp $(TRASH)

distclean realclean: clean
	rm -f gfalist_$(LIBNO)-$(RELEASE)_*.deb

dist: MANIFEST HISTORY packdist.sh
	sh packdist.sh -t $(DISTRIB) -m $< -v HISTORY -s ons.spec ck md


# For the debin package (created with checkinstall)

# Documentation files to be packed into the .deb file:
DEBDOC = README COPYING HISTORY 
doc-pak : $(DEBDOC)
	mkdir $@
	cp $(DEBDOC) $@/

install : gfalist gfalist.1
	install -s -m 755 gfalist $(BINDIR)/
	install -m 644 gfalist.1 $(MANDIR)/man1/gfalist.1

uninstall :
	rm -f $(BINDIR)/gfalist 
	rm -f $(MANDIR)/man1/gfalist.1


deb :	$(BINDIST) doc-pak
	sudo checkinstall -D --pkgname gfalist --pkgversion $(LIBNO) \
	--pkgrelease $(RELEASE)  \
	--maintainer kollo@users.sourceforge.net \
        --backup  \
	--pkggroup interpreters   \
	--pkglicense GPL --strip=yes --stripso=yes --reset-uids 
	rm -rf backup-*.tgz doc-pak

rpms: dist
	sh packdist.sh -t $(DISTRIB) -v HISTORY mr

ons.spec: README HISTORY packdist.sh
	sh packdist.sh -a README -v HISTORY -t $(DISTRIB) -s ons.spec fs

#DEPEND
sky.o: sky.c sky.h tables.h
gfalist.o: gfalist.c $(HSRC) version.h

