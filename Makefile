default: help

build-paper: ## build paper
	latexmk -output-directory=paper -pdf paper/gtn_paper.tex
.PHONY: build-paper

clean-paper: ## clean paper
	latexmk -output-directory=paper -c paper/gtn_paper.tex
.PHONY: clean-paper

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help
