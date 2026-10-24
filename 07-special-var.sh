#!/bin/bash

echo "All args passed to the script: $@"
echo "total number of args passed to the script: $#"
echo "First variable passed: $1"
echo "Script name: $0"
echo "realpath: $(realpath $0)"
echo "Who is running the script: $USER "
echo "Directory of the current script: $PWD"
echo "Home directory of the current script: $HOME"
echo "PID of the current script: $$" 
sleep 10
echo "PID of the current script running in the background: $!"
wait $! #script wait untill $! command complete
echo "print line number : $LINENO "
echo "previous command exit status: $?"
echo "total time executed: $SECONDS"
