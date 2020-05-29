#!/bin/bash

echo "Installing TeamViewer 12..."

#Fedora: Install old version of TeamViewer (12)
#use the 32/64 multiArchitecture download.  The 64bit doesn't work (unresolveable dependencies).
wget https://download.teamviewer.com/download/version_12x/teamviewer.i686.rpm

#install .deb file using apt
sudo dnf -y install teamviewer.i686.rpm
sudo rm teamviewer.i686.rpm*

#source: https://www.teamviewer.com/en/download/previous-versions/
