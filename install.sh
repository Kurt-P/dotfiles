#!/bin/sh

##This is just a little script to cp all of the *.bak files over to the 
##/home/$USER/ directory. I don't know if it'll work. I'll have to test it out.

echo "Staring copy"
cp bashrc.bak ~/.bashrc
cp gitconfig.bak ~/.gitconfig
cp vimrc.bak ~/.vimrc
echo "Finished copy"
