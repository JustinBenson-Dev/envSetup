#!/bin/bash

#load dconf settings as user "jabs" 
su - $USER -c "dconf load /org/gnome/ < ./dconf.settings"
