#!/bin/bash

##########################################
#
#Author: Sandeep
#Description: List all files in the current directory using a loop (without ls)
#
#########################################

read -p "Enter the directory path: " D

echo "Files in $D:"

for files in "$D"/*; do
	if [[ -f "$files" ]]; then
		echo "${files##*/}"
	fi
done
