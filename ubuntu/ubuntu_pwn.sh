sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list;
apt-get update;
apt-get install wget -y;
wget -q -O- https://raw.githubusercontent.com/chnxyzz/linux_install/master/pwn_apt/pwn_add32.sh | sh;