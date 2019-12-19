#!/bin/bash

menu()
{
parametry=$(bash PARAMETRY.sh)
ram=$(bash RAM.sh)
uslugi=$(bash USLUGI.sh)
hdd=$(bash HDD.sh)
}

printf "%-28s %s\n" "┌--------------------------┐"
printf "%-28s %s\n" "|-------MENU_GLOWNE--------|"
printf "%-28s %s\n" "|--------ls_monitor--------|"
printf "%-28s %s\n" "└--------------------------┘"
printf "%-28s %s\n" ""
printf "%-28s %s\n" "┌--------------------------┐"
printf "%-28s %s\n" "|----------1.RAM-----------|"
printf "%-28s %s\n" "|--2.PARAMETRY KOMPUTERY---|"
printf "%-28s %s\n" "|---------3.USLUGI---------|"
printf "%-28s %s\n" "|---------4.DYSKI HDD------|"
printf "%-28s %s\n" "|---------5.DANE-----------|"
printf "%-28s %s\n" "|---------6.SIEC-----------|"
printf "%-28s %s\n" "└--------------------------┘"
printf "%-28s %s\n" " "
printf "%-28s %s\n" "ABY WYBRAC ZAKLADKE, WPISZ ODPOWIADAJACA JEJ CYFRE"
printf "%-28s %s\n" "ABY ODPALIC SKRYPT PONOWNIE,WPISZ 'again' "
	read answer

	case "$answer" in
		1)
			clear
			bash RAM.sh
		;;
		2)
			clear
			bash PARAMETRY.sh
		;;	
		3)
			clear
			bash USLUGI.sh
		;;
		4)
			clear
			bash HDD.sh
		;;
		5)
			clear
			bash DANE.sh
		;;
		6)
			clear
			bash SIEC.sh
		;;
		again)
			clear
			bash menu.sh
		;;
		*)
		clear
		echo "Nie uwzglednilem takiej opcji"
		sleep 2
		clear
		bash menu.sh
		;;
	esac
sleep infinity
