#!/bin/sh
echo "Setting up the default gateway (Baidu ip:115.239.210.27)"
/sbin/route add default gw 192.168.7.1
 
echo "Updating the nameserver entry"
echo "nameserver 114.114.114.114" >> /etc/resolv.conf
 
echo "Setting the time using the Chinese ntp pool"
/usr/bin/ntpdate -b -s -u us.pool.ntp.org

