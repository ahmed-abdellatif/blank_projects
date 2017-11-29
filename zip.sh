# /****************************************************************
#  * 'zip.sh'
#  *
#  * Author/CopyRight: Mancuso, Logan
#  * Last Edit Date: 11-02-2017--13:28:52
#  *
# **/

#!/bin/bash

# /****************************************************************
#  *
# **/
rm -rf Compressed/
for item in *
  do
    if [[ -d $item ]];
    then
      echo "Compressing " $item
      zip -q -T -m $item.zip $item/* && echo "Success" || echo "Failure"
    fi
  done
mkdir Compressed
cp *.zip Compressed/
rm *.zip

# /****************************************************************
#  * End 'zip.sh'
# **/
