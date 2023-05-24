#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Please provide file path(s) as an argument."
  exit 1
fi

date=$(date +"%d%m%Y")

for file in "$@"
do
  # Get the file name and extension
  filename=$(basename -- "$file")
  extension="${filename##*.}"

  # Rename the file with backup suffix
  new_filename="${file}_bkp_${date}"
  mv "$file" "$new_filename"

  echo "File $file has been renamed to $new_filename"
done
