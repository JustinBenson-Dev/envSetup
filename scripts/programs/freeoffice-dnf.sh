#!/bin/bash

#Install Free Office (O365 replacement)
echo "Installing FreeOffice..."

#import and install GPG key
curl --remote-name https://shop.softmaker.com/repo/linux-repo-public.key
sudo rpm --import linux-repo-public.key

#install FreeOffice
curl --remote-name https://shop.softmaker.com/repo/rpm/x86_64/RPMS/softmaker-freeoffice-2018-976.x86_64.rpm
sudo rpm -ivh softmaker-freeoffice-2018-976.x86_64.rpm
sudo /usr/share/freeoffice2018/add_rpm_repo.sh

#clean up
rm -rf softmaker-freeoffice-2018-976.x86_64.rpm
