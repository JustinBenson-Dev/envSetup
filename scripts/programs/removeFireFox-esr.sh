#!/bin/bash

#remove Firefox browser
sudo apt purge firefox-esr -y
sudo rm -rf /home/.mozilla .adobe
sudo rm -rf /etc/firefox-esr
sudo rm -rf /usr/lib/firefox-esr
