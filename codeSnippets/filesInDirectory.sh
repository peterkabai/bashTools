#!/bin/sh

# difines dir to look in for files 
files=./files/series/*.txt

# counts the number of files in the directory
numberOfFiles=0
for file in $files
do
 numberOfFiles=`expr $numberOfFiles + 1`
done

# processes each file
filesProcessed=0
for file in $files
do
  #echo "Processing $file file... $(cat < $file)"
  echo "Processing $file"
  filesProcessed=`expr $filesProcessed + 1`
  echo $filesProcessed" of "$numberOfFiles" files processed"
done