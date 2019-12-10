#! /bin/bash

# -Create any number of different .txt files and .jpg files.
# -Let the user choose either the .jpg or the .txt files and
# keep asking until the user press either "j" or "t".

# -Let the user choose a Prefix to add to the name of all the selected files
# (all the .jpg or all the .txt files).
# -Rename all the selected files adding this prefix to their name.

# Give the number of txt & jpg files you want created
CreateDummyFiles() {
    text_file=.txt
    jpg_file=.jpg
    num_of_files=$1

    count=0
    while [ $count -le $num_of_files ]; do
        touch $count$text_file
        touch $count$jpg_file
        count=$((count += 1))
    done
    echo "Created $num_of_files $text_file and $jpg_file files"
}

ChooseFile() {
    read -p "Would you like J(pg) or T(xt) files? " selection
    while [ "$selection" != "T" ] && [ "$selection" != "t" ] && [ "$selection" != "J" ] && [ "$selection" != "j" ]; do
        read -p "$selection is not valid, please answer [J(pg)/T(xt)] " selection
    done
}

AddPrefix() {
    local local_extention=$1
    local local_prefix=$2

    for item in *$local_extention; do
        mv "$item" $local_prefix$item
    done
}

# Create dummy files
echo "Creating dummy files..."
CreateDummyFiles 3

# Choose txt or jpg
ChooseFile

# Get prefix
read -p "What prefix would you like to add? " prefix

# Get extention type
if [ $selection == "T" -o $selection == "t" ]; then
    currentext=.txt
else
    currentext=.jpg
fi

# Add prefix
echo "Renaming files..."
AddPrefix "$currentext" "$prefix"

echo "Done with status code: $?"
