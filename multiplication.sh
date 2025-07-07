#!/bin/bash


################################################
#
#Author: Sandeep
#Description: Ask the user for a number and print its multiplication table up to 10
#
################################################


read -p "Enter a number: " N

if ((N<=0)); then
	echo "Please enter a number that is greater than 0"
	exit 1
fi

mul=1
for i in {1..10}; do
	mul=$((N*i))
	echo "$N x $i = $mul"
done
