#!/bin/bash

#install podman

echo "Installing Podman..."

#Debian 10
echo 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_10/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -L https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_10/Release.key | sudo apt-key add -

sudo apt-get update -y -qq
sudo apt-get -qq -y install podman

#https://podman.io/getting-started/installation
