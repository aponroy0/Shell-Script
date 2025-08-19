#!/bin/bash
#
names="/log/names.txt"
n=$(cat $names)



for i in $n
do 
	echo "$i"
done	

#############################
# Playing with array using for loop
#
myBucket=( "Orange" "Pineappple" "Jackfruits" )
length=${#myBucket[*]}

for (( i=0; i<$length; i++ ))
do
	echo "The val of array : ${myBucket[$i]}"
done	
