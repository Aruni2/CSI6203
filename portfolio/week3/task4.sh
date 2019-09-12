#!/bin/bash
 
 #Student Id "10497312"
 #Task 4
 
files=$#

# Counting total number of arguments 
echo "Total number of arguments : $#"

#Check whether there are 3 arguments or not
if [ $files -ne  "3" ];
   then
   #Show massages for if there are not 3 arguments
     echo "There are no 3 arguments are supplied"
     exit 1
 else

#Check whether entered 3 arguments are files or not
 if 
    test -f $1  && test -f $2 && test -f $3 
 then

#Check whether If file 1 newest than file 2 and 3 
 if 
    [ $1 -nt $2 ] && [ $1 -nt $3] ; then
    echo $1

#Check whether If file 2 newest than file 1 and 3 
 elif 
    [ $2 -nt $1 ] && [ $2 -nt $3 ]; then
    echo $2

 else
    echo $3
 fi

 else
#Error message for no exit files
    echo "There are no exit files"; 
    exit 1

    fi

 fi



