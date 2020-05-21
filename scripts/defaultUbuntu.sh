#!/bin/bash

#run updates
sudo apt update && sudo apt upgrade -y

#remove Firefox browser
sudo apt purge firefox -y
sudo rm -rf /home/.mozilla .adobe
sudo rm -rf /etc/firefox
sudo rm -rf /usr/lib/firefox firefox-addons

#install brave browser beta channel
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-beta.s3.brave.com/brave-core-nightly.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-prerelease.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
sudo apt update -y
sudo apt install brave-browser-beta -y

#install Visual Studio code
sudo snap install --classic code 

#install .NET Core SDK
#wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
#sudo dpkg -i packages-microsoft-prod.deb
#sudo apt-get update
#sudo apt-get install apt-transport-https -y
#sudo apt-get update
#sudo apt-get install dotnet-sdk-3.1 -y
#install ASP.NET Core runtime
# sudo apt-get update
# sudo apt-get install apt-transport-https -y
# sudo apt-get update
# sudo apt-get install aspnetcore-runtime-3.1 -y
#install .NET Core Runtime
# sudo apt-get update
# sudo apt-get install apt-transport-https
# sudo apt-get update
# sudo apt-get install dotnet-runtime-3.1

#install tools
sudo apt install curl -y  #install curl
sudo apt install htop -y  #install htop for resource monitoring
sudo apt install wget unzip -y  #install wget unzip
sudo apt install tmux -y  #install tmux  
sudo apt install terminator -y  #install terminator
sudo apt install nmap -y  #install nmap
sudo apt install git -y  #install git

#install utilities
sudo add-apt-repository ppa:bashtop-monitor/bashtop #isntall #bashtop
sudo apt update
sudo apt install bashtop

#install Bluetooth Manager
#https://www.maketecheasier.com/setup-bluetooth-in-linux/
#sudo apt-get install bluetooth bluez bluez-tools
#sudo service bluetooth start
#sudo apt-get install blueman

#finalize and clean up
sudo apt upgrade -y
sudo apt autoremove -y

#set desktop background
$
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/dotfiles/img/dekstop.jpg


