# swap escape and caps lock
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
setxkbmap -option caps:swapescape

# set keyboard layout
setxkbmap -layout gb

# volume
sndioctl output.level=0.3

# refresh rate
#xrandr -r 60

# ThinkPad middle click scroll
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# mouse speed
xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.6

# Wallpaper
#xsetroot -solid 'rgb:00/22/44'

# wallpaper
#feh --bg-tile ~/Pictures/brown.png

# startup programs
xterm -e tmux &
xterm -e "cat ~/Documents/todo.txt | less" &

# window manager
fvwm2
#mwm
