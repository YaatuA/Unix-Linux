#!/bin/bash

phonefile=~/source/corp_phones
loop=y
while [ "$loop" = "y" ]
do
clear
tput cup 3 12; echo "Corporate Phone Reporting Menu"
tput cup 4 12; echo "=============================="
tput cup 6 9; echo "P-Print Phone List"
tput cup 7 9;echo "A-Add New Phone"
tput cup 8 9; echo "S-Search for phones"
tput cup 9 9; echo "Q-Quit:"
tput cup 9 19;
read choice || continue
case $choice in
[Aa]) bash phoneadd.sh
      echo "Press any to continue"
      read key;;
[Pp]) bash phlist.sh
      echo "Press any key to continue"
      read key;;
[Ss]) bash phonefind.sh
      echo "Press any key to continue"
      read key;;
[Qq]) exit;;
*) tput cup 14 4; echo "Invalid Code"; read choice;;
esac
done

