#!/bin/bash


#tells the terminal what to read the following commands in
rm -r ~/.vimrc #removes the .vimrc file in my home directory
sed 's/source ~/.dotfiles/bashrc_custom//' ~/.bashrc #removes the specified string from the file at the end of the line
rm -r ~/.TRASH #removes the trash directory and all of its contents


