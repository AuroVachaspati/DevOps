#!/bin/bash



USERID=$(id -u)
#echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root privileges"
    exit 1  # Exit the script if not running as root
fi

dnf list installed git

if [ $? ne 0 ]
then
    echo "Git is not installed, going to install.."
    dnf install git -y
    if
else
    echo "Git is already installed"
fi



dnf list installed mysql

if [ $? -ne 0 ]
 then
    echo "MYSQL is not installed, going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "MySQL is not installed, check for errors"
        exit 1
    else
        echo "mysql installed, enjoy"
    fi
else
    echo "mysql is already installed"
fi

