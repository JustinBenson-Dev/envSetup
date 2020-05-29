#!/bin/bash

sudo dnf upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo dnf install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install bashtop
install chromium
install conky
install dconf-editor
install gnome-tweak-tool
install gthumb
install htop
install neofetch
install nmap
install terminator
install vim
