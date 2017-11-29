# *************************************************************
# 'makefile'
# This is a generic 'makefile' for a program
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-29-2017--11:04:36
# *************************************************************

# use compiler c++ version 11
GPP = g++
FLAG = -O3 -Wall -std=c++11
# include utilities folder
UTILS = ../../Utilities

M = main.o
S = scanner.o
R = myrandom.o
SL = scanline.o
U = utils.o

FILES = $M $S $R $(SL) $U

# output of Aprog program
Aprog: $(FILES)
	$(GPP) $(FLAG) -o Aprog $(FILES)

# main.cc file
main.o: main.h main.cc
	$(GPP) $(FLAG) -c main.cc

# scanner.cc utils file
scanner.o: $(UTILS)/scanner.h $(UTILS)/scanner.cc
	$(GPP) $(FLAG) -c $(UTILS)/scanner.cc

# scanline.cc utils file
scanline.o: $(UTILS)/scanline.h $(UTILS)/scanline.cc
	$(GPP) $(FLAG) -c $(UTILS)/scanline.cc

# utils.cc utils file
utils.o: $(UTILS)/utils.h $(UTILS)/utils.cc
	$(GPP) $(FLAG) -c $(UTILS)/utils.cc

# random.cc utils file
myrandom.o: $(UTILS)/myrandom.h $(UTILS)/myrandom.cc
	$(GPP) $(FLAG) -c $(UTILS)/myrandom.cc

# *************************************************************
# Other files to compile in this program, "non-default" files
# *************************************************************


# clean
clean:
	rm -rf *.o


# *************************************************************
# End 'makefile'
# *************************************************************




