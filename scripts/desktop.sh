#!/bin/bash

# Set up the desktop environment
cp ~/dotfiles/img/desktop.jpg desktop2.jpg ~/Desktop
#cp ../img/lock.jpg ~/lock.jpg
#load dconf settings as user "jabs" 
su - $USER -c "dconf load /org/gnome/ < ./dconf.settings"
