dpkg --add-architecture i386;
apt-get update;
apt-get install wget net-tools autojump lib32z1 libc6:i386 zsh gdb tmux python vim curl python-pip python3-pip git socat htop python-dev python3-dev -y;
#python
python -m pip install pip --upgrade -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir;
python -m pip install pwntools -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir;

#gef
wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py;
echo source ~/.gdbinit-gef.py >> ~/.gdbinit;

#libheap
apt-get install libc6-dbg;
git clone https://github.com/cloudburst/libheap;
pip3 install --user ./libheap/;

#oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";