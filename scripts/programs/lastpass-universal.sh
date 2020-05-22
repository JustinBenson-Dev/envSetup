#!/bin/bash

#download and install LastPass Universal Linux Installer

echo "Installing LastPass Universal Linux Installer..."
mkdir lastpass
cd lastpass
curl --remote-name https://download.cloud.lastpass.com/linux/lplinux.tar.bz2

tar xjvf lplinux.tar.bz2

./install_lastpass.sh

cd ..

rm -rf ./lastpass
  
#source:  https://lastpass.com/lplinux.php
