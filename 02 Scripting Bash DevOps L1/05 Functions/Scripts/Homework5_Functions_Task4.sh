#!/bin/bash

SumProd () {
	s=0
	p=1
	for i in $@; do
		((s += $i))
		((p *= $i))
	done
	echo Sum: $s
	echo Prod $p
}

SumProd $@