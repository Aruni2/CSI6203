#!/bin/sh
 
#Student Id "10497312"
 
 
ping -c1 127.0.0.1 
 #while [ $url!='exit' ]; do
if [ $? != 0 ];then

	echo "Something went wrong"  
        else
    echo "Internet seems to be connected"
        fi
     
    read -p "Please type a website URL to download or type exit to quit " url

    while [ $url != "exit" ]
        do
    wget -T 20 -c $url && read -p "Please type a website a URL to download " url
    
    done