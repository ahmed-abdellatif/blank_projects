# *************************************************************
# 'zzRestore.sh'
# This program will restore the 'BackupDirectory' to the
# 'WorkingDirectory' if there is some sort of issue
# with the 'WorkingDirectory'
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-08-2017--08:14:33
# *************************************************************

#!/bin/bash

# *************************************************************
# Function 'backup'
# move working to WorkingDirectory.save.gz
# file in 'BackupDirectory', incase this is ran by accident
# *************************************************************
backup() {
  cd WorkingDirectory/
  echo "Backing up old 'WorkingDirectory' directory"
  for item in *
  do
    echo "Descend into directory" $item
    cd $item
    echo "Return from directory" $item
    cd ..
    echo "tar directory" $item
    tar -cvf tarfile$item $item
    echo "gzip directory" $item
    gzip tarfile$item
    mv tarfile$item.gz save.tarfile$item.gz
    echo "cp gzipped.save file to 'BackupDirectory'"
    cp save.tarfile$item.gz ../BackupDirectory
    echo "rm the gzipped file from " $item
    rm save.tarfile$item.gz
  done
  echo "Return from 'WorkingDirectory' directory"
  cd ..
}
# *************************************************************
# Function 'restore'
# take old backup from 'BackupDirectory' and restore to
# 'WorkingDirectory'
# *************************************************************
restore(){

  # start the replacement
  echo "Remove the 'WorkingDirectory' directory"
  rm -r WorkingDirectory
  echo "Create a new 'WorkingDirectory' directory"
  mkdir WorkingDirectory
  echo "cp last backup from 'BackupDirectory' into 'WorkingDirectory'"
  cp BackupDirectory/tarfile*.gz WorkingDirectory
  echo "Descend into 'WorkingDirectory' directory"
  cd WorkingDirectory
  for item in *
  do
    gunzip $item
  done
  for item in *
  do
    echo "untar directory" $item
    tar -xvf $item
  done
#
  echo "Remove the tar files"
  rm tarfile*
#
  echo "Return from 'WorkingDirectory' directory"
  cd ..
}
if [[ ! $PWD/ = */WorkingDirectory/SourceFiles/ ]]; then
  echo $WRONG_DIRECTORY
  exit 1
fi
cd ../../
read -p "Are You Sure, This Will Remove 'WorkingDirectory' [Y]es / [N]o:    " yn_
case $yn_ in
  [yY][eE][sS]|Y|y ) # yes
    # backup files from 'WorkingDirectory'
    backup
    # restore old backup to 'WorkingDirectory'
    restore
    cd WorkingDirectory/SourceFiles/
    ;;
  [nN][oO]|N|n ) # no
    echo "Program Terminated"
    ;;
  * )
    echo "invalid selection"
    ;;
esac

# *************************************************************
# End 'zzRestore.sh'
# *************************************************************

