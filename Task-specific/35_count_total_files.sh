#!/bin/bash

count=$(find / -type f | wc -l)
echo "Number of files in the system: $count."
