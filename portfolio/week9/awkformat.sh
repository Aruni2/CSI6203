#!/bin/bash
#Student Id "10497312"

echo "Your shopping list is as follows:"
awk 'BEGIN {
 FS=","
}
{
 print $1
}' shopping.csv