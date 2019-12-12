#! /bin/bash

# Loop from 1-5
for i in {1,2,3,4,5}; do
    echo "Counting $i"
done

# Loop from 1-5
for i in {1..5}; do
    echo "Counting $i"
done

# Strings & numbers combined
for i in 1, "Hello", -5, 2, "bye"; do
    echo "Value $i"
done

# Loop through all the files
for i in ./*; do
    echo "Files $i"
done
