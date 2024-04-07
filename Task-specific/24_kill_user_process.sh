#!/bin/bash

read -p "Enter username: " user

sudo pkill -u $user
echo "All processes of user $user have been terminated."
