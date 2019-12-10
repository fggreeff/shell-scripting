#! /bin/bash
# Ask user for a name to create an executable file
read -p "What would you like the script to be called? " scriptname

# Create file
touch ${scriptname}

# Add bin bash
echo "#! /bin/bash" >>${scriptname}
echo "#-- Automatically created script --#" >>${scriptname}

# Make file executable
chmod -x ${scriptname}
