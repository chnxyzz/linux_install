sed -i 's/us.archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list;
sed -i 's/cn.archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list;
sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list;
apt-get update;