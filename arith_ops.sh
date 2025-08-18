#!/bin/bash

# To do mathmatical operation you have to use let
x=10
y=100

let mul=$x*$y
echo "Multiplication is $mul"
let sum=$x+$y
echo "Sum is $sum"
# There is one more way to this in more simple way

echo "Substraction : $(($x-$y))"

