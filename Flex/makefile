# *************************************************************
# 'makefile'
# This is a generic 'makefile' for a program
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 03-08-2018--13:51:22
# *************************************************************

# use compiler gcc
GCC = gcc
GCCFLAG = -DYDEBUG
BISON = bison
BISONFLAGS= -t
FLEX = flex
FLEXFLAGS =

MTC = main.tab.h
MTO = main.tab.o
FLO = lex.yy.o


FILES = $(MTC) $(MTO) $(FLO)

FILES2 = $(MTO) $(FLO)

# output of Aprog program
Aprog: $(FILES)
	$(GCC) $(GCCFLAG) $(FILES2) -ly -o Aprog 

# main.tab.c main.tab.h
main.tab.h: main.y
	$(BISON) -d $(BISONFLAGS) main.y

main.tab.c: main.y
	$(BISON) $(BISONFLAGS) main.y

# lex.yy.c
lex.yy.c: main.l
	$(FLEX) $(FLEXFLAGS) main.l

# *************************************************************
# Other files to compile in this program, "non-default" files
# *************************************************************


# clean
clean:
	rm -rf *.o *.c *.tab.[ch] *.output *.act


# *************************************************************
# End 'makefile'
# *************************************************************




