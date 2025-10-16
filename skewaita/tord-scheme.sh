#! /bin/bash

# This file contains a color scheme for ClearCrystal dark (default)
# To use it, follow these steps:
#  1. execute ./use_scheme.sh <this_file_name>
#     (this processes templates to create some files, which are then copyied to their respective source directory) 
#  2. go up one directory, to "source", and execute "./compile.sh light" or "./compile.sh dark" depending on whether the theme is light or dark


# KvCyan: dark cyan, with brighter cyan accents, readable and easy on the eyes, based on Kvantum's KvCyan theme.

vwindow_fg="#ffffff"
vwindow_bg="#692626" # Primary
vtext_widget_fg=$vwindow_fg
vtext_widget_bg="#271e1e" # Secondary

vselected_fg=$vwindow_fg
vselected_bg="#8c0000" # button active

vbutton_fg=$vtext_widget_fg
vbutton_bg="#602222" # buttons
vbutton_checked_bg=$vselected_bg
vbutton_checked_fg=$vselected_fg


vdisabled_fg="#A7A7A7" # diabled text
vdisabled_bg="#333333" # disabled bg

# Usually an automatic fg color on these backgrounds should check this value!

vwarningc="#CC0000"
verrorc="#1F5FAA"
vsuccessc="#009933"


vtitlebar_active_fg=$vselected_fg
vtitlebar_active_bg=$vwindow_bg

vtitlebar_backdrop_fg=$vwindow_fg
vtitlebar_backdrop_bg=$vwindow_bg

vhint_fg="#BA7B3E" # tooltip text
vhint_bg="#5a371e" # tooltip bg

vosd_fg=$vhint_fg
vosd_bg=$vhint_bg

vlink_fg=$vhint_fg
vlink_visited_fg="#0099CC"

vbutton_radius="0px"
vwindow_radius="0px"


# export	vwindow_fg	vwindow_bg	vtext_widget_fg	vtext_widget_bg		vselected_fg	vselected_bg		vbutton_fg	vbutton_bg	vbutton_checked_bg	vbutton_checked_fg			vdisabled_fg	vdisabled_bg				vwarningc	verrorc	vsuccessc			vtitlebar_active_fg	vtitlebar_active_bg		vtitlebar_backdrop_fg	vtitlebar_backdrop_bg		vhint_fg	vhint_bg		vosd_fg	vosd_bg		vlink_fg	vlink_visited_fg

