# *************************************************************
# 'zeExecute.sh'
# this program will execute the Aprog in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-29-2017--11:04:36
# *************************************************************

#!/bin/bash
echo "Descend into 'TestDirectory' directory"
cd TestDirectory/
include=../../IOFiles
#
for item in *
do
  echo " "
  echo "EXECUTING" $item
  cd $item
  Aprog $include/xin.txt $include/xout.txt $include/xlog.txt
  cd ..
echo "EXECUTION COMPLETE"
done
echo "Return from 'TestDirectory' directory"
cd ..
echo " "
# *************************************************************
# End 'zeExecute.sh'
# *************************************************************

