#!/bin/bash

#Uninstall old versions of docker
echo "#Uninstall old versions of docker"
sudo apt remove docker docker-engine docker.io containerd runc

#run Ubuntu updates 
echo "#run Ubuntu updates"
sudo apt update && sudo apt upgrade -y

#1. SET UP THE REPOSITORY 
echo "#1. SET UP THE REPOSITORY"
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
#2. Add Docker’s official GPG key:   
echo "#2. Add Docker’s official GPG key:"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#3. Set up docker stable repo.
echo "#3. Set up docker stable repo."
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
#run updates again
echo "#run updates again"
sudo apt update

#4. Install docker engine
echo "#4. Install docker engine"
sudo apt install -y docker-ce docker-ce-cli containerd.io

#clean up
echo "clean up installation"
sudo apt autoremove

#5. Use Docker as a non-root user
echo "#5. Use Docker as a non-root user"
sudo usermod -aG docker $USER

#closing notes
echo "#closing notes"
echo "BE SURE TO SIGN OUT then sign back in to run as non-root. Confirm using: docker run hello-world to test."
