#!/bin/bash

uptime | awk '{print $1,$2,$3}' | sed 's/,//'
echo "Uptime: $uptime"
