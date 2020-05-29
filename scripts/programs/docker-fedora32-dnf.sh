#!/bin/bash

sudo dnf -y install dnf-plugins-core

#set up repo
sudo tee /etc/yum.repos.d/docker-ce.repo<<EOF
[docker-ce-stable]
name=Docker CE Stable - \$basearch
baseurl=https://download.docker.com/linux/fedora/31/\$basearch/stable
enabled=1
gpgcheck=1
gpgkey=https://download.docker.com/linux/fedora/gpg
EOF

#install Docker
sudo dnf makecache
sudo dnf -y install docker-ce docker-ce-cli containerd.io

#post install to add to Docker group
sudo groupadd docker
sudo usermod -aG docker $USER
#it's best to log out here, but you can run this too:
newgrp docker 

#enable Docker start at boot
sudo systemctl enable docker
#disable start at boot
#sudo systemctl disable Docker

#test running Docker
#docker run hello-world
