# Chapter 11 Exercises 1 --- Peter Kabai

max=10
num="$#"

if [ "$num" -ge "$max" ]
then
   echo "Remove $num files? (y/n)"
   read confirm
   if ["$confirm" = "y"]
      for arg in $*
      do
         rm $arg
      done
      echo "Deleting... Done!"
      exit 0
   else
      echo "Files not deleted"
      exit 0
   fi
else
   for arg in $*
   do
      rm $arg
   done
   echo "Deleting... Done!"
   exit 0
fi