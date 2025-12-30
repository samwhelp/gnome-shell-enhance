#!/usr/bin/env bash




#echo "run: ${0}"




##
## ## Model
##

sys_gnome_shell_extensions_cli_install () {

	sys_gnome_shell_extensions_cli_install_via_pipx

}

sys_gnome_shell_extensions_cli_install_via_pipx () {

	sudo pipx install gnome-extensions-cli --global

}




##
## ## Portal
##

mod_gnome_shell_extensions_cli_install () {

	sys_gnome_shell_extensions_cli_install

}


##
## ## Main
##

__main__ () {

	mod_gnome_shell_extensions_cli_install

}

__main__
