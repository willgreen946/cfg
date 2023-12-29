SYS=`uname`
VOID_PKG_MAN="xbps-install -s "
OPENBSD_PKG_MAN="pkg_add "

UNIVERSAL_PKG_LIST="gcc \
pcc \
tcc \
mono \
mupdf \
vifm \
bvi \
lynx \
nvi \
git \
mpv \
htop \
libreoffice \
lynx"

VOID_PKG_LIST="base-devel \
libX11-devel \
libXft-devel \
libXinerama-devel \
fontconfig-devel \
firefox \
powertop \
linux6.6-headers \
xterm \
xorg \
tmux \
$UNIVERSAL_PKG_LIST"

OPENBSD_PKG_LIST="wpa_supplicant \
g++ \
obsdfreqd \
$UNIVERSAL_PKG_LIST"

if [$SYS == "linux"]
then
	exec $VOID_PKG_MAN $VOID_PKG_LIST &
elif [$SYS == "OpenBSD"]
then
	exec $OPENBSD_PKG_MAN $OPENBSD_PKG_LIST &
fi

exec git clone https://github.com/willgreen946/cfg &
exec git clone https://github.com/willgreen946/dwm &
exec git clone https://github.com/willgreen946/slstatus &
