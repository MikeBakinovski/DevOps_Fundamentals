﻿clear
$hashTable = @{
a = 12; 
g = 4; 
h = 1; 
t = 7; 
d = 8
}


$OrderedHashTable = [ordered]@{}
foreach ($Item in ($hashTable.GetEnumerator() | Sort-Object -Property value)) {
    $OrderedHashTable[$Item.Key] = $Item.Value
}
$OrderedHashTable