#!/bin/sh
current=$(cat /sys/class/backlight/amdgpu_bl1/brightness)
new=$((current + 5))
echo $new | sudo tee /sys/class/backlight/amdgpu_bl1/brightness
