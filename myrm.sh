#!/bin/bash

#999139640
#Michelle Liao
#g3michhy 

#998137573
#Fan-Yi Kung
#c2kungfa

recBin="recycle-bin"


if [ ! -d $recBin ]; then
        mkdir recycle-bin     #making recycle bin directory
        echo "recycle bin made"
fi

#>&2 standard error after error message
if [[ -z $* ]]; then    #Checking if user gave any target, if not returns error message
        echo "Error:no target specified" >&2
        echo "Usage:./myrm <files>" >&2
else
        for file in $*; do #removing all specified files
                #checks if file exists or not, cannot remove a file that does not exist
                if [ -f $file ]; then
                        mv $file recycle-bin
                        echo "deleting $file"
                else
                        echo "$file does not exit" >&2
                fi
        done
fi