#! bin/bash

# Loop through all files and search for word in file. When the word is found, copy those files to another folder.
# grep options:
# -n (will show line number)
# -i (non-case sensitive)
read -p "What are you looking for? " search_for_word

folder_to_copy_files="./playground"
audit="audit.txt"

# Create audit file
touch $folder_to_copy_files/$audit

GetFile() {
    local file=$1

    result=$(grep -ni $search_for_word "$file")
    # copy the files to another directory if word is found in file.
    if [ "$result" != "" ]; then
        cp "$file" $folder_to_copy_files
        # make a record of which line was found in which file
        echo "Found in: $file" >>$folder_to_copy_files/$audit
        echo "$result" >>$folder_to_copy_files/$audit
        echo "-------- $(date) --------" >>$folder_to_copy_files/$audit
    fi
}

FileSearch() {
    local folder=$1

    for file in $folder/*; do
        # Exclude the folder we copy the files to
        if [ $file != $folder_to_copy_files ]; then
            # Check if file is a regular file
            if [ -f "$file" ]; then
                GetFile "$file"
                echo "Files searched: $file"
            fi
        fi
    done
}

get_subdir_and_dir=$(find . -type d)
for folder in $get_subdir_and_dir; do
    FileSearch "$folder"
done
