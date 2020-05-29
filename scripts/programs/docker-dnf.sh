#!/bin/bash

echo "Installing Docker CE..."

#Uninstall old versions of Docker
sudo dnf remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

#set up local Docker repo
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

#install Docker engine
sudo dnf install -y docker-ce docker-ce-cli containerd.io

#cgroups exception
sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"

#reboot then start Docker with systemctl
sudo systemctl start Docker

#optional test install if you don't care about sudo use
#sudo docker run hello-world

#post install to add to Docker group
sudo groupadd docker
sudo usermod -aG docker $USER
#it's best to log out here, but you can run this too:
newgrp docker 
#test running Docker
docker run hello-world

#enable Docker start at boot
sudo systemctl enable Docker
#disable start at boot
#sudo systemctl disable Docker
