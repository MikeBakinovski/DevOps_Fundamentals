#!/bin/bash

array=$(seq 1 100)
for item in ${array}; do
    if [ $((item%2)) -eq 0 ] && [[ $item -lt 30 || $item -gt 60 ]] && [ $item -lt 85 ];
    then
         echo $item
    fi
done