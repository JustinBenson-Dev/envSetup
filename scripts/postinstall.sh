#!/bin/bash

sudo yum update -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl mask cups

