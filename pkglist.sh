# First install all the text editors I want
pkg_add vis neovim bvi

# Install development tools
pkg_add gcc \
g++ \
pcc \
tcc \
mono \
objfw \
riscv-elf-gcc \
qemu \
nasm \
gmake \
fltk

# Install X11 programs (BLOAT)
pkg_add feh \
mupdf \
mpv \
libreoffice \
links \
tor-browser \
scrot \
ungoogled-chromium 

# Install utils
pkg_add git \
chafa \
yt-dlp \
htop \
wpa_supplicant \
hfsplus \
links+ \
curl \
wget \
transmission \
groff \
p7zip \
zip \
unzip \
qemu \
obsdfreqd \
fzf \
jq

# Install fonts
pkg_add spleen terminus-font font-awesome

# Download git repos
git clone https://github.com/willgreen946/st
git clone https://github.com/willgreen946/dwm
git clone https://github.com/willgreen946/cfg
git clone https://github.com/willgreen946/slstatus
