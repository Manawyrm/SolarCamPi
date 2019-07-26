#!/bin/bash

echo "Starting image capture" > /dev/ttyAMA0
i2cget -y 1 0x08 0 c

time /opt/vc/bin/raspistill -o /tmp/cam.jpg

while ! ping -c 1 -W 1 10.4.0.1; do
    echo "Waiting for 10.4.0.1 - network interface might be down..."
    sleep 1
done

rngd -o /dev/random -r /dev/urandom

#VOLTAGE="`cat /sys/bus/i2c/devices/1-0040/iio\:device0/in_voltage1_raw`"
VOLTAGE="unknown"
VOLTAGE=$(((`i2cget -y 1 0x08 1 c` << 8) + `i2cget -y 1 0x08 0 c`))

CURRENT="unknown"
RAWCURRENT=$(((`i2cget -y 1 0x08 16 c` << 8) + `i2cget -y 1 0x08 15 c`))

if [ "$RAWCURRENT" -gt "32767" ]
then
  CURRENT=$(($RAWCURRENT-65536))
else
  CURRENT=$RAWCURRENT
fi


/usr/bin/curl -k  -F "voltage=$VOLTAGE" -F "current=$CURRENT" -F "key=" -F "image=@/tmp/cam.jpg" http://otaunsafe.tbspace.de/raspicam/upload.php | grep "startinit"

if [ $? == 0 ]; then
#   exec /bin/bash
   i2cset -y 1 0x08 12 1 b #disable timeout
   exec /sbin/init
else
   echo "4" > /sys/class/gpio/export
   echo "out" > /sys/class/gpio/gpio4/direction
   echo "0" > /sys/class/gpio/gpio4/value
#   halt -f -p
fi
