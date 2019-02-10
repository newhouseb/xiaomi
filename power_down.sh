#!/bin/bash

# We sadly need ADB to hit the power button
bash connect_adb.sh

adb shell input keyevent 26 # Power button
sleep 1
echo "enter" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
