#!/bin/bash

cpu_load=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
memory_usage=$(free -m | awk '/Mem:/ { printf("%.2f"), $3/$2 * 100 }')
disk_usage=$(df -h / | awk '$NF=="/"{printf "%s", $5}')

echo "Загрузка CPU: $cpu_load"
echo "Использование памяти: $memory_usage%"
echo "Использование диска: $disk_usage"

if (( $(echo "$memory_usage > 80" | bc -l) )); then
    echo "Предупреждение: использование памяти превышает 80%"
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
fi
