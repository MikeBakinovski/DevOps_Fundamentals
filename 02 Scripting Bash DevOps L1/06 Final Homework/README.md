## 06 Final Homework
#### Task 1
Write a  Bash shell script program that takes a login name as an argument and outputs the home directory of the user.<br/> 

Expected output:<br/>
```bash
[devops@localhost ~]$ ./06-get-home.sh devops
/home/devops
[devops@localhost ~]$ bash 06-get-home.sh root
/root
[devops@localhost ~]$
```
#### Answer 1 (First version)

![]()

#### Answer 1 (Second version)

![]()

---
#### Task 2
If you are 18 or over, you may go to the party. If you aren't but you have a letter from your parents you may go but must be back before midnight. Otherwise you cannot go.<br/>

Requirements:</br>
* Script should expect 2 input parameters: the first - age, the second - yes/no (depends on whether you have letter from parents or don't)
* Script should generate appropriate output.

Expected output:<br/>
```bash
[devops@localhost ~]$ ./03-party-approve.sh 17 yes
You may go but must be back before midnight.
```
#### Answer 2

![]()

---
#### Task 3
Write a Bash shell script which prints out information about file or directory, provided in argument.<br/>

Requirements:<br/>
* Script should take the name of a file or directory as an argument and reports if the file is a directory, regular file or other
* Script should print out read, write and execute permission applied on the file or directory
* Use a sequence of if statements on the file name to determine the information
* Hint: try to use stat filename command

Expected output:<br/>
```bash
[devops@localhost ~]$ ./06-get-info.sh /home/devops
File: ‘/home/devops/adstaticwebsite’
Type: directory  
Permissions: (0775/drwxrwxr-x)
-------
File: ‘/home/devops/adstaticwebsite2’
Type: directory  
Permissions: (0775/drwxrwxr-x)
-------
File: ‘/home/devops/base.sh’
Type: regular file 
Permissions: (0775/-rwxrwxr-x)
```
#### Answer 3

![]()

---
#### Task 4 
Write a Bash shell script program that will read a list of numbers from arguments and the output is the sum and the product of the numbers.<br/> 

Expected output:<br/>
```bash
[devops@localhost ~]$ bash 06-get-sum.sh 1 2 3 10 20 6
Sum: 42
Prod: 7200
[devops@localhost ~]$
```
#### Answer 4

![]()

---
#### Task 5  
Write a Bash shell script program that will read a list of numbers from arguments and the output is the min and the max element of the numbers.<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ bash 06-get-min-max.sh 1 2 3 10 20 6
Min: 1
Max: 20
[devops@localhost ~]$
``` 
#### Answer 5

![]()

---
#### Task 6  
Develop a script which will be check whether sleep 1000 ran in background. If sleep 1000 haven’t run in background – do it:<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ ps -ef | grep "[s]leep 1000"
[devops@localhost ~]$
[devops@localhost ~]$ ./06-sleeper.sh
[devops@localhost ~]$ ps -ef | grep "[s]leep 1000"
devops   16958 26033  0 11:12 pts/0    00:00:00 sleep 1000
``` 
#### Answer 6

![]()

---
#### Task 7 
Script should print its’ full path and its’ name.<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ ./script.sh
/home/devops/script.sh
script.sh
[devops@localhost ~]$ cd /tmp
[devops@localhost tmp/]$ /home/devops/script.sh
/home/devops/script.sh
script.sh
``` 
#### Answer 7

![]()

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



Final Homework #1 
TASK
Company ABC has uncontrolled process of employee’s accounts creation. Currently process means adding names, email and other personal data manually to the accounts.csv file without any rules.

 Department head has decided to improve it based on the naming convention implementation. Good idea for newcomers, but what to do with current user’s list? You have been asked to help. Could you please develop automated way (bash script) and create new accounts_new.csv file based on current accounts.csv and below.

1)  Need to update column name. 

Name format:  first letter of name/surname uppercase and all other letters lowercase. Example: Susan Houston.
2) Need to update column email with domain @abc. 

Email format: first letter from name and full surname, lowercase. Example: shouston@abc.com.
Emails with the same ID should contain numbers. Example: Name Sean Houston, email shouston1@abc.com etc.
ATTACHMENTS:
accounts.csv
DEFINITION OF DONE
Developed bash script which automatically creates accounts_new.csv and updates columns name and email based on the rules above.

FINAL TASKS REQUIREMENTS
You should use Bash for executing required tasks.
Use clear formatting.
No errors on execution.
Use best practices during development.
Your scripts should be readable.
Use comments where is needed.
Use console output and logging to show result of your work
FINAL HOMEWORK RESULTS
Create screenshots containing the following information:
All screenshots should contain system datetime of your host OS.
Output of the console with execution result of your code.
Put all of your  *.sh files into zip archive following naming conventions:

for scripts - Final_Homework1_BashScripting.sh (ex. Final_Homework1_BashScripting.sh)
for archive - Name_Surname_Bash_Final_Homework1.zip. (ex. Ivan_Ivanov_Bash_Final_Homework1.zip)
All home task artifacts should be attached to the appropriate chapter in learn.
