cd ../util/naegleria
bin/compile ../../$1 > $1.s
gcc -o $2 $1.s
echo -e "File saved to $(pwd)/$2"
