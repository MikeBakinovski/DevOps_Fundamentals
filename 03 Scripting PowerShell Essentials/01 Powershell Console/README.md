## 01 Powershell Console
#### Task 1
Set PowerShell execution policy for local computer in Remote Sign only mode.<br/> 

#### Answer 1

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/01%20Powershell%20Console/Images/CONS1.jpg)

---
#### Task 2
 Set PowerShell execution policy in Restricted only mode. Run module1-task2.ps1 script from cmd tool using bypass command option for PowerShell.<br/>

#### Answer 2

```powershell
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine
```

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/01%20Powershell%20Console/Images/CONS2A.jpg)

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/01%20Powershell%20Console/Images/CONS2B.jpg)
