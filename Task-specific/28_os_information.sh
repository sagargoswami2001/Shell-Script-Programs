#!/bin/bash

os_name=$(uname -s)
os_release=$(uname -r)
os_version=$(cat /etc/*-release | grep VERSION_ID | cut -d '"' -f 2)
os_arch=$(uname -m)

echo "OS Name: $os_name"
echo "OS Release: $os_release"
echo "OS Version: $os_version"
echo "OS Architecture: $os_arch"
