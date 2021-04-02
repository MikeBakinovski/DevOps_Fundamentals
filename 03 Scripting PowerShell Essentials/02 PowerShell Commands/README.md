## 02 PowerShell Commands
#### Task 1
Get all processes where name starts with C (capital C).<br/> 

```powershell
Get-Process | Where-Object{$_.Name.StartsWith('C')}
```
#### Answer 1

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/02%20PowerShell%20Commands/Images/COMM1.jpg)

---
#### Task 2
Find all cmdlets that working with windows services.<br/>

```powershell
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine
```
#### Answer 2

![]()

---
#### Task 3
Get online help for Get-ChildItem cmdlet.<br/>

```powershell
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine
```
#### Answer 3

![]()

---
#### Task 4
Update help for New-Item cmdlet.<br/>

```powershell
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine
```
#### Answer 4

![]()
