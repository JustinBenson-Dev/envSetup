#!/bin/bash

sudo apt-fast update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

# install snaps
install caprine
install code --classic 
install chromium
install chromium-ffmpeg
install fromscratch
install libreoffice
install youtube-dl
install zoom-client

#install docker #try from docker.sh first
