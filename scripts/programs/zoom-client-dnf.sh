#!/bin/bash

echo "Installing Zoom client..."
wget https://zoom.us/client/latest/zoom_x86_64.rpm
sudo dnf -y localinstall zoom_x86_64.rpm
rm -f zoom_x86_64.rpm
