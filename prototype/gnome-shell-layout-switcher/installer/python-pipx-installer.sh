#!/usr/bin/env bash




#echo "run: ${0}"


##
## ## Link
##
## * https://github.com/samwhelp/gnome-shell-adjustment/blob/main/project/gnome-shell-layout/gnome-shell-layout-basic/installer/gnome-extensions-cli/install.sh#L30
##




##
## ## Model
##

sys_python_pipx_install () {

	#sys_python_pipx_install_for_ubuntu

	sys_python_pipx_install_for_debian

	#sys_python_pipx_install_for_fedora

	#sys_python_pipx_install_for_archlinux

	#sys_python_pipx_install_for_voidlinux


	return 0
}

sys_python_pipx_install_for_ubuntu () {

	sudo apt-get install pipx

}

sys_python_pipx_install_for_debian () {

	sudo apt-get install pipx

}

sys_python_pipx_install_for_fedora () {

	sudo dnf install pipx

}

sys_python_pipx_install_for_archlinux () {

	sudo pacman -Sy --needed python-pipx

}

sys_python_pipx_install_for_voidlinux () {

	sudo xbps-install -Su python3-pipx

}




##
## ## Portal
##

mod_python_pipx_install () {

	sys_python_pipx_install

}


##
## ## Main
##

__main__ () {

	mod_python_pipx_install

}

__main__
