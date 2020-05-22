#!/bin/bash

#download and install LastPass Universal Linux Installer

echo "Installing LastPass Universal Linux Installer..."

curl --remote-name https://download.cloud.lastpass.com/linux/lplinux.tar.bz2 https://download.cloud.lastpass.com/linux/lplinux.tar.bz2

tar xjvf lplinux.tar.bz2

./install_lastpass.sh

 rm -rf lplinux.tar.bz2
 
 #source:  https://lastpass.com/lplinux.php
