#!/bin/bash

users=$(who | wc -l)
echo "Number of currently logged-in users: $users"
