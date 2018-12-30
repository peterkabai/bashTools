words=$1
pattern=$2

echo $words | sed -e 's/\('$pattern'\)$//g'