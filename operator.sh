#!/bin/bash

# Enter numbers
echo "Please enter two number!"
read num1 num2

# Take summmation
sum=$(($num1+$num2))
echo "sum is $sum"

# Take subtraction
sub=$(($num1-$num2))
echo "sub is $sub"

# Take multiplication
mul=$(($num1*$num2))
echo "mul is $mul"

if [ $num1 -ge $num2 ]
then
	# Take division
	printf "div is $num1/$num2"
	printf " or "
	echo "scale = 3;$num1/$num2" | bc
else
	printf "div is $num1/$num2"
	printf " or 0"
	echo "scale = 3;$num1/$num2" | bc
fi



