#! /bin/bash

# This applies to strings only
# == (equals)
# != (not equals)
# -z (is empty?)

# Conditions on strings
if [ "abc" == "abc" ]; then
    echo "This is the same"
fi

# Check if empty. This will only work on a string without spaces.
# This won't work on the following E.g "abc def". To solve this issue, wrap in qoutes (see Example 2).
read -p "Give a string value or hit enter " empty

if [ -z $empty ]; then
    echo "This is an empty string"
fi

# Example 2
# This manages the case for spaces in input. Simply wrap the input value in qoutes
read -p "Give a second string value " empty

if [ -z "$empty" ]; then
    echo "This is an empty string"
fi
echo "Moving on"
