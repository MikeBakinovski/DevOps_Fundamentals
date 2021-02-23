#!/bin/bash

getULS () {
    ULS=$(cat /etc/passwd | grep $1 | cut -d: -f7)
}

Answer () {
    if [ -z "$ULS" ]; then
        echo -e "\e[31mUser '$i' not found\e[0m"
    elif [ $ULS != "/bin/bash" ]; then
	echo -e "\e[33m$i - System user\e[0m"
    else
        eval echo "User: $i, home directory: " ~$i
    fi
}

for i in "$@"
do
    getULS $i
    Answer
done
