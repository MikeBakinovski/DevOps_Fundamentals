#!/bin/bash
clear
while 
    read -r -p "What is your name? " Input
    [ $Input != "stop" ] ;
do true;
echo "Hello," $Input;
done