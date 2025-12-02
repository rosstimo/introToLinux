#!/bin/bash

# This script creates Linux user accounts from a list of usernames.
# Each user is added to the "students" group, given a default password,
# and required to change their password on first login.

# Usage: ./createUsers.sh usernames.txt
# usernames.txt should contain one username per line

USERFILE="$1"
DEFAULT_PASSWORD="ChangeMe123"

# Exit if not run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

# Check if the usernames file was provided
if [ -z "$USERFILE" ]; then
    echo "Usage: $0 <usernames_file>"
    exit 1
fi

# Loop through each line (username) in the file
while IFS= read -r username; do
    # Check if the user already exists
    if id "$username" &>/dev/null; then
        echo "User $username already exists, skipping."
        continue
    fi

    # Create the user, add to "students" group, and create a home directory
    useradd -m -G students "$username"
    # Set the default password for the user
    echo "$username:$DEFAULT_PASSWORD" | chpasswd
    # Force the user to change their password on first login
    chage -d 0 "$username"
    echo "Created user: $username"
done < "$USERFILE"
