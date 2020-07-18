#!/bin/bash -x

#varibles
coin=0
counter=0
total_heads=0
total_tails=0
limit=21
while [ $counter -le $limit ]
do
	coin=$(($RANDOM%2))
	if [ $coin -eq 1 ]
	then
		echo "HEADS IS WINNER"
		((counter++))
		total_heads=$counter
	else
		echo "TAILS IS WINNER"
		((counter++))
		total_tails=$counter
	fi
done
if [ $total_heads -eq $total_tails ]
then
	echo "It is a tie"
else
	if [ $total_heads -eq $counter ]
	then
		diff=$(($total_heads-$total_tails))
		echo "HEAD IS OVER ALL WINNER BY " $diff 
	else
		diff=$(($total_tails-$total_heads))  
		echo "TAIL IS OVER ALL WINNER BY" $diff
	fi
fi


