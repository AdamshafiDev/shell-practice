#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
 then
   echo "error: please run the script with root access"
    exit 1
else
   echo "the script is running with root access"

fi   

VALIDATE()
{
   if [ $1 -eq 0 ]
           then 
              echo "installing $2 is .....SUCCESS"
            else
              echo "My installing $2 is  ......FAILURE"
              exit 1
    fi
}
  dnf list installed nginx

      if [ $? -ne 0 ]
        then
         echo "my nginx is not install ....going to install"
          dnf install nginx -y 
          VALIDATE $? "nginx"
          else
          echo "already nginx installed ..Nothing to do"
       fi
              
              
              dnf list installed mysql-server
              if [ $? -ne 0 ]
               then
                   echo "my MYSQL is not install ....going to install"
                   dnf install mysql-server -y
                   VALIDATE $? "mysql-server"
                  else
                     echo "already mysql-sever installed ..Nothing to do"
               fi
            
              dnf list installed python3
                if [ $? -ne 0 ]
                then
                   echo "my python3 is not install ....going to install"
                   dnf install python3 -y 
                   VALIDATE $? "python3"
                   else
                  echo "my python3 is already installed.......Nothing to do"
          
               fi 
# dnf install mysql-server -y 
  
#   if [ $? -eq 0 ]
#    then 
#     echo "my sql is installing......SUCCESS"
#    else
#     echo "My SQL is installing ......FAILURE"
#     exit 1


