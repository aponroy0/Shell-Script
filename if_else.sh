#!/bin/bash

read -p "Enter your marks :" marks

if [ $marks -gt 90 ]; then
	echo "You have got A+"
elif [ $marks -gt 80 ]; then
        echo "You have got B+"	
else 
        echo "You have got below $marks"	
fi

echo "Congratulations Hurray!!!"



