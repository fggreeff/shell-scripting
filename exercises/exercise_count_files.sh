#! /bin/bash

# Create a script that counts the number of ".txt" files inside your present working directory.

currentpath=./*.txt

counter=0
for file in $currentpath; do
    if [ $file != $currentpath ]; then
        counter=$((counter += 1))
        echo "File found $file"
    fi
done

echo "Number of files $counter"

if [ $counter -gt 0 ]; then

    read -p "Do you want to open all txt files? Y(es) N(o)" userinput
    if [ $userinput == "Y" -o $userinput == "y" ]; then
        open *.txt
    else
        echo "ok bye"
    fi

fi
