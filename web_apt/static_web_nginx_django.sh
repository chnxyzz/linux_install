apt-get update;
apt-get install sudo -y;
apt-get install vim bash unzip nginx zsh curl net-tools python-pip git htop python-dev -y;
apt-get install -f -y;
python -m pip install pip --upgrade --no-cache-dir;
python -m pip install requests django uwsgi --no-cache-dir;
cd /
git clone https://github.com/chnxyzz/syau.git
cp /syau/script/default /etc/nginx/sites-available/default
#oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";