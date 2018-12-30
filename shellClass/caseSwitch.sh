echo "\n Menu\n"
echo " a. Current date and time"
echo " b. Users currently logged in"
echo " c. Name of working directory"
echo " d. Contents of working directory"
echo " e. Show calander"
read -p "Enter: " input

case "$input" in
	a)
	date
	;;
	b)
	who
	;;
	c)
	pwd
	;;
	d)
	ls
	;;
	e)
	cal
	;;
	*)
	echo "There was no selection"
	;;
esac
