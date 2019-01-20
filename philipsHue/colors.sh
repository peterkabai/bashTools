#!/bin/sh

source set.sh

setColor() {
	case $2 in
		
		# basic colors
	   "red")
			setHue $1 0
			setSaturation $1 100
	      ;;
	   "blue")
			setHue $1 250
			setSaturation $1 100
	      ;;
	   "yellow")
			setHue $1 50
			setSaturation $1 100
	      ;;
	   "green")
			setHue $1 100
			setSaturation $1 50
	      ;;
	   "pink")
			setHue $1 330
			setSaturation $1 100
	      ;;
	   "purple")
			setHue $1 275
			setSaturation $1 50
	      ;;
	   "orange")
			setHue $1 30
			setSaturation $1 100
	      ;;
	   "cyan")
			setHue $1 175
			setSaturation $1 50
	      ;;
			
		# shades of white
	   "warmest")
	      setTemp $1 2200
	      ;;
		"candle")
	      setTemp $1 2300
	      ;;
		"warm")
	      setTemp $1 2700
	      ;;
	   "neutral")
	      setTemp $1 4000
	      ;;
	   "flourescent")
	      setTemp $1 4450
	      ;;
	   "cool")
	      setTemp $1 5000
	      ;;
		"sunlight")
	      setTemp $1 5850
	      ;;
	   "coolest")
	      setTemp $1 6500
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
			setHue $1 178
			setSaturation $1 100
	      ;;
		"blood")
			setHue $1 350
			setSaturation $1 52
	      ;;
		"sunset")
			setHue $1 17
			setSaturation $1 100
	      ;;
		"sky")
			setHue $1 200
			setSaturation $1 91
	      ;;
		"rose")
			setHue $1 348
			setSaturation $1 100
	      ;;
		"azure")
			setHue $1 205
			setSaturation $1 87
	      ;;
		
		# error, color not found
	   *)
	     echo "Color not found"
	     ;;
	esac
}
