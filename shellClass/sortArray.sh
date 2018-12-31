array=("a" "d" "b" "c" "z" "h")
sorted=($(sort <<<"${array[*]}"))
printf "[%s]\n" "${sorted[@]}"