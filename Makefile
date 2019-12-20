.PHONY: all
all: dotfiles ## Install the dotfiles.

.PHONY: dotfiles
dotfiles: ## Install the dotfiles.
	ln -sfn $(CURDIR)/.zshrc $(HOME)/.zshrc;
	ln -sfn $(CURDIR)/.dockerfunc $(HOME)/.dockerfunc;

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
