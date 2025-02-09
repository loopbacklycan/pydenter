#!/bin/bash

# ASCII Art
cat << "EOF"
   __ _              _  
  / _(_)            | | 
 | |_ ___  _____  __| | 
 |  _| \ \/ / _ \/ _` | 
 | | | |>  <  __/ (_| | 
 |_| |_/_/\_\___|\__,_| 
                        
                         
EOF

# Check if a filename is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <python_script.py>"
    exit 1
fi

# Assign the first argument as the filename
FILENAME="$1"

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
    echo "File not found: $FILENAME"
    exit 1
fi

# Use autopep8 to fix the indentation and save the changes
autopep8 --in-place --aggressive --aggressive "$FILENAME"

echo "Indentation errors fixed in $FILENAME"
