#!/bin/bash

#install Remmina for rdp

echo "Installing Remmina..."

sudo apt-add-repository -y ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install -y remmina remmina-plugin-rdp remmina-plugin-secret
