#!/bin/bash

# Input text
echo "Enter a line of text"
read TextLine

# User cannot input a NULL
if [ "$TextLine" == "" ]
then
	while [ "$TextLine" == "" ]
	do
		echo "Enter a line of text again please! > < "
		read TextLine
	done
fi

echo "A new file named $TextLine was created"
# create file
> $TextLine
