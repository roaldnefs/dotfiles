.PHONY: all
all: shell vim ## Install all the dotfiles.

.PHONY: shell
shell: ## Install the shell related dotfiles.
	ln -sfn $(CURDIR)/.zshrc $(HOME)/.zshrc;
	ln -sfn $(CURDIR)/.dockerfunc $(HOME)/.dockerfunc;
	ln -sfn $(CURDIR)/starship.toml $(HOME)/.config/starship.toml;

.PHONY: vim
vim: ## Install the vim related dotfiles.
	[ -d $(HOME)/.vim ] || git clone --recursive git@github.com:roaldnefs/.vim.git $(HOME)/.vim
	ln -sfn $(CURDIR)/.vimrc_personal $(HOME)/.vimrc_personal;

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
