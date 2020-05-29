#!/bin/bash

echo "Installing Keybase..."

sudo yum install -y https://prerelease.keybase.io/keybase_amd64.rpm
run_keybase
rm -rf linux-repo-public.key
pkill -f "keybase"  
