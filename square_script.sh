#!/bin/bash

echo -n "Enter size for square:"
read COUNT

for ((i=0;i<$COUNT;i++))
do
	ARR[$i]="*"
done

for ((j=0;j<$COUNT;j++))
do
	echo "${ARR[@]}"
done


	
	
