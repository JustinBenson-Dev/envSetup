#!/bin/bash

#Install Free Office (O365 replacement)
echo "Installing FreeOffice..."

curl --remote-name https://www.softmaker.net/down/softmaker-freeoffice-2018_976-01_amd64.deb
sudo apt install -y ./softmaker-freeoffice-2018_976-01_amd64.deb

rm -rf softmaker-freeoffice-2018_976-01_amd64.deb

sudo bash /usr/share/freeoffice2018/add_apt_repo.sh
