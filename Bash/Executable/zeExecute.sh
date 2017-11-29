# *************************************************************
# 'zeExecute.sh'
# this program will execute the Aprog in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-29-2017--11:04:36
# *************************************************************

#!/bin/bash -x
YES_OR_NO="Invalid please type [Y]es or [N]o"
echo "Descend into 'TestDirectory' directory"
cd ../../TestDirectory/FolderStructure/
include="../../IOFiles/"

sleep .5
read -p "Debugging...? [Y]es/[N]o   " yn_
case "$yn_" in
  [yY][eE][sS]|Y|y ) # yes
    echo "Executing with debugging"
    bashdb ../SourceFiles/Aprog.sh $include/xin.txt | tee $include/xlog.txt
  ;;
  [nN][oO]|N|n ) # no
    echo "Executing without debugging"
    ../SourceFiles/Aprog.sh $include/xin.txt | tee $include/xlog.txt
  ;;
  * ) # else
    echo $YES_OR_NO
  ;;
esac

echo "EXECUTION COMPLETE"
echo "Return from 'TestDirectory' directory"
cd ../../
echo " "
# *************************************************************
# End 'zeExecute.sh'
# *************************************************************

