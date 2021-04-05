$string='qwe'

$array=$string.ToCharArray()

for($i=($array.Length-1); $i -ge 0; $i--){
$array2+=$array[$i]
}
$array2