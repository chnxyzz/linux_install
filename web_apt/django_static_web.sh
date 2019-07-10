apt-get update;
apt-get install sudo -y;
apt-get install vim bash zsh curl python3-pip git htop python3-dev -y;
apt-get install -f -y;
python3 -m pip install pip --upgrade --no-cache-dir;
python3 -m pip install requests django --no-cache-dir;
#oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";