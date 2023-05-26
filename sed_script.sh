#!/bin/bash

function usage() {
	echo "USAGE: $0 [file-path] [-f } --fix] [-h | --help]"
	exit 1
}

FIX=0

if [ $# -eq 0 ]; then
	usage
fi

while [ $# -gt 0 ]
do
	case "$1" in
		-f|--fix )
			FIX=1
			shift
			;;
		-h|--help )
			usage
			shift
			;;

		* )
			if [ -f "$1" ]; then
				FILE="$1"
				shift
			else
				usage
			fi
			;;
	esac
done

if [ $FIX -eq 1 ] && [ -f "$FILE" ]; then
	echo "Fixing spaces and tabs at the beginning and at the and of lines"
	sed -i 's/[[:blank:]]\+$//' "$FILE"
	sed -i 's/^[[:blank:]]\+//' "$FILE"
	echo "Done"
fi


if [ -f "$FILE" ]; then
	LINES=0
	REGEX_START="^[[:blank:]]+"
	REGEX_END="[[:blank:]]+$"


	while IFS= read -r line
	do
		let LINES++
		echo "$line" | sed -e '/[[:blank:]]\+$/q9' -e '/^[[:blank:]]\+/q7' >/dev/null
		if [ $? -eq 0 ]; then
			printf %4s "LINES:" >> temp.txt
			echo "$line" >> temp.txt
			continue
		fi


		printf %4s "$LINES:" >> temp.txt

		if [[ "$line" =~ $REGEX_START ]]; then
			echo -e -n "\e[41m$BASH_REMATCH\e[49" >> temp.txt
		fi


	done < "$FILE"

	cat temp.txt
	rm temp.txt

fi




