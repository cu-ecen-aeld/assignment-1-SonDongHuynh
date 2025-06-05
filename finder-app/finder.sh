#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: SonDongHuynh

# Check the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required - <directory path> <search string>"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if the provided path is a valid directory
if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a directory"
    exit 1
fi

# Count the number of files
X=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Output the result
echo "The number of files are $X and the number of matching lines are $Y"