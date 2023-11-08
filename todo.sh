#!/bin/bash


file_path="/etc/conky/todo.txt"  


if [ -f "$file_path" ] && [ -r "$file_path" ]; then
    cat "$file_path"
else
    echo "File doesn't exist or is not readable."
fi

