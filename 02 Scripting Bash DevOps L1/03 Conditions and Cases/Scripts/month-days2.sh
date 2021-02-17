#!/bin/bash
month=$(date +%b)

case $month in
     "Jan") echo "31 days in the current month";;
     "Feb") echo "28 days in the current month";;
     "Mar") echo "31 days in the current month";;
     "Apr") echo "30 days in the current month";;
     "May") echo "31 days in the current month";;
     "Jun") echo "30 days in the current month";;
     "Jul") echo "31 days in the current month";;
     "Aug") echo "31 days in the current month";;
     "Sep") echo "30 days in the current month";;
     "Oct") echo "31 days in the current month";;
     "Nov") echo "30 days in the current month";;
     "Dec") echo "31 days in the current month";;
esac