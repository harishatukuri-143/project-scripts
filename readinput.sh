!#/bin/bash


echo "Please enter the name : "

read name 

echo "Hello , $name Nice to meet you !"



read -p " enter the message " message 


#-p used for the prompt message 

read -s -p " enter the password " password 

# -s used for the hides input 


read -t 5 -p " enter something in 5 seconds :" timed_input

echo " you entered : $timed_input 
