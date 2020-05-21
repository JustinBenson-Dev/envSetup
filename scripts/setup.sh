#!/bin/bash

./symlink.sh
./aptinstall.sh
./snapinstall.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

#Shavasana... final resting pose.
neofetch
echo "... and we're back!"
echo "Don't forget post install for:"
echo "*** dconf-editor, powertop --calibrate, and docker (Hello World).***"
