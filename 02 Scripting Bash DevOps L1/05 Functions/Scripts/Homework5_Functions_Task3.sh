#!/bin/bash

fileList=$(ls -m $1)
IFS=', '
read -ra fileArr <<< "$fileList"

if [ ${#fileArr[@]} -gt 1 ];  then
    for i in "${fileArr[@]}"; do
        stat --format "%n %F (%a/%A)" $1/$i
    done
else
    stat --format "%n %F (%a/%A)" $1
fi