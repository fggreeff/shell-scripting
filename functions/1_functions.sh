#! /bin/bash

# A simple function
# $1 first input
# $2 second input
MyFunctionName() {
    echo "Hi $1 $2"
    echo "Today is: "
    date
}

MyFunctionName "Joe" "Blogs"

# Change the return value of a func
MyFunctionName() {
    echo "Hi $1 $2"
    return "35"
}

MyFunctionName "Joe" "Blogs"
echo "My func return value is $?"
