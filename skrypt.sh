#!/bin/bash

if [ $# -eq 0 ]
then
	exit
fi

if [ $1 == '--date' ]
then
	date
fi

if [ $1 == '--logs' ]
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
