#!/bin/bash

#####################################
#
#Author: Sandeep
#Description: Write a script that counts down from 5 to 1 with 1-second pauses using sleep
#
#####################################


echo "Countdown starts"

for ((i=5; i>=1; i--)); do
	echo "$i"
	sleep 1
done
echo "Countdown completed"
