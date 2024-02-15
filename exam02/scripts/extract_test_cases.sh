#!/bin/bash

# Iterate through each line of the script
while read -r line; do
  # Check if the line contains "$FILE $ASSIGN"
  if [[ $line =~ '$FILE $ASSIGN' ]]; then
#   | awk -F '$FILE $ASSIGN' '{print $1}'
    echo $line | awk -F 'ASSIGN' '{print $2}'
  fi
done < "$1"  # Read the script itself as input
