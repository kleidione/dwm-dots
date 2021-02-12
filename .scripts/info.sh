#!/bin/bash

OS=$("Arch Linux")
WM=$("Dwm")
DATE=$(date +"%H:%M")
CPUUSE=$(cat /proc/loadavg | awk '{print $1}')

for folder in /sys/class/hwmon/hwmon*

do

if [[ -e "$folder/temp1_input"  ]]; then
TEMPCPU=$(sed 's/000$/°C/' "$folder/temp1_input")
fi

done

MEMUSE=$(free -h | awk '(NR==2){print $3}')

echo " OS.ARCH | WM.DWM | CPU.$CPUUSE% | TEMP.$TEMPCPU | MEM.$MEMUSE | HORA.$DATE "





