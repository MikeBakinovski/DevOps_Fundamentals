#!/bin/bash

WriteOut () {
	echo File: \'$(stat --format "%n" $1)\'
	echo Type: $(stat --format "%F" $1)
	echo Permitions: $(stat --format "(%a/%A)" $1)
	echo "------"
}

fileList=$(ls -m $1)
IFS=', '
read -ra fileArr <<< "$fileList"

if [ ${#fileArr[@]} -gt 1 ];  then
	for i in "${fileArr[@]}"; do
		WriteOut $1/$i
	done
else
	WriteOut $1
fi