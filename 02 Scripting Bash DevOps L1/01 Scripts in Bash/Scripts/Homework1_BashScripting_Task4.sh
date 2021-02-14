#!/bin/bash

echo
echo "Home dir: " $HOME
echo "User name: " ${username=`whoami`}
echo "User ID: " ${uid=`id | cut -d' ' -f1 | cut -d= -f2`} 
echo "Group Information: " ${gid=`id | cut -d' ' -f2 | cut -d= -f2`}
echo "Terminal: " $TERM
echo "Current directory: " ${cdir=`pwd`}
echo "System date/time: " ${datetime=`date`}
echo
