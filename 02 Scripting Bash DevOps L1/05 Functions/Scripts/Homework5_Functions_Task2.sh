#!/bin/bash

PartyApproval () {
	if [ $1 -ge 18 ]; then
		echo -e "\e[32mYou may go to the party.\e[0m"
	elif [ $2 == "yes" ]; then
		echo -e "\e[33mYou may go to the party but must be back before midnight.\e[0m"
	else
		echo -e "\e[31mYou cannot go to the party.\e[0m"
	fi
}

PartyApproval $@