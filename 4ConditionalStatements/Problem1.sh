
# directory_to_check=$1

# if [ ! -d "$directory_to_check" ]; then
#   echo "Error: '$directory_to_check' is not a valid directory."
#   exit 1
# fi

# while [ "$(find "$directory_to_check" -mindepth 1 | wc -l)" -gt 0 ]; do
#   file_count=$(find "$directory_to_check" -mindepth 1 | wc -l)
#   echo "Files remaining: $file_count"
#   sleep 5
# done

# echo "✅ Directory is now empty"



#!/bin/bash

# directory_to_check=$1;

# while [ "$(ls -A $directory_to_check)" ] #til the time directory exists keep running the loop
# do 
# file_count=$(ls -l $directory_to_check | wc -l);
# echo "File count in direct is $file_count"
# sleep 5;
# done
# echo "Directory is now empty"

# Problem statement :
# Write a Bash script that iterates through a directory containing text files. For each text file, the script should:
# - count the number of lines in the file.
# - Append the line count to the end of the file


for file in /d/documets/echo/conditionalstatements/*.txt
do
line_count=$(wc -l < $file)
echo "Line count is $line_count" >> $file
done
