i#!/bin/bash


#Purpose: This script will give you knowlage of comments , Variables , echo and Wildcard in shell Scripting

echo""

echo "Task 3: echo command"

echo "Hello Community"

#Declering Variables

#cho " Task 4 :variables"
num1=50
num2=50
sum=$(($sum1+$num2))


echo " Addition is of $num1 and $num2 is $sum"

#LEEP 2

#cho "Task 5 : Built-In Variables"

echo "ostName : $HOSTNAME"
echo "y home directory : $HOME"
echo "Bash version : $BASH_VERSION"
echo "hich Bash Shell You Are Using : $BASH"

#echo "

#Display .txt extension file using wildcard

list=$(ls -lrt *txt)
echo $list


