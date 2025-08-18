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
REPORT_FILE="/home/logs/log_analysis_report.txt"


ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "analysing log files" > "$REPORT_FILE"
echo "===================" >> "$REPORT_FILE"

echo -e "\nList of the files updated in last 24 hours" >> "$REPORT_FILE" 
LOG_FILES=$(find "$LOG_DIR" -name "*.log" -mtime -1)
echo "$LOG_FILES" >> "$REPORT_FILE"

for LOG_FILE in $LOG_FILES; do
     
   for ERROR_PATTERN in ${ERROR_PATTERNS[@]}; do

       echo -e "\nSearching $ERROR_PATTERN  logs in $LOG_FILE ---> " >> "$REPORT_FILE"
       grep "$ERROR_PATTERN" "$LOG_FILE">>"$REPORT_FILE"
       echo -e "\nNumber of $ERROR_PATTERN logs found in $LOG_FILE :   " >> "$REPORT_FILE"

       ERROR_COUNT=$(grep -c "$ERROR_PATTERN" "$LOG_FILE")
       echo "$ERROR_COUNT" >> "$REPORT_FILE"
        
       if [ "$ERROR_COUNT" -gt 10 ]; then
	  echo -e "\nWarning!: Too many $ERROR_PATTERN"
       fi	  


   done

done   

echo -e "\nLog analysis completed and saved the file in : $REPORT_FILE"

