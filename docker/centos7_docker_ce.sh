sudo yum -y install yum-utils;
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo;
sudo yum update;
sudo yum -y install docker-ce;
