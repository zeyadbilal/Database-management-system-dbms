#!/bin/bash
valid=0
if [[ $tablename=[a-zA-Z]*([a-z] | [_-] | [0-9] | [A-Z] ) ]];
then
	if [[ $1 -eq 0 ]]; #for create table 0
	then
		if ! [[ -e ~/DB/$dbname/$tablename ]];
		then
			valid=1
		else
			echo "╔══════════════════════════════════════════════════════════╗"
			echo "║                    ❗ ERROR MESSAGE                      ║"
			echo "╠══════════════════════════════════════════════════════════╣"
			echo "║                                                          ║"
			echo "║    Table [$tablename] is already exists!                 ║"
			echo "║    Please choose a different name.                       ║"
			echo "║                                                          ║"
			echo "╚══════════════════════════════════════════════════════════╝"
		fi
	elif [[ $1 -eq 1 ]]; #for all
	then
		if ! [[ -e ~/DB/$dbname/$tablename ]];
		then
			echo "╔══════════════════════════════════════════════════════════╗"
			echo "║                    ❗ ERROR MESSAGE                      ║"
			echo "╠══════════════════════════════════════════════════════════╣"
			echo "║                                                          ║"
			echo "║    Table [$tablename] is not exist!                      ║"
			echo "║    Please check the table name and try again.            ║"
			echo "║                                                          ║"
			echo "╚══════════════════════════════════════════════════════════╝"

		
		else
			valid=1
		fi
	fi
else 
	echo "╔══════════════════════════════════════════════════════════╗"
	echo "║                    ⚠ WARNING MESSAGE                     ║"
	echo "╠══════════════════════════════════════════════════════════╣"
	echo "║                                                          ║"
	echo "║    The table name must not contain special characters.   ║"
	echo "║    Please use only letters, numbers, and underscores.    ║"
	echo "║                                                          ║"
	echo "╚══════════════════════════════════════════════════════════╝"
fi

		
