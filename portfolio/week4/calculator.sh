# !/bin/bash 
#Student Id "10497312"

# Take user Input numbers
read -p  "Enter first numbers : " a
read -p  "Enter second numbers : " b



# Input type of operation 
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch 

# Switch character for Case to perform 
# calulator operations 
case $ch in

  1)result=`echo $a + $b | bc` 
echo -e "\033[34m$res\033[0m"


;; 
2)result=`echo $a - $b | bc` 
echo -e "\033[32m$res\033[0m"
;; 


3)result=`echo $a \* $b | bc` 
echo -e "\033[31m$res\033[0m"
;; 

4)result=`echo "scale=2; $a / $b" | bc` 
echo -e "\033[35m$res\033[0m"
;; 

esac

