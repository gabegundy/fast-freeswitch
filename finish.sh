#!/bin/bash
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
