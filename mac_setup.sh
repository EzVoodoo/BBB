#!/bin/sh
sudo su
ifconfig en3 192.168.7.1 (where en3 is the BeagleBone Black)
sysctl -w net.inet.ip.fw.enable=1
sysctl -w net.inet.ip.forwarding=1
natd -interface en1 (where en1 is the host computer)
ipfw add divert natd ip from any to any via en1

