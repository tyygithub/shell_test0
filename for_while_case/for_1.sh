arr=("a" "b" "c") 
echo "arr is (${arr[@]})"
echo "item in array:"
for i in ${arr[@]} 
do
 echo "$i"
done
