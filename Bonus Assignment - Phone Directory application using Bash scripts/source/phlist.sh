#!/bin/bash

phonefile='./corp_phones'
empty=""

clear
tput cup 3 21; echo "Phone Directory"
tput cup 4 12; echo "================================="

i=8;

tput cup 6 12; echo "Name"
tput cup 6 33; echo "Phone Number"

while IFS=: read -r name phone; do
	tput cup $i 12; echo "$name"
	tput cup $i 33; echo "$phone"
	let "i += 1"
done < "$phonefile"
echo -e "\n"
