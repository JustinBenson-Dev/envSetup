#!/bin/bash

./symlink.sh
./aptinstall.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt update && sudo apt upgrade -y

# See our bash changes
#source ~/.bashrc

# Fun hello
