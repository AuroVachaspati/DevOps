#!/bin/bash





VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is... $R FAILED $N"
        exit 1
    else
        echo "$2 is....$G SUCCESS $N"
    fi        
}



# 15-loops.sh git mysql, nginix, etc..
for package in $@ #all arguments passed to it
do 
   dnf list installed $package

    if [ $? -ne 0 ]
    then
        echo  "$package is not installed, going to install.."
        dnf install $package -y
        VALIDATE $? "Installing $package"
    else
        echo " $package is already installed"
    fi
done