#!/bin/bash

# Prompt for the user's name
read -p "Enter your name: " userName

# Remove spaces from name to avoid folder issues
userName=$(echo "$userName" | tr -d '[:space:]')

# Define main directory name
mainDir="submission_reminder_${userName}"

# Check if the directory already exists
if [ -d "$mainDir" ]; then
  echo "⚠️  Folder '$mainDir' already exists. Please delete it or choose another name."
  exit 1
fi

# Create main folder and subfolders
mkdir -p "$mainDir/config" "$mainDir/scripts" "$mainDir/data"

echo "✅ Created directories inside $mainDir"

