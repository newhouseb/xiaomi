#!/bin/bash
adb disconnect 192.168.1.196
adb connect 192.168.1.196
sleep 1
echo "tx 10:44:02" | cec-client RPI -s -d 4 # Down
echo "tx 10:44:04" | cec-client RPI -s -d 4 # Right
echo "tx 10:44:2b" | cec-client RPI -s -d 4 # Enter
adb shell reboot -p
