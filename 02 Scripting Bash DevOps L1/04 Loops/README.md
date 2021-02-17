## 04 Loops
#### Task 1
Develop simple script which will be print numbers in range from 1 to 10. (Hint: try to use seq 10 20 with different options).<br/> 

Expected output:<br/>
```bash
[devops@localhost ~]$ ./seq10.sh
 1 2 3 4 5 6 7 8 9 10
```
#### Answer 1

![]()

---
#### Task 2
2. Develop simple script which will be print numbers in range from 20 to -20 with step=4. (Hint: try to use echo {80..100}; echo {80..100..3}).<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ ./double20.sh
 20 16 12 8 4 0 -4 -8 -12 -16 -20
```
#### Answer 2

![]()

---
#### Task 3
You are given an array of numbers. Using only one loop perform the following tasks:<br/>
* Print only even numbers
* Don't print numbers in range [30, 60]
* Stop loop executing when number will be greater than 85

Expected output:<br/>
```bash
[devops@localhost ~]$ cat 04-numbers.sh
#!/bin/bash
array=$(seq 1 100)
for item in ${array}; do
## write your code here ##
done
[devops@localhost ~]$ ./04-numbers.sh
2
4
6
...
```
#### Answer 3

![]()

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

![]()

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
