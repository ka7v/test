#!/bin/bash

ARRAY=$*
#echo "$ARR"

#for i in $ARR
#do
#	ARRAY+=($i)
#done
echo "$ARRAY"
echo "${ARRAY[@]}"


for ((i=0;i<${#ARRAY[@]};i++))
do
	if [[ $ARRAY[$i] > $ARRAY[$i+1] ]]; then
		echo "$ARRAY[$i] > $ARRAY[$i+1]"
		CHECK+=($ARRAY[$i])
		echo "$CHECK"
	else
		echo "$ARRAY[$i] < $ARRAY[$i+1]"
	fi
done


