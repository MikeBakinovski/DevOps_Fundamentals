#!/bin/bash

Check () {
	echo $(ps -ef | grep "[s]leep 1000")
}

if [ -z "$(Check)" ]; then
	sleep 1000 &
fi