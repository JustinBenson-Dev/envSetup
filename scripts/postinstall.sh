#!/bin/bash

sudo yum update -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl mask cups

#To review active sercices, run the following command
sudo systemctl list-units | grep service

#To get wifi going, install NetworkManager-wifi
sudo yum install -y NetworkManager-wifi
