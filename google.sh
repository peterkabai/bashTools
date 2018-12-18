#!/bin/bash

reset=`tput sgr0`
black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`

if [ $# -gt 2 ]; then
	echo $red"Error: Too many arguments entered"$reset
	exit
fi
while test $# -eq 2; do
	case "$1" in
		-i|-image)
		string=$( echo $2 | sed s/\ /\+/g )
		echo "Running "$blue"G"$red"o"$yellow"o"$blue"g"$green"l"$red"e "$blue"Image"$reset" search..."
		open https://www.google.com/#q=$string'&tbm=isch'
		exit
		;;
		-w|-web)
		string=$( echo $2 | sed s/\ /\+/g )
		echo "Running "$blue"G"$red"o"$yellow"o"$blue"g"$green"l"$red"e "$blue"Web"$reset" search..."
		open https://www.google.com/#q=$string
		exit
		;;
		-v|-video)
		string=$( echo $2 | sed s/\ /\+/g )
		echo "Running "$blue"G"$red"o"$yellow"o"$blue"g"$green"l"$red"e "$blue"Video"$reset" search..."
		open https://www.google.com/#q=$string'&tbm=vid'
		exit
		;;
		*)
		echo "$(color red)Error: Invalid search option$(color reset)"
		exit
		;;
	esac
done
if [ $# -eq 1 ]; then
	string=$( echo $1 | sed s/\ /\+/g )
	echo "Running "$blue"G"$red"o"$yellow"o"$blue"g"$green"l"$red"e "$blue"Web"$reset" search..."
	open https://www.google.com/#q=$string
	exit
fi
if [ $# -eq 0 ]; then
	echo $red"Error: Enter a search string after the command"$reset
	exit
fi