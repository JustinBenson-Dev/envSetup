#!/bin/bash

sudo dnf install dnf-plugins-core -y

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install brave-browser -y

#https://brave-browser.readthedocs.io/en/latest/installing-brave.html#linux
