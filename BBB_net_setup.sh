#!/bin/sh
echo "Setting up the default gateway"
/sbin/route add default gw 192.168.7.1
 
echo "Updating the nameserver entry"
echo "nameserver 114.114.114.114" >> /etc/resolv.conf
 
echo "Setting the time using the Chinese ntp pool"
/usr/bin/ntpdate -b -s -u 210.72.145.44
