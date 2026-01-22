#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
 then
  echo -e "ERROR $R: please run with root access:$Y"
  exit 1
  else
  echo -e"$G running with roo access"
 fi
  
  VALIDATE()
    {
        if [ $1 -eq 0 ]
         then
          echo -e "$G Installing..$2....Succcess"
          else
          echo -e "$R instealling ...$2...failure"
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
    echo -e "$G nginx is already installed .....$N nothing to do"
fi
 dnf list installed mysql

   if [ $? -ne 0 ]
    then 
    echo " mysql is not install ...going to installl"
    dnf install mysql -y
    VALIDATE $? "mysql"
    else
    echo -e  "$G mysql is already installed .....$N nothing to do"
fi
 dnf list installed python3

   if [ $? -ne 0 ]
    then 
    echo  "python3 is not install ... going to installl"
    dnf install python3 -y
    VALIDATE $? "python3"
    else
    echo -e"$G python3 is already installed ....$N nothing to do"
fi

    
     
   