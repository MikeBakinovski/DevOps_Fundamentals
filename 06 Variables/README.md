Tasks
 1. Write a shell script which prints current date and message:
Requirements:

Script should use current date and time, stored in variable
Script should print message, stored in variable
Output should be formatted as follows: [DATE] MESSAGE
Expected output:

[devops@localhost ~]$ ./message.sh
[Mon Sep 30 17:52:36 +03 2019] Hello, task2!
 

2. Run following script and fix errors
#!bin/bash
var1= "Hello, "
var2 = "broken"
var3 ="script!"
printf "%s %f %d" '$var1' "$var2" $var3
Example of corrected output:

[devops@localhost ~]$ ./fixed.sh
Hello, broken script!
 

3. Write a shell script which prints out value of global variable MY_VAR: 
Requirements:

Script should print out value of MY_VAR (defined outside the script)
If there is no value set for MY_VAR (no such variable in environment), script should print out default
Hint: check documentation
Expected output:

[devops@localhost ~]$ export MY_VAR=my_value
[devops@localhost ~]$ ./global.sh
MY_VAR=my_value
[devops@localhost ~]$ MY_VAR=my_value ./global.sh 
MY_VAR=my_value
[devops@localhost ~]$ unset MY_VAR  # reset variable
[devops@localhost ~]$ ./global.sh
MY_VAR=default
 

4. You can easily manipulate with string variables in bash. See the theory: https://www.tldp.org/LDP/abs/html/string-manipulation.html and perform the following tasks:
4.1 output 5 characters of substring from mystring at position=2 with one-line command
[devops@localhost ~]$ mystring=abcdefghijklmn
[devops@localhost ~]$ echo ${mystring:2:5}
cdefg
 

4.2 output hello variable with replacement word hello->goodbye with one-line command
[devops@localhost ~]$ hello="Hello world!"
[devops@localhost ~]$ echo ${hello????} #fill questions mark the right statement
Goodbye world!
 

4.3 output jesus variable with replacement all words from water to wine with one-line command
[devops@localhost ~]$ jesus="water wine water wine water wine"
[devops@localhost ~]$ echo ${jesus????} #fill questions mark the right statement
wine wine wine wine wine wine
 

4.4 you’re given a variable with some path. Get parent path using string manipulating
[devops@localhost test_folder]$ mypath=$(pwd)
[devops@localhost test_folder]$ echo ${mypath}
/home/devops/test_folder
[devops@localhost ~]$ echo ${mypath?????} #fill questions mark right statement
/home/devops
HOME TASKS REQUIREMENTS
You should use Bash for executing required tasks.
Use clear formatting.
No errors on execution.
Use best practices during development.
Your scripts should be readable.
Use comments where is needed.
Use console output and logging to show result of your work
HOMEWORK RESULTS
Create screenshots containing the following information:
All screenshots should contain system datetime of your host OS.
Output of the console with execution result of your code.
Put all of your  *.sh files into zip archive following naming conventions:

for scripts - Homework1_BashScripting_TaskTaskNumber.ps1 (ex. Homework1_BashScripting_Task1.sh)
for archive - Name_Surname_Bash_Homework1_BashScripting.zip. (ex. Ivan_Ivanov_Bash_Homework1_BashScripting.zip)
All home task artifacts should be attached to the appropriate chapter in learn.
