#!/bin/bash

# Check if the log file is provided as an argument
if [ -z "$1" ]; then
  echo "Please pass a log file path as an argument."
  exit 1
fi

LOG_FILE="$1"

# Check if the file exists and is a regular file
if [ ! -f "$LOG_FILE" ]; then
  echo "File not found or is not a valid file!"
  exit 1
fi

echo "Analyzing log file: $LOG_FILE"

# Top 5 IP addresses with the most requests
echo -e "\nTop 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5

# Top 5 most requested paths
echo -e "\nTop 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5

# Top 5 response status codes
echo -e "\nTop 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5

# Top 5 user agents
echo -e "\nTop 5 user agents:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
