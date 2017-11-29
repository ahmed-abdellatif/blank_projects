# *************************************************************
# 'zdCompile.sh'
# this program will compile the files in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 10-15-2017--13:55:32
# *************************************************************
#!/bin/bash
echo "Descend into 'TestDirectory' directory"
cd TestDirectory/
#
for item in *
do
  echo " "
  echo "COMPILING" $item
  cd $item
  rm *.o
  rm Aprog
  make all -f ../../makefile
  cd ..
done
echo "Return from 'TestDirectory' directory"
cd ..
#
echo " "
echo "COMPILING COMPLETE"
echo " "
# *************************************************************
# End 'zdCompile.sh'
# *************************************************************

