#!/bin/bash

touch /var/text/state.txt
if [ -e "state.txt" ]; then
	echo "Contents of text.txt:"
	cat state.txt
else
	echo "state.txt file does not exist."
fi

echo "Enter a message: "
read user_input

message="$user_input"

echo "$message" >> state.txt

echo "Contents of state.txt after update:"
cat state.txt
