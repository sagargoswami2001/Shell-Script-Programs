#!/bin/bash

read -p "Enter path of the directory to backup: " source_dir
read -p "Enter destination path for backup: " backup_dir

date=$(date +%Y-%m-%d)
backup_file="backup-$date.tar.gz"

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
mkdir -p "$backup_dir"
fi

# Create backup archive
tar -czf "$backup_dir/$backup_file" "$source_dir"
echo "Completed Creating backup at: $backup_dir."
