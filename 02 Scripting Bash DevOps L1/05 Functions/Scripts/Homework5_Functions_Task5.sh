#!/bin/bash

MinMax () {
	max=0
	for i in $@; do
		if [ $i -gt $max ]; then
			max=$i
		fi
	done
	min=$max
	for i in $@; do
		if [ $i -lt $min ]; then
			min=$i
		fi
	done
	echo Min: $min
	echo Max: $max
}

MinMax $@