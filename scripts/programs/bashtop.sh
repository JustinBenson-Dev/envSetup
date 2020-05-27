#!/bin/bash

echo "Installing Bashtop..."
sudo add-apt-repository ppa:bashtop-monitor/bashtop -y #install #bashtop
sudo apt-fast update
sudo apt-fast install bashtop -y
