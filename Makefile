PREFIX ?= /usr/local/bin

.PHONY: install uninstall install-skills uninstall-skills

install:
	install -m 755 scripts/claude-utils-clean $(PREFIX)/claude-utils-clean
	install -m 755 scripts/claude-utils-list $(PREFIX)/claude-utils-list
	@echo "Installed claude-utils-clean to $(PREFIX)/claude-utils-clean"
	@echo "Installed claude-utils-list to $(PREFIX)/claude-utils-list"

uninstall:
	rm -f $(PREFIX)/claude-utils-clean
	rm -f $(PREFIX)/claude-utils-list
	@echo "Removed claude-utils-clean from $(PREFIX)/claude-utils-clean"
	@echo "Removed claude-utils-list from $(PREFIX)/claude-utils-list"

install-skills:
	@bash scripts/install-skills.sh

uninstall-skills:
	@for skill in skills/*/; do \
		skill_name=$$(basename "$$skill"); \
		target="$$HOME/.claude/skills/$$skill_name"; \
		if [ -L "$$target" ]; then \
			rm "$$target"; \
			echo "Removed symlink: $$target"; \
		fi; \
	done
	@echo "Done."
