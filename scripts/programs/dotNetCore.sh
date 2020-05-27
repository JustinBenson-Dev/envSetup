#!/bin/bash

echo "Installing dotNet core..."
#install .NET Core SDK
curl --remote-name https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-fast update
sudo apt-fast install apt-transport-https -y
sudo apt-fast update
sudo apt-fast install dotnet-sdk-3.1 -y
