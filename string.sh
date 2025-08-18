#!/bin/bash

ss="Hello there"
echo "$ss"
# Length of an string

sl=${#ss}
echo "The length of the string is $sl"
#Upper case
echo "Upper case of string ----  ${ss^^}"
#Lower case
echo "Lower case of string ---- ${ss,,}"
#Replace a word from a string

sss=${ss/there/world}
echo "New string : $sss "
#Slice
#
echo "After slice ${ss:6:5}"
