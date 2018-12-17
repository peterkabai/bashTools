#!/bin/sh

# prints the wifi network
wifiName=$(networksetup -getairportnetwork en1 | cut -c 24-)
wifiPassword=$(security find-generic-password -wa $wifiName)
echo $wifiPassword
