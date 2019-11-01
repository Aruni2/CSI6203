#!/bin/bash
#Student Id "10497312"

#all sed statement 
echo "All sed statement"
grep -r "sed"

echo "All	lines	that	starts	with	the	letter	m"
grep -r "^m"

#echo "All	lines	that	contain	three	digit	numbers"
#grep -r "^[0-9]{2}$"
#grep -P '(?<!\d)\d{4}(?!\d)'

echo "All	lines	that	start	with	a	vowel"
grep -i '^[^aeiou]' 

echo "All	lines	that	contain	loops"
grep -r "^m"

echo "All	echo	statements	with	at	least	three	words"
grep -r "^m"

