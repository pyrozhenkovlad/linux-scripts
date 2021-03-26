#!/bin/bash
#govnocode sorry :D

exec > log.txt

ut=$(uptime | awk '{print$2,$3}')
usr=$(users) 

echo System is $ut
echo Current users : $usr
echo TOP-10 processes by RAM/CPU usage:
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
echo Recent logins: 
last
echo Open ports: 
netstat -tulpn | grep LISTEN
echo Virtual Memory usage:
vmstat
echo  Usage of disk space:
sudo du / -s 2> /dev/null 



