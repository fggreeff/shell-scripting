#!/bin/bash

# redirect
# > (write)
# >> (append)
echo "something" >somefile.txt
echo "something" >>somefile.txt

# Concat two files and write into a single file
echo fileone.txt filetwo.txt >somefile.txt

# Show last x lines of a file (tail)
tail -4 somefile.txt

# Chain commands using pipe (|)
ls ./ | tail -3 | sort >somefile.txt

# Find files in folder (find -name)
find somefolder/ -name somefile.txt # specific file
find somefolder/ -type f            # all files

# Find folders in folder (find -type -f)
find somefolder/ -type d           # folder

# Search (grep)
grep "Lookingfor" inmytextfile.txt # Search for a word in a file

# Get everything EXCEPT what I put in (grep -v )
# Case insensitive search (grep -i)
ls | grep -i searchword

# Rows & columns
# Get first column in text file. Specify a seperator semicolon (-F ";")
# awk -F ";" '{print $1}' mytextfile.txt

# Recursively
rm -R folder/ # Do something recursively to folder. Example: rm(remove) or chmod
ls -R .       # list everything in current dir and apply recursively to other folders
