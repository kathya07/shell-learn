#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo " please run the script using sudo access"
    exit 1
    
fi


validate()
{
    if [ $1 -ne 0 ]; then
        echo " ${2}...Failed"
        exit 1
    else
        echo "${2}...Success"
    fi

}

echo "proceeding..."

dnf install nginxxx -y 
validate $? "nginx installation"

dnf install mysqlll -y
validate $? "mysql installation"
echo " still proceeding..."