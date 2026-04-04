PREFIX ?= /usr/local/bin

.PHONY: install uninstall

install:
	install -m 755 bin/claude-utils-clean $(PREFIX)/claude-utils-clean
	install -m 755 bin/claude-utils-list $(PREFIX)/claude-utils-list
	@echo "Installed claude-utils-clean to $(PREFIX)/claude-utils-clean"
	@echo "Installed claude-utils-list to $(PREFIX)/claude-utils-list"

uninstall:
	rm -f $(PREFIX)/claude-utils-clean
	rm -f $(PREFIX)/claude-utils-list
	@echo "Removed claude-utils-clean from $(PREFIX)/claude-utils-clean"
	@echo "Removed claude-utils-list from $(PREFIX)/claude-utils-list"
