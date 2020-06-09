#!/bin/bash

#Change permissions recursively for symlinks to work
# sudo chmod +x ~/dotfiles -R (doesn't seem to work once you're in the dir.)

#./symlink.sh
./aptinstall.sh
./flatpakinstall.sh
./themes.sh
./programs.sh
#./desktop.sh

# Get all upgrades
sudo apt upgrade -y

#Shavasana... final resting pose.
neofetch
echo "... and we're back!"
echo "*** Don't forget post install for: ***"
echo "*** run the dconf-load.sh script, (on battery) sudo systemctl enable tlp, sudo powertop --calibrate, and docker (Hello World).***"
