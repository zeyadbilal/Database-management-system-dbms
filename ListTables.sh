#!/bin/bash
#shopt -s extglob
echo "╔══════════════════════════════════════════════════════════╗"
echo "║               📋 All Tables In [$dbname] database        ║"
echo "╠══════════════════════════════════════════════════════════╣"
ls -I "*.meta" | column #list all thing except the match pattern
echo "╚══════════════════════════════════════════════════════════╝"
source QueryMenu.sh
