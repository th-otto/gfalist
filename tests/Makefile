# Makefile for the tests for gfalist 
# separated from main Makefle   by Markus Hoffmann 2016

# This file is part of gfalist, the GFA-Basic to ASCII converter 
# ======================================================================
# X11-Basic is free software and comes with NO WARRANTY - read the file
# COPYING for details


GB36_GEN = default2.out default4.out hell.out default.out default3.out \
	default5.out sky.out

GB36_GFA=$(GB36_GEN:.out=.gfa)
GB36_LST=$(GB36_GEN:.out=.lst)
GB36_TMP=$(GB36_GEN:.out=.tmp)

GEN = $(GB36_GEN)

all: tests inlinedatatest

tests: $(GEN)
	@ls -l $(GEN)

%.out: gb36test.a ../gfalist
	ar xvo $< $*.gfa $*.lst
	../gfalist -o $*.tmp $*.gfa
	diff $*.lst $*.tmp > $@ || true
	# rm $*.gfa $*.lst $*.tmp
	rm *.tmp 

../gfalist:
	(cd ..; make gfalist)


inlinedatatest: sp_sek_v.gfa
	../gfalist -i -o $<.lst $< 

clean:
	rm -f $(GEN) $(GB36_GFA) $(GB36_LST) sp_sek_v.gfa.lst pss.inl

