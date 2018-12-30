# setup
clear
text="This string has spaces"
echo Original String:
echo $text

# using tr
text=$(echo $text | tr -d ' ')
echo Using tr:
echo $text

# reset
text="This string has spaces"

# using sed
text=$(echo $text | sed 's/ //g')
echo Using sed:
echo $text