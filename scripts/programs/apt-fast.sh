#!/bin/bash

echo "Installing apt-fast"
sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get update
sudo apt-get install apt-fast -y
