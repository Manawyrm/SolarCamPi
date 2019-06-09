#!/bin/bash

echo "Voltage: "
echo $(((`i2cget -y 1 0x08 1 c` << 8) + `i2cget -y 1 0x08 0 c`))

echo "Sleep-Interval (seconds):"
echo $(((`i2cget -y 1 0x08 3 c` << 8) + `i2cget -y 1 0x08 2 c`))

echo "Undervoltage Lockout (mV):"
echo $(((`i2cget -y 1 0x08 5 c` << 8) + `i2cget -y 1 0x08 4 c`))

echo "Undervoltage Hysteresis (mV):"
echo $(((`i2cget -y 1 0x08 7 c` << 8) + `i2cget -y 1 0x08 6 c`))

echo "Disable Timeout flag: "
echo `i2cget -y 1 0x08 8 c`

echo "Timeout: "
echo $(((`i2cget -y 1 0x08 10 c` << 8) + `i2cget -y 1 0x08 9 c`))
