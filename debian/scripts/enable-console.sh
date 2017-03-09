#!/usr/bin/env bash

cat > /etc/default/grub << _EOF_
GRUB_DEFAULT=0
GRUB_TIMEOUT=5
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="console=ttyS0,38400n8 console=tty0"
GRUB_CMDLINE_LINUX="nohz=off"
_EOF_
update-grub
