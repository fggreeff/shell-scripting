#! /bin/bash

# While loop with a 1 sec sleep
i=1
while [ $i -le 5 ]; do
    echo $i
    i=$((i + 1))
    sleep 1
done
