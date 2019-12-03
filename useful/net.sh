ip=127.0.0.1 && port=1080 && export http_proxy="$ip:$port/" && export https_proxy="https://$ip:$port/" && git config --global http.proxy "http://$ip:$port" && git config --global http.proxy "http://$ip:$port"


ip=10.1.0.17 && port=1080 && export http_proxy="$ip:$port/" && export https_proxy="https://$ip:$port/" && git config --global http.proxy "http://$ip:$port" && git config --global http.proxy "http://$ip:$port"



sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/source.list && sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/source.list
