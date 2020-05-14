#!/bin/bash

#on Ubuntu based distros
#run this from ~/ directory for cd into powertop-2.12 to work

sudo apt install libpci-dev libnl-3-dev libnl-genl-3-dev gettext libgettextpo-dev autopoint gettext libncurses5-dev libncursesw5-dev libtool-bin dh-autoreconf autoconf-archive pkg-config

wget https://01.org/sites/default/files/downloads//powertop-2.12.tar.gz

gunzip powertop-2.12.tar.gz

cd powertop-2.12 #run this from ~/ directory for cd into powertop-2.12 to work

./autogen.sh
./configure
make
sudo make install


#Source:  https://01.org/powertop/downloads
#instructions are in the README.md in the download
