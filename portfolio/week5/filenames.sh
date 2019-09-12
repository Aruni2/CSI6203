#!/bin/bash
#Student Id "10497312"

IFS=$'\n'

for file in $(cat filenames.txt); 
do
    if [ -f $file ];
        then
        echo "$file -That file exits"
    elif [ -d $file ];
        then
        echo "$file -That's a directory"
    else
        echo "$file -I dont't know what that is!"
    fi
done
exit 0