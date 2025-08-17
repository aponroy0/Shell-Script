
#!/bin/bash
echo "analysing log files"
echo "==================="
echo -e "\nList of the files updated in last 24 hours" 
find . -name "*.log" -mtime -1

echo -e "\nSearching Error logs in appication.log file"
grep "ERROR" /home/logs/application.log

echo -e "\nNumber of error logs found in application.log"
grep -c "ERROR" /home/logs/application.log

echo -e "\nNumber of fatal logs found in application.log"
grep -c "FATAL" /home/logs/application.log

echo -e "\nNumber of fatal logs found in system.log"
grep -c "FATAL" system.log

echo -e "\nNumber of critical logs found in system.log"
grep -c "CRITICAL" system.log

echo -e "\nNumber of critical logs found in system.log"
grep "CRITICAL" system.log
