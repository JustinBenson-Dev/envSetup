#!/bin/bash

echo "Installing KVM..."

sudo apt install -y qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo apt-get install -y virt-viewer

#https://linuxconfig.org/install-and-set-up-kvm-on-ubuntu-20-04-focal-fossa-linux
