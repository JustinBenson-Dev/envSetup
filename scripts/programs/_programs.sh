#!/bin/bash

./apt-fast.sh
./removeFireFox.sh
./teamviewer.sh
./brave-browser-beta.sh
#./customdock-gnome.sh
./bashtop.sh

#install tools
sudo apt install curl -y  #install curl
sudo apt install htop -y  #install htop for resource monitoring
sudo apt install wget unzip -y  #install wget unzip
sudo apt install tmux -y  #install tmux  
sudo apt install terminator -y  #install terminator
sudo apt install nmap -y  #install nmap
sudo apt install git -y  #install git
sudo apt install gthumb -y
sudo apt install exfat-fuse exfat-utils -y

#apps
sudo apt install gnome-boxes -y

#install snaps
sudo snap install docker #install Docker
sudo snap install chromium
sudo snap install fromscratch
sudo snap install hiri
sudo snap install onlyoffice-desktopeditors
sudo snap install messengerport
sudo snap install youtube-dl
sudo snap supertux
sudo snap install zoom-client


#clean up
sudo apt-fast upgrade -y
sudo apt autoremove

#set desktop background
$
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/dotfiles/img/dekstop.jpg
sudo apt -y install dconf-editor
dconf load /org/gnome/ ./settings.dconf

#set power settings
./powertop.sh
