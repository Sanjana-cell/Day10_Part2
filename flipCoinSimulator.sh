#!/bin/bash -x

#varibles
coin=0
counter=0
total_heads=0
total_tails=0

read -p "Enter how many times to flip the coin " flip
while [ $counter -le $flip ]
do
	coin=$(($RANDOM%2))
	if [ $coin -eq 1 ]
	then
		echo "HEADS IS WINNER"
		((total_heads++))
	else
		echo "TAILS IS WINNER"
		((total_tails++))
	fi
	((counter++))
done

echo "HEADS WON " $total_heads " times"
echo "TAILS WON " $total_tails " times"
