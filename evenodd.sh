#!/bin/bash

##########################################
#
#Author: Sandeep
#Description: Take a number from the user and check whether it is even or odd
#
#########################################


read -p "Enter a number: " number

if (($number % 2 == 0)); then 
	echo "$number is an even number"

else 
	echo "$number is an odd number"

fi
