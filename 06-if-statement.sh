#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
 then
   echo "error: please run the script with root access"
    exit 1
else
   echo "the script is running with root access"

fi   

dnf install mysql-server -y 
  
  if [ $? -eq 0 ]
   then 
    echo "my sql is installing......SUCCESS"
   else
    echo "My SQL is installing ......FAILURE"
    exit 1
fi

