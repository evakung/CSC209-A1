#!/bin/bash


#999139640
#Michelle Liao
#g3michhy

#998137573
#Fan-Yi Kung
#c2kungfa



condition=true;

#infinit loop until requested to exit from user
#>&2 for standard error for error messages
while [ $condition ]; do
        echo "-----------------------------------------"

        echo "MAIN - MENU"

        echo "-----------------------------------------"

        echo "1. Ongoing Processor Activity"
        echo "2. Users currently logged in"
        echo "3. Number of users currently logged in"
        echo "4. Users with bash shell"
        echo "5. Exit"
        echo "-----------------------------------------"

        echo -n "Please enter option [1-5]:"

        #reading user input of either 1-5
        read option
        if [ -z $option ]; then
                echo "Wrong input, please re-enter the following options" >&2
        elif [ $option -eq 5 ]; then
                exit 1
        else
                if [ $option -eq 1 ]; then
                        top
                elif [ $option -eq 2 ]; then
                        echo `users`
                elif [ $option -eq 3 ]; then
                        echo `users | wc -w`
                elif [ $option -eq 4 ]; then
                        echo `ps aux | grep bash | grep -v grep | cut -d " " -f 1 | sort | uniq`
                else
                        echo "Wrong input, please re-enter the following options" >&2
                fi

                read -p "Press [Enter] to continue.."   #proceeding to next menu display
        fi

done

