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

CHECK_ROOT


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is... $R FAILED $N"
        exit 1
    else
        echo "$2 is....$G SUCCESS $N"
    fi        
}

dnf list installed git

if [ $? -ne 0 ]
then
    echo -e "Git is not installed, going to install.."
    dnf install git -y
    VALIDATE $? "Installing git"
else
    echo -e "$R Git is already installed $N"
fi

dnf list installed mysql

if [ $? -ne 0 ]
 then
    echo "MYSQL is not installed, going to install"
    dnf install mysql -y
    VALIDATE $? "Installing git"
else
    echo -e "$G mysql is already installed $N"
fi
