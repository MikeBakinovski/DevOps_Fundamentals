clear
$num=1234
$len=$num.ToString().Length
$sum=0
$m=1
for($i=0; $i -lt $len; $i++){
$n=$num/$m%10
$sum+=$n
$m*=10
}
$sum

