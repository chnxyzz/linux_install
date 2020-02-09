sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list;
sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list;
sed -i 's/security-cdn.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list;
apt-get update;
