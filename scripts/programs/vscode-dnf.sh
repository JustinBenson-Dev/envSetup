#!/bin/bash

ech "Installing Visual Studio Code..."

curl --remote-name https://code.visualstudio.com/docs/?dv=linux64_rpm
sudo dnf install *.rpm -y

rm *.rpm
