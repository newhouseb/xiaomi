#!/bin/bash
echo on 0 | cec-client -s -d 1

n=0
until [ $n -ge 60 ]
do
  bash connect_adb.sh && break
  n=$[$n+1]
  sleep 1
done

# bash first_input.sh
