#!/bin/bash
#Student Id "10497312"


printError()
{
    echo -e "\033[31mError:\033[0m $1"
}

getNumber()
{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY > $3 )); do
        printError "Input must be between $2 and $3"
        read -p "$1: "
    done
}

guess=0
while (( $guess != 42 )); do
    getNumber "please type a number between 1 and 100"
    guess=$REPLY
    if (( $guess == 42 )); then
        echo "Correct!"
    elif (( $guess < 42 )); then
        echo "Too Low!"
    elif (( $guess>42 )); then
        echo "Too High!"
    fi
done