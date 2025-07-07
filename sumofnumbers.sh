#!/bin/bash

########################################
#
#Author: Sandeep
#Description: Write a script to calculate the sum of all numbers from 1 to N (user input)
#
########################################


read -p "Enter a number: " N

if (($N <= 0 )); then
	echo "Please enter a number greater than 0"

	exit 1
fi

sum=0 
for ((i=1; i<=$N; i++)); do
	sum=$((sum + i))
done
echo "The sum of numbers from 1 to $N is: $sum"

