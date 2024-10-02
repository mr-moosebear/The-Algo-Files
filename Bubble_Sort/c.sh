#!/bin/bash

# A simple script for compiling and deleting my c programs in testing
myfile="bubblesort.c"
newfile="bubblesort"

if [ -f "$newfile" ]; then
	echo "Compiled file exist. Deleting File."
	rm $newfile
	echo "File Deleted! Continue"
else
	echo "No Compiled file exist. Continue."
fi

if [ -f "$myfile" ]; then
	gcc $myfile -o $newfile # Compile program

	if [ $? -ne 0 ]; then
		echo "Compilation Failed!"
		exit 1
	else
		echo "Compilation Successful!"
	fi

else
	echo "No such file exist"
fi


echo "Running the program in:"

for i in {3..1}; do
	echo "$i"
	sleep 1
done
echo "------------------------------------"

./$newfile

echo "------------------------------------"
