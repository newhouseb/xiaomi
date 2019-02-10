#!/bin/bash
bash connect_adb.sh

adb shell input keyevent 3 # Go home

echo "esc" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "up" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1

# Go right a bunch to whiz past any notifications
echo "right" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "right" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "right" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "right" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "left" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "enter" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1

# Go up a bunch to get rid of any selection
echo "up" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "up" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "up" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1
echo "up" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1

# It takes a second for the inputs to load
sleep 1.0 

echo "down" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
sleep 0.1

# Hit enter ont he first thing (i.e. Apple TV)
echo "enter" | /home/pi/hid_gadget_test /dev/hidg0 keyboard
