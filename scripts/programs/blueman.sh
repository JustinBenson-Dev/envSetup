#!/bin/bash

#Fix bluetooth manager.
echo "Removing blueberry and installing blueman."
sudo apt remove -y blueberry && sudo apt install -y blueman

