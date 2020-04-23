#!/bin/sh
clear

i=0
prev=2

while [ $i -lt 1 ];
do

	button=$(gpio read 0)
	if [ $button -ne $prev ]; then
        	clear
	fi
	
	if [ $button -eq 1 ]; then
		tail -n 1 /var/tmp/logs/73.78.219.44;
	else
		fbwrite /pics/yingyang.ppm
        fi
	sleep 1;
        
	prev=$button
done

exit 1
