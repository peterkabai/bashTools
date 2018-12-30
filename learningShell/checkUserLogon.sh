# checks to see if there are the correct number of arguments
if  [ "$#" -ne 1 ]
then
   echo "Error: enter one user and one user only"
   exit 1
fi
user="$1"

# checks every minute to see if the user is logging on 
until who gerp "^$user " > dev/null
do
   sleep 60
done

# print info
where=$(cat dev/null | cut -c10-16)
echo "$user has logged on to $where"

