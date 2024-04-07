#!/bin/bash

read -p "Enter network interface to monitor traffic (ex. eth0): " net

while true
do
rx=$(ifconfig $net | grep "RX packets" | awk '{print $3 $6 $7}')
tx=$(ifconfig $net | grep "TX packets" | awk '{print $3 $6 $7}')
echo "$(date) RX: $rx, TX: $tx"
sleep 10
done
