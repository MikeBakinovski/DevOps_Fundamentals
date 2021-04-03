clear
[Hashtable[]]$array = $null

$array += @{key1='1'; key2=2; key3='a'}
$array += @{key1='3'; key2=4; key3='b'}
$array += @{key1='5'; key2=6; key3='c'} 
$array[2].key2
