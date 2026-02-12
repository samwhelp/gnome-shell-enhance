#!/usr/bin/env bash




#echo "run: ${0}"


##
## ## Link
##
## * https://github.com/samwhelp/gnome-shell-enhance/blob/main/prototype/gnome-shell-layout-installer/profile/gnome-shell-layout-maccity.sh
##




REF_GNOME_SHELL_EXTENSIONS_INSTALL=(
	"blur-my-shell@aunetx"
	"arcmenu@arcmenu.com"
	"date-menu-formatter@marcinjakubowski.github.com"
	"dash-to-dock@micxgx.gmail.com"
)




REF_GNOME_SHELL_EXTENSIONS_ENABLE=(
	"user-theme@gnome-shell-extensions.gcampax.github.com"
	"status-icons@gnome-shell-extensions.gcampax.github.com"
	"blur-my-shell@aunetx"
	"arcmenu@arcmenu.com"
	"date-menu-formatter@marcinjakubowski.github.com"
	"dash-to-dock@micxgx.gmail.com"
)




REF_GNOME_SHELL_EXTENSIONS_DISABLE=(
	"apps-menu@gnome-shell-extensions.gcampax.github.com"
	"places-menu@gnome-shell-extensions.gcampax.github.com"
	"window-list@gnome-shell-extensions.gcampax.github.com"
	"dash-to-panel@jderose9.github.com"
)




##
## ## Model
##

sys_gnome_shell_extensions_install () {

	local the_extension_list=${REF_GNOME_SHELL_EXTENSIONS_INSTALL[@]}

	local the_extension_id

	for the_extension_id in ${the_extension_list[@]}; do
		echo
		echo gext install "${the_extension_id}"
		gext install "${the_extension_id}"
		echo
	done

}

sys_gnome_shell_extensions_enable () {

	local the_extension_list=${REF_GNOME_SHELL_EXTENSIONS_ENABLE[@]}

	local the_extension_id

	for the_extension_id in ${the_extension_list[@]}; do
		echo
		echo gext enable "${the_extension_id}"
		gext enable "${the_extension_id}"
		echo
	done

}

sys_gnome_shell_extensions_disable () {

	local the_extension_list=${REF_GNOME_SHELL_EXTENSIONS_DISABLE[@]}

	local the_extension_id

	for the_extension_id in ${the_extension_list[@]}; do
		echo
		echo gext enable "${the_extension_id}"
		gext disable "${the_extension_id}"
		echo
	done

}




##
## ## Model / Config
##

sys_gnome_shell_extensions_config () {

	sys_gnome_shell_extensions_config_for_dash_to_dock

	sys_gnome_shell_extensions_config_for_arcmenu

	sys_gnome_shell_extensions_config_for_date_menu_formatter

	sys_gnome_shell_extensions_config_for_blur_my_shell

	return
}

sys_gnome_shell_extensions_config_for_dash_to_dock () {

dconf load / << __EOF__


[org/gnome/shell/extensions/dash-to-dock]
apply-custom-theme=false
autohide=false
autohide-in-fullscreen=true
background-color='#ffffff'
background-opacity=0.80000000000000004
click-action='cycle-windows'
dash-max-icon-size=36
dock-fixed=true
dock-position='BOTTOM'
extend-height=false
isolate-locations=true
middle-click-action='launch'
scroll-action='cycle-windows'
shift-click-action='previews'
shift-middle-click-action='quit'
shortcut=['']
shortcut-text=''
show-mounts=false
show-show-apps-button=true
show-trash=false
show-windows-preview=false
transparency-mode='DYNAMIC'


__EOF__

}

sys_gnome_shell_extensions_config_for_arcmenu () {

dconf load / << __EOF__


[org/gnome/shell/extensions/apps-menu]
apps-menu-toggle-menu=['<Alt>F3']


[org/gnome/shell/extensions/arcmenu]
activate-on-hover=true
arcmenu-hotkey=['<Alt>F1']
arcmenu-hotkey-overlay-key-enabled=false
enable-horizontal-flip=true
force-menu-location='Off'
hide-overview-on-startup=false
hotkey-open-primary-monitor=false
#menu-button-icon='start-here'
menu-item-grid-icon-size='Default'
menu-item-icon-size='Large'
menu-layout='Whisker'
override-menu-theme=false
position-in-panel='Left'
prefs-visible-page=0
searchbar-default-top-location='Bottom'
show-activities-button=false
vert-separator=true


__EOF__

}

sys_gnome_shell_extensions_config_for_date_menu_formatter () {

dconf load / << __EOF__


[org/gnome/shell/extensions/date-menu-formatter]
formatter='01_luxon'
pattern='HH:MM:ss yyyy-MM-dd EEEE'
text-align='center'
use-default-calendar=true
use-default-locale=true


__EOF__

}

sys_gnome_shell_extensions_config_for_blur_my_shell () {

dconf load / << __EOF__

__EOF__

}




##
## ## Portal
##

mod_gnome_shell_layout_install () {

	sys_gnome_shell_extensions_install

	sys_gnome_shell_extensions_enable

	sys_gnome_shell_extensions_disable

	sys_gnome_shell_extensions_config

}


##
## ## Main
##

__main__ () {

	mod_gnome_shell_layout_install

}

__main__
