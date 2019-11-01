#!/bin/bash
#Student Id "10497312"

echo "Your shopping list is as follows:"
awk 'BEGIN {
    FS="," #Used , to seperate items, quantity and prices
}
/^[aeiou]/ { #check items start with a vowel 
    print "starts with a vowel: " $1
}
/^[o]/ { #check items start with an o
    print "starts with an o: " $1
}
{
if ($1 ~ / / || $1 ~ /\t/) { #check items which have more than one word
    print "has more than on word: " $1
}
if ($3 ~ /^[0-9]+$/) { #check items which have whole number price
    print "whole number price: " $1
}
}
' ~/CSI6203/portfolio/week9/shopping.csv