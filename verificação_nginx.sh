#!/bin/bash

OUTPUT_DIR=~/nginx_status_logs
mkdir -p "$OUTPUT_DIR"  


if systemctl is-active --quiet nginx; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - NGINX - Status: ONLINE - O serviço Nginx está rodando corretamente." >> ~/nginx_online_status.txt
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - NGINX - Status: OFFLINE - O serviço Nginx não está rodando." >> ~/nginx_offline_status.txt
fim
