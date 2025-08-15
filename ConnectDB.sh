#!/bin/bash

while true;
do
	read -r -p "Connect DateBase <Enter DataBase Name>: " dbname
	source DatabaseValidation.sh 1
	if [[ $valid -eq 1 ]];
	then
		break
	fi
done

cd ~/DB/$dbname
echo "╔════════════════════════════════════════════════════════╗"
echo "║ 🟢 DATABASE CONNECTION ESTABLISHED                     ║"
echo "║                                                        ║"
echo "║   Database Name: $dbname                               ║"
echo "║   Connection Status: Active                            ║"
echo "║   Date: $(date)                                        ║"
echo "╚════════════════════════════════════════════════════════╝"
source QueryMenu.sh 



