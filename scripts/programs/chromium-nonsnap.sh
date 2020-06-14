#!/bin/bash

# Add the Debian Buster repo for chromium-browser only.
# Source: https://forums.linuxmint.com/viewtopic.php?f=42&t=321953

echo "Installing Chromium for Linux Mint 20 (non-snap)..."

# Step 1 - Remove any existing chromium installs
sudo apt purge --autoremove chromium chromium-browser ungoogled-chromium -y

# Step 2 - Add the relevant repos to your sources
sudo tee /etc/apt/sources.list.d/debian.list <<'EOB'
deb https://deb.debian.org/debian buster main
deb https://deb.debian.org/debian buster-updates main
deb http://security.debian.org/ buster/updates main
EOB

# Step 3 - Add a rule so that only chromium is installed from this repo
sudo tee /etc/apt/preferences.d/chromium.pref <<'EOB'
# Don't install anything other than chromium from the Debian repos
Package: *
Pin: origin "deb.debian.org"
Pin-Priority: 1

# Don't install anything other than chromium from the Debian repos
Package: *
Pin: origin "security.debian.org"
Pin-Priority: 1

# Pattern includes 'chromium'
Package: chromium*
Pin: origin "deb.debian.org"
Pin-Priority: 700

# Pattern includes 'chromium'
Package: chromium*
Pin: origin "security.debian.org"
Pin-Priority: 700

# Exclude the game chromium-bsu
Package: chromium-bsu*
Pin: origin "deb.debian.org"
Pin-Priority: 1

# Exclude the game chromium-bsu
Package: chromium-bsu*
Pin: origin "security.debian.org"
Pin-Priority: 1
EOB

# Step 4 - Add the Debian signing keys
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys DCC9EFBF77E11517
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 648ACFD622F3D138
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 112695A0E562B32A

# Step 5 - Install chromium
sudo apt update && apt install chromium -y

#https://forums.linuxmint.com/viewtopic.php?f=42&t=321953
