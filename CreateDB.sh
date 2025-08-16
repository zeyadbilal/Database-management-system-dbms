#!/bin/bash

while true;
do 
	read -p -r "Create DataBase <Enter DataBase Name>: " dbname
	source DatabaseValidation.sh 0
	if [[ $valid -eq 1 ]] ;
	then
		break
	fi
done

mkdir ~/DB/$dbname
echo "╔════════════════════════════════════════════════════════╗"
echo "║ 🎉 CONGRATULATIONS!                                    ║"
echo "║                                                        ║"
echo "║   Database: $dbname                                    ║"
echo "║   Status: Added Successfully                           ║"
echo "║   Date: $(date)                                        ║"
echo "╚════════════════════════════════════════════════════════╝"
source DBMenu.sh




