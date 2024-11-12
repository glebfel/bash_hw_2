#!/bin/bash

if [ -f "input.txt" ]; then
    wc -l < input.txt > output.txt
else
    echo "Файл input.txt не найден."
fi

ls non_existent_file 2> error.log
