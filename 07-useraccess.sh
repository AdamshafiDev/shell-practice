#!/bin/bash

USERID=$(id - u)

if [ $USERID -ne 0 ]
then
  echo "Error: please run with root access"
  exit 1
   echo " the scripting with root access"
   fi
 TIMESTAMP=($date)
   echo "the scripting running date :$TIMESTAMP"