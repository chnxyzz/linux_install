#encoding=utf-8
import os
import sys
proxy_url="http://proxy.dopwn.cn:8080"
if len(sys.argv)>2:
  proxy_url = sys.argv[1]
os.system('mkdir /etc/systemd/system/docker.service.d')
templa1="""[Service]
 # NO_PROXY is optional and can be removed if not needed
 # Change proxy_url to your proxy IP or FQDN and proxy_port to your proxy port
 # For Proxy server which require username and password authentication, just add the proper username and password to the URL. (see example below)

 # Example without authentication
 Environment=f"HTTP_PROXY={proxy_url}" "NO_PROXY=localhost,127.0.0.0/8"
"""
templa2="""[Service]
 # NO_PROXY is optional and can be removed if not needed
 # Change proxy_url to your proxy IP or FQDN and proxy_port to your proxy port
 # For Proxy server which require username and password authentication, just add the proper username and password to the URL. (see example below)

 # Example without authentication
 Environment=f"HTTPS_PROXY={proxy_url}" "NO_PROXY=localhost,127.0.0.0/8"
"""
f=open('/etc/systemd/system/docker.service.d/http-proxy.conf','w')
f.write(templa1)
f.close()
f=open('/etc/systemd/system/docker.service.d/https-proxy.conf','w')
f.write(templa2)
f.close()
c=['sudo systemctl daemon-reload','sudo systemctl show docker --property Environment','sudo systemctl restart docker']
for i in c:
    os.system(i)
print('ok')
