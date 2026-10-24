#!/bin/bash

user_id=$(id -u)
logs_folder="/var/logs/shell-practice"
logs_file="${logs_folder}/${0}.log" ## /var/logs/shell-practice/13-logs.sh.log

if [ $user_id -ne 0 ]; then
    echo " please run the script using sudo access"
    exit 1
    
fi


mkdir -p $logs_folder

echo " script started execution at $(date +"%F %T")"
validate()
{
    if [ $1 -ne 0 ]; then
        echo " ${2}...Failed | tee -a $logs_file"
        exit 1
    else
        echo "${2}...Success | tee -a $logs_file"
    fi
}

echo "proceeding..."

dnf install nginx -y &>> $logs_file
validate $? "nginx installation"

dnf install mysql -y  &>> $logs_file
validate $? "mysql installation"
echo " script execution completed at $(date +"%F %T")"
