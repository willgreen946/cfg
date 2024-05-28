# Not a raspberry pi setup! This is a (p)ost (i)nstall script
apk update
setup-xorg-base

# Install all the packages I need
apk add git firefox wpa_supplicant xterm fvwm lm-sensors htop lsblk xf86-video-intel vifm acpi mandoc man-pages mandoc-apropos cfdisk gcc g++ clang shadow oksh libreoffice-base libreoffice mpv zzz make libx11 tmux terminus-font alsa-utils alpine-sdk zip unzip sxiv zathura setxkbmap groff zzz pcc pcc-doc pcc-libs objfw zathura-pdf-mupdf perl ffmpeg mpv ncurses ncurses-dev ncurses-static libncursesw ncurses-doc docs font-liberation autoconf make automake yt-dlp transmission-cli emacs-x11 python3 nerd-fonts nerd-fonts-all

# This is needed to get Xorg to work under a normal user account
addgroup will video
addgroup will input 

# I want to use ksh as my default shell
chsh -s /bin/oksh will
