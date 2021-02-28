#!/bin/bash

name=$0
cname=${name##*/}
path=${name%/*}

if [ $path == "." ]; then
	echo $PWD/$cname
	echo $cname
else
	echo $name
	echo $cname
fi