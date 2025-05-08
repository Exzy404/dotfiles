#!/bin/bash

red=$(nmcli -t -f ACTIVE,SSID dev wifi | grep ^sí | cut -d: -f2)

if [ -z "$red" ]; then 
	red=$(nmcli -t -f NAME connection show --active | grep -i "ethernet" || echo "Deesconectado")
	fi

notify-send "$red"
