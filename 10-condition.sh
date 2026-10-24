#!/bin/bash

echo "Enter marks"
read marks

# lt means less than
if [ $marks -lt 33]; then
    echo "fail"
elif [ $marks -lt 55]; then
    echo "First Class"
elif [$marks -lt 60]; then
    echo "Second class"
elif [$marks -lt 77]; then
    echo "Third class"
else 
    echo "distinction"
fi  

echo "End"