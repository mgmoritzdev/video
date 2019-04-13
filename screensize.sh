#!/usr/bin/env bash

echo $(xwininfo -id $(wmctrl -lp | grep "emacs@" | cut -d" " -f1) | grep "Absolute upper-left X" | cut -d":" -f2)
echo $(xwininfo -id $(wmctrl -lp | grep "emacs@" | cut -d" " -f1) | grep "Absolute upper-left Y" | cut -d":" -f2)
echo $(xwininfo -id $(wmctrl -lp | grep "emacs@" | cut -d" " -f1) | grep "Width" | cut -d":" -f2)
echo $(xwininfo -id $(wmctrl -lp | grep "emacs@" | cut -d" " -f1) | grep "Height" | cut -d":" -f2)
