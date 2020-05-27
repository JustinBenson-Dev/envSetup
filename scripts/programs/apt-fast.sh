#!/bin/bash

echo "Installing apt-fast"

sudo add-apt-repository ppa:apt-fast/stable -y

#Interaction-free installation
#To install apt-fast without interaction execute the following commands as root after adding the package sources to the sources.list:
#To update specific configuration values use the debconf command line interface as root, e.g.:
echo debconf apt-fast/maxdownloads string 10 | debconf-set-selections
echo debconf apt-fast/dlflag boolean true | debconf-set-selections
echo debconf apt-fast/aptmanager string apt | debconf-set-selections

sudo apt-get update
sudo apt-get install apt-fast -y
