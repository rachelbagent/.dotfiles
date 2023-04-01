#!/bin/bash


#tells the system that it should run the following commands using bash
#uname >> linuxsetup.log #Assigns the output of the uname command to the variable check
cd ~
CHECK=$(uname -s)
if (($CHECK = "Linux")) #If the output of uname is not equal to linux, this runs
then
 #If the if statement isn't applicable, this runs
	mkdir -p .TRASH #makes the trash directory if it doesn't already exist
        #=/~/.vimrc #assigns the .vimrc file to a variable
	if ((-e .vimrc)) #if the file exists in the home directory, this statement runs
	then
		mv .vimrc .bup_vimrc #Changes the name to .bup_vimrc
		echo ".vimrc file was changed to .bup_vimrc" >> linuxsetup.log
		#Echoes this statement to the linuxsetup.log file
	fi #ends the if statement
	cat ~/.dotfiles/etc/vimrc > ~/.vimrc #Prints out the entire vimrc file and overwrites it to the .vimrc file in the home directory
	echo "source ~/.dotfiles/etc/bashrc_custom" >> .bashrc #Echoes this statement and appends it to the end of the .bashrc file in my home directory
else
	uname -s 2> linuxsetup.log #The error message of uname is redircted to linuxsetup.log
	exit #The program exits
fi
