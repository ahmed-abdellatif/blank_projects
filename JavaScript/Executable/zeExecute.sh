# *************************************************************
# 'zeExecute.sh'
# this program will execute the Aprog in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-29-2017--11:04:36
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
  lynx Aprog.html
  cd ..
echo "EXECUTION COMPLETE"
done
echo "Return To 'WorkingDirectory' directory"
cd ../WorkingDirectory/SourceFiles
echo " "
# *************************************************************
# End 'zeExecute.sh'
# *************************************************************

