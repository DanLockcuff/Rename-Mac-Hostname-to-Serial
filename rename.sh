#!/bin/sh
# Pulls and prints the serial # of your Mac
serial=$(system_profiler SPHardwareDataType | grep 'Serial Number (system)' | awk '{print $NF}')

# Renames the 3 below 
/usr/sbin/scutil --set ComputerName $serial
/usr/sbin/scutil --set HostName $serial
/usr/sbin/scutil --set LocalHostName $serial
exit 0
