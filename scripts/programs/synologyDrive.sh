#!/bin/bash

#install Synology Drive client for Ubuntu x64

echo "Installing Synology Drive client..."

curl --remote-name "https://global.download.synology.com/download/Tools/SynologyDriveClient/2.0.2-11078/Ubuntu/Installer/x86_64/synology-drive-client-11078.x86_64.deb"
sudo apt install -y ./synology-drive-client-11078.x86_64.deb
rm -rf synology-drive-client-11078.x86_64.deb
