#!/bin/bash

if [ $# -eq 0 ]
then
	exit
fi

if [ $1 == '--date' ]
then
	date
fi
