#!/bin/bash

#Install old version of TeamViewer (12)

#use the 32/64 multiArchitecture download.  The 64bit doesn't work (unresolveable dependencies).
wget https://download.teamviewer.com/download/version_12x/teamviewer_i386.deb

#install .deb file using apt
sudo apt install ./teamviewer_amd64.deb
