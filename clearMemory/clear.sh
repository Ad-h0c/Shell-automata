#!/bin/bash

# Specify the directory to start searching from
search_directory="/home/adhoc"

# Find directories named "node_modules" that have not been accessed in the last 3 weeks (21 days) and delete them
find "$search_directory" -type d -name "node_modules" -atime +21 -exec rm -rf {} \;
