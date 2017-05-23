#!/bin/bash

echo "INSTALLING FREESWITCH..."

wget -O - https://files.freeswitch.org/repo/deb/debian/freeswitch_archive_g0.pub | apt-key add -
 
echo "deb http://files.freeswitch.org/repo/deb/freeswitch-1.6/ jessie main" > /etc/apt/sources.list.d/freeswitch.list
 
# You may want to populate /etc/freeswitch at this point. If /etc/freeswitch does not exist,
# the standard vanilla configuration is deployed.
apt-get update

# Install everything (including the kitchen sink).
apt-get install -y freeswitch-meta-all
