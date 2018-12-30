files=0;
total=0;
lines=0;
for f in $(find files/series -name '*.txt'); 
do 
	files=`expr $files + 1`;
	lines=`wc -l < $f`;
	lines=`expr $lines + 1`;
	total=`expr $total + $lines`;
done
echo "Number of files: " $files;
echo "Number of lines: " $total;