#! /bin/bash

# The file does have to exist for these conditions to be checked.

# -e (exist)
# -d (directory)
# -r (readable)
# -w (writeable)
# -x (executable)
# -s (not empty)
# -f (regular file)

read -p "Give a filename or directory? " myfile

# Conditions if a file DOES exists.
if [ -e $myfile ]; then
    echo "Yes, $myfile file DOES exists"
else
    echo "No, your file doesn't exist. Creating now..."
    touch $myfile
fi
echo "Done"

# Negate Condition
# Conditions checking a file DOESN'T exist
if [ ! -e $myfile ]; then
    echo "Yes, $myfile file DOESN'T exists"
fi
echo "Done"

# Check if file is a directory
if [ -d $myfile ]; then
    echo "Yes, $myfile is a directory"
fi
echo "Done"

# Check if file is readable
myfile4=sample4.txt

if [ -r $myfile ]; then
    echo "Yes, $myfile is readable"
fi
echo "Done"

# Check if file is writeable
if [ -w $myfile ]; then
    echo "Yes, $myfile is writeable"
fi
echo "Done"

# Check if file is executable
if [ -x $myfile ]; then
    echo "Yes, $myfile is executable"
fi
echo "Done"

# Check if file is not empty
if [ -s $myfile ]; then
    echo "$myfile is NOT empty"
else
    echo "$myfile is empty"
fi
echo "Done"

# Check if file is a regular file
if [ -f $myfile ]; then
    echo "$myfile is regular file"
else
    echo "$myfile is not a regular file"
fi
echo "Done"

# Get basename of file. Example: `exercise_add_prefix.sh`
my_file="./exercises/exercise_add_prefix.sh"
get_name=$(basename $my_file)
