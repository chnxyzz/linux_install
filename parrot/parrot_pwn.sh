sed -i "s/deb.parrotsec.org/mirrors.tuna.tsinghua.edu.cn/g" /etc/apt/sources.list.d/parrot.list;
apt-get update;
wget -q -O- https://raw.githubusercontent.com/chnxyzz/linux_install/master/pwn_apt/pwn_add32.sh | sh;