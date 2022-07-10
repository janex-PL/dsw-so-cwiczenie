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
	scriptName="${0##*/}"
	for i in {1..100}
	do
		fileName="log$i"
		date="$(date)"
		echo "$fileName $scriptName $date" >> $fileName
	done
fi
