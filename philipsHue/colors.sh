#!/bin/sh

source set.sh

setColor() {
	case $2 in
		
		# basic colors
	   "red")
			echo "Color not avaliable"
	      ;;
	   "blue")
			echo "Color not avaliable"
	      ;;
	   "yellow")
			echo "Color not avaliable"
	      ;;
	   "green")
			echo "Color not avaliable"
	      ;;
	   "pink")
			echo "Color not avaliable"
	      ;;
	   "purple")
			echo "Color not avaliable"
	      ;;
	   "orange")
			echo "Color not avaliable"
	      ;;
	   "cyan")
			echo "Color not avaliable"
	      ;;
			
		# shades of white
	   "warmest")
	      echo "Color not avaliable"
	      ;;
		"candle")
	      echo "Color not avaliable"
	      ;;
		"warm")
	      echo "Color not avaliable"
	      ;;
	   "neutral")
	      echo "Color not avaliable"
	      ;;
	   "flourescent")
	      echo "Color not avaliable"
	      ;;
	   "cool")
	      echo "Color not avaliable"
	      ;;
		"sunlight")
	      echo "Color not avaliable"
	      ;;
	   "coolest")
	      echo "Color not avaliable"
	      ;;
	
		# custom colors
		"rudi")
	      echo "Color not avaliable"
	      ;;
		"spring")
	      echo "Color not avaliable"
	      ;;
		"ocean")
	      echo "Color not avaliable"
	      ;;
		"shasta")
			echo "Color not avaliable"
	      ;;
		"blood")
			echo "Color not avaliable"
	      ;;
		"sunset")
			echo "Color not avaliable"
	      ;;
		"sky")
			echo "Color not avaliable"
	      ;;
		"rose")
			echo "Color not avaliable"
	      ;;
		"azure")
			echo "Color not avaliable"
	      ;;
		
		# error, color not found
	   *)
	     echo "Color not found"
	     ;;
	esac
}
