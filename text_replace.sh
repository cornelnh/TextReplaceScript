#!/bin/bash

function usage() {
    echo "Usage: $0 -f <file> -s <search_term> -r <replace_term>"
    echo "-f: specifies file to search (defaults to 'testfile.txt' in current dir)."
    echo "-s: specifies word or phrase to search."
    echo "-r: specifies word or phrase to replace."
    echo "-h: Display help."
    exit 1
}

# Default file name
file="testfile.txt"

while getopts ":f:s:r:h" opt; do
  case ${opt} in
    f ) file=$OPTARG ;;
    s ) search=$OPTARG ;;
    r ) replace=$OPTARG ;;
    h ) usage ;;
    \? ) echo "Invalid option: -$OPTARG" >&2; usage ;;
    : ) echo "Option -$OPTARG requires an argument." >&2; usage ;;
  esac
done

# If any required argument is missing, display usage
if [ -z "$search" ] || [ -z "$replace" ]; then
    echo "Missing required arguments." >&2
    usage
fi

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File not found: $file" >&2
    exit 1
fi

# Create a backup of the file
cp "$file" "$file.bak"

# Perform search and replace
sed -i "s/$search/$replace/g" "$file"

echo "Replaced all of '$search' with '$replace' in $file."
