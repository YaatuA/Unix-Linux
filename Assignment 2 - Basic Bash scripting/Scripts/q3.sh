#!/bin/bash

read -p "Please enter the side of a cube to find the volume: " cubeSide

if [[ $((cubeSide)) != $cubeSide ]]; then
	echo "Invalid entry. Please rerun the script and try again."
else
	echo "The volume of the cube is $((cubeSide*cubeSide*cubeSide))."
fi
