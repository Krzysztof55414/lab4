#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    num_files=100
    if [ ! -z "$2" ]; then
        num_files=$2
    fi
    for i in $(seq 1 $num_files); do
        filename="log${i}.txt"
        echo -e "Filename: $filename\nScript: $0\nDate: $(date)" > $filename
    done
elif [ "$1" == "--help" ]; then
    echo "Available options:"
    echo "--date : Display current date"
    echo "--logs [number] : Create log files"
    echo "--help : Display help"
fi


