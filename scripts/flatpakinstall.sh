#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo flatpak install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

#install flatpaks
install us.zoom.Zoom
install flathub org.gabmus.hydrapaper
