#!/bin/bash

echo "Installing Bashtop..."
sudo add-apt-repository ppa:bashtop-monitor/bashtop -y #install #bashtop
sudo apt update
sudo apt install bashtop -y
