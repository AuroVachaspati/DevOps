#!/bin/bash



USERID=$(id -u)
#echo "User ID is: $USER"

if [ $USER -ne 0 ]
then
    echo "Please run this scipt with root previleges"
fi

dnf install git -y
