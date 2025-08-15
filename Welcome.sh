#!/bin/bash

# Auther : Zeyad Bilal &&   Abdelaziz Hassan
# Creted Time : 15 / 8 / 2025
# Last Modified : 15 / 8 /205 


shopt -s extglob
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║                   WELCOME TO OUR DBMS PROJECT                    ║"
echo "║                  Manage Your Data Efficiently!                   ║"
echo "╚══════════════════════════════════════════════════════════════════╝"

PS3="===> Enter your choice number: "
select choice in "Enter to DBMS system" "Exit";
do
	case $REPLY in
		1) if ! [[ -e ~/DB ]];
           	   then
               		 mkdir ~/DB
            	   fi
		   cd ~/DB
	           echo "===================================================================="
                   source DBMenu.sh                         
                   break;;
		2)
	           break;;
		*)
		   echo "╔══════════════════════════════════════════════════════════════════╗"
		   echo "║                           WRONG CHOICE                           ║"
		   echo "╚══════════════════════════════════════════════════════════════════╝";;
	esac

done
