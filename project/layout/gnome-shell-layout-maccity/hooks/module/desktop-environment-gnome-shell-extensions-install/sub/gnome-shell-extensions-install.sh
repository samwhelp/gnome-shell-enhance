

sub_gnome_shell_extensions_all_install () {

	sub_gnome_shell_extensions_all_install_via_gext

}

sub_gnome_shell_extensions_all_install_via_gext () {

	echo sub_gnome_shell_extensions_all_install_via_gext

	sys_gnome_shell_extensions_each_install_via_gext "blur-my-shell@aunetx"

}

sys_gnome_shell_extensions_each_install_via_gext () {

	local the_extension_id="${1}"

	gext -F install "${the_extension_id}"

}
