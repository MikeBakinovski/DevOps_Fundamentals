#!/bin/bash

clear
cp accounts.csv accounts_new.csv
# name column lookup
header=`head -n1 accounts.csv | tr -d "\n"`
IFS=','
header=$header
count=0
for h in $header
do
  ((count++))
  if [ $h == name ]; then
    break
  fi
done
echo name found in conumn $count
IFS=$OIFS

# reading lines and editing a new file 
{ read
while read -r line
do
name=$line
IFS=','
set -- $name
IFS=' '
set --  ${!count}
name="${1^} ${2^}"
sed -i "s/$1 $2/$name/g" accounts_new.csv 

IFS=$OIFS

done } < accounts.csv