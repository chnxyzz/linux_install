sudo apt-get install nfs-kernel-server -y;
mkdir /root/nfs;
echo '/root/nfs 10.0.0.0/13(insecure,rw,all_squash,anonuid=0,anongid=0,no_subtree_check)'>> /etc/exports;
sudo exportfs -vra;
#sudo mount -t nfs -o resvport ip:/root/nfs dir
