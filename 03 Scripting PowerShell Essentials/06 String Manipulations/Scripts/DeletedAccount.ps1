clear
[int]$sum=0
for([int]$i=1; $i -le 100; $i++){
if($i%3 -eq 0){
Write-Host %3 $i
$sum+=$i
}
if($i%7 -eq 0){
Write-Host %7 $i
$sum+=$i
}
}
$sum