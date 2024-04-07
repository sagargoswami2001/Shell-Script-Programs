#!/bin/bash

while true
do
cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
mem=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')
echo "$(date) CPU Usage: $cpu, Memory Usage: $mem"
sleep 10
done
