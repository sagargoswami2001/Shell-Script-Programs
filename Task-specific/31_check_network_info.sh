#!/bin/bash

echo " System’s network information:-"

ip=$(hostname -I)
echo "IP Address: $ip"
gw=$(ip route | awk '/default/ { print $3 }')
echo "Gateway: $gw"
dns=$(grep "nameserver" /etc/resolv.conf | awk '{print $2}')
echo "DNS Server: $dns"
