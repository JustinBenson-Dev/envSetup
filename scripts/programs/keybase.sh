#!/bin/bash

echo "Installing Keybase..."

curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt-fast install -y ./keybase_amd64.deb
run_keybase
rm -rf keybase_amd64.deb
