
#!/bin/bash

sudo dnf install powertop tlp -y
sudo tlp start
#sudo powertop --calibrate

#may want to sudo reboot after this
