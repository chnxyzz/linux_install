sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list;
apt-get update;
apt-get install sudo -y;
apt-get install wget unzip netcat autojump unrar unzip net-tools apache2 php libapache2-mod-php vim bash zsh curl git -y;
apt-get install -f -y;
service apache2 restart;
sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";