#!/usr/bin/bash

# Make sure clamshell mode stays on after sway reload
if grep -q open /proc/acpi/button/lid/LID/state; then
	swaymsg output eDP-1 enable
else
	swaymsg output eDP-1 disable
fi
