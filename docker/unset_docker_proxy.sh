#!/bin/sh

systemctl stop docker
rm /etc/systemd/system/docker.service.d/http-proxy.conf 
rm /etc/systemd/system/docker.service.d/https-proxy.conf 
systemctl daemon-reload
systemctl start docker
