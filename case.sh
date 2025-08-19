#!/bin/bash

read -p "Where do you want to visit?  " city

case $city in

	Chittagong)
		echo "Hurray! Chittagong."
		;;
        Dhaka)
                echo "Hurray! Dhaka."
               ;;
       Rajshahi)
                echo "Hurray! Rajshahi."
               ;;
       Khulna)
               echo "Hurray! Khulna."
	       ;;
       *)
               echo "No place has been selected!"
	      
esac       





