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
		echo "HEADS WON "$counter "game"
		((counter++))
		total_heads=$counter
	else
		echo "TAILS WON "$counter "game"
		((counter++))
		total_tails=$counter
	fi
	 if [ $total_heads -ge 21 -o $total_tails -ge 21 ]
        then
                diff=$(($total_heads-$total_tails))
                diff_1=$(($total_tails-$total_heads))
                if [ $diff -ge 2 -o $diff_1 -ge 2 ]
                then
                        break
                else
                        ((limit++))
                        continue
                fi
        fi
done
if [ $total_heads -eq $counter ]
then
	diff=$(($total_heads-$total_tails))
	echo "HEAD IS OVER ALL WINNER BY " $diff 
else
	diff=$(($total_tails-$total_heads))  
	echo "TAIL IS OVER ALL WINNER BY" $diff
fi
echo "heads" $total_heads
echo "tails" $total_tails


