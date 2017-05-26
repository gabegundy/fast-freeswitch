#!/bin/bash

echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."
echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."
echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."
echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."

wget -q -O - https://files.freeswitch.org/repo/deb/debian/freeswitch_archive_g0.pub | apt-key add -
wget -q -O - http://packages.irontec.com/public.key | apt-key add -

echo "deb http://files.freeswitch.org/repo/deb/freeswitch-1.6/ jessie main" > /etc/apt/sources.list.d/freeswitch.list
echo "deb http://packages.irontec.com/debian jessie main" > /etc/apt/sources.list.d/irontec.list
 
apt-get update

# Install everything (including the kitchen sink).
apt-get install -y freeswitch-meta-all sngrep vim-nox tree

chown -R vagrant:vagrant /etc/freeswitch/*
chmod -R 777 /etc/freeswitch/*

sed -i "s/#alias/alias/" /home/vagrant/.bashrc
sed -i "s/#alias/alias/" /root/.bashrc

echo "syntax on" >> /etc/vim/vimrc
echo "set background=dark" >> /etc/vim/vimrc

sed -i "s/default_password=1234/default_password=PASSWORD/" /etc/freeswitch/vars.xml

sed -i '2,14d' /etc/freeswitch/vars.xml 
sed -i '3d' /etc/freeswitch/vars.xml 
sed -i '3i\  <X-PRE-PROCESS cmd="set" data="local_ip_v4=***YOUR BRIDGED IP***"/>' /etc/freeswitch/vars.xml 

find /etc/freeswitch -type d -name "*ipv6*" -exec rm -fR {} \;
find /etc/freeswitch -type f -name "*ipv6*" -exec rm {} \;

service freeswitch restart
