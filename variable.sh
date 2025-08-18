#!/bin/bash

# Storing a value in a variable
a=10
name="Apon Roy"

echo "My name is $name "

# Storing a command o/p into a variable
# You have to store a command o/p using first bracket
#
#
HOSTNAME=$(hostname)

echo "My hostname is $HOSTNAME"
#What if I want to define a var that cannot be changed
# Like a constant var
#
#Constant var
readonly HOUSE_NAME="Chittagong"

echo "My house is located in $HOUSE_NAME"

