
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make layout-maccity'
	@echo '	$$ make layout-wincity'
	@echo
.PHONY: help




layout-maccity:
	./switcher/gnome-shell-layout-maccity.sh
.PHONY: layout-maccity


layout-wincity:
	./switcher/gnome-shell-layout-wincity.sh
.PHONY: layout-wincity








pipx-install:
	./installer/python-pipx/install.sh
.PHONY: pipx-install


gext-install:
	./installer/gnome-extensions-cli/install.sh
.PHONY: gext-install
