#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade
#Replace the following with the current version of node.
NODEV="4.4.4"
NODEVTWO=$NODEV
wget https://nodejs.org/dist/v$NODEV/node-v$NODEVTWO-linux-armv7l.tar.xz
#armv7 for Raspberry Pi 2s and 3s.
tar -xf node-v$NODEV-linux-armv7l.tar.xz
sudo mv node-v$NODEV-linux-armv7l /usr/local/node
cd /usr/local/bin
sudo ln -s /usr/local/node/bin/node node
sudo ln -s /usr/local/node/bin/npm npm
npm install -g johnny-five
npm install -g raspi-io
cd /home/pi/Desktop
mkdir nodebot_scripts
#to link, you must be in the project directory.
cd nodebot_scripts
npm link johnny-five
npm link raspi-io