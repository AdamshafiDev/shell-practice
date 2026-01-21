#!/bin/bash

userid=$(id -u)

if [ userid -ne 0 ]
then
  echo "Error"please run the script  with root access"
   exit 1
   else
    echo "the script running  with root acccess"

    TIMESTAMP=$(date)
     echo "the script run date :$TIMESTAMP"