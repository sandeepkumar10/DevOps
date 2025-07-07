#!/bin/bash

############################################
#
#Author: Sandeep
#Description: Create an array of fruits and print each fruit using a for loop
#
############################################


ary=(apple mango banana grapes pineapple "dragon fruit" avacado watermelon muskmelon orange)

for i in "${ary[@]}"; do
	echo "$i"
done
