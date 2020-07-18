#!/bin/bash -x

#varibles
coin=0
counter=0

read -p "Enter how many times to flip the coin " flip
while [ $counter -le $flip ]
do
	coin=$(($RANDOM%2))
	if [ $coin -eq 1 ]
	then
		echo "HEADS IS WINNER"
	else
		echo "TAILS IS WINNER"
	fi
	((counter++))
done
