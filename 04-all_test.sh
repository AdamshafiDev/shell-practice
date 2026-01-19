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

echo "enter all movie::${movies[*]}"

echo "the pin name::$$"
echo "the script name::$0"
echo "the number line::$#"
echo "the number line::$!"
echo "the number line::$?"
echo "the working directory line::$PWD"
echo "the user line::$USER"

