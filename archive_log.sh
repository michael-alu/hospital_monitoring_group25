#!/usr/bin/env bash

# Log file to be archived
log_file="heart_rate_log.txt"

# Checks if the log file exists and throws an error message if it doesn't
if [ ! -f "$log_file" ]; then

	echo "Please run the heart_rate_monitor script before running this"

       exit 1
fi

# Get Current timestamp
time_stamp=$(date +"%Y%m%d_%H%M%S")

# Use Naming convention - heart_rate_log.txt_YYYYMMDD_HHMMSS
archive_file="${log_file}_${time_stamp}" 

# Create Archive file in case it is not there
touch "$archive_file"

# Archive current log file to the intended archive file
mv "$log_file" "$archive_file"

echo "Log file has been archived to $archive_file"
