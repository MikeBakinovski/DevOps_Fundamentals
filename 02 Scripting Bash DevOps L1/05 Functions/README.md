## 05 Functions
#### Task 1
Develop simple script which will be print numbers in range from 1 to 10. (Hint: try to use seq 10 20 with different options).<br/> 

Expected output:<br/>
```bash
[devops@localhost ~]$ ./seq10.sh
 1 2 3 4 5 6 7 8 9 10
```
#### Answer 1

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/04%20Loops/Images/LOOPT1.JPG)

---
#### Task 2
Develop simple script which will be print numbers in range from 20 to -20 with step=4. (Hint: try to use echo {80..100}; echo {80..100..3}).<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ ./double20.sh
 20 16 12 8 4 0 -4 -8 -12 -16 -20
```
#### Answer 2

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/04%20Loops/Images/LOOPT2.JPG)

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

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/04%20Loops/Images/LOOPT3.JPG)

---
#### Task 4 
Develop simple script which will be execute infinite while loop with reading input in variable (etc. var) (read command)<br/> 
and outputting message Hello ${var}. The has been ended when we enter word stop.<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ ./04-infinite.sh
Andrey
Hello, Andrey
Aliens
Hello, Aliens
stop
[devops@localhost ~]$
```
#### Answer 4

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/04%20Loops/Images/LOOPT4.JPG)

---
#### Task 5  
Let’s develop a simple console game! You’re given a script template (see below). Append script which will be:<br/>

* At the beginning of the game script randomly sets Magic number<br/>
* User is running script and trying to guess magic number: if entered number less than magic number, script outputs less; if entered number greater than magic number, script outputs greater; if user have guessed the magic number, script outputs You win!<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ cat 03-magic-number.sh
#!/bin/bash
magicNumber=$(( $RANDOM % 100 ))
## write your code here ##
[devops@localhost ~]$ ./03-magic-number.sh
10
less
20
greater
15
You win!
``` 
#### Answer 5

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/04%20Loops/Images/LOOPT5.JPG)

---
#### Task 6  
You’re given the file with varied paths. Depend on existing “/” at the end of each line create regular file (path without ‘/’) or directory (path with / at the end) with given path.<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ cat paths
/tmp/file1
/tmp/file2
/tmp/dir1/
/tmp/dir3/
/tmp/dir3/file3
[devops@localhost ~]$ cat paths | ./04-create-items.sh
[devops@localhost ~]$ ls –l /tmp
/tmp/dir1/
/tmp/dir3/
/tmp/file1
/tmp/file2
...
``` 
#### Answer 6

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/04%20Loops/Images/LOOPT6.JPG)

---
#### Task 7 
Using for loop output list of files in current directory with its owner.<br/>

Expected output:<br/>
```bash
[devops@localhost ~]$ ./04-get-files.sh
 Filename: file1, Owner: devops
 Filename: file2, Owner: devops
 ...
``` 
#### Answer 7

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/02%20Scripting%20Bash%20DevOps%20L1/04%20Loops/Images/LOOPT7.JPG)

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
