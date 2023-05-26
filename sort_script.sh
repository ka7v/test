#!/bin/bash

#ARRAY=($(cat /etc/passwd | awk 'BEGIN{FS=":"} {print $3}'))
#ARRAY1=($(cat /etc/passwd))
#echo $ARRAY1
#echo "$ARRAY"
ARRAY=(555 10 11 4 333 577)


for (( i=0; i<${#ARRAY[@]}; i++ ))
do
	for (( j=0; j<${#ARRAY[@]}-i-1; j++ ))
	do
		if [[ ${ARRAY[j]} -gt ${ARRAY[$((j+1))]} ]]
	       	then
			temp=${ARRAY[j]};
			$ARRAY{$j}=${ARRAY[$((j+1))]};
			$ARRAY[$j+1]=$temp;
		fi
	done
done

echo $ARRAY
