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
