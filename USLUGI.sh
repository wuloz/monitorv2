#!/bin/bash

uslugi()
{
apache=$(service apache2 status|grep "Active" |awk '{print $3 }')
#myskul=$(service mysql status|grep "Active"|awk '{print $3}')
ssh=$(service ssh status|grep "Active" |awk '{print $3}')
}

printf "%-28s %s\n" "┌----------------------------┐"
printf "%-28s %s\n" "|------------USLUGI----------|"
printf "%-28s %s\n" "|---------ls_monitor---------|"
printf "%-28s %s\n" "└----------------------------┘"
printf "%-28s %s\n" ""
printf "%-28s %s\n" "┌----------------------------┐"

x=1;
while [ $x -le 1 ] ; do
uslugi
printf "%-1s %-8s $-1s %-1s %-2s  %s\n" "|" "Apache" "-" "$ssh" "|"
x=$[x + 1]
done

c=1;
while [ $c -le 1 ] ; do
uslugi
printf "%-1s %-8s $-1s %-1s %-10s %s\n" "|" "Mysql" "-" "$myskul" "|"
c=$[c + 1]
done

u=1;
while [ $u -le 1 ] ; do
uslugi
printf "%-1s %-8s $-1s %-1s %-10s %s\n" "|" "SSH" "-" "$ssh" "|"
u=$[u + 1]
done
printf "%-28s %s\n" "└----------------------------┘"

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
		bash USLUGI.sh
	;;
	*)
	clear
	echo "eRRor: Odpowiedz niepoprawna"
	sleep 2
	clear
	bash USLUGI.sh
	esac
