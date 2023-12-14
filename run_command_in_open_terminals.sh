#The provided Bash script automates the execution of a command in all open GNOME Terminal windows. #It first identifies the open terminals using the xdotool command, then iterates through each #terminal window, activates it, types a specified command ("<cmd2_name>") into the terminal, and #presses Enter to execute the command.


#!/bin/bash

#Do <cmd_name> <--it's a cmd that is triggering <cmd2_name> in open terminals
<cmd_name>

# Do <cmd2_name> in every open Linux's terminal window
terminal_list=$(xdotool search --class gnome-terminal)  # Looking for opened terminals

for terminal_id in $terminal_list; do
    xdotool windowactivate --sync $terminal_id  # Activating terminal
    xdotool type "<cmd2_name>"  #Type given commend
    xdotool key Return  # Press enter
done

#EXAMPLE:
##!/bin/bash
#catkin_make

#terminal_list=$(xdotool search --class gnome-terminal) 

#for terminal_id in $terminal_list; do
#    xdotool windowactivate --sync $terminal_id
#    xdotool type "source ./devel/setup.bash" 
#    xdotool key Return  
#done
