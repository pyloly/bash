#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: ./calc.sh <num1> <op> <num2>"
    exit 1
fi

num1="$1"
op="$2"
num2="$3"

case "$op" in
    +)
        echo $((num1 + num2))
        ;;
    -)
        echo $((num1 - num2))
        ;;
    x)
        echo $((num1 * num2))
        ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Division by zero"
            exit 3
        fi
        echo $((num1 / num2))
        ;;
    *)
        echo "Unknown operator: $op"
        exit 2
        ;;
esac