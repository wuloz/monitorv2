#!/bin/bash

ram()
{
calkowita=$(free -m |grep [0-9]|head -n 1|awk '{print $2}')
wolna=$(free -m |grep [0-9]|head -n 1 |awk '{print $4}')
zajeta=$(free -m |grep [0-9]|head -n 1 |awk '{print $3}')
}

printf "%-28s %s\n" "┌--------------------------┐"
printf "%-28s %s\n" "|-------PAMIEC RAM---------|"
printf "%-28s %s\n" "|--------ls_monitor--------|"
printf "%-28s %s\n" "└--------------------------┘"
printf "%-28s %s\n" " "
printf "%-28s %s\n" "┌--------------------------┐"

y=1;
while [ $y -le 1 ] ; do
ram
printf "%-1s %-7s %-5s %-8s %s\n" "|" "calkowita" " >" "$calkowita" "|"
y=$[ y + 1 ]
done

x=1;
while [ $x -le 1 ] ; do
ram
printf "%-1s %-10s %-4s %-8s %s\n" "|" "zajeta" ">"  "$zajeta" "|"
x=$[ y + 1 ]
done

z=1;
while [ $z -le 1 ] ; do
ram
printf "%-1s %-10s %-4s %-8s %s\n" "|" "wolna" ">"  "$wolna" "|"
z=$[ z + 1 ]
done

printf "%-28s %s\n" "└--------------------------┘"
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
		bash RAM.sh
	;;
	*)
	clear
	echo "eRRor: Odpowiedz niepoprawna"
	sleep 2
	clear
	bash RAM.sh
	esac
