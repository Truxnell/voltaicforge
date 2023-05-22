#!/bin/bash

# Function to recursively rename directories to lowercase
rename_directories_recursive() {
	local dir="$1"

	# Rename the directory to lowercase
	new_dir=$(dirname "$dir")/$(basename "$dir" | tr '[:upper:]' '[:lower:]')
	if [[ "$dir" != "$new_dir" ]]; then
		mv "$dir" "$new_dir"
	fi

	# Process subdirectories
	for item in "$new_dir"/*; do
		if [[ -d "$item" ]]; then
			rename_directories_recursive "$item"
		fi
	done
}

# Start renaming from the current directory
rename_directories_recursive "."
