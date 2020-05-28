apt-get update;
apt-get install sudo -y;
apt-get install wget unzip netcat unrar unzip net-tools vim bash zsh tmux python curl python-pip python3-pip git  htop python-dev python3-dev -y;
apt-get install -f -y;
python -m pip install pip --upgrade --no-cache-dir;
python3 -m pip install pip --upgrade --no-cache-dir;
python3 -m pip install pillow tensorflow keras django matplotlib --no-cache-dir;
#oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";