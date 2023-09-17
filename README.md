# Домашнее задание к занятию «Disaster recovery и Keepalived» - `Костюк Денис`

### Задание 1
 
•	Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.

•	На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы).

•	Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).

•	Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.

   ![Скрин11](https://github.com/denniskostyuk/Keepalived/blob/main/Task_1_1.png)
   ![Скрин12](https://github.com/denniskostyuk/Keepalived/blob/main/Task_1_2.png)
   ![Скрин13](https://github.com/denniskostyuk/Keepalived/blob/main/Task_1_3.png)
   
•	На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

 ![Схема](https://github.com/denniskostyuk/Keepalived/blob/main/hsrp_advanced.pkt)


### Задание 2

•	Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного файла.

•	Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах

•	Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.

![Скрин21](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_1.png)

•	Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script

![Скрин22](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_2.png)

•	На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

![bash-скрипт](https://github.com/denniskostyuk/Keepalived/blob/main/check-nginx.sh)

![Конфигурационный файл keepalived](https://github.com/denniskostyuk/Keepalived/blob/main/keepalived.conf)

##### Настроены:
###### сервер-1 ip=192.168.0.205
###### сервер-2 ip=192.168.0.210
###### плавающий ip = 192.168.0.215

По умолчанию на плавающем IP открывается сервер-1:
![Скрин23](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_3.png)

останавливаем nginx:
![Скрин24](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_4.png)

На плавающем IP открывается сервер-2:
![Скрин25](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_5.png)

стартуем nginx после остановки:
![Скрин26](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_6.png)

На плавающем IP снова открывается сервер-1:
![Скрин27](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_7.png)

Теперь переименуем файл /var/www/html/index.nginx-debian.html:
![Скрин28](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_8.png)

На плавающем IP снова открывается сервер-2:
![Скрин29](https://github.com/denniskostyuk/Keepalived/blob/main/Task_2_9.png)
