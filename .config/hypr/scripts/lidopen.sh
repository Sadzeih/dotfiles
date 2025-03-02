if [ "$(acpi -a)" != "Adapter 0: on-line" ]
then
	hyprctl monitor "eDP-1,2880x1800@90,0x0,1.5"
fi
