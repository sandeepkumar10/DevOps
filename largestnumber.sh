#!/bin/bash


###################################################
#
#Author: Sandeep
#Description: Take 3 numbers from the user and print the largest one
#
###################################################



read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

if (( ( a > b ) && ( a > c ) )); then
	echo "$a is greatest"
elif (( ( b > a ) && ( b > c ) )); then 
	echo "$b is greatest"
else
	echo "$c is greatest"
fi
