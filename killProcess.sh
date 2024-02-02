#!/bin/bash

# Check if a process name is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <process_name>"
    exit 1
fi

# Get the process name from the command-line argument
process_name=$1

# Use pgrep to find the process ID by name
process_id=$(pgrep -i $process_name)

# Check if a process with the given name is running
if [ -z "$process_id" ]; then
    echo "No process found with the name '$process_name'."
    exit 1
fi

# Use the kill command with the -9 signal to forcefully terminate the process
kill -9 $process_id

# Check if the kill command was successful
if [ $? -eq 0 ]; then
    echo "Process $process_id ($process_name) killed successfully."
else
    echo "Failed to kill process $process_id ($process_name)."
fi
