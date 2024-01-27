PKG_LIST="gcc \
pcc \
tcc \
git \
g++ \
mpv \
feh \
bvi \
mono \
vifm \
lynx \
htop \
mupdf \
spleen \
neovim \
obsdfreqd \
libreoffice \
qutebrowser \
terminus-font \
wpa_supplicant"

pkg_add -Uu
pkg_add $PKG_LIST

git clone https://github.com/willgreen946/st
git clone https://github.com/willgreen946/cfg
git clone https://github.com/willgreen946/dwm
git clone https://github.com/willgreen946/slstatus
