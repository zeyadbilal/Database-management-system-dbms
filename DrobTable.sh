#!/bin/bash
while true 
do
	read -p "[$dbname] Drob table <tablename>: "tablename
       	source TableValidation.sh 1
	if [[ $valid -eq 1 ]];
	then
		break
	fi

done
rm ~/DB/$dbname/$tablename
rm ~/DB/$dbname/$tablename.meta
echo "╔══════════════════════════════════════════════════════════╗"
echo "║                    ✅ SUCCESS MESSAGE                    ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║                                                          ║"
echo "║    Table [$tablename] is removed successfully.           ║"
echo "║                                                          ║"
echo "╚══════════════════════════════════════════════════════════╝"
source QueryMenu.sh
