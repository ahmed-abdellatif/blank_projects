# *************************************************************
# 'zdCompile.sh'
# this program will compile the files in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-29-2017--11:04:36
# *************************************************************
#!/bin/bash
echo "Descend into 'TestDirectory' directory"
cd ../../TestDirectory/
# pwd
#
for item in *
do
  echo " "
  echo "COMPILING" $item
  cd $item
  rm *.o
  rm a.out
  lex main.lex
  cc lex.yy.c -ll
  cd ..
done
echo "Return To 'WorkingDirectory' directory"
cd ../WorkingDirectory/SourceFiles/
#
echo " "
echo "COMPILING COMPLETE"
echo " "
# *************************************************************
# End 'zdCompile.sh'
# *************************************************************

