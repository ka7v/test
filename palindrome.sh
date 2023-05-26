#!/bin/bash

function check () {
	echo -n "enter word for check: "
	read WORD
	rev=$(echo $WORD | rev)
	if [ "$WORD" == "$rev" ]; then
		echo "true"
	else
		echo "false"
	fi
}

check
