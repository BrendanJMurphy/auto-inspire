#!/bin/bash

# A homebrew guake functionality, used in conjuction with jumpapp
ACTIVE_WINDOW_NAME=`xdotool getwindowfocus getwindowname`

USERNAME=`whoami`
HOSTNAME=`hostname`

WIN_LIST=`wmctrl -l | grep -o "$HOSTNAME.*" | sed "s/$HOSTNAME //g" | grep "$HOSTNAME"`

TERM_WINDOW=`echo $WIN_LIST | grep "$HOSTNAME"`

# echo $USERNAME $HOSTNAME

# echo -e $TERM_WINDOW 

# echo $ACTIVE_WINDOW_NAME

#check if terminal window
if [[ $ACTIVE_WINDOW_NAME == *"brendan@"* ]]; then
	`xdotool windowminimize $(xdotool getactivewindow)`

else wmctrl -a $TERM_WINDOW

fi

