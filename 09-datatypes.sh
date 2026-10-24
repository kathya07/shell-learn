#!/bin/bash

var1=10
var2=20
var3=kathya

echo " $var1+$var2"
echo $(($var1+$var2+$var3))  #text value is zero so o/p is 30

declare -i COUNT=5 # i is integer 
COUNT=COUNT+1
echo "count is : $COUNT"

FRUITS=("Apple", "Banana", "orange") #this is called Array
echo "All fruits : ${FRUITS[@]}"
echo "Print first fruit: ${FRUITS[0]}"

NAME="kathyayini"
echo "${NAME}palla"