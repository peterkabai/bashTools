#!/bin/sh

# sample use
# ping google.com -c 10 &>/dev/null &disown
# load "Loading, please wait" 3 0.2

# color codes
reset="\033[0;00m"
red="\033[1;91m"
green="\033[1;32m"
cyan="\033[1;36m"
yellow="\033[1;93m"
blue="\033[0;34m"
white="\033[1;37m"

# define the animation elements here
case $2 in
	1)
		array=(🙂 🙃)
		;;
	2)
		array=($red"o"$reset $yellow"oo"$reset $green"ooo"$reset $cyan"oooo"$reset)
		;;
	3)
		array=(🕛 🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚)
		;;
	4)
		array=("." ".." "..." "...." ".....")
		;;
	5)
		base=$blue
		moving=$white
		array=(
			$base""$moving"█"$base"██████████████████████████████"$reset
			$base"█"$moving"█"$base"█████████████████████████████"$reset
			$base"██"$moving"█"$base"████████████████████████████"$reset
			$base"███"$moving"█"$base"███████████████████████████"$reset
			$base"████"$moving"█"$base"██████████████████████████"$reset
			$base"█████"$moving"█"$base"█████████████████████████"$reset
			$base"██████"$moving"█"$base"████████████████████████"$reset
			$base"███████"$moving"█"$base"███████████████████████"$reset
			$base"████████"$moving"█"$base"██████████████████████"$reset
			$base"█████████"$moving"█"$base"█████████████████████"$reset
			$base"██████████"$moving"█"$base"████████████████████"$reset
			$base"███████████"$moving"█"$base"███████████████████"$reset
			$base"████████████"$moving"█"$base"██████████████████"$reset
			$base"█████████████"$moving"█"$base"█████████████████"$reset
			$base"██████████████"$moving"█"$base"████████████████"$reset
			$base"███████████████"$moving"█"$base"███████████████"$reset
			$base"████████████████"$moving"█"$base"██████████████"$reset
			$base"█████████████████"$moving"█"$base"█████████████"$reset
			$base"██████████████████"$moving"█"$base"████████████"$reset
			$base"███████████████████"$moving"█"$base"███████████"$reset
			$base"████████████████████"$moving"█"$base"██████████"$reset
			$base"█████████████████████"$moving"█"$base"█████████"$reset
			$base"██████████████████████"$moving"█"$base"████████"$reset
			$base"███████████████████████"$moving"█"$base"███████"$reset
			$base"████████████████████████"$moving"█"$base"██████"$reset
			$base"█████████████████████████"$moving"█"$base"█████"$reset
			$base"██████████████████████████"$moving"█"$base"████"$reset
			$base"███████████████████████████"$moving"█"$base"███"$reset
			$base"████████████████████████████"$moving"█"$base"██"$reset
			$base"█████████████████████████████"$moving"█"$base"█"$reset
			$base"██████████████████████████████"$moving"█"$base""$reset	
		)
		;;
esac

# gets the number of elements in the animation array
index=0
arraylLength=${#array[@]}
indexLength=`expr $arraylLength - 1`

# start the whole animation on a new line
echo ""

# run till the previous command finishes
while kill -0 $! >/dev/null 2>&1
do
	# go up a line, delete, print text and animation
	printf "\033[1A\033[K$1 ${array[$index]}\n"
	
	# cycle through the animation array
	if [ $index -lt $indexLength ] 
	then
		index=`expr $index + 1`
	else
		index=0
	fi
	
	# set default sleep time, but update if one was provided
	sleepTime=0.25
	if ! [ -z $3 ]
	then
		sleepTime=$3
	fi
	
	# sleep for a specific amount of time
	sleep $sleepTime
done

# clean up by deleting the loading animation and text
printf "\033[1A\033[K"

}
