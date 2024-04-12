# needs to be run as root and with in the directory of the built kernel
cp arch/x86/boot/bzImage /boot/vmlinuz-new
cp System.map /boot/System.map-new
cp .config /boot/config-new
