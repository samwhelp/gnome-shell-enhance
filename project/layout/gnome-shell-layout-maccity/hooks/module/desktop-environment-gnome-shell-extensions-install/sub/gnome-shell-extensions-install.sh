

sub_gnome_shell_extensions_all_install () {

	sub_gnome_shell_extensions_all_install_via_gext

}

sub_gnome_shell_extensions_all_install_via_gext () {

	echo sub_gnome_shell_extensions_all_install_via_gext

	local the_extension_list=${opt_gnome_shell_extensions_install}

	local the_extension_id

	for the_extension_id in ${the_extension_list}; do

		sys_gnome_shell_extensions_each_install_via_gext "${the_extension_id}"

	done

}

sys_gnome_shell_extensions_each_install_via_gext () {

	local the_extension_id="${1}"

	gext -F install "${the_extension_id}"

}
