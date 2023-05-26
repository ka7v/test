#!/bin/bash

FILE=$1

#FIRST=`cat $FILE | awk '{print substr ($0, 2, 1)}'`

while read -r line;
do
	echo -e "${line:1:1}${line:6:1}"
done < $FILE





