sudo ${PM} update;
sudo ${PM} install curl -y;
sudo curl -sSL https://get.daocloud.io/docker | sh;
sudo groupadd docker;
sudo gpasswd -a ${USER} docker;
sudo systemctl restart docker;