#
# List all available wireless networks
# Probably not the most efficient way but it works
#
if [ "${uname}" -eq "OpenBSD" ]; then
	ifconfig $1 scan | grep nwid | awk '{print $2}' | grep -v '^"' | grep -v '^0'
else
	iw $1 scan | grep SSID
fi
