read -p "Word 1: " word1
read -p "Word 2: " word2
read -p "Word 3: " word3
read -p "Word 4: " word4

if [ "$word1" = "$word2" -a "$word2" = "$word3" -a "$word3" = "$word4" ]
then 
	echo "Match: Words 1, 2, 3 and 4"
elif [ "$word1" = "$word2" -a "$word2" = "$word3" ]
then
	echo "Match: Words 1, 2 and 3"
elif [ "$word1" = "$word3" -a "$word3" = "$word4" ]
then
	echo "Match: Words 1, 3 and 4"
elif [ "$word2" = "$word3" -a "$word3" = "$word4" ]
then
	echo "Match: Words 2, 3 and 4"
elif [ "$word1" = "$word2" -a "$word2" = "$word4" ]
then
	echo "Match: Words 1, 2 and 4"
elif [ "$word1" = "$word2" ]
then
	echo "Match: Words 1 and 2"
elif [ "$word1" = "$word3" ]
then
	echo "Match: Words 1 and 3"
elif [ "$word1" = "$word4" ]
then
	echo "Match: Words 1 and 4"
elif [ "$word2" = "$word3" ]
then
	echo "Match: Words 2 and 3"
elif [ "$word2" = "$word4" ]
then
	echo "Match: Words 2 and 4"
elif [ "$word3" = "$word4" ]
then
	echo "Match: Words 3 and 4"
else
	echo "No matching words"
fi