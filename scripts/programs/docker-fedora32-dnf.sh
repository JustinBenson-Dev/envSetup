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

sudo systemctl enable --now docker
