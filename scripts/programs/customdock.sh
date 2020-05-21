#!/bin/bash

sudo apt -y install dconf-editor
dconf-editor

# go to "org > gnome > shell > extensions > dash-to-dock" 
# search for "show-apps-at-top" and set it to "on"
# this will set the "Show Applications" button to the far left on the dock
