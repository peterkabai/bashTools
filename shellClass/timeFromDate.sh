# gets the current hours and minutes
hours=$(date | cut -c12-13)
minutes=$(date | cut -c15-16)

# sets the AM or PM value
if [ "$hours" -ge "12" ] 
   then
      time="PM"
   else
      time="AM"
fi

# changes times past noon to the correct format
if [ "$hours" -gt "12" ] 
   then
      hours=$[$hours-12]
fi

# displays the formated time
echo $hours:$minutes$time