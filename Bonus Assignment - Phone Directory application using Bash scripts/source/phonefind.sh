#!/bin/bash

phonefile='./corp_phones'
empty=""
found=0

clear
tput cup 3 15; echo "Run a Search"
tput cup 4 12; echo "=================="

tput cup 5 12; read -p "Please enter the name of the contact to search for: " search

if [ "$search" = "$empty" ]; then
	tput cup 7 12; echo -e 'Name cannot be left blank, please try again later.\n'
        exit 0
fi

i=11;

while IFS=: read -r name phone; do
	if [ "${search,,}" = "${name,,}" ] && [ $found = 0 ] ; then
		tput cup 8 12; echo "Name"
		tput cup 8 33; echo "Phone Number"
		tput cup 10 12; echo "$name"
		tput cup 10 33; echo "$phone"
		let "found += 1"
	elif [ "${search,,}" = "${name,,}" ] ; then
		tput cup $i 12; echo "$name"
                tput cup $i 33; echo "$phone"
		let "i += 1"
	else
		continue
	fi
done < "$phonefile"

if [ $found = 0 ]; then
	tput cup 8 12; echo "No results found for $search. Please try again later."
else
	tput cup $i 12; echo -e "\nSearch complete.\n"
fi
