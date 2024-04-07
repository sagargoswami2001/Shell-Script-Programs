#!/bin/bash

read -p "Enter process name: " process

process_path=$(which $process)
while true
do
if pgrep $process > /dev/null
then
echo "The Process $process is running."
sleep 5
else
$process_path &
echo "The Process $process restarted."
continue
fi
done
