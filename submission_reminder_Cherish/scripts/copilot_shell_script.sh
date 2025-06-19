#!/bin/bash

read -p "Enter the new assignment name: " newAssignment

sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=\"$newAssignment\"/" ../config/config.env

echo "✅ Assignment updated to '$newAssignment' in config.env"

echo "🔁 Running the reminder app now..."
./startup.sh


