#!/bin/bash

firstnumber=100
secondnumber=200

TIMESTAMP=$(date)
sum=$(($firstnumber+$secondnumber))

echo "sum of number: $sum"

movies=("Bahubali" "HIT3" "Hero" "raju")

echo "enater first movie ${movies[0]}"

echo "enater second movie ${movies[1]}"
echo "enater third movie ${movies[2]}"

echo "all movies: ${movies[@]}"




