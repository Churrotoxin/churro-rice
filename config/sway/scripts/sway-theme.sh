#!/bin/bash

# Check if exactly three arguments are passed
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 file1 file2 destination_file"
    exit 1
fi

# Assign arguments to variables
file1="$1"
file2="$2"
destination_file="$3"

# Check if the files exist
if [[ ! -f "$file1" ]]; then
    echo "Error: $file1 does not exist."
    exit 1
fi

if [[ ! -f "$file2" ]]; then
    echo "Error: $file2 does not exist."
    exit 1
fi

# Combine the content of the two files into the destination file
cat "$file1" "$file2" > "$destination_file"

echo "Successfully combined $file1 and $file2 into $destination_file."
