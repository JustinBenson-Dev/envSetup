https://www.reddit.com/r/linuxquestions/comments/6d8lx1/facetime_hd_camera_on_ubuntu/

Follow the guide https://github.com/patjak/bcwc_pcie/wiki/Get-Started

BEFORE STARTING boot OSX and make sure to get the firmware AppleCameraInterface from /System/Library/Extensions/AppleCameraInterface.kext/Contents/MacOS/

Boot ubuntu, follow the guide, after $ git clone https://github.com/patjak/bcwc_pcie.git, cp AppleCameraInterface to bcwc_pcie/firmware

Now my problems started here: $ cd bcwc_pcie/firmware

$ make gave me an error similar to the following:

Error: Mismatching driver hash for ../../AppleCameraInterface Error: The uknown hash is 387097b5133e980196ac51504a60ae1ad8bab736eb0070a55774925ca0194892 Error: No firmware extracted!

You have to: $ sha256sum AppleCameraInterface

copy the output (something similar to: 387097b5133e980196ac51504a60ae1ad8bab736eb0070a55774925ca0194892)

Open with a text editor extract-firmware.sh and add hash_drv_osx_143_2='387097b5133e980196ac51504a60ae1ad8bab736eb0070a55774925ca0194892'

Now run again $ make

Another error similar to the one above will occur but the folder firmware.bin will be created:

$ sha256sum firmware.bin

And add hash_fw_osx_143_2='504fcf1565bf10d61b31a12511226ae51991fb55d480f82de202a2f7ee9c966e' to extract-firmware.sh

4. Continue with the guide

5. if $ make install gives an error because no '//usr/lib/firmware/facetimehd' can be found : just create it

6. if you run $ mplayer tv:// and it doesn't work (make sure you have installed it):

$ sudo modprobe -r facetimehd $ sudo updatedb $ locate facetimehd.ko /lib/modules/4.8.0-32-generic/extra/facetimehd.ko $ sudo insmod /lib/modules/4.8.0-32-generic/extra/facetimehd.ko dyndbg=pmf insmod: ERROR: could not insert module /lib/modules/4.8.0-32-generic/extra/facetimehd.ko: Unknown symbol in module $ sudo insmod /lib/modules/4.8.0-32-generic/extra/facetimehd.ko insmod: ERROR: could not insert module /lib/modules/4.8.0-32-generic/extra/facetimehd.ko: Unknown symbol in module $ lsmod |grep facetime $ sudo modprobe facetimehd $ ls /dev/video0 -l

Then everything should be working!

Hope it will help someone.

Special thanks to git-hub users budrik and 8leggedunicorn which had similar issues and post their solution which toghether worked for me.

Sources:

https://github.com/patjak/bcwc_pcie/wiki/Get-Started#get-started-on-debian

https://github.com/patjak/bcwc_pcie/issues/49

https://github.com/patjak/bcwc_pcie/issues/41
