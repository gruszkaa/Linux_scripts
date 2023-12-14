#!/bin/bash

# Wykonaj catkin_make
catkin_make

# Wykonaj source ./devel/setup.bash w każdym otwartym terminalu
terminal_list=$(xdotool search --class gnome-terminal)  # Znajdź wszystkie otwarte terminale

for terminal_id in $terminal_list; do
    xdotool windowactivate --sync $terminal_id  # Aktywuj terminal
    xdotool type "source ./devel/setup.bash"  # Wprowadź komendę
    xdotool key Return  # Wciśnij Enter
done
