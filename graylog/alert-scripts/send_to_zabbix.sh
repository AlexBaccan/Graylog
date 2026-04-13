#!/bin/bash

ZBX_SERVER="server"        # nombre del servicio Zabbix en docker-compose
ZBX_PORT=10051
HOST="Graylog"             # debe existir como host en Zabbix
KEY="graylog.alert"

MESSAGE="$1"

zabbix_sender -z "$ZBX_SERVER" -p "$ZBX_PORT" -s "$HOST" -k "$KEY" -o "$MESSAGE"
