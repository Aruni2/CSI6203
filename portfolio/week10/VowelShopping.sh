#!/bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
 FS=","
}
/^[aeiou]/ {
 print "starts with a vowel: " $1
}

/^[o]/ {
 print "starts with an o: " $1
}

/[NF==2]/ {
 lines	that	have	more	than	one	word	in	the	item: " $1
}' ../week9/shopping.csv