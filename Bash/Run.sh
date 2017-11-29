# /****************************************************************
#  * 'Run.sh'
#  *
#  * Author/CopyRight: Mancuso, Logan
#  * Last Edit Date: 11-29-2017--11:04:36
#  *
#  * This script will run the program, run from
#  * WorkingDirectory/SourceFiles/
# **/

#!bin/bash

# /****************************************************************
#  * Error Messages
# **/

WRONG_DIRECTORY="Wrong Directory, Move To Working Directory To Run Program"
YES_OR_NO="Invalid please type [Y]es or [N]o"
IOFiles="../../IOFiles"

if [[ ! $PWD/ = */WorkingDirectory/SourceFiles/ ]]; then
  echo $WRONG_DIRECTORY
  exit 1
fi
#  running every time slows computat$IOn
read -p "Refresh Date...? [Y]es / [N]o:    " yn_
case "$yn_" in
  [yY][eE][sS]|Y|y ) # yes
    echo "Executing zaRefreshDate.sh" | tee $IOFiles/xlog.txt
    echo "-----------------------------------------------------------------" | tee -a $IOFiles/xlog.txt
    ../../Executable/./zaRefreshDate.sh | tee -a $IOFiles/xlog.txt
    ;;
  [nN][oO]|N|n ) # no
    echo "Skipping zaRefreshDate.sh" | tee $IOFiles/xlog.txt
    ;;
  * ) # else
    echo $YES_OR_NO
    ;;
esac
echo "Executing zbBackupProgram.sh" | tee -a $IOFiles/xlog.txt
echo "-----------------------------------------------------------------" | tee -a $IOFiles/xlog.txt
../../Executable/./zbBackupProgram.sh | tee -a $IOFiles/xlog.txt
echo "Executing zcCopyProgram.sh" | tee -a $IOFiles/xlog.txt
echo "-----------------------------------------------------------------" | tee -a $IOFiles/xlog.txt
../../Executable/./zcCopyProgram.sh | tee -a $IOFiles/xlog.txt
echo "Executing zeExecute.sh" | tee $IOFiles/xout.txt
echo "-----------------------------------------------------------------" | tee -a $IOFiles/xout.txt
    ../../Executable/./zeExecute.sh | tee -a $IOFiles/xout.txt
echo "Program Done Executing"

# /****************************************************************
#  * End 'Run.sh'
# **/
