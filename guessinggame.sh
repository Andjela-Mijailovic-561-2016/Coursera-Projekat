#!/bin/bash

echo "Number: "
read input
n=$(ls -1 . | wc -l)

while [[ ! ( $input -eq $n ) ]]
do

	if [ $input -gt $n ]
	then
		echo "Sorry, your guess is too high."
	elif [ $input -lt $n ]
	then
		echo "Sorry, your guess is too low."
	fi

	
	echo "Number: "
	read input
	
done


echo "Congratulations, $n is right number."
exit 0
