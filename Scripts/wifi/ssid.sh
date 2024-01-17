# List all available wireless networks
# Probably not the most efficient way but it works
ifconfig $1 scan | grep nwid | awk '{print $2}' | grep -v '^"' | grep -v '^0'
