
#!/bin/bash

sudo apt install powertop tlp
sudo tpl start
sudo powertop --calibrate

#may want to sudo reboot after this
