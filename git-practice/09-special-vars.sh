#!/bin/bash

echo "All variables passes to the scipt : $@"
echo "Number of varibales passed: $#"
echo "Script name is $0"
echo "Current working directory is $PWD"
echo "Home directory of current user: $HOME"
echo "PID Of running shell script: $$"
sleep 100 &
echo "PID of last background command: $!"

