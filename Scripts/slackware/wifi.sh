ifconfig wlan0 up
wpa_supplicant -i wlan0 -B -c/etc/wpa_supplicant.conf
dhclient wlan0
