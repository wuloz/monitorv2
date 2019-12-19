#!/bin/bash

hdd()

{
nazwa1=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $1 }'|sed '1q;d')
pojemnosc1=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $2 }'|sed '1q;d')
zajete1=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $3 }'|sed '1q;d')
dostepne1=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $4 }'|sed '1q;d')
procent1=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $5 }'|sed '1q;d')
nazwa2=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $1 }'|sed '2q;d')
pojemnosc2=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $2 }'|sed '2q;d')
zajete2=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $3 }'|sed '2q;d')
dostepne2=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $4 }'|sed '2q;d')
procent2=$(df -H | grep ^/dev/ |cut -f3 -d '/'| awk '{ print $5 }'|sed '2q;d')
}

printf "%-28s %s\n" "┌-----------------------------------------------------------------------------┐"
printf "%-28s %s\n" "|-------------------------------------HDD-------------------------------------|"
printf "%-28s %s\n" "|----------------------------------ls_monitor---------------------------------|"
printf "%-28s %s\n" "└-----------------------------------------------------------------------------┘"
printf "%-28s %s\n" " "
printf "%-28s %s\n" "┌-----------------------------------------------------------------------------┐"

g=1;
while [ $g -le 1 ] ; do
hdd
printf "%-3s %-7s %-4s %-1s %-6s %-1s %-8s %-1s %-9s %-1s  %s\n" "|" "Dysk" "|" "Pojemnosc" "|" "Zajete" "|" "Dostepne" "|" "Procent" "|"
printf "%01s %-9s %-4s %-9s %-8s %-2s %-13s %-1s %-13s %-2s  %s\n" "|" "$nazwa1" "|" "$pojemnosc1" "|" "$zajete1" "|" "$dostepne1" "|" "$procent1" "|"
printf "%-1s %-6s %-4s %-9s %-9s %-1s %-12s %-s %-13s %-1s  %s\n" "|" "$nazwa2" "|" "$pojemnosc2" "|" "$zajete2" "|" "$dostepne2" "|" "$procent2" "|"
g=$[g + 1]
done

printf "%-28s %s\n" "└-----------------------------------------------------------------------------┘"

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
		bash HDD.sh
	;;
	*)
	clear
	echo "eRRor: Odpowiedz niepoprawna"
	sleep 2
	clear
	bash HDD.sh
	esac

