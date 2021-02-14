## 04 Windows Network Essentials and Troubleshooting homework
#### Task 1
* **Используя утилиту ping, отправьте 50 пакетов размером 1,4Кб и временем жизни пакета 15 до публичного DNS сервера Google (8.8.8.8). Попробуйте определить максимальный пакет, который может быть передан до удаленной стороны. Поченму именно пакет такой длины? Попробуйте объяснить. Изучите результаты команд.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT1A.JPG)

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT1B.JPG)

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT1C.JPG)

#### Answer 1:
#### 1464(bytes of Data) + 8(bytes of ICMP header) + 20(bytes of IPv4 header) = 1492 bytes (router MRU)

---
#### Task 2
* **Используя утилиты tracert, pathping или WinMTR выясните точный маршрут следования пакетов для IP адреса (!!! не DNS имени) сайта facebook.com. Проанализируйте результаты вывода и определите промежуточные хосты с максимальной задержкой передачи пакет.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT2A.JPG)

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT2B.JPG)
#### Answer 2:
Hosts with maximum packet transfer delay:<br/>
According tracert utility information:<br/>
* 157.240.74.28<br/>
* 157.240.49.171<br/>

According pathping utility information:<br/>
* 173.252.67.29<br/>

---
#### Task 3
* **Используя утилиту ipconfig, сбросте и получите заново сетевые настройки на одном из рабочих сетевых интерфейсе. Анализируя результат вывода, определите: время окончания выдачи IP адреса, полученный DNS сервер, DHCP сервер, который выдал сетевые настройки.**<br/>

Network settings before upgrade:<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT3A.JPG)<br/>

Network settings after upgrade:<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT3B.JPG)<br/>
#### Answer 3:
  
IP lease expires 01.06.2021 18:45:26<br/>
DNS server: 192.168.100.1<br/>
DHCP server: 192.168.100.1<br/>

---
#### Task 4
* **Используя утилиты arp выясните MAC-адрес вышего DefaultGateway.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT4.JPG)

---
#### Task 5
* **Используя улититу route выясните интерфейс, через который доступна подсеть 255.255.255.255/32 и попытайтесь объяснить почему.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT5.jpg)

---
#### Task 6
* **Используя утилиту NSlookup, выберете custom DNS сервер, например, 8.8.8.8 и выясните все известные IP адреса сайта yandex.ru.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT6.JPG)

---
#### Task 7
* **Используя команду netstat выясните все активные TCP соединения локального компьютера с внешними ресурсами, а также какие удаленные и локальные порты используются для этого. Выясните все разорванные TCP соединения.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT7.JPG)

---
#### Task 8
* **Используя утилиту tracert или pathping выясните маршрут следования до различных сайтов. Проанализируйте результаты и попытайтесь найти общий маршрут этих ресурсов.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT8.jpg)

Same part of the route for all sites:</br>
192.168.100.29 -> 192.168.100.1 -> 178.122.96.1

---
#### Task 9
* **Использую утилиту arp выясните все MAC-адреса хостов в вашей локальной подсети.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT9.JPG)

---
#### Task 10
* **Используя утилиту WinMTR выясните промежуточный узел с максимальной задержкой при передаче трафика, созраните результат в отдельный файл. Используйте утилиты tracert и pathping для этой же цели. Сравните полученные результаты от утилит.**<br/>

![](https://github.com/MikeBakinovski/DevOps_Fundamentals/blob/main/01%20Networking%20Essentials/04%20Windows%20Network%20Essentials%20and%20Troubleshooting/Images/WNEaT10.JPG)

---
