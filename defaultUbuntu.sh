 
#!/bin/bash

#remove Firefox browser
sudo apt purge firefox -y
sudo rm -rf /home/.mozilla .adobe
sudo rm -rf /etc/firefox
sudo rm -rf /usr/lib/firefox firefox-addons

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

#install docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
sudo newgrp docker
sudo docker run hello-world
sudo systemctl enable docker
echo manual | sudo tee /etc/init/docker.override
sudo chkconfig docker on


#install tools
sudo apt install curl -y  #install curl
sudo apt install htop -y  #install htop for resource monitoring
sudo apt install wget unzip -y  #install wget unzip
sudo apt install openssh-server -y #install openssh  
sudo apt install tmux -y  #install tmux  
sudo apt install terminator -y  #install terminator
sudo apt install nmap -y  #install nmap
sudo apt install git -y  #install git
sudo apt install file -y  #install file

