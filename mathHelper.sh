#!/bin/bash

# Functions
OP1 () {
	echo "your choice: solve auadratic equation. Assume ax^2 + bx + c = 0"
	echo "Enter your number /a/: "
	read a
	echo "Enter your number /b/: "
	read b
	echo "Enter your number /c/: "
	read c
	
	if [ $a -eq 0 ]
	then 
        	echo "equation has one root"
               	printf "x = "
                echo "scale = 3;$c*(-1)/$b" | bc
        else
        	delta=$(($b*$b - 4*$a*$c))
        	if [ $delta -eq 0 ]
        	then
        		echo "equation has double root"
               		printf "x = x1 = x2 = "
                	echo "scale = 3;$b*(-1)/(2*$a)" | bc
                else
                	if [ $delta -gt 0 ]
                	then
        			printf "equation has two distinct roots with "
               			printf "x1 = "
               			echo "scale=3;($b*(-1) + sqrt($delta))/(2*$a)" | bc
               			printf " and "
               			printf "x2 = "
				echo "scale=3;($b*(-1) - sqrt($delta))/(2*$a)" | bc
			else
				printf "equation has two distinct complex roots with "
               			x11=`echo "scale=3; ($b*(-1))/(2*$a)" | bc`
               			x12=`echo "scale=3; (sqrt($delta*(-1)))/(2*$a)" | bc`
               			echo "x1 = $x11 + ($x12 *i)"

               			printf " and "
               			x21=`echo "scale=3;($b*(-1))/(2*$a)" | bc`
               			x22=`echo "scale=3;((-1)*(sqrt($delta*(-1))))/(2*$a)" | bc`
               			echo "x2 = $x11 + ($x22 *i)"
			fi
		fi
	fi		         	

}

OP2 () {
	echo "your choice: find circle area. Assume Area = R^2 x 3.14"
	echo "Enter radius /R/ of circle: "
	read r
	A=`echo "scale=3; $r*$r*3.14" | bc`
	echo "Circle's are is $A."
}

OP3 () {
	echo "Enter a wanted number: "
	read number
	if [ $number -lt 2 ]
	then
		token=3 # force it not to be prime
	else
		token=0
		hold=$number
		while [ $hold -gt 1 ]
		do
			hold=$(($hold-1))
			i=$(($number%$hold))
			#echo "i = $i"
			if [ $i -eq 0 ]
			then
				token=$(($token+1))
			fi
		done
	fi
	
	if [ $token -gt 1 ]
	then
		echo "it is not a prime number"
		
	else
		echo "it is a prime number"
	fi
		
}


# main
echo "May I help you???"
echo "Choose option for your problem"
echo "/1/ : Solve a quadratic equation."
echo "/2/ : Compute circle area."
echo "/3/ : Check if a number is prime or not?"

echo "So... Your option is "
read option

case $option in
	1)
		OP1
		;;
	2)
		OP2
		;;
	3)
		OP3
		;;
	*)
		Default
		;;
esac
