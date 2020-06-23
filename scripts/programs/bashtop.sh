#!/bin/bash

echo "Installing Bashtop..."
sudo add-apt-repository ppa:bashtop-monitor/bashtop -y #install #bashtop
sudo apt update
sudo apt install bashtop -y


#old non PPA method
#
#echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
#wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -

#sudo apt update
#sudo apt install bashtop -y 
