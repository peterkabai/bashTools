#!/bin/sh

source colors.sh
source set.sh
source info.sh

turnOff 1
lightIsOn 1
turnOn 1
lightIsOn 1
setBrightness 1 100

setColor 1 "red"
sleep 0.5
setColor 1 "blue"
sleep 0.5
setColor 1 "yellow"
sleep 0.5
setColor 1 "green"

toggleState 1
sleep 3
toggleState 1
