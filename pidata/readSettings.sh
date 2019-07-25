#!/bin/bash

echo "Voltage: "
echo $(((`i2cget -y 1 0x08 1 c` << 8) + `i2cget -y 1 0x08 0 c`))

echo "Sleep-Interval (seconds) - high supply voltage:"
echo $(((`i2cget -y 1 0x08 3 c` << 8) + `i2cget -y 1 0x08 2 c`))

echo "Sleep-Interval (seconds) - low supply voltage:"
echo $(((`i2cget -y 1 0x08 5 c` << 8) + `i2cget -y 1 0x08 4 c`))

echo "Low supply voltage threshold (mV):"
echo $(((`i2cget -y 1 0x08 7 c` << 8) + `i2cget -y 1 0x08 6 c`))

echo "Undervoltage Lockout (mV):"
echo $(((`i2cget -y 1 0x08 9 c` << 8) + `i2cget -y 1 0x08 8 c`))

echo "Undervoltage Hysteresis (mV):"
echo $(((`i2cget -y 1 0x08 11 c` << 8) + `i2cget -y 1 0x08 10 c`))

echo "Disable Timeout flag: "
echo `i2cget -y 1 0x08 12 c`

echo "Timeout: "
echo $(((`i2cget -y 1 0x08 14 c` << 8) + `i2cget -y 1 0x08 13 c`))


