#!/bin/bash
#Student Id 10497312

#Font Colours

red=$'\033[31m'
white=$'\033[0m'
green=$'\033[32m'

#error messages

printError()
{
    echo -e "$red ERROR: $white $1" 
}
printHelp()
{
    echo -e "$green HELP: $white $1" 
}
#functions

connect_URL()
{
    log="./Downloaded_Files/nasa.log"
    url="https://apod.nasa.gov/apod/ap"
    date=$1
    echo "Connecting to nasa.gov..."
    curl -s "$url$date.html" > $log
}
 
#download image

download_image()
{
    log="./Downloaded_Files/nasa.images.log"
    path_to_download="./Downloaded_Files/images"
    url="https://apod.nasa.gov/apod/"
    img_src=$1
    image_name=$2
    preferred_location=$3

    if test -z $preferred_location; then
        
        wget -T 15 -c "$url$img_src" -P $path_to_download > $log
    else
        
        wget -T 15 -c "$url$img_src" -P $preferred_location > $log
    fi
    
}
#first method

if [ $# -le 1 ];then 
    printError "Please provide the parameters to run this script Eg:- ./nasa.sh -d 2019-01-04"
else
    #sed

    regex_date='s/([0-9]{2})([0-9]{2})-([0-9]{2})-([0-9]{2})/\2\3\4/ p'
    regex_text_within_title='s/<\/?title>(.*)/\1/ p'
    regex_only_title='s/(.*) - (.*)/\2/ p'
    regex_image_src='s/<IMG SRC=\"(.*)\"/\1/ p'
	
	
    regex_Explaination='/<html>/I,/<\/html>/I{ s/<[^>]*>//g; p}'
	
	
    

    if [ $1 == '-d' ];then 

        date=$(echo $2 | sed -rn "$regex_date" )
        connect_URL $date

        if [ $? -ne 0 ]; then
            printError " NASA website is unavailable. Please try again..."
            exit $?
        else
            title=$(cat ./Downloaded_Files/nasa.log | sed -rn "$regex_text_within_title" | sed -rn "$regex_only_title")
            img_src=$(cat ./Downloaded_Files/nasa.log | sed -rn "$regex_image_src")
            read -p "Please type a preferred location or press enter to save in the default location (Downloaded_Files/images): " location
            echo "Downloading $title.jpg ..."
            download_image "$img_src" "$title.jpg" "$location"
            echo "Finished"
        fi
    
    

    elif [ $1 == "--type" ];then
        if [[ $3 == "--date" && $# -eq 4 ]];then

            date=$(echo $4 | sed -rn "$regex_date")
            connect_URL $date

            if [ $? -ne 0 ]; then
                printError " NASA website is unavailable. Please try again..."
                exit $?
            else
                cat ./output/nasa.log | awk '{FS="\n"};{print $1}' | sed -n "$regex_Explaination"
                
                echo "Finished"
            fi
        else
            printHelp "Provide the parameters according to the given example format. Eg:- ./nasa.sh --type explaination --date 2019-01-04"
        fi
    
    

    elif [ $1 == "-t" ];then
        if [[ $3 == "-d" && $# -eq 4 ]];then

            date=$(echo $4 | sed -rn "$regex_date")
            connect_URL $date

            if [ $? -ne 0 ]; then
                printError " NASA website is unavailable. Please try again..."
                exit $?
            else
                title=$(cat ./Downloaded_Files/nasa.log | sed -rn "$regex_text_within_title" | sed -rn "$regex_only_title")
                echo "TITLE: $title"
                echo -e "Explaination: \n"
                cat ./Downloaded_Files/nasa.log | awk '{FS="\n"};{print $1}' | sed -n "$regex_Explaination"
                echo "Finished"
            fi
        else
            printHelp "Provide the parameters according to the given example format. Eg:- ./nasa.sh -t details -d 2019-01-04"
        fi

    
    elif [ $1 == "--range" ];then
        if [[ $# -eq 3 ]];then

            fromDate=$(echo $2 | sed -rn "$regex_date")
            toDate=$(echo $3 | sed -rn "$regex_date")
            count=0

            for (( i=fromDate; i<=toDate; i++ ));do
                ((count++))
                if [ $count -le 10 ];then
                    connect_URL $i
                    if [ $? -ne 0 ]; then
                        printError " NASA website is unavailable. Please try again..."
                        exit $?
                    else
                        title=$(cat ./Downloaded_Files/nasa.log | sed -rn "$regex_text_within_title" | sed -rn "$regex_only_title")
                        img_src=$(cat ./Downloaded_Files/nasa.log | sed -rn "$regex_image_src")
                        read -p "Please type a preferred location or press enter to save in the default location (Downloaded_Files/images): " location
                        echo "Downloading $title.jpg ..."
                        download_image "$img_src" "$title.jpg" "$location"
                        echo "Finished"
                    fi
                else
                    printError "Maximum of 10 images at a time allowed.."
                    exit 1
                fi 

            done
        else
            printHelp "Please provide the parameters according to the given format. Eg:- ./nasa.sh --range 2019-01-01 2019-01-04"
        fi
    
    
    else
        printError "Please provide the parameters to run this script Eg:- ./nasa.sh -d 2019-01-04"
    fi
fi