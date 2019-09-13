#!/bin/bash

#Student Id "10497312"
#Week3 Task5

echo "1. Create a folder
      2. List files in a folder 
      3. Copy a folder
      4. Save a password
      5. Read a password
      6. Print newest file"

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
 ~/CSI6203/portfolio/week3/secret.txt;;
 #Print newest file
 "6")
 ~/CSI6203/portfolio/week3/Task4.sh;;
 *)
 #Error message for unknown number
 echo "Unknown number";;

esac

exit 0