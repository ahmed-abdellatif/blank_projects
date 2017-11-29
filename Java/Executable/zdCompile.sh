# *************************************************************
# 'zdCompile.sh'
# this program will compile the files in the test directory
#
# Author/CopyRight: Mancuso, Logan
# Last Edit Date: 11-08-2017--08:14:33
# *************************************************************
#!/bin/bash
echo "Descend into 'TestDirectory' directory"
cd ../../TestDirectory/
# pwd
#
for item in *
do
  echo " "
  echo "COMPILING" $item
  cd $item
  rm *.class
  rm Aprog
  javac *.java
  cd ..
done
echo "Return To 'WorkingDirectory' directory"
cd ../WorkingDirectory/SourceFiles/
#
echo " "
echo "COMPILING COMPLETE"
echo " "
# *************************************************************
# End 'zdCompile.sh'
# *************************************************************

