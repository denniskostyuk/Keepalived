# Домашнее задание к занятию «Disaster recovery и Keepalived» - `Костюк Денис`

### Задание 1
 
Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.

На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы).

Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).

Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.

   ![Скрин1](https://github.com/denniskostyuk/Keepalived/blob/main/Task_1_1.png)
   ![Скрин2](https://github.com/denniskostyuk/Keepalived/blob/main/Task_1_2.png)
   ![Скрин3](https://github.com/denniskostyuk/Keepalived/blob/main/Task_1_3.png)
   
На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

 ![Схема](https://github.com/denniskostyuk/Keepalived/blob/main/hsrp_advanced.pkt)

 
2. Приложите в файл README.md текст использованных команд в GitHub

sudo su

apt install postgresql

apt update

apt upgrade

wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-4+debian11_all.deb

dpkg -i zabbix-release_6.0-4+debian11_all.deb

apt update

apt install zabbix-server-pgsql zabbix-frontend-php php7.4-pgsql zabbix-apache-conf zabbix-sql-scripts

systemctl status zabbix-server.service

sudo -u postgres createuser --pwprompt zabbix

sudo -u postgres createdb -O zabbix zabbix

zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix

nano /etc/zabbix/zabbix_server.conf

systemctl restart zabbix-server apache2

systemctl enable zabbix-server apache2

systemctl status zabbix-server.service


### Задание 2

#### Требования к результаты 
1. Приложите в файл README.md скриншот раздела Configuration > Hosts, где видно, что агенты подключены к серверу
   ![Скрин1](https://github.com/denniskostyuk/zabbix-1/blob/main/Screen-21.png)
   
2. Приложите в файл README.md скриншот лога zabbix agent, где видно, что он работает с сервером
   ![Скрин2](https://github.com/denniskostyuk/zabbix-1/blob/main/Screen-22.png)
   
3. Приложите в файл README.md скриншот раздела Monitoring > Latest data для обоих хостов, где видны поступающие от агентов данные.
   ![Скрин3](https://github.com/denniskostyuk/zabbix-1/blob/main/Screen-23.png)
   
4. Приложите в файл README.md текст использованных команд в GitHub

sudo su

wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-4+debian11_all.deb

dpkg -i zabbix-release_6.0-4+debian11_all.deb

apt update

apt install zabbix-agent

nano /etc/zabbix/zabbix_agentd.conf
