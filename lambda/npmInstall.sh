#!/bin/bash

# Iterate through all directories in the current directory
for dir in */; do
    # Check if the directory contains 'src'
    if [[  -d "$dir/src" ]]; then
     
        # Navigate to the 'src' directory and run 'npm i'
        echo "Running npm i in $dir/src"
        (cd "$dir/src" && npm i)
    else
        echo "Skipping $dir: 'src' folder not found"
    fi
done
