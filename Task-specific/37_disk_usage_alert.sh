#!/bin/bash

read -p "Enter filename to write alert: " file
touch $file
read -p "Enter disk space threshold: " threshold
df -H | grep -vE "^Filesystem|tmpfs|cdrom" | awk '{ print $5 " " $1 }' | while read output;
do
usage=$(echo $output | awk '{ print $1}' | cut -d'%' -f1)
if [ $usage -ge $threshold ]; then
partition=$(echo $output | awk '{ print $2 }')
echo "Alert for \"$partition: Almost out of disk space $usage% as on $(date) " >> $file
break
fi
done
cat $file
