#!/bin/bash

# Prompt the user for the new assignment name
read -p "Enter the new assignment name: " newAssignment

# Path to config.env file
configFile="./config/config.env"

# Replace the ASSIGNMENT value in config.env with the new assignment
sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=\"$newAssignment\"/" "$configFile"

echo "✅ Assignment updated to '$newAssignment' in config.env"

# Run the startup script to check submissions for the new assignment
echo "🔁 Running the reminder app now..."
./scripts/startup.sh

