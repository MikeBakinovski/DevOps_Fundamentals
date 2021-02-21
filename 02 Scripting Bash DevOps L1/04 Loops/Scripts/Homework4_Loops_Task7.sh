#!/bin/bash
for file in `find $PWD -type f`; do
	owner=$(stat -c '%U' $file)
	
	echo "Filename: ${file##*/}, Owner: $owner"
done