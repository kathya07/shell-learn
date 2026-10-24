#!/bin/bash

echo "All args passed to the script: $@"
echo "total number of args passed to the script: $#"
echo "First variable passed: $1"
echo "Script name: $0"
echo "realpath: $(realpath $0)"
echo "Who is running the script: $USER "
