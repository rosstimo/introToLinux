#!/bin/bash

# This script adds users from a list to the 'sudo' group on Ubuntu.
# Usage: ./addSudoUsers.sh usernames.txt
# usernames.txt should contain one username per line

USERFILE="$1"

# Exit if not run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

if [ -z "$USERFILE" ]; then
    echo "Usage: $0 <usernames_file>"
    exit 1
fi

while IFS= read -r username; do
    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Add user to 'sudo' group
        usermod -aG sudo "$username"
        echo "User $username added to sudo group."
    else
        echo "User $username does not exist, skipping."
    fi
done < "$USERFILE"
