#!/bin/bash

##############################################
#
#Author: Sandeep
#Description: Create a script that takes two numbers and an operator (+, -, *, /) and performs the calculation
#
##############################################


read -p "Enter a number: " a
read -p "Enter another number: " b
read -p "Enter an operator (+, -, *, /): " op

case "$op" in 

	+) 
		echo "The sum of two numbers is: "
		echo "scale=2; $a + $b" | bc	
	;;

	-)
		result=$( echo "$a - $b" | bc )
	;;
	
	'*')
		result=$( bc <<< "$a * $b" )
	;;

	/)
		if [[ $( echo "$b == 0" | bc ) -eq 1 ]]; then
			echo "a number cannot be divisible by zero"
			exit 1
		fi
		
		result=$( bc <<< "scale=2; $a / $b" )
	;;
	
	*)
		echo "Invalid operator $op"
		exit 1
	;;

esac

echo "Result: $result"
