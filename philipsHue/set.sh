#!/bin/sh

source api.sh

# sets color temperature, ranges between 2200 and 6500 in K
setTemp() { 
	echo "Not yet implimented"
}

# sets the transition speed in seconds
setSpeed() {
	put '{"transitiontime":'$2'}' $1
}

# sets hue, ranges from 0 to 360
setHue() {
	echo "Not yet implimented"
}

# sets brightness, ranges from 0 to 100
setBrightness() {
	echo "Not yet implimented"
}

# sets the hue saturation, ranges from 0 to 100
setSaturation() {
	echo "Not yet implimented"
}

# turns the light off if on, and vise versa
toggleState() {
	echo "Not yet implimented"
}

# turns the selected light on
turnOn() {
	echo "Not yet implimented"
}

# turns the selected light off
turnOff() {
	echo "Not yet implimented"
}

# loops through colors for a diven duration
simpleLoop() {
	echo "Not yet implimented"
}

# loops through colors, each color for a given duration
timedLoop() {
	echo "Not yet implimented"
}

# sends a data json to the specified light
put() {
	result=$(curl -s --request PUT --data $1 http://$ip/api/$key/lights/$2/state)
}
