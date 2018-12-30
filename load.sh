#!/bin/sh

# Color codes
reset="\033[0;00m"
red="\033[1;91m"
green="\033[1;32m"
cyan="\033[1;36m"
yellow="\033[1;93m"
blue="\033[0;34m"
white="\033[1;37m"

# Define the animation elements here
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

# Gets the number of elements in the animation array
index=0
arraylLength=${#array[@]}
indexLength=`expr $arraylLength - 1`

# Start the whole animation on a new line
echo ""

# Run till the previous command finishes
while kill -0 $! >/dev/null 2>&1
do
	# Go up a line, delete, print text and animation
	printf "\033[1A\033[K$1 ${array[$index]}\n"
	
	# Cycle through the animation array
	if [ $index -lt $indexLength ] 
	then
		index=`expr $index + 1`
	else
		index=0
	fi
	
	# Set default sleep time, but update if one was provided
	sleepTime=0.25
	if ! [ -z $3 ]
	then
		sleepTime=$3
	fi
	
	# Sleep for a specific amount of time
	sleep $sleepTime
done

# Clean up by deleting the loading animation and text
printf "\033[1A\033[K"