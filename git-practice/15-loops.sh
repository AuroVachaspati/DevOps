#!/bin/bash

USERID=$(id -u)
echo "UserID is: $USERID"  # Debug line to check the value of USERID

R="\e[31m"
G="\e[32m"


CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root privileges"
        exit 1  # Exit the script if not running as root
    fi
}




VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is... $R FAILED $N"
        exit 1
    else
        echo "$2 is....$G SUCCESS $N"
    fi        
}

CHECK_ROOT


# 15-loops.sh git mysql, nginix, etc..
for package in $@  #all arguments passed to it
do 
    echo $package
done