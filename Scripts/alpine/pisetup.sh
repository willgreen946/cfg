# Not a raspberry pi setup!
# This is a post install script
apk update
setup-xorg-base
apk add git firefox wpa_supplicant xterm fvwm lm-sensors htop lsblk xf86-video-intel vifm acpi mandoc man-pages mandoc-apropos cfdisk gcc g++ clang shadow oksh libreoffice-base libreoffice mpv zzz make libx11 tmux terminus-font alsa-utils alpine-sdk zip unzip sxiv zathura zathura-pdf-mupdf autoconf font-liberation automake yt-dlp transmission-cli

# chsh -s /bin/oksh will
