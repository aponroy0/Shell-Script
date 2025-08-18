#!/bin/bash

#Here, we will learn about the arrays
# An array is a collection diff datatype values.
# Its more like a container.
# To separate values we use space instead of comma

myBucket=("Mangoes" 10 "100$")

echo "I have ${myBucket[1]} ${myBucket[0]}. The price of the ${myBucket[0]} is ${myBucket[2]}"

# TO show all values of an array at once
echo "All the values of the array ${myBucket[*]}"

# To show the length of the array
echo "The length of the array ${#myBucket[*]}"

# Specific values
echo "Values from 1-2 ${myBucket[*]:1:2}"

# Updating an array with new values
#
myBucket+=( NEW 20 30 )

echo "Values of new array are ${myBucket[*]}"


