#!/usr/bin/env bash

# Set variables needed for the script to run, using Munana's Sandbox credentials
user_name="f9853a320aa8"
host_url="f9853a320aa8.c0bb8d29.alu-cod.online"
archive_directory="archived_logs_group25"

# Create the archive directory in case it does not exist
mkdir -p "$archive_directory"

# Loop through archived files and move them to the archive directory
for log in heart_rate_log.txt_*; do
    if [ ! -f "$log" ]; then
        echo "Skipping $log file because it is not a log file"
    else
        mv "$log" "$archive_directory"
    fi
done

# Copy archived data to a remote server
scp $archive_directory/* "$user_name@$host_url:/home/"

# Prints a message if the operation is successful or not
if [ $? -eq 0 ]; then
    echo -e "\nLog Files succesfully backed up to remote server"
else
    echo "Log Files could not be backed up"
fi
