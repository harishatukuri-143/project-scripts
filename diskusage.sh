#!/bin/bash

# Threshold percentage (e.g., 80 means 80%)
THRESHOLD=80
# Email address to send alerts
EMAIL="harishypalem1998@gmail.com"

# Check disk usage for all mounted filesystems
df -h | awk 'NR>1 {print $5 " " $6}' | while read output; do
    usep=$(echo $output | awk '{print $1}' | sed 's/%//')
    partition=$(echo $output | awk '{print $2}')

    if [ "$usep" -ge "$THRESHOLD" ]; then
        message="Warning: Disk usage on $partition is at ${usep}%"
        echo "$message"

        # Send email alert (requires mailx or sendmail configured)
        echo "$message" | mail -s "Disk Alert: $partition usage ${usep}%" "$EMAIL"
    fi
done

