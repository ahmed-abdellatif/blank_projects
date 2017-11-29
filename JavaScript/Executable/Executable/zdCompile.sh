# *************************************************************
# 'zdCompile.sh'
# this program will compile the files in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-29-2017--11:04:36
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

