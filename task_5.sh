#!/bin/bash

sleep 5 &
sleep 10 &
sleep 15 &

echo "Фоновые задачи:"
jobs

bg %1

fg %2
