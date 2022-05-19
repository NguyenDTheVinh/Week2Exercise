#!/bin/bash

result=0

# Function
SUM () {
	echo "your choose summation operation"
	result=$(($num1+num2))
	echo "Result: $result"
}

SUB () {
	echo "your choose subtraction operation"
	result=$(($num1-num2))
	echo "Result: $result"
}

MUL () {
	echo "your choose multiplication operation"
	result=$(($num1*num2))
	echo "Result: $result"
}

DIV () {
	echo "your choose division operation"
	if [ $num1 -ge $num2 ]
	then
		# Take division
		printf "Result: "
		echo "scale = 3;$num1/$num2" | bc
	else
		printf "Result: 0"
		echo "scale = 3;$num1/$num2" | bc
	fi
}



# Enter numbers
echo "Please enter two number!"
read num1 num2

echo "Choose operation with '1' for sum, '2' for subtract, '3' for multiply and '4' for divide"
echo "Option: "
read option

case $option in
	1)
		SUM
		;;
	2)
		SUB
		;;
	3)
		MUL
		;;
	4)
		DIV
		;;
	*)
		Default
		;;
esac

		
 

