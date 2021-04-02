## 04 Loops
#### Task 1
Set PowerShell execution policy for local computer in Remote Sign only mode.<br/> 

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```
#### Answer 1

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/01%20Powershell%20Console/Images/CONS1.jpg)

---
#### Task 2
 Set PowerShell execution policy in Restricted only mode. Run module1-task2.ps1 script from cmd tool using bypass command option for PowerShell.<br/>

```powershell
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine
```
#### Answer 2

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/01%20Powershell%20Console/Images/CONS2A.jpg)

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20Scripting%20PowerShell%20Essentials/01%20Powershell%20Console/Images/CONS2B.jpg)

---
### HOME TASKS REQUIREMENTS
1. You should use Bash for executing required tasks.<br/>
2. Use clear formatting.<br/>
3. No errors on execution.<br/>
4. Use best practices during development.<br/>
5. Your scripts should be readable.<br/>
6. Use comments where is needed.<br/>
7. Use console output and logging to show result of your work.<br/>

---
### HOMEWORK RESULTS
1. Create screenshots containing the following information:<br/>
* All screenshots should contain system datetime of your host OS.<br/>
* Output of the console with execution result of your code.<br/>

2. Put all of your  *.sh files into zip archive following naming conventions:<br/>

   for scripts - Homework1_BashScripting_TaskTaskNumber.ps1 (ex. Homework1_BashScripting_Task1.sh)<br/>
   for archive - Name_Surname_Bash_Homework1_BashScripting.zip. (ex. Ivan_Ivanov_Bash_Homework1_BashScripting.zip)<br/>

3. All home task artifacts should be attached to the appropriate chapter in learn.<br/>
