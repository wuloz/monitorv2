#!/bin/bash

printf "%-28s %s\n" "┌--------------------------------┐"
printf "%-28s %s\n" "|--------------SIEC--------------|"
printf "%-28s %s\n" "|-----------ls_monitor-----------|"
printf "%-28s %s\n" "└--------------------------------┘"
printf "%-28s %s\n" ""
printf "%-28s %s\n" "┌--------------------------------┐"
x=1;
while [ $x -le 1 ] ; do
#siec
printf "%-1s %-7s %-6s %-15s %-1s %s\n" "|" "Karta" ">" "$nazwa1" "|"
printf "%-1s %-7s %-6s %-15s %-1s %s\n" "|" "IP" ">" "$ip1" "|"
printf "%-1s %-7s %-6s %-15s %-1s %s\n" "|" "MAC" ">" "$mac1" "|"
x=$[x + 1]
done
printf "%-28s %s\n" "└--------------------------------┘"

printf "%-28s %s\n" " "
printf "%-28s %s\n" "NAPISZ "exit" JESLI CHCESZ POWROCIC DO MENU GLOWNEGO"
printf "%-28s %s\n" "NAPISZ "again" ABY ODTWORZYC SKRYPT NA NOWO"

read exit
	case "$exit" in
	exit)
		clear
		bash menu.sh
	;;
	again)
		clear
		bash SIEC.sh
	;;
	*)
	clear
	echo "eRRor: Odpowiedz niepoprawna"
	sleep 2
	clear
	bash SIEC.sh
	esac


