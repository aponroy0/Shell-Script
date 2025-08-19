#!/bin/bash
#
#
#
echo "Provide an option "
echo "a for print data "
echo "b for print list "
echo "c for pirnt location of the current directory"

read choice
case $choice in
	a) 
          date;;
        b) 
          ls;;
  c) pwd;;
  *)
	  echo "Please provide a valid value"

esac	  
