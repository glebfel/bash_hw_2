#!/bin/bash

echo "Текущее значение PATH: $PATH"

if [ -z "$1" ]; then
    echo "Пожалуйста, укажите директорию для добавления в PATH."
else
    export PATH="$PATH:$1"
    echo "Обновленное значение PATH: $PATH"

    # Сделать изменение постоянным
    echo "Добавьте следующую строку в ~/.bashrc, чтобы сделать изменение постоянным:"
    echo "export PATH=\"\$PATH:$1\""
    echo "Чтобы применить изменения, выполните команду: source ~/.bashrc"
fi
