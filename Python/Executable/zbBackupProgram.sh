# *************************************************************
# 'zbBackupProgram.sh'
# this program will copy all files in 'WorkingDirectoy'
# and will tar the file as a backup to the BackupDirectory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-08-2017--08:14:33
# *************************************************************

#!/bin/bash
# pwd
cd ../../
echo "Remove the old 'BackupDirectory' directory"
rm -r BackupDirectory/
echo "Create a new 'BackupDirectory' directory"
mkdir BackupDirectory/
#
echo "Descend into 'WorkingDirectory' directory"
cd WorkingDirectory/
# pwd
#
for item in *
do
  echo "Descend into directory" $item
  cd $item
  echo "Return from directory" $item
  cd ../
  echo "tar directory" $item
  tar -cvf tarfile$item $item
  echo "gzip directory" $item
  gzip tarfile$item
  echo "cp gzipped file to 'BackupDirectory'"
  cp tarfile$item.gz ../BackupDirectory
  echo "rm the gzipped file from " $item
  rm tarfile$item.gz
done
#
echo "Return To 'WorkingDirectory' directory"
# cd WorkingDirectory/SourceFiles
# *************************************************************
# End 'zbBackupProgram.sh'
# *************************************************************
