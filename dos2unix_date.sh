loop() {
for i in *
  do
    if [[ -f $i ]];
    then
      echo "file" $i
      dos2unix $i
    elif [[ -d $i ]];
    then
      echo "dir" $i
      cd $i
      loop
      cd ../
    fi
done
}
today=$(date +%m-%d-%Y--%H:%M:%S) to_replace="Last Edit Date:"
#loop to replace last edit date
other_loop() {
  for item in *
  do
    if [[ -f $item ]];
    then
      echo "File $item"
      sed "0,\|.* $to_replace.*|{s|$to_replace.*|$to_replace $today|g1}" $item
    elif [[ -d $item ]];
    then
      echo "Directory $item"
      cd $item
      other_loop
      cd ../
    else
      echo "Error $item"
    fi
  done
}

for i in *
	do
	if [[ -f $i ]];
	then
		echo "file" $i
		dos2unix $i
    sed "0,\|.* $to_replace.*|{s|$to_replace.*|$to_replace $today|g1}" $i
	elif [[ -d $i ]];
	then
		echo "dir" $i
		cd $i
		loop
    # other_loop
		cd ../
	fi
done
