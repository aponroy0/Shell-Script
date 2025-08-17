#!/bin/bash

##########################################################################
#  
#  Author : Apon Roy
#  Date   : 17 - 08 - 2025
#  Purpose : To find the error, fatal and critical logs from log files..
#
###########################################################################


LOG_DIR="/home/logs/"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "analysing log files"
echo "==================="

echo -e "\nList of the files updated in last 24 hours" 
LOG_FILES=$(find "$LOG_DIR" -name "*.log" -mtime -1)
echo "$LOG_FILES"

for LOG_FILE in $LOG_FILES; do
   echo -e "\nSearching ${ERROR_PATTERNS[0]}  logs in $LOG_FILE ---> "
   grep "${ERROR_PATTERNS[0]}" "$LOG_FILE"
   echo -e "\nNumber of ${ERROR_PATTERNS[0]} logs found in $LOG_FILE :   "
   grep -c "${ERROR_PATTERNS[0]}" "$LOG_FILE"
    
   echo -e "\nSerching ${ERROR_PATTERNS[1]} logs in $LOG_FILE ---> "
   grep "${ERROR_PATTERNS[1]}" "$LOG_FILE" 
   echo -e "\nNumber of ${ERROR_PATTERNS[1]} logs found in $LOG_FILE :"
   grep -c "${ERROR_PATTERNS[1]}" "$LOG_FILE"

   echo -e "\nNumber of ${ERROR_PATTERNS[2]} logs in $LOG_FILE --->"
   grep "${ERROR_PATTERNS[2]}"  "$LOG_FILE"
   echo -e "\nNumber of ${ERROR_PATTERNS[2]} logs found in $LOG_FILE : "
   grep -c "${ERROR_PATTERNS[2]}" "$LOG_FILE"
done   
