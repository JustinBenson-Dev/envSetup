#!/bin/bash

#install organchelo icon set

echo "Installing oranchelo icon theme set..."

git clone https://github.com/OrancheloTeam/oranchelo-icon-theme.git
sudo chmod +x ./oranchelo-icon-theme
cd ./oranchelo-icon-theme
sudo make install
cd ..

#remove sources folder
sudo rm -rf ~/oranchelo-icon-theme
