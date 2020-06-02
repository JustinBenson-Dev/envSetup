#!/bin/bash

#load dconf.settings for Gnome 

#don't run as as sudo

dconf load /org/gnome < ./dconf.settings
