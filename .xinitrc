# Swap escape key and caps lock
xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
setxkbmap -option caps:swapescape

# Set keyboard layout
setxkbmap -layout gb

# OpenBSD specfic commands
sndioctl output.level=0.3

# Font path for urxvt
xset +fp /usr/local/share/fonts/spleen

# Set refresh rate (60Hz) and lower the brightness
# This doesnt seem to work when multiple monitors are connected
xrandr -r 60
xbacklight -set 30 

# Thinkpad middle click scroll
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Mouse speed
xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.3

# Disable trackpad
synclient TouchpadOff=1

# Wallpaper
xsetroot -solid 'rgb:00/22/44'
feh --bg-scale ~/Pictures/tiger.jpg

# Run scripts
# sh ~/Scripts/Monitor/left_right.sh

picom &
slstatus &
st -e tmux &
dwm
