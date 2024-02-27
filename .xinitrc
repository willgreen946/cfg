# Swap escape key and caps lock
xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
setxkbmap -option caps:swapescape

# Set keyboard layout
setxkbmap -layout gb

# Net/FreeBSD
intel_backlight 30

# OpenBSD & Linux
#xbacklight -set 30

# OpenBSD specfic commands
#sndioctl output.level=0.3

# Font path for urxvt
xset +fp /usr/local/share/fonts/spleen

# Set refresh rate (60Hz) and lower the brightness
# This doesnt seem to work when multiple monitors are connected
xrandr -r 60

# Thinkpad middle click scroll
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Mouse speed
xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.3
#xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.6

# Disable trackpad
synclient TouchpadOff=1

# Wallpaper
xsetroot -solid 'rgb:00/22/44'

# Monitor settings
sh ~/Scripts/Monitor/dell_only.sh
# sh ~/Scripts/Monitor/left_right.sh

feh --bg-scale ~/Pictures/tiger.jpg
st -e tmux &
slstatus &
picom &
dwm
