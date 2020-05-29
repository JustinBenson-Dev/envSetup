#!/bin/bash

#remove Firefox browser
sudo dnf remove firefox.x86_64 -y
sudo dnf clean all
sudo rm -rf /home/.mozilla .adobe
sudo rm -rf /etc/firefox
sudo rm -rf /usr/lib/firefox firefox-addons
