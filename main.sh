#!/bin/bash



# Check if the output directory exists

if [ ! -d "output" ]; then

  echo "Output directory does not exist. Please create the output directory and run the script again."

  exit 1

fi



# Move/copy the text file into output

cp data.txt output



# Change directory to output

cd output



# Read the contents of the created text file into a new text file called read.txt

cat data.txt > read.txt



# Save the outputs of pwd and ls to files

pwd > pwd.txt

ls > ls.txt



# Make a copy of the text file into a third text file called copy.txt

cp data.txt copy.txt



# Print today's date and save the output

date > date.txt



# Count words in the text file and save it to a file

wc -w data.txt > textcount.txt



# Save first five lines of various commands

ps | head -n 5 > process.txt



# Use the 'ip' command as an alternative to 'ifconfig'

ip addr | head -n 5 > netstat.txt



mount | head -n 5 > mount.txt



# Create permissions.txt and give rwx to all groups

touch permissions.txt

chmod 777 permissions.txt



# Create a shell variable and set it to "test"

export TESTENV1="test"



# Run a grep command and save to a file

grep -E '\b\w{3,}\b' data.txt > regex.txt



# Navigate up a level

cd ..


