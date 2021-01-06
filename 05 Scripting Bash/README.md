## 05 Scripting Bash
#### Task 1
Write a shell script that prints "Hello World!" on the screen<br/>
Requirements:<br/>

* Script file should start from #!/bin/bash notation<br/>
* Script file should have executable permission<br/>
* Scrip should perform echo or printf action with necessary message Hello World!<br/>
* Script file should exit successfully (exit code 0)<br/>

Expected output:
```bash
[devops@localhost ~]$ ./hello.sh
 Hello World!
[devops@localhost ~]$ echo $?
0
```
#### Answer 1

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/05%20Scripting%20Bash/Images/BASH1.jpg)

---
#### Task 2
Please fix following scripts:<br/>
#### 2.1 Unknown File Problem
```bash
[devops@localhost ~]$ cat ./hello-something-wrong-1.sh
#!/sbin/bash
echo Hello World!
[devops@localhost ~]$ ./hello-something-wrong-1.sh
ls: cannot access /sbin/bash: No such file or directory
```

#### 2.2 Syntax Problem
```bash
[devops@localhost ~]$ cat ./hello-something-wrong-2.sh
#!/bin/bash
echo "Hello World!'
[devops@localhost ~]$ ./hello-something-wrong-2.sh
./hello-something-wrong.sh: line 2: unexpected EOF while looking for matching `"'
./hello-something-wrong.sh: line 3: syntax error: unexpected end of file
```

#### 2.3 Permission Problem
```bash
[devops@localhost ~]$ cat ./hello-something-wrong-3.sh
#!/bin/bash
echo Hello World!
[devops@localhost ~]$ ls –la ./hello-something-wrong-3.sh
-rw-r--r-- 1 devops devops 32 Sep 30 08:38 ./hello-something-wrong-3.sh
[devops@localhost ~]$ ./hello-something-wrong-3.sh
bash: ./hello-something-wrong-3.sh: Permission denied
```
#### Answer 2

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/05%20Scripting%20Bash/Images/BASH2.jpg)

---
#### Task 3 

Working with strings
#### 3.1 grep
With grep you can search pattern in given string. See a few examples below and perform tasks.

Examples:
```bash
[devops@localhost ~]$ hello='Hello bash in Linux OS!' 
[devops@localhost ~]$ echo ${hello} | grep bash
Hello bash in Linux OS!
[devops@localhost ~]$ ls -l
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file1
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file2
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file3
[devops@localhost ~]$ ls -l | grep file2
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file2
```
#### Task description:
You’re given a file with the content (see below). Using grep check whether the file contains word dolore.
```bash
[devops@localhost ~]$ cat lorem
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  
[devops@localhost ~]$ grep ???? # fill the command with right statement
```
#### 3.2 cut
cut allows you to select the needed information from line with custom formatting.

Examples:
```bash
[devops@localhost ~]$ cat parking_info
1: mclaren-720s/silver
2: Porsche-911/gray
3: Vaz-2109/cherry
[devops@localhost ~]$ cat parking_info | cut -d: -f1
1
2
3
[devops@localhost ~]$ cat parking_info | cut -d' ' -f2
mclaren-720s/silver
Porsche-911/gray
Vaz-2109/cherry
[devops@localhost ~]$ cat parking_info | cut -d' ' -f2 | cut -d/ -f1
mclaren-720s
Porsche-911
Vaz-2109
[devops@localhost ~]$ cat parking_info | cut -d' ' -f2 | cut -d/ -f1 | cut -d- -f1
mclaren
Porsche
Vaz
```
#### Task description:

Using cut print group names from /etc/group file.
```bash
[devops@localhost ~]$ cat /etc/group
...
devops:x:1000:devops
vboxsf:x:981:
docker:x:980:devops
ldap:x:55:
apache:x:48:
caddy:x:979:
[devops@localhost ~]$ cat /etc/group | cut ???? # fill the command
...
devops
vboxsf
docker
ldap
apache
caddy
```
#### 3.3 sed
With sed you can widely manipulate with strings. See a few examples below and perform tasks:

Examples:
```bash
[devops@localhost ~]$ echo 'Hello bash in Linux OS!' > sed_file 
[devops@localhost ~]$ cat sed_file
Hello bash in Linux OS!
[devops@localhost ~]$ sed -i 's/Linux OS/CentOS/g' sed_file
[devops@localhost ~]$ cat sed_file
Hello bash in CentOS!
[devops@localhost ~]$ echo 'Hello PowerShell in WindowsOS!' >> sed_file
[devops@localhost ~]$ cat sed_file
Hello bash in CentOS!
Hello PowerShell in WindowsOS!
[devops@localhost ~]$ sed -i '/PowerShell/d' sed_file
[devops@localhost ~]$ cat sed_file
Hello bash in CentOS!
```
#### Task description:

You’re given a file with the content (see below). Using sed perform:

remove all lines with word Linux
replace first appearance word xterm to word Bash
(extra) try to combine two tasks above in one-line command
```bash
[devops@localhost ~]$ cat sed_task
CentOS is a Linux distribution that provides a free, community-supported computing platform functionally compatible with its upstream source, Red Hat Enterprise Linux (RHEL).
GNU xterm or simply Bash is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell.
Linux is a family of open source Unix-like operating systems based on the Linux kernel.
[devops@localhost ~]$ sed ???? # fill the command
```
#### 3.4 awk
With awk you can easily manipulate with strings. See a few examples below and perform tasks:

Examples:
```bash
[devops@localhost ~]$ ls -l
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file1
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file2
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file3
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file4
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file5
[devops@localhost ~]$ ls -l | awk '{print $1}'
-rw-rw-r--.
-rw-rw-r--.
-rw-rw-r--.
-rw-rw-r--.
-rw-rw-r--.
[devops@localhost ~]$ ls -l | awk '{print $9}'
file1
file2
file3
file4
file5
[devops@localhost ~]$ ls -l | awk 'FNR == 4'
-rw-rw-r--. 1 devops devops 0 Oct  1 09:44 file4
[devops@localhost ~]$ ls -l | awk 'FNR == 4 {print $9}'
file4
```
#### Task description:

Using awk print usernames from /etc/passwd file.
```bash
[devops@localhost ~]$ cat /etc/passwd
...
devops:x:1000:1000:devops:/home/devops:/bin/bash
vboxadd:x:987:1::/var/run/vboxadd:/bin/false
ldap:x:55:55:OpenLDAP server:/var/lib/ldap:/sbin/nologin
apache:x:48:48:Apache:/usr/share/httpd:/sbin/nologin
caddy:x:986:979:Caddy web server:/var/lib/caddy:/sbin/nologin
[devops@localhost ~]$ cat /etc/passwd | awk ???? # fill the command
...
devops
vboxadd
ldap
apache
caddy
...
```
---
#### Task 4
Develop “User Info” Script
Requirements:

Script file should start from #!/bin/bash notation
Script should print to stdout following information:
users’ home directory (~ or $HOME)
Username (whoami)
user id
groups information
terminal type ($TERM)
Current Directory
System Date / Time
Script should use commands output
Script file should exit successfully (exit code 0)
Expected output:

[devops@localhost work]$ ./user-info.sh
Home dir: /home/devops
User Name: devops
User ID: 501(devops)
Group Information: 501(devops)
Terminal: xterm
Current directory: /home/devops/work
System date/time: Tue Oct 1 06:13:27 EDT 2019
[devops@localhost ~]$ echo $?
0
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
