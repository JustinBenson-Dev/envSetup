#!/bin/bash

#Ubuntu
#Install old version of TeamViewer (12)

#use the 32/64 multiArchitecture download.  The 64bit doesn't work (unresolveable dependencies).
wget https://download.teamviewer.com/download/version_12x/teamviewer_i386.deb

#install .deb file using apt
sudo apt install ./teamviewer_i386.deb
sudo rm teamviewer_i386.deb*

#source: https://www.teamviewer.com/en/download/previous-versions/
