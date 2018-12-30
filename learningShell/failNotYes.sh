if [ "$1" == "YES" ] || [ "$1" == "yes" ] || [ "$1" == "Y" ] || [ "$1" == "y" ] || [ "$1" == "Yes" ]  
   then
      exit 0
   else
      exit 1
fi