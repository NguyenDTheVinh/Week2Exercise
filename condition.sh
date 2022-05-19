#!/bin/bash

# Input birthday
echo "Please, enter your birthday!"
read day month year

# Check blank
while [ "$day" == "" ] || [ "$month" == "" ] || [ "$year" == "" ]
do
	echo "Please fill your birthday fully"
	echo "Please, enter your birthday!"
        read day month year
done

# Check the validity of months
while [ $month -lt 1 ] || [ $month -gt 12 ]
do
	echo "There are 12 months every year"
	echo "Please, enter your month again!"
	read  month
done

# Set number of days in an chosen month
case $month in 
	1) 
		days=31
    		;;
	2) 
		days=28 
		;;
	3) 
		days=31
		;;
	4) 
		days=30 
		;;
	5) 
		days=31 
		;;
	6) 
		days=30 
		;;
	7) 
		days=31 
		;;
	8) 
		days=31 
		;;
	9) 
		days=30
		;;
	10) 
		days=31
		;;
	11) 
		days=30
		;;
	12) 
		days=31
		;;
	*) 
		days=-1
		;;
esac

# Check leap year
if [ $(($year%400)) -eq 0 ]
then
	days=29
else
	if [ $(($year%4)) -eq 0 ] && [ $(($year%100)) -ne 0 ]
	then
		days=29
	fi
fi

# Check the validity of days in a month
while [ $day -lt 1 ] || [ $day -gt $days ]
do
	echo "Your day is invalid"
	echo "Please, enter your day again!"
	read  day
done

# display date
echo "Your birthday: $day // $month // $year"

# Choose a food
echo "We have 3 types of food with:"
echo "(1) - Noodles"
echo "(2) - Pizza"
echo "(3) - Hotpot"
echo "Please, choose your desired food"
read option

# Check the validity of food optoin
while [ $option -lt 1 ] || [ $option -gt 3 ]
do
	echo "Please, input number in the range"
	read  option
done

case $option in
	1)
		echo "Your NOODELS will be there in a few minutes"
		;;
	2)
		echo "Your PIZZA will be there in a few minutes"
		;;
	3)
		echo "Your HOTPOT will be there in a few minutes"
		;;
	*)
		;;
esac
