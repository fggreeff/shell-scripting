#! /bin/bash

# Case statement with options
echo "Select an option.."
echo "A: Vegan"
echo "B: Meat"
echo "C: Water"
read choice

case $choice in
A)
    echo "A: You chose Vegan"
    ;;
B)
    echo "B: You chose Meat"
    ;;
C)
    echo "C: You chose Water"
    ;;
*".txt")
    echo "You chose a text file"
    ;;
*)
    echo "You chose something else"
    ;;
esac

# Example with numbers and letters
echo "Type a character"
read character

case $character in
[0-9])
    echo "You typed a number"
    ;;
[a-z])
    echo "You typed a lower case character"
    ;;
[A-Z])
    echo "You typed an upper case character"
    ;;
1[2-8])
    echo "You typed a number between 12 and 18"
    ;;
[2-3] | [5-6])
    echo "You typed a number between 2-3 OR 5-6"
    ;;
*)
    echo "You chose something else"
    ;;
esac
