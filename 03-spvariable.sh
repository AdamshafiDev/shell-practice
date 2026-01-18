#!/bin/bash

number1=100
number2=300
number3=400

echo "enter first number::$number1"
echo "enter first number::$number2"
echo "enter first number::$number3"
 
 sum=$(($number1+$number2+$number3))

 echo "sum of number is::$sum"

 TIMESTAMP=$(date)

 echo "the scripting exected at::$TIMESTAMP"

 echo "enter new password"

 read -s PIN

 echo "the pin is ::$PIN"

 movies=("bhaubali" "raja" "rama" "ping" "singapoor")

 echo "enter first movie::${movies[0]}"
 echo "enter secondt movie::${movies[1]}"
 echo "enter fourth movie::${movies[3]}"
 echo "enter all movies::${movies[*]}"

 echo "enter script name::$$"
  echo "enter script name::$USER"


