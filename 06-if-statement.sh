#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
 then
   echo "error: please run the script with root access"
    exit 1
else
   echo "the script is running with root access"

fi   
  dnf list installed mysql-server

      if [ $? -ne 0 ]
       then
         echo "my sql is not install ....going to install"
          dnf install nginx-y 
          if [ $? -eq 0 ]
           then 
              echo "my sql is installing......SUCCESS"
            else
              echo "My SQL is installing ......FAILURE"
              exit 1
              fi
         else
          echo "my sql is already installed.......Nothing to do"
          
      fi 
# dnf install mysql-server -y 
  
#   if [ $? -eq 0 ]
#    then 
#     echo "my sql is installing......SUCCESS"
#    else
#     echo "My SQL is installing ......FAILURE"
#     exit 1


