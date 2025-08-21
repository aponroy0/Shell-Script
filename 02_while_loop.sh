#!/bin/bash

while IFS="," read id name age
do
	echo "Name : $id"
	echo "Profession : $name"
	echo "Gender : $age"
done <contact_list.csv
