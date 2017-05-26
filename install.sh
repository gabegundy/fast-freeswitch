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

echo ""
echo ""
echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."
echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."
echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."
echo "INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH... INSTALLING FREESWITCH..."
echo ""
echo ""

echo "Now that we're done installing, you might want to make a snapshot with Virtualbox."
echo "Great. Now that you've done that, we can run the last step in setting up the box..."
echo "vagrant --provision-with finish"
