set ROOT_CMD doas
set WIRELESS_INTERFACE iwn0
set EDITOR nvi
set PAGER less
set BROWSER links
set prompt='[%n@%m %c]$ '

bindkey -v 

# Swap Escape and Caps_Lock on the TTY (OpenBSD)
#wsconsctl keyboard.map+="keysym Caps_Lock = Escape"

# Verbose commands
alias ls "ls -lA"
alias cp "cp -v"
alias mv "mv -v"
alias rm "rm -v"
alias vi "nvi"

alias new_wallpaper="feh --randomize --bg-scale ~/Pictures/Wallpapers/"

# Internet relating things
alias net_home "$ROOT_CMD sh ~/Scripts/wifi/home.sh $WIRELESS_INTERFACE"
alias net_list "$ROOT_CMD sh ~/Scripts/wifi/ssid.sh $WIRELESS_INTERFACE"
alias net_eduroam "$ROOT_CMD sh ~/Scripts/wifi/eduroam.sh $WIRELESS_INTERFACE"
alias net_get_tune "yt-dlp --extract-audio --audio-format wav $1"
alias net_search_youtube "sh ~/Scripts/ytfzf/ytfzf"
alias net_search_linux "$BROWSER https://linuxsheet.com"
alias net_search "$BROWSER https://duckduckgo.com"

# Linux
#alias net_list="$root_cmd iw $wireless_interface scan | grep SSID"
