#!/bin/bash

FILE=$1
COUNT=$2

OUT=`awk 'ORS=NR%2?FS:RS' $FILE`
echo $OUT
