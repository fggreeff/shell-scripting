#!/bin/bash

# Create two files. Write the path contents and ask the user for a prefix to rename the file with.

# Create two files
touch file1.txt file2.txt
echo "Created two files"

# Write current path to file1
ls -l >>file1.txt

# Ask user for prefix
read -p "What prefix would you like to give file1? " userprefix

# Rename file with user prefix
mv file1.txt ${userprefix}file1.txt

echo "Done"
