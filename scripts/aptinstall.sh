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

# Basics
install cheese
install chromium
install conky
install curl
install epiphany-browser
install exfat-fuse
install exfat-utils
install git
install gnome-boxes
install gthumb
install htop
install neofetch
install nmap
install remmina
install terminator
install tmux
install tree
install unzip
install vim
install youtube-dl
install wget

