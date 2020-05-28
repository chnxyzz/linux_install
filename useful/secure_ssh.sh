#!/bin/bash
cat /var/log/auth.log|awk '/Failed/{print $(NF-3)}'|sort|uniq -c|awk '{print $2"="$1;}' > /tmp/blackIP.txt
TRYCOUNT="5"
for i in `cat /tmp/blackIP.txt`
do
        IP=`echo $i |awk -F= '{print $1}'`
        NUM=`echo $i|awk -F= '{print $2}'`
        if [ $NUM -gt $TRYCOUNT ];
        then
                grep $IP /etc/hosts.deny > /dev/null
                if [ $? -gt 0 ];
                then
                        echo "ALL:$IP:deny" >> /etc/hosts.deny
                fi
        fi
done