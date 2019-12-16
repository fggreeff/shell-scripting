#! bin/bash
set -e

read -p "What folder do you want to iterate over? " folder_to_iterate
folder_to_copy_files_to="./playground"
audit="audit.txt"

# Create audit file
touch $folder_to_copy_files_to/$audit

GetFile() {
    local file=$1

    # copy the files to another directory
    cp "$file" $folder_to_copy_files_to
    # make a record of which line was found in which file
    echo "Found item: $file" >>$folder_to_copy_files_to/$audit
    echo "-------- $(date) --------" >>$folder_to_copy_files_to/$audit
}

FileSearch() {
    local folder=$1

    for file in $folder/*; do
        # Exclude the folder we copy the files to
        if [ $file != $folder_to_copy_files_to ]; then
            # Check if file is a regular file
            if [ -f "$file" ]; then
                GetFile "$file"
                echo "Files searched: $file"
            fi
        fi
    done
}

get_subdir_and_dir=$(find $folder_to_iterate -type d)
for folder in $get_subdir_and_dir; do
    FileSearch "$folder"
done
