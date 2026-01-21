#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Error: please run with root access"
  exit 1
   echo "the scripting with root access"
   fi
 TIMESTAMP=$(date)
   echo "the scripting running date :$TIMESTAMP"

   VALIDATE()
   {
     if [ $1 -ne 0 ]
      then 
       echo " installing:$2 .....going to insallll..SUCCESS"
         exit 1
       else 
        echo " installing:$2....... failure"
      fi

   }
  dnf list installed nginx
   
   if [ $? -ne 0 ]
   then
    echo "nginx is not install....going to install"
     dnf install nginx -y
     VALIDATE $? "nginx"
    else 
     echo "nginx is already installed ....Nothoing to do"
    fi
   dnf list installed mysql
   
   if [ $? -ne 0 ]
   then
    echo "mysql is not install....going to install"
     dnf install mysql -y
     VALIDATE $? "mysql"
    else 
     echo "mysql is already installed ....Nothoing to do"
    fi




