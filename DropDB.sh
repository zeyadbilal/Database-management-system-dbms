#!/bin/bash

while true;
do
    read -p "Drop DataBase <Enter DataBase name>: " dbname
    source DatabaseValidation.sh 1
    if [[ $valid -eq 1 ]]
    then 
        break
    fi
done

rm -r ~/DB/$dbname
echo "╔══════════════════════════════════════════════════════════╗"
echo "║ 🗑️  DATABASE DELETED SUCCESSFULLY                        ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║                                                          ║"
echo "║   Database: [$dbname]                                    ║"
echo "║   Status: Permanently removed                            ║"
echo "║   Date: $(date)                                          ║"
echo "║                                                          ║"
echo "╚══════════════════════════════════════════════════════════╝"
source DBMenu.sh


