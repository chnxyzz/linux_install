ip=127.0.0.1 && port=1080 && export http_proxy="$ip:$port/" && export https_proxy="https://$ip:$port/" && git config --global http.proxy "http://$ip:$port" && git config --global http.proxy "http://$ip:$port"


ip=proxy.dopwn.cn && port=8080 && export http_proxy="$ip:$port/" && export https_proxy="https://$ip:$port/" && git config --global http.proxy "http://$ip:$port" && git config --global http.proxy "http://$ip:$port"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";

sh -c "$(wget -O- https://raw.githubusercontent.com/chnxyzz/oh-my-zsh/master/tools/install.sh)";


sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
