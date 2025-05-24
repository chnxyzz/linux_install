#!/bin/bash

# 检查是否传入了代理地址参数
if [ -z "$1" ]; then
    echo "错误：必须提供代理地址。"
    echo "用法：$0 proxy.example.com:8080"
    exit 1
fi

PROXY_URL="$1"

# 创建目录（若不存在）
mkdir -p /etc/systemd/system/docker.service.d

# 写入 HTTP 代理配置文件
cat <<EOF > /etc/systemd/system/docker.service.d/http-proxy.conf
[Service]
Environment="HTTP_PROXY=http://$PROXY_URL" "NO_PROXY=localhost,127.0.0.0/8"
EOF

# 写入 HTTPS 代理配置文件
cat <<EOF > /etc/systemd/system/docker.service.d/https-proxy.conf
[Service]
Environment="HTTPS_PROXY=http://$PROXY_URL" "NO_PROXY=localhost,127.0.0.0/8"
EOF

# 执行命令
sudo systemctl daemon-reload
sudo systemctl show docker --property Environment
sudo systemctl restart docker

echo "代理地址 $PROXY_URL 已成功配置并应用。"
