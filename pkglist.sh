PKG_MAN="pkg_add"
PKG_LIST="gcc \
g++ \
pcc \
tcc \
mono \
mupdf \
qutebrowser \
vifm \
bvi \
nvi \
elvis \
git \
mpv \
libreoffice \
vitetris \
spleen"

# Some packages that are shipped with OpenBSD but not others
PKG_ALT_LIST="tmux \
gdb \
wpa_supplicant \
ksh"


# Remember to install dwm

exec $PKG_MAN $PKG_LIST
