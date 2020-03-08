sudo apt-get install nfs-kernel-server -y;
mkdir /root/nfs;
echo '/root/nfs 10.0.0.0/13(insecure,rw,all_squash,anonuid=0,anongid=0,no_root_squash,no_subtree_check,sync)'>> /etc/exports;
sudo exportfs -vra;
#sudo mount -t nfs -o resvport,locallocks ip:/root/nfs dir
#mount -o nolock,resvport,rsize=131072,wsize=131072 ip:/root/nfs dir
