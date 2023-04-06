.DEFAULT_GOAL := help

.PHONY: help
help: ## Show help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: lint
lint: ## Run lint
	npm run textlint file.md

.PHONY: fix-lint
fix-lint: # Fix lint issues
	npm run textlint --fix file.md
