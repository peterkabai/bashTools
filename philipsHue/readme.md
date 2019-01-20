# Philips Hue CLI

This project is a CLI for the Philips Hue bridge, and compatible bulbs.

* Set the hue
* Set the brightness
* Set the saturation
* Set the color temperature
* Start color loops and scenes

# CLI Usage

setColor 1 "red"  
setTemp 1 6500  
setBrightness 1 50  

More detailed info coming soon...

# Basic Philips Hue API Attributes

### Hue:
Ranges from 0 to 65535
Set via the "hue" attribute

### Brightness:
Ranges from 0 to 254
Set via the "bri" attribute

### Saturation: 
Ranges from 0 to 254 
Set via the "sat" attribute

### Color Temperature:
Ranges from 154 to 500
Set via the "ct" attribute
