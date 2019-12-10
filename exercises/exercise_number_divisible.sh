#! /bin/bash

# Create a script that checks if a number is divisible by either 2, 3 or 5.

# 1st attempt
Divisible1() {
    local num=$1

    if [ $(($num % 5)) -eq 0 ]; then
        echo "$num is divisible by 5"
    elif [ $(($num % 3)) -eq 0 ]; then
        echo "$1 is divisible by 3"
    elif [ $(($num % 2)) -eq 0 ]; then
        echo "$num is divisible by 2"
    else
        echo "$num is not divisible by 5, 3, 2"
    fi
}

# 2nd attempt
Divisible() {
    local num=$1

    for i in {2,3,5}; do
        if [ $(($num % $i)) -eq 0 ]; then
            echo "$num is divisible by $i"
        else
            echo "$num is not divisible by $i"
        fi
    done
}

read -p "Give a number? " usernum

Divisible $usernum
