#!/bin/bash

echo "Installing dconf-editor..."
sudo apt install dconf-editor -y
dconf-editor

# go to "org > gnome > shell > extensions > dash-to-dock" 
# search for "show-apps-at-top" and set it to "on"
# this will set the "Show Applications" button to the far left on the dock
