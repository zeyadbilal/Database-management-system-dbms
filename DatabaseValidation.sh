#!/bin/bash

valid=0
if [[ $dbname = [A-Za-z]*([a-z]|[A-Z]|[0-9]|[_-]) ]];
then
	if [[ $1 -eq 0 ]];
	then
		if ! [[ -e ~/DB/$dbname ]];
		then
			valid=1
		else
			echo "╔══════════════════════════════════════════════════════════╗"
			echo "║                DATABASE CREATION ERROR                   ║"
			echo "╠══════════════════════════════════════════════════════════╣"
			echo "║                                                          ║"
			echo "║   Database name: ["$dbname"]                             ║"
			echo "║   Status: Already exists in the system                   ║"
			echo "║                                                          ║"
			echo "║   Please try another name or delete the existing one.    ║"
			echo "╚══════════════════════════════════════════════════════════╝"
		fi

	elif[[ $1 -eq 1 ]];
	then
        	if ! [[ -e ~/DB/$dbname ]];
        	then
            		echo "╔══════════════════════════════════════════════════════════╗"
			echo "║               DATABASE ACCESS ERROR                      ║"
			echo "╠══════════════════════════════════════════════════════════╣"
			echo "║                                                          ║"
			echo "║   Database name: ["$dbname"]                             ║"
			echo "║   Status: Not found in the system                        ║"
			echo "║                                                          ║"
			echo "║   Possible solutions:                                    ║"
			echo "║   1. Check spelling                                      ║"
			echo "║   2. Create the database first                           ║"
			echo "║   3. List available databases                            ║"
			echo "╚══════════════════════════════════════════════════════════╝"
        	else
           		 valid=1
        	fi
	fi
else
	echo "╔════════════════════════════════════════════════════════╗"
	echo "║ ⚠️  INVALID DATABASE NAME                               ║"
	echo "║                                                        ║"
	echo "║   Error: Special characters detected                   ║"
	echo "║   Allowed: A-Z, a-z, 0-9, _- only                      ║"
	echo "╚════════════════════════════════════════════════════════╝"
fi



