#!/bin/sh
file="files/sampleXML.xml"

text="$(cat $file)"
echo "$text"

needle="<test "
elements=($(grep -o $needle < $file | wc -l))
echo "Number of elements: $elements"