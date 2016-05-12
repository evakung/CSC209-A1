#!/bin/bash

#999139640
#Michelle Liao
#g3michhy

#998137573
#Fan-Yi Kung
#c2kungfa



number=$((RANDOM%64+1)) #random number between 1-64
count=1

echo "Welcome to the numer game."
echo "Guess a number netweem 1 and 64 (inclusive)"

while [ $count -le 6 ]; do
        read guess      #reading user's guess
        if  [ $guess -eq $number ]; then
                echo "you win"
                exit 1
        else
                #>&2 for standard error for wrong answer
                if [ $guess -le $number ]; then
                        echo "Too small" >&2
                        echo "Try Again" >&2
                else
                        echo "Too Big" >&2
                        echo "Try Again" >&2
                fi
                count=$(($count + 1))
        fi
done

echo "You lost"
echo "The number was $number"