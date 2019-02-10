#!/bin/bash
if adb devices -l | grep "MiProjA1"; then
  # We're authorized
  exit 0
fi

adb disconnect 192.168.1.196
adb connect 192.168.1.196
sleep 1

if adb devices -l | grep "unauthorized"; then
  echo "down" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
  echo "right" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
  echo "enter" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
fi

adb shell echo "connected!"
