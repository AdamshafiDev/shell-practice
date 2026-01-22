#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
 then
  echo "ERROR: please run with root access"
  exit 1
  else
  echo "running with roo access"
 fi
  
  VALIDATE()
    {
        if [ $1 -eq 0 ]
         then
          echo "Installing..$2....Succcess"
          else
          echo "instealling ...$2...failure"
          exit 1
         fi
 }

 dnf list installed nginx

   if [ $? -ne 0 ]
    then 
    echo " nginix is not install ...going to installl"
    dnf install nginx -y
    VALIDATE $? "nginx"
    else
    echo "nginx is already installed .....nothing to do"
fi
 dnf list installed mysql

   if [ $? -ne 0 ]
    then 
    echo " mysql is not install ...going to installl"
    dnf install mysql -y
    VALIDATE $? "mysql"
    else
    echo "mysql is already installed .....nothing to do"
fi
 dnf list installed python3

   if [ $? -ne 0 ]
    then 
    echo " python3 is not install ...going to installl"
    dnf install python3 -y
    VALIDATE $? "python3"
    else
    echo "python3 is already installed .....nothing to do"
fi

    
     
   