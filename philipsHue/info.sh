#!/bin/sh

source api.sh

getAllInfo() {
	curl -s --request GET http://$ip/api/$key/lights
}

getLightInfo() {
	curl -s --request GET http://$ip/api/$key/lights/$1
}

lightIsOn() {
	info=$(getLightInfo $1)
	echo $info | cut -d':' -f 3 | cut -d',' -f 1
}
