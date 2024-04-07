#!/bin/bash

# Specify the source and destination directories
read -p "Enter path to the source directory: " source_dir
read -p "Enter path to the destination directory: " dest_dir

# Create the destination directories if they don't exist
mkdir -p "${dest_dir}/Documents"
mkdir -p "${dest_dir}/Images"
mkdir -p "${dest_dir}/Music"
mkdir -p "${dest_dir}/Videos"
mkdir -p "${dest_dir}/Others"

# Move files to the appropriate directories based on their extensions
for file in "${source_dir}"/*; do
if [ -f "${file}" ]; then
extension="${file##*.}"
case "${extension}" in
txt|pdf|doc|docx|odt|rtf)
mv "${file}" "${dest_dir}/Documents"
;;
jpg|jpeg|png|gif|bmp)
mv "${file}" "${dest_dir}/Images"
;;
mp3|wav|ogg|flac)
mv "${file}" "${dest_dir}/Music"
;;
mp4|avi|wmv|mkv|mov)
mv "${file}" "${dest_dir}/Videos"
;;
*)
mv "${file}" "${dest_dir}/Others"
;;
esac
fi
done
echo "Files organized successfully!"
