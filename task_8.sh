#!/bin/bash

backup_dir="backup_$(date +%Y%m%d)"
mkdir -p "$backup_dir"
log_file="backup_log.txt"

echo "Начало резервного копирования: $(date)" >> "$log_file"
file_count=0

for file in *; do
    if [ -f "$file" ]; then
        cp "$file" "$backup_dir/${file}_$(date +%Y%m%d)"
        ((file_count++))
    fi
done

echo "Резервное копирование завершено. Всего файлов скопировано: $file_count" >> "$log_file"
