## 02 PowerShell Commands
#### Task 1
Get all processes where name starts with C (capital C).<br/> 

#### Answer 1

```powershell
Get-Process | Where-Object{$_.Name.StartsWith('C')}
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/02%20PowerShell%20Commands/Images/COMM1.jpg)

---
#### Task 2
Find all cmdlets that working with windows services.<br/>

#### Answer 2

```powershell
Get-Command -Noun Service
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/02%20PowerShell%20Commands/Images/COMM2.jpg)

---
#### Task 3
Get online help for Get-ChildItem cmdlet.<br/>

#### Answer 3

```powershell
Get-Help -Online Get-ChildItem
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/02%20PowerShell%20Commands/Images/COMM3.jpg)

---
#### Task 4
Update help for New-Item cmdlet.<br/>

#### Answer 4

```powershell
Update-Help
```

![]()
