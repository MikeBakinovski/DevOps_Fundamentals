## 03 Variable Types and Declarations
#### Task 1
Create string variable with 19790525 value in it.<br/> 

#### Answer 1

```powershell
[string]$string=19790525
$string
$string.GetType()
```

![]()

---
#### Task 2
List user’s home directory file path and get datatype for it.<br/>

#### Answer 2

```powershell
$HOME
$HOME.GetType()
```

![]()

---
#### Task 3
List some single file in user’s home directory and get datatype for it.<br/>

#### Answer 3

```powershell
gci -af -Path $home -Recurse | Select-Object -First 3 | 
%{Write-Host File path: $_.FullName; Write-Host File type : $_.GetType().Name; Write-Host}
```

![]()

---
#### Task 4
List some single directory in user’s home directory and get datatype for it.<br/>

#### Answer 4

```powershell
gci -ad -Path $home -Recurse | Select-Object -First 3 | 
%{Write-Host File path: $_.FullName; Write-Host File type : $_.GetType().Name; Write-Host}
```

![]()
