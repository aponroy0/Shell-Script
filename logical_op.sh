#!/bin/bash

read -p "Enter your age "  age
read -p "Enter your country " country
# We use == to compare stirngs..
# We use -eq to compare numbers..

if [[ $age -ge 18 ]] && [[ $country == Bangladesh ]]; then
	echo "You can vote"
else
        echo "You can not vote"
fi	
