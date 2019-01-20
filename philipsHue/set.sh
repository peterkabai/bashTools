#!/bin/sh

source api.sh

# sets color temperature to a specific warmth
setTemp() {
	# temperature ranges between 2200K and 6500K
	ct=$(echo $((($2-2200)*(154-500)/(6500-2200)+500)))
	put '{"ct":'$ct'}' $1
}

# sets the transition speed in seconds
setSpeed() {
	put '{"transitiontime":'$2'}' $1
}

# sets hue to a color
setHue() {
	# hue ranges from 0 to 360
	hue=$(echo $(($2*65535/360)))
	put '{"hue":'$hue'}' $1
}

# sets brightness, 0 to 100
setBrightness() {
	bri=$(echo $(($2*254/100)))
	put '{"bri":'$bri'}' $1
}

# sets the hue saturation, 0 to 100
setSaturation() {
	sat=$(echo $(($2*254/100)))
	put '{"sat":'$sat'}' $1
}

# turns the light off if on, and vise versa
toggleState() {
	state=$(lightIsOn $1)
	if [ $state == 'false' ]
	then
		turnOn $1
		echo "Light" $1 "turned on"
	else
		turnOff $1
		echo "Light" $1 "turned off"
	fi
}

# turns the selected light on
turnOn() {
	put '{"on":true}' $1
}

# turns the selected light off
turnOff() {
	put '{"on":false}' $1
}

# sends a data json to the specified light
put() {
	result=$(curl -s --request PUT --data $1 http://$ip/api/$key/lights/$2/state)
}
