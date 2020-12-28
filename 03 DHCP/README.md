## 03 DHCP homework
#### Task 1
* **Создайте стандартную DHCP зону с маской /23. Необходимо исключить выделение IP адресов по DHCP для последних 20 адресов сети.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20DHCP/Images/DHCP_1.jpg)

---
#### Task 2
* **Создайте дополнительную DHCP зону на 32 адреса.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20DHCP/Images/DHCP_2.jpg)

---
#### Task 3
* **Измените стандартное время выделенного адреса (lease time).**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20DHCP/Images/DHCP_3.jpg)

---
#### Task 4
* **Измените список параметров, которые выдаются клиенту (NTP-сервер, Log-сервер).**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20DHCP/Images/DHCP_4.jpg)

---
#### Task 5
* **Зарезервируйте IP-адрес клиента полученного по DHCP (потребуется дополнительный сервер, имитирующий DHCP-клиента).**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20DHCP/Images/DHCP_5.jpg)

---
#### Task 6
* **Создайте запрещающее правило получения IP по DHCP (потребуется дополнительный сервер, имитирующий DHCP-клиента)**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20DHCP/Images/DHCP_6.jpg)

---
#### Task 7
* **Создайте свою политику DHCP с различными условиями.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/03%20DHCP/Images/DHCP_7.jpg)

---

## Extra. 
1. Сделайте backup текущего DHCP сервера, удалите роль DHCP сервера и восстановите из ранее 
сделанного бэкапа. 
2. Измените стандартный путь хранения DHCP базы. 
3. Настройте резервирование (Failover) DHCP зон между двумя DHCP серверами. 
4. Использую системные логи (Event Viewer) просмотрете и проанализируйте все события, связанные 
с DHCP. 
