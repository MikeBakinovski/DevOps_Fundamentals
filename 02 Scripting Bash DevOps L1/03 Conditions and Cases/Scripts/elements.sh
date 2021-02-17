function rand() {
    echo $(($RANDOM % ${1}))
}
sum=0
max=0
maxrand=100
min=$maxrand
for item in `seq 1 10`
do
    value="$(rand $maxrand)"
    echo "[$item] => ${value}"
    sum=$((sum+value))
    if [ $value -gt $max ]
    then
        max=$value
    elif [ $value -lt $min ]
    then
        min=$value
    fi
done

echo "min="$min
echo "max="$max
echo "sum="$sum