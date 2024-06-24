#!/bin/bash

timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Define the file path
file_path=~/Desktop/force_gdrive_sync.txt

# Write the timestamp to the file
echo "Last updated: $timestamp" > "$file_path"
