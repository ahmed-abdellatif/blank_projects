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


MTC = main.tab.c
MTH = main.tab.h
FLC = lex.yy.c


FILES = $(MTC) $(MTH) $(FLC)

# output of Aprog program
Aprog: $(FILES)
	$(GCC)  $(FILES) $(GCCFLAG) -o Aprog 

# main.tab.c main.tab.h
main.tab.c main.tab.h: main.y
	$(BISON) -d $(BISONFLAGS) main.y

# lex.yy.c
lex.yy.c: flex.l main.tab.h
	$(FLEX) $(FLEXFLAGS) flex.l

# *************************************************************
# Other files to compile in this program, "non-default" files
# *************************************************************


# clean
clean:
	rm -rf *.o *.c *.tab.[ch] *.output *.act


# *************************************************************
# End 'makefile'
# *************************************************************




