#!/bin/bash

# How to store the key vale pairs

declare -A myArray
myArray=( [name]=Apon [age]=20 [city]=Dhaka )

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"

