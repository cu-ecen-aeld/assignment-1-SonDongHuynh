#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: SonDongHuynh

set -e

# Check the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required - <file path> <content>"
    exit 1
fi

writefile=$1
writestr=$2

dirpath=$(dirname "$writefile")

if [ ! -d "$dirpath" ]; then
    mkdir -p "$dirpath"
fi

# Try to write the string to the file, overwrite if exists
if ! echo "$writestr" > "$writefile"; then
    echo "Error: Could not write to file $writefile"
    exit 1
fi

exit 0
