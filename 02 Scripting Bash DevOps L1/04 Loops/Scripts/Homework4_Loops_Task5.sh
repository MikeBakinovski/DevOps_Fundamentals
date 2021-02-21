#!/bin/bash
clear
magicNumber=$(( $RANDOM % 100 ))
echo $magicNumber
while
read -r -p "Gues number from in range 0-100? " Input

do true;
    if [ $Input -lt $magicNumber ]; then
        echo "Your choise less than magic number"
    elif [ $Input -gt $magicNumber ]; then
        echo "Your choise greater than magic number"
    else
        echo "Your choise equal to magic number. You win!"
        break
    fi
done
