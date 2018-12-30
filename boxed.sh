#!/bin/sh

style=$1
text=$2
count=${#text}
case "$style" in
	1)
	echo "$(printf %$(($count + 4))s |tr ' ' '*')"
	echo "* $text *"
	echo "$(printf %$(($count + 4))s |tr ' ' '*')"
	;;
	2)
	echo "$(printf %$(($count + 4))s |tr ' ' '•')"
	echo "• $text •"
	echo "$(printf %$(($count + 4))s |tr ' ' '•')"
	;;
	3)
	echo "$(printf %$(($count + 4))s |tr ' ' '█')"
	echo "█ $text █"
	echo "$(printf %$(($count + 4))s |tr ' ' '█')"
	;;
	4)
	echo "╔$(printf %$(($count + 2))s |tr ' ' '═')╗"
	echo "║ $text ║"
	echo "╚$(printf %$(($count + 2))s |tr ' ' '═')╝"
	;;
	*)
	echo "Please enter a style"
	;;
esac