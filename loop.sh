#!/bin/bash

count=1
fac=1

echo "Enter a number: "
read number

if [ $number -eq 0 ]
then
	echo "factorial of $number is 1"
else
	echo "count: "
	while [ $count -lt $number ]
	do
		fac=$(($fac*$count))
		echo "$count"
		count=$((count+1))
	done

	echo "$count"
	fac=$(($fac*$count))

	echo "factorial of $number is $fac"
fi


