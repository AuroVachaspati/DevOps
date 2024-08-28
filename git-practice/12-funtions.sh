#!/bin/bash



USERID=$(id -u)
echo "UserID is: $USERID"  # Debug line to check the value of USERID

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root privileges"
        exit 1  # Exit the script if not running as root
    fi
}

CHECK_ROOT


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is... FAILED"
        exit 1
    else
        echo "$2 is....SUCCESS"
    fi        
}




dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install.."
    dnf install git -y
    VALIDATE $? "Installing git"
else
    echo "Git is already installed"
fi

dnf list installed mysql

if [ $? -ne 0 ]
 then
    echo "MYSQL is not installed, going to install"
    dnf install mysql -y
    VALIDATE $? "Installing git"
else
    echo "mysql is already installed"
fi
