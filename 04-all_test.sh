#!/bin/bash

number1=$1
number2=$2

movies=("bahubali" "raja" "singamali")
echo "enter number::$number1"

echo "enter number::$number2"

sum=$(($number1+$number2))

echo "sum of number is::$sum"

echo "enter pin number"

read -s PIN

echo "$PIN"

echo "enter first movie::${movies[0]}"

