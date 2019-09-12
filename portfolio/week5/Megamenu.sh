#!/bin/bash

#Student Id "10497312"


#Week5 Task5

echo -e "\e[0;31m 1. Create a folder \e[0m"
echo -e "\e[1;31m 2. List files in a folder \e[0m"
echo -e "\e[0;37m 3. Copy a folder \e[0m"
echo -e "\e[0;36m 4. Save a password \e[0m"
echo -e "\e[1;36m 5. Read a password \e[0m"
echo -e "\e[0;37m 6. Print newest file\e[0m"
echo -e "\e[0;32m 7. Calculator \e[0m"
echo -e "\e[1;32m 8. Internet Downloader \e[0m"
echo -e "\e[0;37m 9. Read a file \e[0m"
echo -e "\e[0;35m 10.print every 3rd number from 1 to 1000 \e[0m"  
      
       
#Ask the number for proceed
read -p "Type any number to you wish proceed:" No 

case $No in 
#Create a folder
 "1")
  ~/CSI6203/portfolio/week3/foldermaker.sh;;
  #List files in a folder 
 "2")
 ~/CSI6203/portfolio/week2/foldercontent.sh;;
 #Copy a folder
 "3")
 ~/CSI6203/portfolio/week3/foldercopier.sh;;
 #Save a password
 "4")
 ~/CSI6203/portfolio/week3/savepassword.sh;;
 #Read a password
 "5")
 ~/CSI6203/portfolio/week2/secret.txt;;
 #Print newest file
 "6")
 ~/CSI6203/portfolio/week3/Task4.sh;;
 #Calculator
 "7")
 ~/CSI6203/portfolio/week4/Calculator.sh;;
 #Internet Downloader
 "8")
 ~/CSI6203/portfolio/week5/InternetDownloader.sh;;
 #Read a file
 "9")
 ~/CSI6203/portfolio/week5/filenames.sh;;
 #print every 3rd number from 1 to 1000
 "10")
 ~/CSI6203/portfolio/week5/Loop.sh;;
 
 *)
 #Error message for unknown number
 echo "Unknown number";;

esac

exit 0