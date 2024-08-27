#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]  #gt, lt, eq, -ne
then
    echo "Given $NUMBER is greater than 20"
else
    echo "Given number is less than 20"
fi