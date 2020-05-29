#!/bin/bash

#install Synology Drive client for Fedora x64

echo "Installing Synology Drive client..."

curl --remote-name "https://archive.synology.com/download/Tools/CloudStationDrive/4.2.7-4415/Fedora/Installer/x86_64/synology-cloud-station-drive-4.2.7-4415.x86_64.rpm"
sudo rpm -ivh synology-cloud-station-drive-4.2.7-4415.x86_64.rpm

rm -rf synology-cloud-station-drive-4.2.7-4415.x86_64.rpm
