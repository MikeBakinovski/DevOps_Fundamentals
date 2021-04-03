## 04 Arrays and Hash Tables
#### Task 1
Create two-dimensional strong defined string array.<br/> 

#### Answer 1

```powershell
[string[][]]$array = @((1,2),('a','b'))
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/04%20Arrays%20and%20Hash%20Tables/Images/ARR1.jpg)

---
#### Task 2
Put three different hash-tables in array. Retrieve value from the second key in third hash table in array.<br/>

#### Answer 2

```powershell
[Hashtable[]]$array = $null

$array += @{key1='1'; key2=2; key3='a'}
$array += @{key1='3'; key2=4; key3='b'}
$array += @{key1='5'; key2=6; key3='c'} 
$array[2].key2
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/04%20Arrays%20and%20Hash%20Tables/Images/ARR2.jpg)

---
#### Task 3
Create nested hash-table and retrieve values by keys from it.<br/>

#### Answer 3

```powershell
clear
$person = @{}
$person.Name = 'Mike'
$person.Id = 105
$person.Address = @{}
$person.Address.Street = 'Sky'
$person.Address.City = 'Minsk'
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/04%20Arrays%20and%20Hash%20Tables/Images/ARR3.jpg)

---
#### Task 4
Transform hash-table into ordered hash-table sorted by value.<br/>
#### Example
```powershell

$hashTable = @{a = 12; g = 4; h = 1; t = 7; d = 8}
# Result
Name                           Value
----                           -----
h                              1
g                              4
t                              7
d                              8
a                              12
```
#### Answer 4

```powershell
clear
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
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/04%20Arrays%20and%20Hash%20Tables/Images/ARR4.jpg)
