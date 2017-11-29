dos2unix_loop() {
for item in *
  do
    if [[ -f $item ]];
    then
      echo "file" $item
      dos2unix $item
    elif [[ -d $item ]];
    then
      echo "dir" $item
      cd $item
      dos2unix_loop
      cd ../
    fi
done
}

#loop to replace last edit date
date_loop() {
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
      date_loop
      cd ../
    else
      echo "Error $item"
    fi
  done
}

today=$(date +%m-%d-%Y--%H:%M:%S) to_replace="Last Edit Date:"
read -p "Date or Dos2Unix [Date]/[Dos]...?   " yn_
case "$yn_" in
  [dD]ate )
    echo "date"
    for item in *
      do
      if [[ -f $item ]];
      then
        echo "file" $item
        sed "0,\|.* $to_replace.*|{s|$to_replace.*|$to_replace $today|g1}" $item
      elif [[ -d $item ]];
      then
        echo "dir" $item
        cd $item
        date_loop
        cd ../
      fi
    done
    ;;
  [dD]os )
    echo "dos"
    for item in *
      do
      if [[ -f $item ]];
      then
        echo "file" $item
        dos2unix $item
      elif [[ -d $item ]];
      then
        echo "dir" $item
        cd $item
        dos2unix_loop
        cd ../
      fi
    done
  ;;
  * )
    echo "Error"
  ;;
esac
