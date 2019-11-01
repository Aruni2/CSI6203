#!/bin/bash

RED=$'\033[31m'
WHITE=$'\033[0m'
path="/home/student/CSI6203/portfolio/week6"

printError()
{
    echo -e "$RED ERROR: $WHITE $1" 
}



    triangle_info="$($path/Triangle.sh)"    
    
    params=$(echo "$triangle_info" | sed 's/The area for a triangle with//' | sed -n '/base/{
    s/base/Base/
    s/height/\tHeight/
    s/area/\tArea/
    p
    }' | sed 's/and//')

    echo -e "$params"




