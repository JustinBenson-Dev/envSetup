#!/bin/bash

echo "Installing Edge Browser..."

# update the packages index and install the dependencies
sudo apt install software-properties-common apt-transport-https wget -y

#Import the Microsoft GPG key with wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

#enable the Edge browser repository
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" -y

#Once the apt repository is enabled , install the Edge package:
sudo apt install microsoft-edge-dev -y


#source:  https://linuxize.com/post/how-to-install-edge-browser-on-ubuntu-20-04/
