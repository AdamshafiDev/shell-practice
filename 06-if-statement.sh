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