# usage: sha-bang or hashbang <#!> and path of the shell </path>
#!/bin/bash

# run `help [command]` or `man [command]` to explore what options are available
# You can use `man [command]` to get an explanation of the exit status of a command
help echo

# Print to the terminal
# usage: echo [option(s)] [string(s)]
echo My sample script

# Current path
pwd

# Get the path of a command
# usage: which <input>
which bash

# Exit status ($?)
# Note: You can use `man [command]` to get an explanation of the exit status of a command
# 0 command was executed successfully
# >0 an error occured
echo $?

# Environment vars
echo $HOME
echo $USER
echo $PATH

# Command expansion. Store a command in a variable
# Note: use this $() syntax as opposed to ``
myvar=$(command)

# Create file
# usage: touch <filename.ext>
touch mytextfile.txt

# Change permisions of file to be executable
chmod +x mytextfile.txt

# Open file using nano or vi
nano mytextfile.txt

# Get user input
# Example 1:
echo "What is your first name?"
read yourfirstname

echo "hallo ${yourfirstname}"

# Example 2:
read -p "What is your last name?" yourlastname
echo "bye ${yourlastname}"

# Get Password (-s)
# Example 3:
read -sp "Enter a secure pin?" pin
echo "some ${pin}"

# Get path
# Note: notice no spaces after the equals sign!
currentpath=$(pwd)                          # get path
currentpath="${currentpath}/mytextfile.txt" # append filename to path
echo ${currentpath}

# When you want to make a file executable, add it to $PATH
# when you type a command in cmd, it first looks in $PATH for the path in the folders
# these values are seperated by colon :
# $PATH

# Add path to be an executable
# open .profile
# add the location of the scripts
# PATH="/Users/some_path/some_folder_with_scripts:${PATH}"
# export PATH
# save file
# source .profile

# Execute a file
# usage: execute <myshellfile.sh>
