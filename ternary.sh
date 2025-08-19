#!/bin/bash
# 
# We are short forming the if-else block
#
read -p "Enter your age " age
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
