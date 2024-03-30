dhclient $1 
ifconfig $1 -wpakey
ifconfig $1 nwid eduroam wpa wpaakms 802.1x up
exec wpa_supplicant -i $1 -D openbsd -c ~/Scripts/wifi/configs/eduroam_chesterfield_college.conf -B
