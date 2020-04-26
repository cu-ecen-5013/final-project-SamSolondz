#!/bin/sh
clear

i=0
prev=2

temp=/var/tmp/logs/73.77.121.119
img=/var/tmp/logs/71.205.27.171

while [ $i -lt 1 ];
do

	button=$(gpio read 0)
	if [ $button -ne $prev ]; then
        	clear
	fi
	
	if [ $button -eq 0 ]; then
		if [ -f "$temp" ]; then
			tail -n 1 /var/tmp/logs/73.77.121.119
		else
			echo "No temperature data"
		fi
	else
		if [ -f "$img" ]; then
			fbwrite /var/tmp/logs/71.205.27.171
        	else
			echo "No image data"
		fi
	fi
	sleep 1;
        
	prev=$button
done

exit 1
