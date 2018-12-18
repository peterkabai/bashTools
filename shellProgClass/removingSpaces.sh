# Setup
clear
text="This string has spaces"
echo Original String:
echo $text

# Using tr
text=$(echo $text | tr -d ' ')
echo Using tr:
echo $text

# Reset
text="This string has spaces"

# Using sed
text=$(echo $text | sed 's/ //g')
echo Using sed:
echo $text