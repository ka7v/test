#!/bin/bash

DIRECTORy=/home/logs
if [ -d "$DIRECTORI" ]; then
	echo "$DIRECTORI is created"
else
	mkdir $DIRECTORI
	echo "$DIRECTORI is created"
fi

