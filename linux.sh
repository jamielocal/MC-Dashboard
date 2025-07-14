#!/bin/bash

# This script creates a file named eula.txt with "eula=true" inside it.
# It can optionally take a directory path as an argument.
# If no argument is provided, it defaults to the current directory.

# Define the filename
FILENAME="eula.txt"

# Define the content to write
CONTENT="eula=true"

# Check if a directory argument is provided
if [ -n "$1" ]; then
  # If an argument is provided, use it as the target directory
  TARGET_DIR="$1"
else
  # If no argument, use the current directory
  TARGET_DIR="."
fi

# Create the target directory if it doesn't exist
# -p option creates parent directories as needed and doesn't error if directory exists
mkdir -p "$TARGET_DIR"

# Construct the full path to the eula.txt file
FULL_PATH="${TARGET_DIR}/${FILENAME}"

# Create the file and write the content to it
# The > operator truncates the file if it exists, or creates it if it doesn't.
echo "$CONTENT" > "$FULL_PATH"

# Check if the file was created successfully
if [ -f "$FULL_PATH" ]; then
  echo "File '$FILENAME' created successfully in '$TARGET_DIR' with content: '$CONTENT'"
else
  echo "Error: Failed to create file '$FULL_PATH'."
fi
