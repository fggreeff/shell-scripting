#! /bin/bash

# No spaces with assignment
a=5

# Spaces between the brackets
if [ 3 -eq 3 ]; then
    echo "..."
fi

# When there are spaces in a string, you will get an error if you don't wrap the string with qoutes. E.g "$text"
text="abc def"
if [ "$text" == "abc def" ]; then
    echo "..."
fi

# variable concatenation
a="first"
b="name"

echo "$a"_name
echo "${a}_${b}"

# Double qoutes is used to interpret a value with a dollar sign $a
c="cheese"

echo 'I like $c'
echo "I like $c"

# Every variable in shell scripting is a global variable
MyFunctionName() {
    var1="Joe"
    local var2="Blogs"
    echo "Hi $var1 $var2"

}

MyFunctionName

echo "This is a global variable: $var1"
echo "This is a local variable and won't be found: $var2"
