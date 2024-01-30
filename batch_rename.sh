#!/bin/bash

# Ask the user for input
read -p "Enter the directory path: " directory
read -p "Enter the search string: " search_string
read -p "Enter the replace string: " replace_string

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' not found."
    exit 1
fi

# Iterate through files and directories in the specified directory
find "$directory" -depth -name "*$search_string*" | while IFS= read -r path; do
    # Get the directory and filename separately
    dir=$(dirname "$path")
    filename=$(basename "$path")

    # Replace the search string with the replace string in the filename
    new_filename=$(echo "$filename" | sed "s/$search_string/$replace_string/g")

    # If the filename changed, rename the file or directory
    if [ "$filename" != "$new_filename" ]; then
        mv "$dir/$filename" "$dir/$new_filename"
        echo "Renamed: $dir/$filename -> $dir/$new_filename"
    fi
done

echo "Search and replace completed in $directory."
