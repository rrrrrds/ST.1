#!/bin/sh
source /etc/profile
mkdir /home/work
echo "work directory is ready!"
sleep 2
cd /home/work
echo "now" `pwd`
sleep 2
yum install -y cmake *gcc* cvs telnet ypbind compat*
sleep 1
yum install -y glibc.i686 glibc*
sleep 1
yum install -y redhat-lsb-core libcurl* libxslt*
sleep 1
yum install -y pcre*
sleep 1
yum install -y libz* bzip2-devel* redline-devel*
echo "default rpm installed"