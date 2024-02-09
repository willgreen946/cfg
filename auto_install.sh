system_name=`uname`

# OpenBSD

if [ $system_name = "OpenBSD" ]; then
	pkg_add -Uu
	pkg_add vis neovim bvi libreoffice git hfsplus mono pcc tcc gcc g++ mupdf feh\
	ungoogled-chromium w3m chafa scrot wpa_supplicant objfw htop unzip zip
fi

if [ $system_name = "NetBSD" ]; then
	pkgin install firefox neovim pcc mupdf chafa scrot objfw bvi git feh\
	ca-certificates mozilla-rootcerts htop intel-microcode intel_backlight\
	pkg-config zip

# Getting middle click scroll on NetBSD
mkdir -p /etc/X11/xorg.conf.d/
touch /etc/X11/xorg.conf.d/mouse.conf
printf "Section \"InputDevice\"\n\
    Identifier \"Mouse0\"\n\
    Driver \"mouse\"\n\
    Option \"Device\" \"/dev/wsmouse\"\n\
    Option \"EmulateWheel\" \"on\"\n\
    Option \"EmulateWheelButton\" \"2\"\n\
    Option \"YAxisMapping\" \"4 5\"\n\
EndSection" > /etc/X11/xorg.conf.d/mouse.conf

fi
