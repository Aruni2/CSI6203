#!/bin/bash
#Student Id "10497312"

#Current Date Assign
currMonth=$(date +"%b") 

awk -v currMonth="$currMonth" 'BEGIN {
  printf "%s\n", "Auth log:"
}
/user root/ && $1 ~ currMonth {
    print $1 " " $2 " - " $3 ":"
    printf "    "

    for (i = 5; i <= NF; i++)
    {
      printf "%s ", $i
    }

    printf "\n\n"
}
' /var/log/auth.log