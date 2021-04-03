## 04 Arrays and Hash Tables
#### Task 1
Create string variable with 19790525 value in it.<br/> 

#### Answer 1

```powershell
[string]$string=19790525
$string
$string.GetType()
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/03%20Variable%20Types%20and%20Declarations/Images/VTD1.jpg)

---
#### Task 2
List user’s home directory file path and get datatype for it.<br/>

#### Answer 2

```powershell
$HOME
$HOME.GetType()
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/03%20Variable%20Types%20and%20Declarations/Images/VTD2.jpg)

---
#### Task 3
List some single file in user’s home directory and get datatype for it.<br/>

#### Answer 3

```powershell
gci -af -Path $home -Recurse | Select-Object -First 1 | 
%{Write-Host File path: $_.FullName; Write-Host File type : $_.GetType().Name; Write-Host}
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/03%20Variable%20Types%20and%20Declarations/Images/VTD3.jpg)

---
#### Task 4
List some single directory in user’s home directory and get datatype for it.<br/>

#### Answer 4

```powershell
gci -ad -Path $home -Recurse | Select-Object -First 1 | 
%{Write-Host File path: $_.FullName; Write-Host File type : $_.GetType().Name; Write-Host}
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/03%20Variable%20Types%20and%20Declarations/Images/VTD4.jpg)
