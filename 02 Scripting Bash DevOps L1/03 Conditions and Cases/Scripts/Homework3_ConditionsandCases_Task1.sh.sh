#!bin/bash

leanYearMonths=(31 28 31 30 31 30 31 31 30 31 30 31)

a=$(($(date +%m)-1))

for i in {0..11}
do
    if [ $i -eq $a ]; then
    echo ${leanYearMonths[$i]} "days in the current month"
    fi
done
