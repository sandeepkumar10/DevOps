#!/bin/bash

###########################################
#
#Author: Sandeep
#Description: Write a script that checks if a given file exists and prints "File found" or "File not found"
#
##########################################

read -p "Enter the file name: " Filename

result=$(sudo find / -name "$Filename" 2>/dev/null)

if [[ -z "$result" ]]; then
	echo "file not found"

else
	echo "File found at below path:"
	echo "$result"
fi
