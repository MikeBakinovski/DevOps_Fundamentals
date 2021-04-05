clear
$str1 = "xyaabbbccccdefww"
$str2 = "xxxxyyyyabklmopq"

$arr=($str1+$str2).ToCharArray()

$arr = $arr | Sort -Unique
$string = $arr -join ""

$string
