#!/bin/bash

echo "Starting image capture" > /dev/ttyAMA0
time /opt/vc/bin/raspistill -o /tmp/cam.jpg

while ! ping -c 1 -W 1 10.4.0.1; do
    echo "Waiting for 10.4.0.1 - network interface might be down..."
    sleep 1
done

rngd -o /dev/random -r /dev/urandom
/usr/bin/curl -k -F "key=" -F "image=@/tmp/cam.jpg" http://otaunsafe.tbspace.de/raspicam/upload.php | grep "startinit"

if [ $? == 0 ]; then
   exec /sbin/init
else
   echo "4" > /sys/class/gpio/export
   echo "out" > /sys/class/gpio/gpio4/direction
   echo "0" > /sys/class/gpio/gpio4/value
#   halt -f -p
fi
