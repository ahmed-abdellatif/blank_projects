# *************************************************************
# 'zeExecute.sh'
# this program will execute the Aprog in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-08-2017--08:14:33
# *************************************************************

#!/bin/bash
echo "Descend into 'TestDirectory' directory"
cd ../../TestDirectory/
include=../../IOFiles
#
for item in *
do
  echo " "
  echo "EXECUTING" $item
  cd $item
  ruby main.rb $include/xin.txt $include/xout.txt $include/xlog.txt
  cd ..
echo "EXECUTION COMPLETE"
done
echo "Return To 'WorkingDirectory' directory"
cd ../WorkingDirectory/SourceFiles
echo " "
# *************************************************************
# End 'zeExecute.sh'
# *************************************************************

