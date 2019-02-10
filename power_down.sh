#!/bin/bash

# We sadly need ADB to hit the power button
bash connect_adb.sh

adb shell input keyevent 26 # Power button
sleep 1
echo "enter" | /home/pi/hid_gadget_test /dev/hidg0 keyboard

# Wait until things have actually powered off before we surrender control back
adb disconnect 192.168.1.196
n=0
until [ $n -ge 60 ]
do
  adb connect 192.168.1.196 | grep "No route" && break
  n=$[$n+1]
  sleep 1
done

echo "Power is off!"
