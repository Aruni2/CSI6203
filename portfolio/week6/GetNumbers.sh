#!/bin/bash
#Student Id "10497312"

RED=$'\033[31m'
WHITE=$'\033[0m'

printError()
{
    echo -e "$RED ERROR: $WHITE $1" 
}

getNumber()
{
    read -p "$1:"
    while (( $REPLY < $2 || $REPLY > $3 )); do
        printError "Input must be between $2 and $3"
        read -p "$1: "
    done
}

echo "this is the start of the script"
getNumber "please type a number between 1 and 10" 1 10
echo "Thank you!"
getNumber "please type a number between 50 and 100" 50 100
echo "Thank you!"
