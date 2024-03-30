#!/bin/sh
#
# This script puts my (dell) monitor on the left and my laptop screen on the right
#
xrandr --output LVDS-1 --primary --mode 1600x900 --pos 1280x124 --rotate normal --output VGA-1 --mode 1280x1024 --pos 0x0 --rotate normal
