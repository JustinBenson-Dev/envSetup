#!/bin/bash

sudo yum update -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl mask cups

#To review active sercices, run the following command
sudo systemctl list-units | grep service

#https://wiki.centos.org/HowTos/Laptops/Wireless

#To get wifi going, install NetworkManager-wifi
sudo yum install -y NetworkManager-wifi

#Check status of NetworkManager service:
sudo systemctl status NetworkManager.service

#check wifi device list
sudo nmcli dev
sudo nmcli r wifi

# wifisupplicant
