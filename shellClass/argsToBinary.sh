for i in $*; do 
   echo "obase=2; $i" | bc
done
