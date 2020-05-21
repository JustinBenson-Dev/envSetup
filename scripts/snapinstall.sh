#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# install snaps
sudo snap install docker
sudo snap install chromium
sudo snap install fromscratch
sudo snap install hiri
sudo snap install onlyoffice-desktopeditors
sudo snap install messengerport
sudo snap install youtube-dl
sudo snap install zoom-client
