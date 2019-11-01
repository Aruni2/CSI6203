#!/bin/bash
#Student Id "10497312"

printf "Running the download function:\n"

funcDownload()
{
    read -p "Type the URL of a file to download: " url
    read -p "Type the location of where you would like to download the file to: " location
    wget -T 15 -P $location -c $url
    
    printf "location: $location"
}

funcDownload


