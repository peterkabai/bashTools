#!/bin/shell
# use `sh color.sh help` for instructions

reset=`tput sgr0`
black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`

if [ $# -eq 0 ]; then
	echo "Error: No color specified, use 'color help' to see options"
	exit
fi
if [ $1 = "help" ]; then
	echo ""
	echo "How to use this command:"
	echo "  Use 'color colorname' to change color"
	echo "  Use 'color reset' to reset to default"
	echo "Colors avaliable:"
	echo "  ${white}white"
	echo "  ${black}black"
	echo "  ${red}red"
	echo "  ${green}green"
	echo "  ${yellow}yellow"
	echo "  ${blue}blue"
	echo "  ${magenta}magenta"
	echo "  ${cyan}cyan${reset}"
	echo ""
elif [ $1 = "reset" ]; then
	echo $reset
	exit
elif [ $1 = "black" ]; then
	echo $black
	exit
elif [ $1 = "red" ]; then
	echo $red
	exit
elif [ $1 = "green" ]; then
	echo $green
	exit
elif [ $1 = "yellow" ]; then
	echo $yellow
	exit
elif [ $1 = "blue" ]; then
	echo $blue
	exit
elif [ $1 = "magenta" ]; then
	echo $magenta
	exit
elif [ $1 = "cyan" ]; then
	echo $cyan
elif [ $1 = "white" ]; then
	echo $white
	exit
else
	echo "The color you wanted is not avaliable, use 'color help' to see options"
	exit
fi
exit