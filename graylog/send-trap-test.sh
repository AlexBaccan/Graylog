#!/bin/sh
snmptrap -v 2c -c public zabbix-snmptrapper:1162 '' \
.1.3.6.1.6.3.1.1.5.3 \
.1.3.6.1.6.3.1.1.4.1.0 o .1.3.6.1.4.1.99999 \
.1.3.6.1.4.1.99999.1 s 'Interfaz Ethernet0/1 caída' \
.1.3.6.1.4.1.99999.2 s 'Switch Core' \
.1.3.6.1.4.1.99999.3 i 1001
echo 'Trap enviado correctamente'