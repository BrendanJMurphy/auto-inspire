#!/bin/bash

# Snag the name of this file
this_filename=`basename "$0"`

echo -e "START $this_filename\n"

cvt 2560 1080 60

xrandr --newmode "2560x1080_60.00"  230.00  2560 2720 2992 3424  1080 1083 1093 1120 -hsync +vsync

xrandr --addmode Virtual1 2560x1080_60.00

#The changes are lost after reboot, to set up the resolution persistently, create the file ~/.xprofile with the content:

#!/bin/sh
#xrandr --newmode "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 #1059 1089 -hsync +vsync
#xrandr --addmode VGA-0 1680x1050_60.00


echo -e "\nEND $this_filename\n"
