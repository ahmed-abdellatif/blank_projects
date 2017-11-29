# *************************************************************
# 'zeExecute.sh'
# this program will execute the Aprog in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 12-09-2016--12:59:50
# *************************************************************

#!/bin/bash -x
echo "Descend into 'TestDirectory' directory"
cd ../../TestDirectory/FolderStructure/
include=../../IOFiles/
#
for item in *
do
  echo " "
  echo "EXECUTING" $item
  # cd $item
  bashdb ../SourceFiles/Aprog.sh $include/xin.txt | tee $include/xlog.txt
  # cd ..
echo "EXECUTION COMPLETE"
done
echo "Return from 'TestDirectory' directory"
cd ../../
echo " "
# *************************************************************
# End 'zeExecute.sh'
# *************************************************************

