sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list;
apt-get update;
apt-get install wget -y;