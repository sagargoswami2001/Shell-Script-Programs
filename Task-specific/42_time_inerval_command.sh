#!/bin/bash

read -p "Enter command to run: " com
command_to_run=$(which $com)
read -p "Enter interval for running the command (m h dom mon dow): " interval

# Add command to crontab
(crontab -l ; echo "$interval $command_to_run") | sort - | uniq - | crontab -
echo "Command added to crontab and will run at $interval"
