# *************************************************************
# 'zcCopyProgram.sh'
# this program will untar all files in 'BackupDirectory'
# storing it to the 'TestDirectory' for testing
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-29-2017--11:04:36
# *************************************************************

#!/bin/bash
cd ../../
echo "Remove the old 'TestDirectory' directory"
rm -r TestDirectory
echo "Create a new 'TestDirectory' directory"
mkdir TestDirectory
echo "cp files from 'BackupDirectory' into 'TestDirectory'"
cp BackupDirectory/* TestDirectory
#
echo "Descend into 'TestDirectory' directory"
cd TestDirectory/
#
for item in *
do
  gunzip $item
done
#
for item in *
do
  echo "untar directory" $item
  tar -xvf $item
done
#
echo "Remove the tar files"
rm tar*
cd SourceFiles/
for item in *
do
  sed -i "/.* Last Edit Date:*/a\# * THIS IS A TEST FILE CHANGES WILL NOT BE SAVED" $item
done
#
echo "Return To 'WorkingDirectory' directory"
# cd ../WorkingDirectory/SourceFiles
# *************************************************************
# End 'zcCopyProgram.sh'
# *************************************************************

