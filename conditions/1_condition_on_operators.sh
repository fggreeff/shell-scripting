#! /bin/bash

#  Commands
# -eq (equal)
# -ne (not equal !=)
# -gt (greater than >)
# -lt (less than <)
# -ge (>=)
# -le (<=)

# Operators
# -a (and)
# -o (or)

# IF condition
# Note: spaces are important next to the brackets
if [ 3 -eq 3 ]; then
    echo "Yes, 3 equal 3"
fi
echo "Done"

# Else condition
read -p "How old are you? " age

if [ $age -le 0 ]; then
    echo "You cannot have a negative age"
    exit # You can add `exit` to exit the script
elif [ $age -lt 30 ]; then
    echo "You are quite young..."
elif [ $age -gt 100 ]; then
    echo "You are quite old..."
else
    echo "You are between young and old"
fi
echo "Done"

# Making use of the `or` (-o)
read -p "How old do you want to be? " wanna_be_age

if [ $wanna_be_age -lt 0 -o $wanna_be_age -gt 100 ]; then
    echo "You have quite the imagination"
else
    echo "Don't we all wish for that..."
fi
