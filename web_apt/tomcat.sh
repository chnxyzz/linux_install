apt-get update;
apt-get install sudo -y;
apt-get install wget unzip netcat net-tools vim bash zsh curl git mysql-server htop openjdk-8-jdk -y;
apt-get install -f -y;
#oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";