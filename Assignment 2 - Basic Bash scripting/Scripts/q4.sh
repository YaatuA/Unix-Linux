#!/bin/bash
read -p "Please enter a user name: " input

grep $input /etc/passwd | while IFS=: read -r user pw uid gid gecos hme shell; do
	echo "User ID Number (UID): $uid";
	echo "Group ID Number (GID): $gid";
	echo "Home Directory: $hme";
done
