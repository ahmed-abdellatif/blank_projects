# *************************************************************
# 'makefile'
# This is a generic 'makefile' for a program
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 10-15-2017--13:55:32
# *************************************************************

# use compiler c++ version 11
GCC = gcc
FLAG =
# include utilities folder
UTILS = ../../Utilities

# files included
M = main.o

# make all command
all: Aprog

# output of Aprog program
Aprog: $M
	$(GCC) $(FLAG) -o Aprog $M

# main.c file
main.o: main.c
	$(GCC) -c main.c

# *************************************************************
# Other files to compile in this program, "non-default" files
# *************************************************************

clean:
	rm -rf *.o

# *************************************************************
# End 'makefile'
# *************************************************************




