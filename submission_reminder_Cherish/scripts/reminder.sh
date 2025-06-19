#!/bin/bash

# Get the directory of the script itself
SCRIPT_DIR=$(dirname "$0")

# Load config and helper functions
source "$SCRIPT_DIR/../config/config.env"
source "$SCRIPT_DIR/functions.sh"

# Path to the submissions file
submissions_file="$SCRIPT_DIR/../data/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions "$submissions_file"

