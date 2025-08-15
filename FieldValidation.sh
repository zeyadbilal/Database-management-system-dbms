#!/bin/bash
valid=0
if [[ $fieldname=[a-zA-Z]*([a-z] | [A-Z] | [0-9] | [_-] ) ]];
then
	if [[ $1 -eq 0 ]]; #for create field
	then
		if ! [[ $(cut -d":" -f 1 $tablename".meta" | grep -w "^$fieldname$") ]];
		then
			valid=1
		else
			echo "╔══════════════════════════════════════════════════════════╗"
			echo "║                    ❗ ERROR MESSAGE                      ║"
			echo "╠══════════════════════════════════════════════════════════╣"
			echo "║                                                          ║"
			echo "║    Field [$fieldname] is already exist!                  ║"
			echo "║    Please choose a different field name.                 ║"
			echo "║                                                          ║"
			echo "╚══════════════════════════════════════════════════════════╝"

		fi
	elif [[ $1 -eq 1 ]]; #for all
	then
		if ! [[ $(cut -d":" -f 1 $tablename".meta" | grep -w "^$fieldname$") ]]; # echo $? for condition
		then
			echo "╔══════════════════════════════════════════════════════════╗"
			echo "║                    ❗ ERROR MESSAGE                      ║"
			echo "╠══════════════════════════════════════════════════════════╣"
			echo "║                                                          ║"
			echo "║    Field [$fieldname] is not exist!                      ║"
			echo "║    Please check the field name and try again.            ║"
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
	echo "║    The database name must not contain special characters.║"
	echo "║    Please use only letters, numbers, and underscores.    ║"
	echo "║                                                          ║"
	echo "╚══════════════════════════════════════════════════════════╝"
fi




