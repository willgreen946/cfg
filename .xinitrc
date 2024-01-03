# Swap escape key and caps lock
xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
setxkbmap -option caps:swapescape

setxkbmap -layout gb

# Font path for urxvt
#xset +fp /usr/local/share/fonts/spleen

# Thinkpad middle click scroll
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Thinkpad trackpoint speed
xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.3

# Disable trackpad
synclient TouchpadOff=1

# Wallpaper
xsetroot -solid 'rgb:00/00/00'
feh --bg-scale ~/pictures/nebula.jpg

# User Programs
#xterm -e "tmux -2" &
slstatus &
emacs &
exec dwm
