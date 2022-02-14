#!/bin/bash

#
# Written by Justin Powell
# 02/14/2022
#
# Designed to move a large number of files denoted by some value 'i' 
# As configured you will also create a folder for the 'i' value if it doesn't already exist
#
# Any filename or directory inside of < > should be changed to your value
# If you are uncertain of how the script works, research first to avoid data loss
#

# Set the largest value for 'i' in your given list
END=15000

# Loop over all values of 'i' starting at the value assigned as i=X. Change X to changer where the process starts
for ((i=1;i<=END;i++));
do
	# Set the FILE variable
	FILE=<currentfile>.$i.zip
	# If the file exist, we will then make the directory and move the file
	if [ -f "$FILE" ];
	then
		# Make a directory for the file if desired (comment out otherwise)
		echo
		echo "making <your/desired/path/>$i directory";
		mkdir <your/desired/path/>$i && chown <owner>:<group> <your/desired/path/>$i && chmod 644 <your/desired/path/>$i;
		# Moves the file from the current location to the new location
		echo "moving <currentfile>.$i.zip to <your/desired/path>/$i/<currentfile>$i.zip";
		mv <currentfile>.$i.zip <your/desired/path>/$i/<yourfile>$i.zip;
	fi

done
