#!/bin/bash

phonefile='./corp_phones'
empty=""

clear
tput cup 3 15; echo "Add New Phone"
tput cup 4 12; echo "==================="

tput cup 5 12; read -p "Please enter the name of the contact to add: " name

if [ "$name" = "$empty" ]; then
	tput cup 7 12; echo -e 'Name cannot be left blank, please try again later.\n'
	exit 0
fi

tput cup 7 12; read -p "Please enter a 10-digit phone number with no dashes for $name: " phone

if [ "$phone" = "$empty" ]; then
	tput cup 9 12; echo -e 'Phone number cannot be left blank, please try again later.\n'
	exit 0;
fi

loop=y
while [ "$loop" = "y" ] 
do
	case $phone in
		[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]) echo "$name:$phone" >> ~/source/corp_phones
		tput cup 9 12; echo -e "The contact has successfully been added to the directory.\n"
		exit 0;;
		[Qq]) tput cup 9 12; echo -e "Successfully cancelled adding contact.\n"
		exit 0;;
		*) tput cup 7 0
		tput ed
		tput cup 7 12; read -p 'Invalid entry. Please enter a 10-digit phone number with no special characters or enter Q to cancel: ' phone;;
	esac
done
