#!/bin/bash

PS3="╰─> Enter DB operation number (1-5): "
select choice in "CreateDB" "ConnectDB" "ListDB" "DropDB" "Exit";
do
	case $REPLY in 
		1)
			source CreateDB.sh
			break;;
		2)
			source ConnectDB.sh
			break;;
		3)
			source ListDB.sh
			break;;
		4)
			source DropDB.sh
			break;;
		5)
			break;;
		*)
			echo "╔══════════════════════════════════════════════════════════╗"
			echo "║                  ❌ ERROR: WRONG CHOICE                  ║"
			echo "╠══════════════════════════════════════════════════════════╣"
			echo "║                                                          ║"
			echo "║   The selected option is not valid.                      ║"
			echo "║   Please enter a correct number from the menu.           ║"
			echo "║                                                          ║"
			echo "╚══════════════════════════════════════════════════════════╝";;
	esac
done

