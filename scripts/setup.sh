#!/bin/bash

#Change permissions recursively for symlinks to work
# sudo chmod +x ~/dotfiles -R (doesn't seem to work once you're in the dir.)
./programs/apt-fast.sh
#./symlink.sh
./aptinstall.sh
./snapinstall.sh
./themes.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt-fast upgrade -y

#Shavasana... final resting pose.
neofetch
echo "... and we're back!"
echo "*** Don't forget post install for: ***"
echo "*** dconf-editor, powertop --calibrate, and docker (Hello World).***"
