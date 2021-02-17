## 03 Conditions and Cases
#### Task 1
Develop a script that prints information about the current month.<br/> 
The script should print the number of days of the current month.<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ cat month-days.sh
#!/bin/bash
leanYearMonths=(31 28 31 30 31 30 31 31 30 31 30 31)
## write your code here ##
[devops@localhost ~]$
[devops@localhost ~]$ ./month-days.sh
31
```
#### Answer 1

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/03%20Conditions%20and%20Cases/Images/CaCT1.JPG)

---
#### Task 2
2. Do the same, using a case statement and an alternative use of the date command.<br/>
#### Answer 2

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/03%20Conditions%20and%20Cases/Images/CaCT2.JPG)

---
#### Task 3
Develop a script called 03-which-daemon.sh that checks<br/>
if the httpd and init daemons are running on your system.<br/>
If an httpd is running, the script should print a message like, "This machine is running a web server."<br/> 
Use ps to check on processes.<br/>
 
Example of script execution:<br/>
```bash
[devops@localhost ~]$ ps -ef | grep [h]ttpd
apache   27906 29214  0 Sep29 ?    00:00:00 /usr/sbin/httpd -DFOREGROUND
root     29214     1  0 Sep27 ?    00:00:35 /usr/sbin/httpd -DFOREGROUND
[devops@localhost ~]$
[devops@localhost ~]$ ./03-which-daemon.sh
This machine is running a web server.
[devops@localhost ~]$
```
#### Answer 3

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/03%20Conditions%20and%20Cases/Images/CaCT3.JPG)

---
#### Task 4 
Write a script that executes the command cat /etc/shadow.<br/> 
If the command return a 0 exit status, report Command succeeded and exit with a 0 exit status.<br/>
If the command returns a non-zero exit status, report Command failed and exit with a 1 exit status.<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ ./03-get-shadow.sh
Command failed
[devops@localhost ~]$ sudo ./03-get-shadow.sh
Command succeeded
```
#### Answer 4

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/03%20Conditions%20and%20Cases/Images/CaCT4.JPG)

---
#### Task 5  
Modify following script:<br/>

Requirements:<br/>

* Script should print maximum number from generated list<br/>
* Script should print minimal number from generated list<br/>
* Script should print sum of all generated numbers<br/>
Expected output:<br/>
```bash
[devops@localhost ~]$ ./elements.sh
[1] => 65
[2] => 77
[3] => 57
[4] => 89
[5] => 30
[6] => 27
[7] => 10
[8] => 16
[9] => 95
[10] => 73
min=10
max=95
sum=539
 
[devops@localhost ~]$ cat elements.sh
#!/bin/bash
 
function rand() {
    echo $(($RANDOM % ${1}))
}
 
for item in `seq 1 10`
do
    value="$(rand 100)"
    echo "[$item] => ${value}"
done
 \## write your code here ##
 [devops@localhost ~]$
``` 
#### Answer 5

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/03%20Conditions%20and%20Cases/Images/CaCT5.JPG)

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
