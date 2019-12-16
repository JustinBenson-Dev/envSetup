 
#!/bin/bash

#remove Firefox browser
sudo apt purge firefox -y
sudo rmdir -f /home/$USER/.mozilla .adobe
sudo rmdir -f /etc/firefox
sudo rmdir -f /usr/lib/firefox firefox-addons

#run updates
sudo apt update && sudo apt upgrade -y

#install brave browser beta channel
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-beta.s3.brave.com/brave-core-nightly.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-prerelease.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
sudo apt update -y
sudo apt install brave-browser-beta -y

#install Visual Studio code
sudo snap install --classic code 

#install tools
sudo apt install curl -y  #install curl
sudo apt install htop -y  #install htop for resource monitoring
sudo apt install wget unzip -y  #install wget unzip
sudo apt install openssh-server -y #install openssh  
sudo apt install tmux -y  #install tmux  
sudo apt install terminator -y  #install terminator
sudo apt install namp -y  #install nmap
sudo apt install git -y  #install git
sudo apt install file -y  #install file
sudp apt install exfat-utils -y  #install exfat-utils
