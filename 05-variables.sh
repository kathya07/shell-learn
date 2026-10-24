#!/bin/bash

START_TIME=$(date +%s)
echo "script started execution time : $START_TIME"

sleep 10

END_TIME=$(date +%s)
echo "script ended time at : $END_TIME "

TOTAL_TIME = $(($END_TIME - $START_TIME))
echo "total execution time take : $TOTAL_TIME "
