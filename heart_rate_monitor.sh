#!/usr/bin/env bash

# This script is intended to run in the background and record heart rate data every second.
# It should also log it to a text file and then  display the Process ID.

# Request for device name
read -p 'Enter device name (e.g., "Monitor_A", "Monitor_B"): ' device_name

log_file="heart_rate_log.txt"

echo "Logging heart rate data to $log_file"

# Log heart rate data every second into a log file
while true; do
    # Get the current date time stamp
    time_stamp=$(date "+%Y-%m-%d %H:%M:%S")

    # Generate random heart rate that falls between 60 and 100
    heart_rate=$((RANDOM % 40 + 60))

    # Put generated values into the log file
    echo "$time_stamp $device_name $heart_rate" >> "$log_file"

    sleep 1
done &

# Display process ID for management
echo "The process ID (PID) for this script is: $!"
