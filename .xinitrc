#####################################
# Swapping escape key and caps lock #
#####################################

xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
setxkbmap -option caps:swapescape

##########
# Keymap #
##########

setxkbmap -layout gb

################################
# Thinkpad middle click scroll #
################################

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

####################################
# Set background color / Wallpaper #
####################################

#xsetroot -solid 'rgb:00/22/44'
xsetroot -solid 'rgb:00/00/00'

####################
# Startup programs #
####################

#xterm -geometry 80x24+530+5 &
#xterm -geometry 80x24+530+400 &
#xterm -geometry 80x40+0+0 &
#xterm -e "tmux -2" &
xterm &

###################
# Window Managers #
###################

dwm
#fvwm
#ctwm
