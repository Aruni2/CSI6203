 #give the editing message
echo -e "editing file..."
#Next sed command to insert a newline &assign the output for a variable
OutPut=$(sed -i '/Linux/i\The next line contains the word Linux!'$1)
#Appear the success message
echo "Done!" 
