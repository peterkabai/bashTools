# create a blank file
touch testFiles/empty.txt

# save calander to a file
cal > testFiles/currentMonth.txt

# save the list of useres to a file
who > testFiles/users.txt

# save the date to a new file
date > testFiles/data.txt

# save the output of a command to a file
cat testFiles/text.txt > testFiles/textDuplicate.txt

# change the date modified of the file
touch -t 200301310846.26 testFiles/textDuplicate.txt

# change the directory
cd .

# print the working directory
pwd

# create and remove directories
mkdir folder
rmdir folder

# change file permissions
chmod 777 testFiles/users.txt

# remove a file
rm testFiles/empty.txt