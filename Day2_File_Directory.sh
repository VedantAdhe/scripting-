#!/bin/bash


#Author : Vedant adhe

#Date : 04 Aug 2023


echo "--------------------------------------------------------------------------------------------------"
echo -e "\tWelcome to the Interactive File and Directory Explorer!"
echo "--------------------------------------------------------------------------------------------------"

sleep 2s
echo ""

# Display Files and Directory in human readable formant


read -p "Enter the path where you want to list file and directories: "path


if [[$path =="" ]]
then
	echo "exiting... No path Specified!!!"
	sleep 2s
	echo """Usage:
	Example:
	Specify path like this ----> $PWD
	"""
	exit 1;

fi


echo "File and Directories in the $path:"

sleep 5s

files=$(ls --1h $path | qwk 'NR==2,NR==$NF{print $9,"("$5")"}')
echo -e "\n$files"
echo ""


#part 2

while :
do
	read -p " Enter a line of text (press Enter without text to exit ):" inp
        characters=$(echo $inp | wc | awk '{print $3}')
	if [[ $characters == 1 ]]
	then
		echo "Exiting.."
		sleep 50s
		exit 1;
	else
		sleep 20s
		echo "Character count : $characters"
	fi

done






