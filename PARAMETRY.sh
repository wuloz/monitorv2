#!/bin/bash

info()

{
	os=$(uname)
	procesor=$(cat /proc/cpuinfo |grep "model name" |head -n 1| cut -f2 -d:|awk '{print $1}')
	model=$(cat /proc/cpuinfo |grep "model name" |head -n 1| cut -f2 -d:|awk '{print $4}')
	czesto=$(cat /proc/cpuinfo |grep "model name" |head -n 1| cut -f2 -d:|awk '{print $6}')
	rdzenie=$(cat /proc/cpuinfo |grep "model name" | wc -l)
	ram=$(free -m |grep [0-9]|head -n 1|awk '{print $2}')
	hdd=$(df -H | grep ^/dev/ |cut -f3 -d '/'|awk '{print $1}'|xargs)
}



printf "%-28s %s\n" "┌----------------------┐"
printf "%-28s %s\n" "|-------PARAMETRY------|"
printf "%-28s %s\n" "|------ls_monitor------|"
printf "%-28s %s\n" "└----------------------┘"
printf "%-28s %s\n" ""
printf "%-28s %s\n" "┌----------------------┐"
x=1;
while [ $x -le 1 ] ; do
info
printf "%-1s %-7s %-6s %-4s %s\n" "|" "system" " >" "$os" "|"
x=$[x + 1]
done

y=1;
while [ $y -le 1 ] ; do
info
printf "%-1s %-14s %-5s %s\n" "|" "procesor >" "$procesor" "|"
y=$[ y + 1 ]
done

a=1;
while [ $a -le 1 ] ; do
info
printf "%-1s %-8s %-5s %-5s %-1s %s\n" "|" "model" ">" "$model" "|"
a=$[ a + 1 ]
done

g=1;
while [ $g -le 1 ] ; do
info
printf "%-1s %-8s %-9s %-1s %-1s %s\n" "|" "czesto." ">" "$czesto" "|"
g=$[ g + 1 ]
done

h=1;
while [ $h -le 1 ] ; do
info
printf "%-1s %-8s %-5s %-5s %-1s %s\n" "|" "rdzenie" ">" "$rdzenie" "|"
h=$[ h + 1 ]
done

s=1;
while [ $s -le 1 ] ; do
info
printf "%-1s %-8s %-5s %-5s %-0s %s\n" "|" "RAM" ">" "$ram" "└" "--------┐"
s=$[ s + 1 ]
done

k=1;
while [ $k -le 1 ] ; do
info
printf "%-1s %-8s %-5s %-11s  %s\n" "|" "HDD" ">" "$hdd" "|"
k=$[ k + 1 ]
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
		bash PARAMETRY.sh
	;;
	*)
	clear
	echo "eRRor: Odpowiedz niepoprawna"
	sleep 2
	clear
	bash PARAMETRY.sh
	esac

