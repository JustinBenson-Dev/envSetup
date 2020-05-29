#!/bin/bash

#remove All LibreOffice apps

echo "Removing all LibreOffice apps..."
sudo dnf remove -y libreoffice*
sudo dnf autoremove -y
