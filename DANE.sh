#!/bin/bash

statlan()

{

vnstat > /tmp/lan.tmp
odebrane=$(cat /tmp/lan.tmp|grep "18"|awk '{ print $1 }')
odebrane2=$(cat /tmp/lan.tmp|grep "18"|awk '{ print $4 }')
wyslane=$(cat /tmp/lan.tmp|grep "18"|awk '{ print $6 }')
wyslane2=$(cat /tmp/lan.tmp|grep "18"|awk '{ print $7 }')

odebrane3=$(echo $odebrane $odebrane2)
wyslane3=$(echo $wyslane $wyslane2)

}


printf "%-28s %s\n" "┌----------------------------------┐"
printf "%-28s %s\n" "|-------DANE WYSLANE/ODEBRANE------|"
printf "%-28s %s\n" "|------------ls_monitor------------|"
printf "%-28s %s\n" "└----------------------------------┘"
printf "%-28s %s\n" ""
printf "%-28s %s\n" "┌----------------------------------┐"

x=1
while [ $x -le 1 ] ; do
statlan
printf "%-6s %-10s %-5s %-10s %-1s  %s\n" "|" "Odebrane" "|" "Wyslane" "|"
printf "%-1s %-15s %-1s %-14s %-1s %s\n" "|" "$odebrane3" "|" "$wyslane3" "|"
x=$[x + 1]
done

printf "%-28s %s\n" "└----------------------------------┘"

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
		bash DANE.sh
	;;
	*)
	clear
	echo "eRRor: Odpowiedz niepoprawna"
	sleep 2
	clear
	bash DANE.sh
	esac


