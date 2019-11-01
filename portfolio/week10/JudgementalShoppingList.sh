#!/bin/bash
#Student Id "10497312"

echo "Your shopping list is as follows:"

awk 'BEGIN {
    FS="," #Used , to seperate items, quantity and prices
    printf "%s\n", "Item         | Quantity | Price   | Total   | Comment"
    printf "%s\n", "-------------|----------|---------|---------|-----------------"
}
{
    if (($2*$3) > 5) #If total price is over $5
    {
      comment="That’s a bit expensive! Are you sure?"
    }
    else if (($2*$3) < 3) #If total price is belo $3
    {
      comment="Such a cheapskate!"
    }
    else if ($2 > 5) #If quantity is over 5
    {
      comment="Do you really need that many?"
    }
    else #Else keep blank
    {
      comment=""
    }

    printf "%-12s | %-8d | $%-6.2f | $%-6.2f | %s\n", $1, $2, $3, $2*$3, comment
    sumqty+=$2
    sumprice+=$3
    sumtotal+=($2*$3)
}
END {
    printf "%-12s | %-8d | $%-6.2f | $%-.2f  |\n", "TOTAL: ", sumqty, sumprice, sumtotal
}' ~/CSI6203/portfolio/week9/shopping.csv
