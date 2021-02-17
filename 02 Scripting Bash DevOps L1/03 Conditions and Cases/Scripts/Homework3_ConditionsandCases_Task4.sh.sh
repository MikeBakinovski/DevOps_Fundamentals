#!/bin/bash

cat /etc/shadow 2> /dev/null > /dev/null

if [ $? != 0 ]
then
	echo -e "Command \e[31mfailed\e[0m"
else
	echo -e "Command \e[32msucceeded\e[0m"
fi