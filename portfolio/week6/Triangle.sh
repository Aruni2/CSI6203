#!/bin/bash
#Student Id "10497312"

RED=$'\033[31m'
WHITE=$'\033[0m'

printError()
{
    echo -e "$RED ERROR: $WHITE $1" 
}

calcTriArea()
{
    
        for (( base=1; base<=100; base++ ));do
            for (( height=1; height<=100; height++ ));do
                area=`echo "scale=2; ($base*$height)/2" | bc`
                echo "$1 $base and height: $height area is: $area"
            done
        done
    
}

calcTriArea "The area for a triangle with base:" $1 $2



