#!/bin/sh

echo "firewall disable"

systemctl stop firewalld > /dev/null
sleep 1
systemctl disable firewalld > /dev/null
sleep 1
systemctl status firewalld
sleep 2

echo "SELINUX disabled"

cp /etc/selinux/config /etc/selinux/config.bak
sleep 1
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sleep 5

init 6
