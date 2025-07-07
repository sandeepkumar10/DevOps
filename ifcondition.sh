#!/bin/bash


#############################################
#
#Author: Sandeep
#Description: Write a script that checks if a number is positive, negative, or zero
#
#############################################


read -p "Enter a number: " number
if (($number > 0)); then
	echo "$number is a positive number"
fi

if (($number < 0)); then
	echo "$number is a negative number"
fi

if (($number == 0)); then
	echo "$number is a zero"
fi
