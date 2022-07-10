#!/bin/bash

if [ $# -eq 0 ]
then
	exit

elif [ $1 == '--help' ]
then
	echo "Available arguments: "
	echo " --date : displays current date"
	echo " --logs NUMBER: creates log file NUMBER times containing file name, script name and current date, default number is 100" 
	echo " --help : displays this message"
elif [ $1 == '--date' ]
then
	date

elif [ $1 == '--logs' ]
then
	scriptName="${0##*/}"i
	loopLimit=100
	if [ $# -eq 2 -a $2 -gt 0 ]
	then
		loopLimit=$2
	fi

	for ((i=1; i<=$loopLimit; i++))
	do
		fileName="log$i"
		date="$(date)"
		echo "$fileName $scriptName $date" >> $fileName
	done
fi
