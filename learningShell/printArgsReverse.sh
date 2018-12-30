for ((i=$#; i>0; i--)); 
do
  echo "${!i} \c"
done
echo ""