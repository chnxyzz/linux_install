sed -i "s/deb.parrotsec.org/mirrors.tuna.tsinghua.edu.cn/g" /etc/apt/sources.list.d/parrot.list;
sed -i "s/deb.parrot.sh/mirrors.bfsu.edu.cn/g" /etc/apt/sources.list.d/parrot.list;
apt-get update;