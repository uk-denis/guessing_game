#!/bin/bash

function GetRightNumFiles {
	echo $(ls | wc -l)
}

right_num_files=$(GetRightNumFiles)
echo "How many files in the current directory?"

while true
do
	echo -n "Read your number: "
	read num_files
        if [[ num_files -eq right_num_files ]]
	then
		echo "Great! You guess the right number of files in the current directory!"
		exit 0
	elif [[ num_files -lt right_num_files ]]
	then
		echo "Your number is lower than number of files in the current directory! Please, try again."
	else
		echo "Your number is upper then number of files in the current directory! Please, try again."
        fi
done
