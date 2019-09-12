#!/bin/bash
#Student Id "10497312"

read -p "Type the name of the folder " Foldername
if [ $Foldername = 'secret.txt' ]; then
cat $Foldername
exit 0

else

echo "The file not found"
exit 1

fi
