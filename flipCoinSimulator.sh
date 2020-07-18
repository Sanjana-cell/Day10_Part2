coin=$(($RANDOM%2))
if [ $coin -eq 1 ]
then
	echo "HEADS IS WINNER"
else
	echo "TAILS IS WINNER"
fi

