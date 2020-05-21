#!/bin/bash

#update Ubuntu and get standard apt repo programs
./aptinstall.sh

#get snaps
./snapinstall.sh

#Run all programs / install scripts
#for f in programs/*.sh; do bash "$f" -H; done
./programs.sh
./desktop.sh

#Get all upgrades
sudo apt upgrade -y

#See our bash changes
source ~/.bashrc
