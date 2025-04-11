#!/bin/bash

if [ "$(acpi -a)" == "Adapter 0: on-line" ]
then
	hyprctl dispatch dpms off
fi
