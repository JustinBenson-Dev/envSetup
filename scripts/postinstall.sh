#!/bin/bash

sudo yum update -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl mask cups

#To review active sercices, run the following command:
#sudo systemctl list-units | grep service

#https://wiki.centos.org/HowTos/Laptops/Wireless
#http://wiki.friendlyarm.com/wiki/index.php/Use_NetworkManager_to_configure_network_settings

#To get wifi going, install NetworkManager-wifi
sudo yum install -y NetworkManager-wifi

#Check status of NetworkManager service:
sudo systemctl status NetworkManager.service
sudo systemctl enable NetworkManager.service

#check wifi device list
sudo nmcli dev

#Start WiFi
sudo nmcli r wifi on

#Scan Surrounding WiFi Hotspots
sudo nmcli dev wifi

#prompt for network SSID and password, store in variables."
read -p "Enter SSID Name (case sensitive): " ssid
read -s -p "Enter password: " pswd

#Connect to WiFi Hotspot
sudo nmcli dev wifi connect "$ssid" password "$pswd"


# wifisupplicant
