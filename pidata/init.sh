#!/bin/bash
/opt/vc/bin/tvservice -o

#/init_image.sh&

mount -t sysfs none /sys
mount -t proc proc /proc
mount -a

modprobe brcmfmac
modprobe brcmutil
modprobe ip_tables
modprobe x_tables
modprobe cfg80211
modprobe ipv6

ip link set wlan0 up
ip addr add 10.4.100.1/16 dev wlan0
ip route add default via 10.4.0.1

wpa_supplicant -Dnl80211 -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf &

#exec /sbin/init
#/bin/bash
exec /init_image.sh
