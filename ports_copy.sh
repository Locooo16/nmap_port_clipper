#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

input_file="$1"

if [ ! -f "$input_file" ]; then
    echo "File $input_file not found"
    exit 1
fi

grep "Ports" "$input_file" | cut -d ':' -f 3 | tr -cd '0-9,' | xclip -selection clipboard 


echo "Copied from $input_file to the clipbard!"
