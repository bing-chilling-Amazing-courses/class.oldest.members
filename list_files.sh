#!/usr/bin/env bash

# This script lists the files inside one safe directory.
# It does not change, move, or delete anything.

DIRECTORY="/home/user/files"

echo "Files in this directory:"
echo "$DIRECTORY"
echo

for item in "$DIRECTORY"/*; do
    if [ -e "$item" ]; then
        echo "- $(basename "$item")"
    fi
done
