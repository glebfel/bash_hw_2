#!/bin/bash

greet() {
    echo "Hello, $1"
}

add() {
    result=$(( $1 + $2 ))
    echo "Сумма: $result"
}

greet "World"
add 3 5
