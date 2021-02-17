#!/bin/bash
ps -ef | grep "apache2" | grep -v grep > /dev/null

if [ $? = 0 ]
then
	echo -e "\e[32mThis machine is running a web server\e[0m"
else
	echo -e "This machine is \e[31mNOT\e[0m running a web server"
fi