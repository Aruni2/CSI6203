#!/bin/bash

#Student Id "10497312"

RED=$'\033[31m'
WHITE=$'\033[0m'
path="/home/student/CSI6203/portfolio"

printError()
{
    echo -e "$RED ERROR: $WHITE $1" 
}


    echo -e "Area with 2 digits: \n"
    $path/week7/ShorterTriangles.sh | grep "Area is: [0-9][0-9]"

    


