#!/bin/bash

# Iterate through all directories in the current directory
for dir in */; do
    # Check if the directory contains 'src'
    if [[ -d "$dir/src" ]]; then
        # Check if .cny_npmrc exists in the 'src' directory
        if [[ -f "$dir/src/.cny_npmrc" ]]; then
            echo "Renaming .cny_npmrc to .npmrc in $dir/src"
            mv "$dir/src/.cny_npmrc" "$dir/src/.npmrc"
        fi
        
        # Navigate to the 'src' directory and run 'npm install'
        echo "Running npm install in $dir/src"
        (cd "$dir/src" && npm install)
    else
        echo "Skipping $dir: 'src' folder not found"
    fi
done
