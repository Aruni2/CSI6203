#!/bin/bash 
#Student Id "10497312"

#Ask folder name
read -p "Enter the folder name:" foldername

#make folder
mkdir "$foldername"

#ask for the password for entered folder
read -s -p "Enter the password:" password

#save password 
echo "$password" >> "$foldername/secret.txt"