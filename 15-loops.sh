#!/bin/bash

user_id=$(id -u)
logs_folder="/var/logs/shell-practice"
logs_file="${logs_folder}/${0}.log" ## /var/logs/shell-practice/13-logs.sh.log

if [ $user_id -ne 0 ]; then
    echo " please run the script using sudo access"
    exit 1
    
fi


mkdir -p $logs_folder

echo " script started execution at $(date +"%F %T")" &>> $logs_file
validate()
{
    if [ $1 -ne 0 ]; then
        echo " ${2}...Failed | tee -a $logs_file"
        exit 1
    else
        echo "${2}...Success | tee -a $logs_file"
    fi
}

for package in $@
do 
    echo "Going to install: ${package}
done