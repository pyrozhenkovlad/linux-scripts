#!/bin/bash

exec > conf.txt 
un=$(uname -a | awk '{print$1,$3,$4}')
net1=$(ifconfig)
ufw=$(ufw status | awk '{print$2}')
echo OS version is : $un
echo Network interfaces:
ifconfig 
echo Ufw is $ufw now.
ufw status verbose | grep -v 'Status'
