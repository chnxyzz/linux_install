apt-get update;
apt-get install sudo -y;
apt-get install vim bash unzip zsh curl python-pip git htop python-dev -y;
apt-get install -f -y;
python -m pip install pip --upgrade --no-cache-dir;
python -m pip install requests django --no-cache-dir;
#oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";