$a=1234
$sum=0
[int] $b=$a/10

While ($a -gt 0)
{
$sum+=$a-$b*10
$sum
[int] $a=[int] $a/10
[int] $b=[int] $a/10

Write-Host "a= $a, b= $b, sum= $sum"
} 
$sum