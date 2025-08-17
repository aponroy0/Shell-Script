#!/bin/bash

LOG_DIR="/home/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"

echo "analysing log files"
echo "==================="
echo -e "\nList of the files updated in last 24 hours" 
find $LOG_DIR -name "*.log" -mtime -1

echo -e "\nSearching Error logs in appication.log file"
grep "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of error logs found in application.log"
grep -c "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of fatal logs found in application.log"
grep -c "FATAL" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of fatal logs found in system.log"
grep -c "FATAL" "$SYS_LOG_FILE"

echo -e "\nNumber of critical logs found in system.log"
grep -c "CRITICAL" "$SYS_LOG_FILE"

echo -e "\nNumber of critical logs found in system.log"
grep "CRITICAL" "$SYS_LOG_FILE"
