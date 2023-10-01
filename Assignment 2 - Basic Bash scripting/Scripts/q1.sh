#!/bin/sh
read -p "Please enter the first string: " string1
read -p "Please enter the second string: " string2

if [ "$string1" = "$string2" ]; then
	echo "Strings are equal."
else
	echo "Strings are not equal."
fi 
