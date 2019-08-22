# !/bin/bash 

# Take user Input 
read -p  "Enter first numbers : " a
read -p  "Enter second numbers : " b



# Input type of operation 
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch 

# Switch Case to perform 
# calulator operations 
case $ch in

  1)res=`echo $a + $b | bc` 
echo -e "\033[34m$res\033[0m"


;; 
2)res=`echo $a - $b | bc` 
echo -e "\033[32m$res\033[0m"
;; 


3)res=`echo $a \* $b | bc` 
echo -e "\033[31m$res\033[0m"
;; 

4)res=`echo "scale=2; $a / $b" | bc` 
echo -e "\033[35m$res\033[0m"
;; 

esac

