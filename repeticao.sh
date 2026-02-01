#!/bin/bash

for i in {1..10}; do
    if [ $((i % 2)) -ne 0 ]; then
        continue
    fi

    if [ $i -eq 6 ]; then
        break
    fi 

    

    echo $i

done