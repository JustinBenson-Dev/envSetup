#!/bin/bash

#used to install webcam "FaceTimeHD" drivers on old Macbooks
echo "Installing facetimeHD..."

sudo apt-get install git curl xz-utils cpio -y

git clone https://github.com/patjak/facetimehd-firmware
git clone https://github.com/patjak/bcwc_pcie

cd ./facetimehd-firmware
printf "Compiling firmware\n";
make
printf "done\n\n";

printf "Installing firmware\n";
sudo make install
printf "done\n\n";

cd ../bcwc_pcie

printf "Compiling driver\n";
make
printf "done\n\n";

printf "Installing driver\n";
sudo make install
printf "done\n\n";

printf "Running depmod\n";
sudo depmod
printf "done\n\n";

printf "Running modprobe -r bdc_pci\n";
sudo modprobe -r bdc_pci
printf "done\n\n";

printf "Loading driver\n";
sudo modprobe facetimehd
printf "done\n\n";

echo facetimehd >> /etc/modules
