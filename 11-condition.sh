#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo " please run the script using sudo access"
    exit 1
    
fi

echo "proceeding..."

dnf install nginxxxx -y 
if [ $? -ne 0 ]; then
    echo " nginx installation is failed"
    exit 1
else
    echo "nginx installation is success"
fi

dnf install mysqlll -y
if [ $? -ne 0 ]; then
    echo " mysql installation is failed"
    exit 1
else
    echo "mysql installation is success"
fi

echo " still proceeding..."