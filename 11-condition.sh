#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo " please run the script using sudo access"
    
fi

echo "proceeding..."

dnf install nginx -y 