# *************************************************************
# 'makefile'
# This is a generic 'makefile' for a program
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 03-08-2018--13:51:22
# *************************************************************

# use compiler gcc
GCC = gcc
CFLAGS = -DYYDEBUG
BISONFLAGS= -t
FLEX = flex

FL = flex.yy.o
MT = main.tab.o

FILES = $(FL) $(MT)

# output of Aprog program
Aprog: $(FILES)
	$(GCC) $(CFLAGS) -ly -o Aprog $(FILES)

# flex.yy.o file
flex.yy.o: flex.l
	$(FLEX) -c flex.l

# main.tab.c
main.tab.c: main.y
	bison $(BISONFLAGS) main.y

# main.tab.h
main.tab.h: main.y
	bison -d $(BISONFLAGS) main.y 


# *************************************************************
# Other files to compile in this program, "non-default" files
# *************************************************************


# clean
clean:
	rm -rf *.o


# *************************************************************
# End 'makefile'
# *************************************************************




