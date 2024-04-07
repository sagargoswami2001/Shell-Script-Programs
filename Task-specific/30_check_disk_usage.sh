#!/bin/bash

disk=$(df -h | awk '$NF=="/"{printf "%s", $5}')
echo "Current Disk Usage: $disk"
