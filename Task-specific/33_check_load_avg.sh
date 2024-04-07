#!/bin/bash

loadavg=$(uptime | awk '{print $10,$11,$12}')
echo "Load Average: $loadavg"
