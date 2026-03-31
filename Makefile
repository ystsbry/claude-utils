PREFIX ?= /usr/local/bin

.PHONY: install uninstall

install:
	install -m 755 scripts/claude-utils-clean $(PREFIX)/claude-utils-clean
	@echo "Installed claude-utils-clean to $(PREFIX)/claude-utils-clean"

uninstall:
	rm -f $(PREFIX)/claude-utils-clean
	@echo "Removed claude-utils-clean from $(PREFIX)/claude-utils-clean"
