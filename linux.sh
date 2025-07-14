#!/bin/bash

# This script creates a file named eula.txt in the current directory
# and writes "eula=true" into it.
echo "Script By jamie.local"
# Define the filename
FILENAME="eula.txt"

# Define the content to write
CONTENT="eula=true"

# Create the file and write the content to it
# The > operator truncates the file if it exists, or creates it if it doesn't.
echo "$CONTENT" > "$FILENAME"

# Check if the file was created successfully
if [ -f "$FILENAME" ]; then
  echo "File '$FILENAME' created successfully with content: '$CONTENT'"
else
  echo "Error: Failed to create file '$FILENAME'."
fi
