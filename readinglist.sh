#!/bin/bash

if [ $# -eq 0 ]
    then
       echo "No argument supplied"
    else
        if [ "$1" = "init" ]
            then
                cat ReadingList.html | grep -E -o '(http|https)://[^"]+' > .readinglist && echo "Initialization successful" 
        fi
        if [ "$1" = "random" ]
            then
                cat /Users/tomshlomi/Scripts/ReadingList/.readinglist | shuf -n 1 | xargs open
        fi
        if [ "$1" = "next" ]
            then
                cat /Users/tomshlomi/Scripts/ReadingList/.readinglist | head -n 1 | xargs open
        fi
fi
