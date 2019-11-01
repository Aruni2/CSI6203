#!/bin/bash
#Student Id "10497312

#all sed statement 
echo "All sed statement"
grep -r "sed"

echo -e "All sed patterns: \n"
grep -r "sed.*$"
echo -e "\n"

echo -e "All lines starts with m: \n"
grep -r "^m.*$"
echo -e "\n"

echo -e "All lines containing three digit numbers: \n"
grep -r ".*[0-9]{3}.*$"
echo -e "\n"

echo -e "All lines starting with a vowel: \n"
grep -r "^[AEIOUaeiou].*$"
echo -e "\n"

echo -e "All echo statements with atleast three words: \n"
grep -r "echo .*\w*\s\w*\s\w*\s.*$"
