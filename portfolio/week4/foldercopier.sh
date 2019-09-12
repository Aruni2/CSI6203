#!/bin/bash
#Student Id "10497312"

read -p "Type the name of the folder you would like to copy: " folderName

#if the name is a valid directory
if [ -d "$folderName" ]; then

 #copy it to a new location
 read -p "Type the name of the destination folder: " newFolderName
 cp -r "$folderName" "$newFolderName"
else

 #otherwise, print an error
 echo "Couldn't find that folder"
fi