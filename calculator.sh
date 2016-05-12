#!/bin/bash

#999139640
#Michelle Liao
#g3michhy

#998137573
#Fan-Yi Kung
#c2kungfa



value1=$1
value2=$3
operator=$2

message=$'Usage-./calculator value 1 operator value 2\nwhere\nvalue1:numeric value\nvalue2:numeric vlaue\noperator: one of +,-,/,x'
#>&2 for standard error messages

if [[ -z $* ]]; then    #if input from user is empty
        echo "$message" >&2
else
        #Checking for valid input of: value1 operator value2
        if [[ -z $operator ]]; then
                echo "$message" >&2
        else
                if [ $operator = "+" ]; then
                        echo $((value1 + value2))
                elif [ $operator = "-" ]; then
                        echo $((value1 - value2))
                elif [ $operator = "/" ]; then
                        if [ $value2 -eq 0 ]; then
                                echo "Division-by-zero Error!" >&2
                        else
                                echo $((value1 / value2))
                        fi
                elif [ $operator = "x" ]; then
                        echo $((value1 * value2))
                else
                        echo "$message" >&2
                fi
        fi

fi