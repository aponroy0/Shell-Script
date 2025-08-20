#!/bin/bash

num=10

until [[ $num -le 1 ]]
do
	echo "The number is : $num "
	let num--
done
