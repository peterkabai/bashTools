#!/bin/sh

file="files/largeSample.txt"
size=`du -k $file | cut -f1`

# Color codes
reset="\033[0m"
red="\033[91m"
green="\033[92m"
blue="\033[93m"
yellow="\033[34m"

if [ $size -gt 1024 ]
then	
	echo $red"Whoops! This file is over 1mb"$reset
	echo "It may take forever to process"
	read -p "Continue anyway (y/n)? " cont
	if [ "$cont" = "n" ]
	then
	  echo $red"Right-o, exiting..."$reset
	  exit
	fi
fi