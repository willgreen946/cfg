# List all available wireless networks
dhclient $1
sleep 1
ifconfig $1 scan | grep nwid | awk '{print $2}'
