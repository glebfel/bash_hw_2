#!/bin/bash

echo "Список файлов и их типов в текущей директории:"
for item in *; do
    if [ -f "$item" ]; then
        echo "$item - это файл"
    elif [ -d "$item" ]; then
        echo "$item - это каталог"
    else
        echo "$item - другой тип"
    fi
done

if [ -z "$1" ]; then
    echo "Пожалуйста, передайте имя файла в качестве аргумента."
else
    if [ -e "$1" ]; then
        echo "Файл '$1' существует."
    else
        echo "Файл '$1' не найден."
    fi
fi

echo "Файлы и их права доступа:"
for file in *; do
    if [ -f "$file" ]; then
        echo "$(ls -l "$file" | awk '{print $1, $9}')"
    fi
done
