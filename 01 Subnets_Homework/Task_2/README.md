* **Найти минимальный размер блока IP адресов, необходимый для построения сети, изображенной на рисунке 1:**
![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Subnets_Homework/Task_2/Picture_1.jpg)
---
#### Answer 2:
To simplify such calculations in the future, I wrote a special calculator.<br/>
Application ask to enter quantity of routers in network, quantity of subnetworks then specify quantity of hosts for each subnet.<br/>
After that the application ask if you want to add one more subnet. If no, application ask to specify what minimum percent of spare<br/>
hosts do you want to have in each subnet. Then application provide to you table with all information.<br/>
In following example i am specify routers, hosts as in task and minimal host spare **0%**.<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Subnets_Homework/Task_2/IP_dist_0.JPG)

In the example above we can find that in subnets number 3 and 6 have very low spare. Only 3% and 4%. </br>
In example below I am specify minimal   hosts spare 10%.</br>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Subnets_Homework/Task_2/IP_dist_10.JPG)
